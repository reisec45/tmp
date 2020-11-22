#!/bin/bash
set -e
gcc -o cat main.c
cat -n <(echo aaa)
diff <(./cat /bin/ls) /bin/ls
diff <(./cat main.c) main.c
diff <(./cat ./cat) main.c || true
diff <(./cat < ./cat) main.c || true
echo Done
