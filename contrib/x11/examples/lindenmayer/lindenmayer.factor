USING: kernel alien namespaces arrays vectors math opengl math-contrib
lists parser sequences hashtables strings ;

IN: lindenmayer 

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: make-matrix >r { } make r> swap group ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: RU ( angle -- RU ) deg>rad
[ dup cos ,	dup sin ,	0 ,
  dup sin neg ,	dup cos ,	0 ,
  0 ,		0 ,		1 , ] 3 make-matrix nip ;

: RL ( angle -- RL ) deg>rad
[ dup cos ,	0 ,		dup sin neg ,
  0 ,		1 ,		0 ,
  dup sin ,	0 ,		dup cos , ] 3 make-matrix nip ;

: RH ( angle -- RH ) deg>rad
[ 1 ,		0 ,		0 ,
  0 ,		dup cos ,	dup sin neg ,
  0 ,		dup sin ,	dup cos , ] 3 make-matrix nip ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

SYMBOL: position
SYMBOL: orientation

: rotate-U ( angle -- ) RU orientation get swap m. orientation set ;
: rotate-L ( angle -- ) RL orientation get swap m. orientation set ;
: rotate-H ( angle -- ) RH orientation get swap m. orientation set ;

: step ( length -- )
>r position get orientation get 0 0 r> 3array m.v v+ position set ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: record-vertex ( -- ) position get first3 glVertex3f ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: rotate-z     rotate-U ;
: rotate-y neg rotate-L ;
: rotate-x neg rotate-H ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: reset ( -- ) { 0 0 0 } position set 3 identity-matrix orientation set ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

DEFER: polygon-vertex

: draw-forward ( length -- )
GL_LINES glBegin record-vertex step record-vertex glEnd ;

: move-forward ( length -- ) step polygon-vertex ;

: sneak-forward ( length -- ) step ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

! (v0 - v1) x (v1 - v2)

: polygon-normal ( { v0 v1 v2 } -- normal )
0 over nth over 1 swap nth v- swap
1 over nth swap 2 swap nth v- cross ;

: polygon ( vertices -- )
GL_POLYGON glBegin dup polygon-normal first3 glNormal3f
[ first3 glVertex3f ] each glEnd ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

SYMBOL: vertices

V{ } vertices set

: start-polygon ( -- ) 0 <vector> vertices set ;

: finish-polygon ( -- ) vertices get polygon ;

: polygon-vertex ( -- ) position get vertices get push ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Lindenmayer string rewriting and interpretation
! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

! SYMBOL: rules
! SYMBOL: command-table

! : lookup ( str -- str ) dup rules get hash dup [ nip ] [ drop ] if ;

! : rewrite ( str -- str ) "" swap [ ch>string lookup append ] each ;

! : interpret ( str -- )
! [ ch>string command-table get hash dup [ call ] [ drop ] if ] each ;

USE: sequences : length* length ; USE: lindenmayer

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Lindenmayer string rewriting
! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

SYMBOL: rules

: segment ( str -- seq )
{ { [ dup "" = ] [ drop [ ] ] }
  { [ dup length* 1 = ] [ f cons ] }
  { [ dup 1 swap nth CHAR: ( = ]
    [ dup CHAR: ) swap index 1 +	! str i
      swap				! i str
      2dup head				! i str head
      -rot tail				! head tail
      segment cons ] }
  { [ t ] [ 1 over head swap 1 swap tail segment cons ] } }
cond ;

: lookup ( str -- str ) 1 over head rules get hash dup [ nip ] [ drop ] if ;

: rewrite ( str -- str ) segment [ lookup ] map concat ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Lindenmayer string interpretation
! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

SYMBOL: command-table

: segment-command ( seg -- command ) 1 swap head ;

: segment-parameter ( seg -- parameter )
dup length* 1 - 2 swap rot subseq parse call ;

: segment-parts ( seg -- param command )
dup segment-parameter swap segment-command ;

: exec-command ( str -- ) command-table get hash dup [ call ] [ drop ] if ;

: exec-command-with-param ( param command -- )
command-table get hash dup [ last call ] [ 2drop ] if ;

: (interpret) ( seg -- )
dup length* 1 = [ exec-command ] [ segment-parts exec-command-with-param ] if ;

: interpret ( str -- ) segment [ (interpret) ] each ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Lparser dialect
! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

SYMBOL: angle
SYMBOL: length
SYMBOL: thickness
SYMBOL: color-index

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

DEFER: set-thickness
DEFER: set-color-index

TUPLE: state position orientation angle length thickness color-index ;

SYMBOL: states V{ } states set

: save-state ( -- )
position get orientation get angle get length get thickness get
color-index get <state>
states get push ;

: restore-state ( -- )
states get pop
dup state-position    position set
dup state-orientation orientation set
dup state-length      length set
dup state-angle       angle set
dup state-color-index set-color-index
dup state-thickness   set-thickness
drop ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: scale-length ( m -- ) length get * length set ;

: scale-angle ( m -- ) angle get * angle set ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

SYMBOL: color-table

{ { 0 0 0 } ! black
  { 0.5 0.5 0.5 } ! grey
  { 1 0 0 } ! red
  { 1 1 0 } ! yellow
  { 0 1 0 } ! green
  { 0.250 0.878 0.815 } ! turquoise
  { 0 0 1 } ! blue
  { 0.627 0.125 0.941 } ! purple
  { 0 0.392 0 } ! dark green
  { 0.0 0.807 0.819 } ! dark turquoise
  { 0.0 0.0 0.545 } ! dark blue
  { 0.580 0.0 0.827 } ! dark purple
  { 0.545 0.0 0.0 } ! dark red
  { 0.25 0.25 0.25 } ! dark grey
  { 0.75 0.75 0.75 } ! medium grey
  { 1 1 1 } ! white
} color-table set

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

