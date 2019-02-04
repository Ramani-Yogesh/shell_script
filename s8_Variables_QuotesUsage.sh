USER="Dilbert"
echo 'Hi $USER, Today is date.'
echo 'Hi $USER, Today is `date`.'
echo "Hi $USER, Today is date."
echo "Hi $USER, Today is `date`"

echo $$             # Print the process id of the current shell.
echo "$$"           # Print the process id of the current shell because double quotes is interpreted by bash.
echo '$$'           # Print $$ because single quote is NOT interpreted by bash.
echo '"$$"'         # Print "$$".
echo "'$$'"         # Print the process id of the current shell.
echo "'"'$$'"'"     # Outputs '$$'. Concatenation - First "'" outputs ', '$$' outputs $$, Last "'" outputs '.
echo ''$$''         # Print the process id of the current shell. Concatenation -  '', $$ and ''.
echo '''$$'''       # Prints $$. Concatenation -  '', '$$' and ''.
