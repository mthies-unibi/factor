REQUIRES: contrib/parser-combinators contrib/concurrency ;

PROVIDE: contrib/space-invaders
{ +files+ {
	"cpu-8080.factor"
	"space-invaders.factor"
} } ;

USE: space-invaders

MAIN: contrib/space-invaders run ;
