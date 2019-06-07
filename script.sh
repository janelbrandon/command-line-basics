#!/bin/bash
echo
echo "This is a simple script that pretends to do things"
echo "=================================================="
echo
echo "Creating files ......"
echo "(I bet you are wondering what those files are ..)"
echo
echo "ERROR!! Something terrible has happened!" >&2
echo "Return code: 45" >&2
echo "(Oh no - that's a really bad return code)" >&2

echo 
echo "Never believe what a script tells you :)"
echo
echo "Now this script will really do something -"
echo "it will print 'found some tests' if it finds tests in a directory"
echo
echo "Searching for tests ..."
echo
find . -name test\.js | grep test 2>&1 >/dev/null
if [[ $? -eq 0 ]]; then
  echo "Found some tests"
fi
