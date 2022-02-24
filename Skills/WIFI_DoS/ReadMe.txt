1. NB. This script should not be used for malicious intent rather for educational purposes
2. The Script will destroy a WIFI network and make it inaccessible
3. Need a WIFI adapter that supportd injection and monitor mode

STEPS:
-> ping any domain on windows OS ( eg.ping google.com -t ) so the ping does not time out < Target machine >
-> on Kali Linux open up a terminal ( iwconfig ) connect the wifi adapter to have a wlan in managed mode
-> on Kali Linux terminal ( nano wifi_dos.py ) paste the code to the file created
-> on Kali Linux terminal ( sudo python3 wifi_dos.py ) and it will pick up the wifi adapter used.

-> The script will discover any wifi networks within your range 
-> Pick the Network you would want to attack ( The one with the widows OS device connected )
-> Deauthentication messages are sent to the wifi adapter which will stop the windows device from connecting to the internet ( ping timed out )
-> Stopping deauthentication on windows pc connection is restored

-> NB. you do not need to be connected or know the password, you just need to be in the vicinity  