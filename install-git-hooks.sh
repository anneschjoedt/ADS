#!/bin/bash

DOTGIT=.git
if [ -f $DOTGIT ]
then
    x=`cat $DOTGIT`
    DOTGIT=${x#gitdir: }
fi

echo install into $DOTGIT
cp post-commit ${DOTGIT}/hooks/
chmod +x ${DOTGIT}/hooks/post-commit 
