import random  
from luhn import *  
import sys  
import time  

class IPTGenerator:  
    def __init__(self):  
        self.playstore_bins = [  
            "431943",  # Google Play Visa  
            "511848",  # Google Play MasterCard  
            "479125",  # Promo Balance BIN  
            "400344"   # Virtual Gift BIN  
        ]  

    def generate(self, amount=100):  
        print(f"\033[1;33m[*] Generating {amount} IPT-Cards...\033[0m")  
        for _ in range(amount):  
            bin = random.choice(self.playstore_bins)  
            body = str(random.randint(100000000, 999999999))[:9]  
            partial = bin + body  
            check = generate(partial)  
            expiry = f"{random.randint(1,12):02d}/{random.randint(25,30)}"  
            cvv = f"{random.randint(100,999)}"  
            print(f"\033[1;32m[+] {partial}{check}|{expiry}|{cvv}\033[0m")  
            time.sleep(0.1)  

if __name__ == "__main__":  
    ipt = IPTGenerator()  
    ipt.generate(1000)  
