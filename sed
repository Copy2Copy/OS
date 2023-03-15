Replacing or substituting string $sed 's/unix/linux/' geekfile.txt
Replacing the nth occurrence of a pattern in a line $sed 's/unix/linux/2' geekfile.txt
Replacing all the occurrence of the pattern in a line $sed 's/unix/linux/g' geekfile.txt
Replacing from nth occurrence to all occurrences in a line $sed 's/unix/linux/3g' geekfile.txt
Parenthesize first character of each word $ echo "Welcome To The Geek Stuff" | sed 's/\(\b[A-Z]\)/\(\1\)/g'
Replacing string on a specific line number $sed '3 s/unix/linux/' geekfile.txt
Duplicating the replaced line with /p flag  $sed 's/unix/linux/p' geekfile.txt
Printing only the replaced lines $sed -n 's/unix/linux/p' geekfile.txt
Replacing string on a range of lines $sed '1,3 s/unix/linux/' geekfile.txt $sed '2,$ s/unix/linux/' geekfile.txt
Deleting lines from a particular file : $ sed '$d' filename.txt $ sed '3,6d' filename.txt $ sed '/abc/d' filename.txt
Insert one blank line after each line –  sed G a.txt 
To insert two blank lines –  sed 'G;G' a.txt
Delete blank lines and insert one blank line after each line  sed '/^$/d;G' a.txt
Insert a black line above every line which matches “love”  sed '/love/{x;p;x;}' a.txt
Insert a blank line below every line which matches “love” sed '/love/G' a.txt
Insert 5 spaces to the left of every lines –   sed 's/^/     /' a.txt
Number each line of a file (left alignment). **=** is used to number the line. \t is used for tab between number and sentence – sed =  a.txt | sed 'N;s/\n/\t/'
Number each line of a file (number on left, right-aligned). This command is similar to `cat -n filename`
Number each line of file, only if line is not blank sed '/./=' a.txt | sed '/./N; s/\n/ /'
Delete a particular line sed '5d' a.txt
Delete the pattern matching line   sed '/life/d' a.txt
Delete lines starting from nth line and every 2nd line from there sed '3~2d' a.txt
Delete the lines which matches the pattern and 2 lines after to that sed '/easy/,+2d' a.txt
Delete empty lines or those begins with “#” –  sed -i '/^#/d;/^$/d' a.txt
Viewing a file from x to y range sed -n '2,5p' a.txt
View the entire file except the given range  sed '2,4d' a.txt
Print nth line of the file sed -n '4'p a.txt
Print from nth line to end of file sed -n '3,$'p a.txt
  Print lines which matches the pattern i.e from input to xth line sed -n '/everyone/,5p' a.txt
  Prints lines from the xth line of the input, up-to the line which matches the pattern. If the pattern doesn’t found then it prints up-to end of the file
  sed -n '1,/everyone/p' a.txt
  Print the lines which matches the pattern up-to the next xth lines sed -n '/learn/,+2p' a.txt
