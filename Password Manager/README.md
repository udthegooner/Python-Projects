This is a simple command line Password Manager for Windows for personal use. Gone are the days to memorize passwords to the tons of accounts you have.
This Password Manager takes in a master password and copies the password for the required account to your clipboard allowing you to paste it easily.

Note: Since this is only a simple password manager made using python, it doesn't use any form of encryption to hide your passwords. However your passwords do not sit out in the open for anyone to pry since they will be hidden.

Steps to install

1. Assuming you have python installed, use pip install pyperclip.
2. You can keep HiddenFolder, lock.bat and PasswordManager.py anywhere you like. For easier use I suggest keeping PasswordManager.py on your Desktop.
3. Open PasswordManager.py in a text editor. Edit line #5 to add the absolute path of the location of lock.bat within the quotes. Edit line #7 to add the absolute path of the location of the HiddenFolder within the quotes.
4. You can open lock.bat in a text editor and change the master password on line 11. Default password is pw.
5. Finally right click on lock.bat and the 2 files inside HiddenFolder and click on Properties to change their Attributes to Hidden.
6. Run PasswordManager.py through command line.
