! Copyright (C) 2004 Chris Double.
! 
! Redistribution and use in source and binary forms, with or without
! modification, are permitted provided that the following conditions are met:
! 
! 1. Redistributions of source code must retain the above copyright notice,
!    this list of conditions and the following disclaimer.
! 
! 2. Redistributions in binary form must reproduce the above copyright notice,
!    this list of conditions and the following disclaimer in the documentation
!    and/or other materials provided with the distribution.
! 
! THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES,
! INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
! FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
! DEVELOPERS AND CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
! SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
! PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
! OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
! WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
! OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
! ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
!
! An Smalltalk-link browser that runs in the httpd server using
! cont-responder facilities.
!
IN: browser
USE: cont-html
USE: cont-responder
USE: cont-utils
USE: stack
USE: stdio
USE: combinators
USE: namespaces
USE: vocabularies
USE: lists
USE: streams
USE: strings
USE: inspector
USE: kernel
USE: prettyprint
USE: words
USE: html
USE: parser

: <browser> ( vocab word -- )
  #! An object for storing the current browser
  #! user interface state.
  <namespace> [
    "current-word" set
    "current-vocab" set
  ] extend ;

: write-vocab-list ( -- )
  #! Write out the HTML for the list of vocabularies
  <select name= "vocabs" size= "20" onchange= "document.forms.main.submit()" select> [
    vocabs [ 
      dup "current-vocab" get [ "" ] unless* = [
      "<option selected>" write
     ] [
        "<option>" write
     ] ifte 
     chars>entities write 
     "</option>\n" write     
    ] each
  ] </select> ;

: write-word-list ( vocab -- )
  #! Write out the HTML for the list of words in a vocabulary.
  <select name= "words" size= "20" onchange= "document.forms.main.submit()" select> [
    words [ 
      dup "current-word" get [ "" ] unless* str-compare 0 = [
      "<option selected>" write
     ] [
        "<option>" write
     ] ifte 
     chars>entities write 
     "</option>\n" write     
    ] each
  ] </select> ;

: write-editable-word-source ( vocab word -- )
  #! Write the source in a manner allowing it to be edited.
  <textarea name= "eval" rows= "30" cols= "80" textarea> [
    1024 <string-output-stream> dup >r [
      >r words r> swap [ over swap dup word-name rot = [ see ] [ drop ] ifte ] each drop    
    ] with-stream r> stream>str chars>entities write
  ] </textarea> <br/>
  "Accept" button ;

: write-word-source ( vocab word -- )
  #! Write the source for the given word from the vocab as HTML.
  <namespace> [
    "responder" "inspect" put
    "Edit" [ "edit-state" t put ] quot-href <br/>
    "edit-state" get [
      write-editable-word-source 
    ] [
      [ 
        >r words r> swap [ over swap dup word-name rot = [ see ] [ drop ] ifte ] each drop
      ] with-simple-html-output
    ] ifte
  ] bind drop ;

: write-browser-body ( -- )
  #! Write out the HTML for the body of the main browser page.
  [
    [ write-vocab-list ] 
    [ "current-vocab" get write-word-list ] 
    [ 
      "current-vocab" get "current-word" get write-word-source
    ]
  ] horizontal-layout ;
USE: logging
: browse ( <browser> -- )
  #! Display a Smalltalk like browser for exploring/modifying words.
  [
    [
      [
        <html> [
          <head> [
            <title> [ "Factor Browser" write ] </title>
          ] </head>
          <body> [
            <form name= "main" action= method= "post" form> [
              write-browser-body 
            ] </form>
          ] </body>
        ] </html> 
      ] show 
    ] bind [
      "vocabs" get
      "words" get
      "eval" get [ log ] when 
    ] bind <browser>
  ] forever ;

: browser-responder ( -- )
  #! Start the Smalltalk-like browser.
  "browser" "" <browser> browse ;

"browser" [ browser-responder ] install-cont-responder
