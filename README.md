# 🖧 Net Ninja – Networking MultiTool
<!-- Header Image -->
<p align="center">
  <img src="https://github.com/Bishal-Prasad/Net-Ninja/blob/main/Header%20img.png?raw=true" alt="Net Ninja Header" width="80%">
</p>

**Net Ninja** is a Windows batch script ⚡ that acts as an all-in-one networking utility.  
It provides a menu-driven interface 🖥 for performing common network diagnostics 📡, monitoring 📊, and configuration tasks ⚙ — all from the Command Prompt 💻.

---

## ✨ Features

### 🔍 Network Diagnostics
1. 📡 **Ping a Host** – Test connectivity to any host or IP.  
2. 🛣 **Trace Route** – Show the path packets take to reach a host.  
3. 💻 **Show IP Configuration (Basic)** – View current IP settings.  
4. 🖥 **Show IP Configuration (Detailed)** – Display full adapter details.  
5. 🧹 **Flush DNS Cache** – Clear stored DNS records.  
6. 📜 **Show DNS Cache** – View DNS entries stored locally.  
7. 🔄 **Renew IP Address** – Request a new IP from the DHCP server.  
8. 🚪 **Release IP Address** – Release the currently assigned IP.  
9. 🌐 **Test Internet Connection** – Ping Google DNS (8.8.8.8) to check connectivity.  

### 🛠 System & Network Tools
10. 🆔 **Display MAC Address** – Show physical MAC addresses of adapters.  
11. 🖧 **Show Network Adapters** – List all network adapters and their status.  
12. 📋 **Display Routing Table** – Show routing paths for network traffic.  
13. 🔗 **Show Active Connections** – List all active TCP/UDP connections.  
14. 🎧 **Show Listening Ports** – Display ports in LISTENING state.  
15. 📊 **Live Bandwidth Monitor** – Real-time network statistics for adapters.  

### 💾 Reports & Control
16. 📝 **Save IP Config to File** – Save full network configuration to `ipconfig_report.txt`.  
17. 🚫 **Disable WiFi Adapter** – Turn off the WiFi adapter.  
18. ✅ **Enable WiFi Adapter** – Turn on the WiFi adapter.  

### 🌍 DNS & Host Tools
19. 🔎 **DNS Lookup** – Resolve a hostname to its IP address.  
20. 🔄 **Reverse DNS Lookup** – Resolve an IP address to its hostname.  

### 📶 WiFi Utilities
21. 📂 **WiFi Profile Viewer** – List saved WiFi profiles on your PC.  
22. 🔑 **WiFi Password Extractor** – Retrieve the saved WiFi password for a given profile.  

### 🔍 Scanning & Tracing
23. 📡 **Ping Sweep** – Scan an entire subnet to find live hosts.  
24. 🛤 **Traceroute with Hop Count** – Trace route with a maximum hop limit.  

### ⚙ Miscellaneous
25. 🔍 **Check Network Adapter Drivers** – Display installed network drivers.  
26. ⏳ **Network Uptime** – Show how long the network service has been running.  

---

## 📋 Requirements
To run **Net Ninja**, you need:  
- **Windows 7, 8, 10, or 11** (basically Windows 7+) 
- **Command Prompt** (Run as Administrator recommended for full functionality)  
- **Enabled Network Adapter** (for online features)  
- **PowerShell** (installed by default in modern Windows versions)  
- Permissions to execute `.bat` files  

---

## 📥 Installation
1. Download `Net_Ninja.bat` from this repository.  
2. Place it in a folder where you can easily access it (e.g., `Desktop` or `C:\Tools`).  
3. Make sure you have permission to run `.bat` files on your system.  

---
<!-- Banner Image -->
<p align="center">
  <img src="https://github.com/Bishal-Prasad/Net-Ninja/blob/main/Banner.png?raw=true" alt="Net Ninja Banner" width="1000">
</p>

## ▶ How to Use
1. **Open Command Prompt**  
   - Press `Windows + R`, type `cmd`, and press Enter.  
   - Right-click `Command Prompt` and select **Run as Administrator** (recommended).  

2. **Navigate to the script location**  
   ```bat
   cd path\to\the\folder

3. **Run the script**
   ```bat
   Net_Ninja.bat
---
## 💡 Tips & Tricks
- Run `Net_Ninja.bat` as **Administrator** for full access to networking commands.
- Edit the `.bat` file to **add or remove menu options** — it’s fully customizable.
- Use `pause` inside commands to see output before the window closes.
- You can integrate this tool with **Windows Task Scheduler** for automated network checks.
  
---
## 📥 Download Net Ninja

You can download the **Net Ninja** batch file by following these steps:  

1. Open the file page here: [Net_Ninja.bat](https://github.com/Bishal-Prasad/Net-Ninja/blob/main/Net_Ninja.bat)  
2. Click on the **Download** button, or click **Raw** and then press `Ctrl + S` to save the file.  
3. **Important:** When saving, rename the file to `Net_Ninja.bat` (if it’s saved as `.txt`, change the extension to `.bat`).  

⚠ **Note:** This tool is completely safe and designed for networking tasks only.  
Windows may still show a warning because `.bat` files can run system commands — this is normal, and not a sign of danger.  
We encourage you to **review the code first** before running it.

[![Download Net Ninja](https://img.shields.io/badge/Download-Net_Ninja.bat-blue?style=for-the-badge&logo=windows)](https://github.com/Bishal-Prasad/Net-Ninja/raw/main/Net_Ninja.bat)


---

### 🛡 Safety Notice
Before running:
- 📄 You can **view the script here** → [Open Net_Ninja.bat on GitHub](https://github.com/Bishal-Prasad/Net-Ninja/blob/main/Net_Ninja.bat)
- This script does **not** collect personal information or perform any harmful actions.
- Windows shows a warning for batch files as a general precaution, even for safe ones.
- Use only on systems you own or have permission to work on.

---
## 📜 Disclaimer

This project is developed **solely for educational purposes** and to simplify the execution of networking commands without the need to type lengthy commands manually.  

- ❌ It must **not** be used for illegal, harmful, or malicious activities.  
- ✅ Intended use is for learning, troubleshooting, and legitimate administrative tasks only.  
- ⚠ The author assumes **no responsibility** for any misuse or consequences arising from the use of this tool.  

**Please use this tool responsibly and ethically.**
