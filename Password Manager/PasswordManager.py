#script to run the hidden lock batch file which runs the password manager

from subprocess import Popen
#enter location of batch file
p = Popen("\lock.bat", cwd=r"")
stdout, stderr = p.communicate()
