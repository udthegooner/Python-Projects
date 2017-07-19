#script to run the hidden lock batch file which runs the password manager

from subprocess import Popen
#enter location of batch file
lockLocation = r""
#enter location of Hidden Folder
dirLocation = r""

p = Popen(lockLocation + r"\lock.bat", cwd = dirLocation)
stdout, stderr = p.communicate()
