This is a simple command line Password Manager for Windows for personal use. Gone are the days to memorize passwords to the tons of accounts you have.
This Password Manager takes in a master password and copies the password for the required account to your clipboard allowing you to paste it easily.

Note: Since this is only a simple password manager made using python, it doesn't use any form of encryption to hide your passwords. However your passwords do not sit out in the open for anyone to pry since they will be hidden.

Steps to install

1. Assuming you have python installed, use pip install pyperclip.
2. You can keep the PasswordManager.py, lock.bat, and the HiddenFolder anywhere you like. Say the PasswordManager.py is on Desktop, while the other 2 are in Documents.
3. Open PasswordManager.py in a text editor and edit line #5 to add the absolute path of the location of lock.bat (Documents) within the quotes in cwd=r"".
4. Open lock.bat in a text editor and edit line #15 to add the absolute path of the location of HiddenFolder (Documents) within the quotes before HiddenFolder\pm.py.
5. Open pm.py in HiddenFolder in a text editor and edit line 6 to add the absolute path of the location of Hidden Folder(Documents) within the quotes before HiddenFolder\pws.txt.
6. Finally right click on HiddenFolder and lock.bat and click on Properties to change their Attributes to Hidden.
7. Double click on PasswordManager on Desktop to run the manager.
