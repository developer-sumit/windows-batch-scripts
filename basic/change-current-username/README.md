# Change Current Username

### Explaination

The `@echo off` command is used to prevent the command prompt from displaying each command as it is executed. This makes the output cleaner and easier to read.

The `setlocal enabledelayedexpansion` command enables delayed variable expansion. This allows variables to be expanded at execution time rather than at parse time.

The `echo Current username: %username%` command displays the current username of the logged-in user. The `%username%` is a system variable that holds the username of the current user.

The `set /p new_username=Enter new username:` command prompts the user to enter a new username. The input is stored in the `new_username` variable.

The `net user "%username%" "%new_username%"` command is used to change the username. It uses the `net user` command, which is a Windows command-line tool for managing user accounts. The `%username%` variable holds the current username, and `%new_username%` holds the new username entered by the user.

The `if %errorlevel% equ 0` statement checks the value of the `errorlevel` variable. In batch scripting, the `errorlevel` variable stores the exit code of the previously executed command. If the exit code is 0, it means the command executed successfully.

If the `errorlevel` is 0, the script displays the message "Username changed successfully!" using the `echo` command. If the `errorlevel` is not 0, it means the command failed, and the script displays the message "Failed to change username."

The `pause` command is used to pause the script execution and wait for the user to press any key before closing the command prompt window.

