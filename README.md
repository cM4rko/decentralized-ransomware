> ### ⚠️ LEGAL DISCLAIMER
> This project presents an architecture that combines a Python script with an Ethereum
> Smart Contract acting as a decentralized BcC2 (Blockchain-based Command and Control). 
> This code has been developed exclusively for EDUCATIONAL and RESEARCH purposes in the 
> field of cybersecurity. By leveraging the inherent censorship-resistance of public 
> blockchains, this model demonstrates a provisioning channel that is completely resilient 
> against infrastructure takedowns, censorship, or centralized shutdowns. Using this 
> software for illicit activities is strictly illegal and prohibited. The author is not 
> responsible for any misuse of this material.

---

## 🎓 Overview ##

<img src="https://github.com/cM4rko/decentralized-ransomware/blob/main/assets/images/image.png" >

---

## 🌐 Decentralized Architecture ##

- `Contract.sol` -> The Smart Contract deployed on any EVM compatible Blockchain with de function that stores the public RSA and the image URL.
  
- `Exploit.py` -> The Python script that calls the contract to retrieve the public RSA, encrypts all non-sensible files with ChaCha20 and encrypts the ChaCha20 key with the public RSA.

---

## 🔝 Blockchain Improvments  ##

- Resilient to:
  - Censorship
  - Takedowns
  - Shutdowns

- Posibility to change the public RSA key at any moment and the image URL
- Only the contract Owner can change the payload stored in the contract


---
## 🧬 Exploit Variations ##

**[+] Windows**
  - The exploit pops up the RANSOM-NOTE.txt with notepad.exe
  - The exploit changes the desktop background to the image at the URL

**[+] Linux**
  - The exploit tryes to change the file motd in /etc/motd


---
## ⚙️ Snippets ##

** Change Public RSA **
```bash
cast send $CONTRACT_ADDRESS "changeKey(bytes)" $HEX_RSA --rpc-url $NODE --private-key $KEY
```

**To change the image URL**
```bash
cast send $CONTRACT_ADDRESS "changeUrl(string)" $NEW_URL --rpc-url $NODE --private-key $PRIVATE_KEY
```

---
## 📽️ PoCs

https://github.com/user-attachments/assets/a6226ec7-90bb-4fcf-a895-d9e22f502164

https://github.com/user-attachments/assets/ebe620f5-de59-4e87-8d95-32f37f6e3057
