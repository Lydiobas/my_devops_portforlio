shell scripting zero to hero
***Shell scripting is a powerful tool for DevOps professionals. It enables automation, simplifies tasks, and helps maintain consistency across various systems.***

How to write a shell script

***ls -ltr***
The ls -ltr command lists files in the current directory in reverse chronological order, showing the most recently modified files last. This can help you quickly identify recent changes or updates. If you have specific questions about the output or need further assistance, let me know!

***#!/bin/bash***

Shebang: #!/bin/bash
This line tells the system to use the Bash shell to execute the script.
Comments: # A simple script to greet the user

***echo "Welcome to my portfolio"***
The command echo "Welcome to my portfolio" in a shell prints the text Welcome to my portfolio to the terminal. It's a basic command used to display a line of text or a string that is passed as an argument.

***sh or ./***
***eg sh test.sh*** (to exercute the file )
Using sh
When you use sh scriptname.sh, you are explicitly telling the system to use the sh shell (which is usually a link to bash or some other shell) to execute the script. This method works even if the script does not have execution permissions.

but ***./*** does not work without permissions
***eg ./test.sh*** (To exercute the file after granting permission)

