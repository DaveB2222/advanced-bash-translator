#!/bin/bash
# advanced_bash_commands.sh
# A script demonstrating key bash commands from your project

# Create or overwrite stdout.txt with "hello bash"
echo "hello bash" > stdout.txt

# Append "hello bash" to stdout.txt
echo "hello bash" >> stdout.txt

# Clear the contents of stdout.txt
> stdout.txt

# Demonstrate redirecting stderr to a file
bad_command 2> stderr.txt

# Redirect stdout explicitly (same as >)
echo "hello bash" 1> stdout.txt

# Reading input into variable NAME
read NAME
echo "Hello $NAME"

# Trying bad_command to show error
bad_command

# Demonstrate echo with pipe to script
echo "David" | ./advanced_bash_commands.sh

# Redirect stderr and stdout to separate files
echo "David" | ./advanced_bash_commands.sh 2> stderr.txt > stdout.txt

# Using input redirection from a file
./advanced_bash_commands.sh < name.txt 2> stderr.txt > stdout.txt

# Word count commands on kitty_ipsum_1.txt
wc kitty_ipsum_1.txt
wc -l kitty_ipsum_1.txt
wc -w kitty_ipsum_1.txt
wc -m kitty_ipsum_1.txt

# Create kitty_info.txt and append file stats
echo "~~ Kitty_ipsum_1.txt info ~~" > kitty_info.txt
echo -e "\nNumber of lines:" >> kitty_info.txt
cat kitty_ipsum_1.txt | wc -l >> kitty_info.txt
echo -e "\nNumber of words:" >> kitty_info.txt
cat kitty_ipsum_1.txt | wc -w >> kitty_info.txt
echo -e "\nNumber of characters:" >> kitty_info.txt
wc -m < kitty_ipsum_1.txt >> kitty_info.txt

# grep commands for pattern matching "meow" or variations
grep 'meow' kitty_ipsum_1.txt
grep --color -n 'meow' kitty_ipsum_1.txt
grep --color -n 'meow[a-z]*' kitty_ipsum_1.txt

echo -e "\nNumber of times meow or meowzer appears:" >> kitty_info.txt
grep -c 'meow[a-z]*' kitty_ipsum_1.txt >> kitty_info.txt

grep -o 'meow[a-z]*' kitty_ipsum_1.txt | wc -l >> kitty_info.txt
grep -n 'meow[a-z]*' kitty_ipsum_1.txt

# sed command examples to replace characters or strings
sed 's/r/2/' name.txt
sed 's/free/f233/' name.txt
sed 's/freecodecamp/f233C0d3C@mp/i' name.txt

grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed 's/[0-9]/1/' 
grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt

grep --color 'cat[a-z]*' kitty_ipsum_1.txt
grep -o 'cat[a-z]*' kitty_ipsum_1.txt | wc -l

echo -e "\nLines they appear on:" >> kitty_info.txt
grep -n 'cat[a-z]*' kitty_ipsum_1.txt | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt

# Repeat stats for kitty_ipsum_2.txt
echo -e "\n\n~~ Kitty_ipsum_2.txt info ~~" >> kitty_info.txt
echo -e "\nNumber of lines:" >> kitty_info.txt
cat kitty_ipsum_2.txt | wc -l >> kitty_info.txt
echo -e "\nNumber of words:" >> kitty_info.txt
wc -w < kitty_ipsum_2.txt >> kitty_info.txt
echo -e "\nNumber of characters:" >> kitty_info.txt
wc -m < kitty_ipsum_2.txt >> kitty_info.txt

echo -e "\nNumber of times meow or meowzer appears:" >> kitty_info.txt
grep -o 'meow[a-z]*' kitty_ipsum_2.txt | wc -l >> kitty_info.txt

echo -e "\nLines they appear on:" >> kitty_info.txt
grep -n 'cat[a-z]*' kitty_ipsum_2.txt | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt

# Creating translate.sh style script embedded here (just demo)
echo "#!/bin/bash" > translate.sh
echo "cat \$1" >> translate.sh
echo "cat \$1 | sed 's/catnip/dogchow/; s/cat/dog/'" >> translate.sh

chmod +x translate.sh

echo "Run ./translate.sh <filename> to see translated output."

# End of script
