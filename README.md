# b0g0x
---

## 🚀 b0g0x — Automated Bug Bounty Recon Tool

**b0g0x** is an automated **reconnaissance toolkit** built for **bug bounty hunters** and **security researchers**. This tool combines **WhatWeb**, **Nmap**, **Nikto**, and **Subfinder** into a single Bash script, streamlining the process of gathering intelligence and mapping out your target.

**b0g0x** is designed to quickly gather **basic information**, **scan for vulnerabilities**, and help you map out a target domain or IP address.

---

### ✨ Features

* **WhatWeb**: Identifies technologies and frameworks used by a web application.
* **Nmap**: Scans the network for open ports and services.
* **Nikto**: Performs a comprehensive web vulnerability scan.
* **Subfinder**: Discover subdomains associated with the target.
* Automated execution in a single run.
* Bash-compatible, lightweight, and easy to use.
* Ideal for **bug bounty hunters** and **penetration testers**.

---

### 🎯 Use Cases

* Automated reconnaissance for **bug bounty** programs.
* Passive scanning for **open ports**, **subdomains**, and **vulnerabilities**.
* **Web application mapping** to identify potential attack surfaces.
* **Initial testing** for web servers and domain infrastructure.

---

## 📦 Installation

### 1️⃣ Clone the repository

```bash
git clone https://github.com/b0dj0x/b0g0x.git
cd b0g0x
```

### 2️⃣ Give execute permission to the script

```bash
chmod +x b0g0x.sh
```
---

## 🚀 Usage

### Run the full automated recon

Simply run the tool with the target domain:

```bash
./b0g0x.sh
```

This will run the following:

* **WhatWeb** to identify technologies.
* **Nmap** to scan open ports and services.
* **Nikto** to scan for vulnerabilities.
* **Subfinder** to discover subdomains.

---

---

## ⚠️ Legal Disclaimer

**b0g0x** is intended only for **authorized security testing** on **your own domains** or domains that are explicitly **in scope** for a bug bounty program.
Always ensure that you have the proper authorization before scanning any domain or IP address. Unauthorized use may violate terms of service or legal regulations.

The author is **not responsible for misuse** of this tool.

---

### 🔧 Additional Features (Optional Enhancements)

You could consider adding:

* **Proxy support** for anonymity.
* **Rate-limiting** and **delays** to avoid being blocked.
* Output to a **log file** for detailed reporting (`-o report.txt`).
* Integration with **other tools** (like **Amass**, **Recon-ng**, etc.).

---
