! Copyright (C) 2011 PolyMicro Systems
! See http://factorcode.org/license.txt for BSD license.
USING: accessors assocs classes.tuple io io.backend io.directories
io.files io.files.info io.files.links io.files.private io.files.types
io.pathnames kernel locals math math.parser multiline namespaces
prettyprint sequences strings.parser tools.continuations vocabs.parser editors.emacs
;

IN: vocabs
: current-vocab-str ( -- str )
    current-vocab name>> ;

: vwords ( -- )
    current-vocab-str vocab-words keys [ pprint " " print ] each ;

IN: prettyprint.config
: hex ( -- )
    16 number-base set ;

: decimal ( -- )
    10 number-base set ;

IN: syntax
SYNTAX: ." parse-string write ;

"/Applications/Aquamacs.app/Contents/MacOS/bin/emacsclient" emacsclient-path set-global

IN: davec
"davec: loaded" print

