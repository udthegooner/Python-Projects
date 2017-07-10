#script which runs the password manager

import json, pyperclip

#enter path of hidden folder here
pwfile = open(r"HiddenFolder\pws.txt")

pws = json.load(pwfile) #using json object as a dictionary of passwords
pwfile.close()
platform = input("Which password are you looking for? ")
platform = platform.lower()

#if password is saved in pws.txt copy it to clipboard
if platform in pws.keys():
	pyperclip.copy(pws[platform])
	print("Password for " + platform + " copied to clipboard.")

else:
	print("Password doesn't exist for " + platform + '.')
	ans = input("Would you like to enter the password for " + platform + " to your database y/n? ")
	ans = ans.lower()
	if ans=='y':
		password = input("Please enter password for "+ platform + ": ")
		pws[platform] = password
		
		#enter path of hidden folder here
		pwfile = open(r"HiddenFolder\pws.txt", 'w')
		
		json.dump(pws, pwfile)
		pyperclip.copy(pws[platform])
		print("Password for " + platform + " added to database and copied to clipboard.")
		pwfile.close()

		