#!/usr/bin/env bash
{ set +x; } 2>/dev/null

cd "${BASH_SOURCE[0]%/*}" || exit
{ set -x; cd "${PWD%/*/*/*/*}" || exit; { set +x; } 2>/dev/null; }

( set -x; python -m readme_docstring.functions )
