# Plesk_MultiMail
>Simple bash script for creating multiple mail accounts from plesk panel terminal

## Usage
1. Create a ".txt" file with the domain name you're gonna use
    - Eg: example.com.txt
2. In each line of the file you created, write the names of the e-mail addresses you will create (only the part to the left of the "@" sign). Do not forget to add a blank line to the last line after adding all the emails.
    ```bash
    #For example:
    john.doe
    doe.john
    j.doe
    ----- Empty line at the end -----
    ```
3. Edit the script according to your needs
    - Edit [main.sh](/main.sh): 
        ```bash
        input_file="example.com.txt" #Change the file name to your file name
        #Edit this line according to your needs
        plesk bin mail --create $line@$domain -passwd yourPasswd -descripton yourDesc -cp-access false -mailbox true -mbox_quota 4G
        ```
4. And run the script.
    ```bash
    sh main.sh
    ```
## KEEP IN MIND
- Please make sure you have an empty line at the end of your ".txt" file
- This script uses same password for every email account as for the description
- Make sure you place every file in the same directory
- Please chmod if you're getting "No such file or directory" error
- For further information please have a look at [Plesk docs](https://docs.plesk.com/en-US/obsidian/cli-linux/using-command-line-utilities/mail-mail-accounts.39181/)

### Notes
I might update the script to work with .csv files. In this way, detailed settings can be made for each email account.