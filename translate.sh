#!/bin/bash
# translator.sh - translates kitty ipsum text
# Usage: ./translate.sh kitty_ipsum_1.txt
# New File: ./translate.sh kitty_ipsum_1.txt > doggy_ipsum_1.txt

if [ -z "$1" ]; then
  echo "Usage: $0 <input-file>"
  exit 1
fi

# Just output the file contents
cat "$1"
echo ""

# Replace 'catnip' with 'dogchow' (first occurrence only)
cat "$1" | sed 's/catnip/dogchow/'
echo ""

# Replace multiple patterns without global flag
cat "$1" | sed 's/catnip/dogchow/; s/cat/dog/; s/meow/woof/'
echo ""

# Replace multiple patterns globally (all occurrences)
cat "$1" | sed 's/catnip/dogchow/g; s/cat/dog/g; s/meow/woof/g'
echo ""

# Terms translated using extended regex (no real difference here but good to know)
cat "$1" | sed -E 's/catnip/dogchow/g; s/cat/dog/g; s/meow/woof/g'
echo ""

# Ignores capitalization 
sed -E 's/catnip/dogchow/gI; s/cat/dog/gI; s/meow[a-z]*/woof/gI' "$1"
echo ""