USE: sequences

: >float-array ( seq -- )
dup length <float-array> swap dup length >array [ pick set-float-nth ] 2each ;

USE: lindenmayer

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: material-color ( r g b -- )
3array 1.0 add >float-array
GL_FRONT_AND_BACK GL_AMBIENT_AND_DIFFUSE rot glMaterialfv ;

: set-color-index ( i -- )
dup color-index set color-table get nth dup
first3 glColor3f first3 material-color ;

: inc-color-index ( -- ) color-index get 1 + set-color-index ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: set-thickness ( i -- ) dup thickness set glLineWidth ;

: scale-thickness ( m -- ) thickness get * 0.5 max set-thickness ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: -rotate-y neg rotate-y ;
: -rotate-x neg rotate-x ;
: -rotate-z neg rotate-z ;


! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: lparser-dialect ( -- )

1 length set   45 angle set   1 thickness set   2 set-color-index

H{ [[ "+" [ angle get     rotate-y ] ]]
!  [[ "-" [ angle get neg rotate-y ] ]]
   [[ "-" [ angle get    -rotate-y ] ]]
   [[ "&" [ angle get     rotate-x ] ]]
!  [[ "^" [ angle get neg rotate-x ] ]]
   [[ "^" [ angle get    -rotate-x ] ]]
   [[ "<" [ angle get     rotate-z ] ]]
!  [[ ">" [ angle get neg rotate-z ] ]]
   [[ ">" [ angle get    -rotate-z ] ]]
   [[ "|" [ 180.0         rotate-y ] ]]
   [[ "%" [ 180.0         rotate-z ] ]]

   [[ "F" [ length get     draw-forward ] ]]
   [[ "Z" [ length get 2 / draw-forward ] ]]
   [[ "f" [ length get     move-forward ] ]]
   [[ "z" [ length get 2 / move-forward ] ]]
   [[ "g" [ length get     sneak-forward ] ]]

   [[ "." [ polygon-vertex ] ]]
   [[ "[" [ save-state ] ]]
   [[ "]" [ restore-state ] ]]
   [[ "{" [ start-polygon ] ]]
   [[ "}" [ finish-polygon ] ]]

   [[ "/" [ 1.1 scale-length ] ]]
   [[ "'" [ 0.9 scale-length ] ]]
   [[ ";" [ 1.1 scale-angle ] ]]
   [[ ":" [ 0.9 scale-angle ] ]]
!   [[ "?" [ thickness get 1.4 * thickness set ] ]]
!   [[ "!" [ thickness get 0.7 * thickness set ] ]]
   [[ "?" [ 1.4 scale-thickness ] ]]
   [[ "!" [ 0.7 scale-thickness ] ]]

!   [[ "c" [ inc-color-index ] ]]
   [[ "c" [ color-index get 1 + set-color-index ] ]]

} command-table set ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Examples
! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

SYMBOL: axiom
SYMBOL: result

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: koch ( -- ) lparser-dialect   90 angle set

H{ [[ "K" "[[a|b] '(0.41)f'(2.439) |<(60) [a|b]]" ]]
   [[ "k" "[ c'(0.5) K]" ]]
   [[ "a" "[d <(120) d <(120) d ]" ]]
   [[ "b" "e" ]]
   [[ "e" "[^ '(.2887)f'(3.4758) &(180)      +z{.-(120)f-(120)f}]" ]]
   [[ "d" "[^ '(.2887)f'(3.4758) &(109.5111) +zk{.-(120)f-(120)f}]" ]]
} rules set

"K" axiom set ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: spiral-0 ( -- ) lparser-dialect   10 angle set   5 thickness set

"[P]|[P]" axiom set

H{ [[ "P" "[A]>>>>>>>>>[cB]>>>>>>>>>[ccC]>>>>>>>>>[cccD]" ]]
   [[ "A" "F+;'A" ]]
   [[ "B" "F!+F+;'B" ]]
   [[ "C" "F!^+F^+;'C" ]]
   [[ "D" "F!>^+F>^+;'D" ]]
} rules set ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: tree-5 ( -- ) lparser-dialect   5 angle set   1 thickness set

"c(4)FFS" axiom set

H{ [[ "S" "FFR>(60)R>(60)R>(60)R>(60)R>(60)R>(30)S" ]]
   [[ "R" "[Ba]" ]]
   [[ "a" "$tF[Cx]Fb" ]]
   [[ "b" "$tF[Dy]Fa" ]]
   [[ "B" "&B" ]]
   [[ "C" "+C" ]]
   [[ "D" "-D" ]]

   [[ "x" "a" ]]
   [[ "y" "b" ]]

   [[ "F" "'(1.25)F'(.8)" ]]
} rules set ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: abop-1 ( -- ) lparser-dialect   45 angle set   5 thickness set

H{ [[ "A" "F[&'(.8)!BL]>(137)'!(.9)A" ]]
   [[ "B" "F[-'(.8)!(.9)$CL]'!(.9)C" ]]
   [[ "C" "F[+'(.8)!(.9)$BL]'!(.9)B" ]]

   [[ "L" "~c(8){+(30)f-(120)f-(120)f}" ]]
} rules set

"c(12)FFAL" axiom set ;