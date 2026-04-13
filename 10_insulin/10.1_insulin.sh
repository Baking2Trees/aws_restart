#!/bin/bash

cat preproinsulin-seq.txt \
| tr -d '\n' \
| sed 's/ORIGIN//g' preproinsulin-seq.txt \
| sed 's/[^a-zA-Z]//g' \
> tee cleaned.txt

# check length
wc -c cleaned.txt
# cat cleaned.txt (can also | wc -c \ above and just cat the count from the file)

# 🧠 Key Rule (VERY IMPORTANT)
# 👉 Pipes | must be on the same logical line
# OR you must use \ to continue the line.

# 🔍 Explanation
# tr -d '\n' → removes line breaks => -d means delete => tr means translate
# sed 's/[^a-zA-Z]//g' → removes everything except letters
# wc -c → counts characters