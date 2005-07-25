! Copyright (C) 2004, 2005 Slava Pestov.
! See http://factor.sf.net/license.txt for BSD license.
IN: interpreter
USING: errors kernel kernel-internals lists math namespaces
prettyprint sequences io strings vectors words ;

! A Factor interpreter written in Factor. Used by compiler for
! partial evaluation, also by the walker.

! Meta-stacks
SYMBOL: meta-r
: push-r meta-r get push ;
: pop-r meta-r get pop ;
SYMBOL: meta-d
: push-d meta-d get push ;
: pop-d meta-d get pop ;
: peek-d meta-d get peek ;
: peek-next-d meta-d get [ length 2 - ] keep nth ;
SYMBOL: meta-n
SYMBOL: meta-c

! Call frame
SYMBOL: meta-cf

! Currently executing word.
SYMBOL: meta-executing

: init-interpreter ( -- )
    10 <vector> meta-r set
    10 <vector> meta-d set
    namestack meta-n set
    catchstack meta-c set
    f meta-cf set
    f meta-executing set ;

: copy-interpreter ( -- )
    #! Copy interpreter state from containing namespaces.
    meta-r [ clone ] change
    meta-d [ clone ] change
    meta-n [ ] change
    meta-c [ ] change ;

! Callframe.
: up ( -- ) pop-r meta-cf set  pop-r drop ;

: next ( -- obj )
    meta-cf get [ meta-cf [ uncons ] change ] [ up next ] ifte ;

: meta-interp ( -- interp )
    meta-d get meta-r get meta-n get meta-c get <interp> ;

: set-meta-interp ( interp -- )
    >interp< meta-c set meta-n set meta-r set meta-d set ;

: host-word ( word -- )
    [
        \ call push-r  interp [
            interp over interp-data push
            [ ] set-interp
        ] cons cons push-r  meta-interp [ ] set-interp
    ] call  set-meta-interp  pop-d 2drop ;

: meta-call ( quot -- )
    #! Note we do tail call optimization here.
    meta-cf [
        [ meta-executing get push-r  push-r ] when*
    ] change ;

: meta-word ( word -- )
    dup "meta-word" word-prop [
        call
    ] [
        dup compound? [
            dup word-def meta-call  meta-executing set
        ] [
            host-word
        ] ifte
    ] ?ifte ;

: do ( obj -- ) dup word? [ meta-word ] [ push-d ] ifte ;

: meta-word-1 ( word -- )
    dup "meta-word" word-prop [ call ] [ host-word ] ?ifte ;

: do-1 ( obj -- ) dup word? [ meta-word-1 ] [ push-d ] ifte ;

: set-meta-word ( word quot -- ) "meta-word" set-word-prop ;

\ datastack [ meta-d get clone push-d ] set-meta-word
\ set-datastack [ pop-d clone meta-d set ] set-meta-word
\ >r [ pop-d push-r ] set-meta-word
\ r> [ pop-r push-d ] set-meta-word
\ callstack [ meta-r get clone push-d ] set-meta-word
\ set-callstack [ pop-d clone meta-r set ] set-meta-word
\ call [ pop-d meta-call ] set-meta-word
\ execute [ pop-d meta-word ] set-meta-word
\ ifte [ pop-d pop-d pop-d [ nip ] [ drop ] ifte meta-call ] set-meta-word
\ dispatch [ pop-d pop-d swap nth meta-call ] set-meta-word

\ set-meta-word forget
