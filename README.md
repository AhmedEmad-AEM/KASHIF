# 🔓 KASHIF – Advanced Password Cracking Toolkit
<img width="100%" src="https://github.com/user-attachments/assets/98c3d1b3-b626-4f0b-b927-c68f036b87c8" alt="KASHIF Banner" />

---

## 📌 Quick Overview

**KASHIF** is a professional advanced password cracking tool built around the powerful `hashcat` engine. It combines hashcat's brute force capabilities with an elegant, user-friendly interactive interface. Whether you're a security researcher or penetration tester, KASHIF provides you with the best tools in the easiest way possible.

**Version:** 4.1 | **Language:** Bash | **Status:** ⚡ Production Ready

---

## ✨ Key Features

### 🎯 Advanced Attack Modes
- **Dictionary Attacks** – Use custom wordlists (rockyou.txt and more)
- **Mask Attacks** – Test specific patterns with complete flexibility
- **Rule-Based Attacks** – Apply hashcat rules to increase success rates
- **Automatic Hash Detection** – Identify hash types automatically

### 🔧 Productivity Features
- **Interactive Colored Menu** – Clear and intuitive interface
- **Complete Results History** – Save cracked passwords in JSON format
- **Smart Hash Pattern Detection** – Support for MD5, SHA1, SHA256, SHA512, NTLM
- **Automatic Dependency Installation** – Checks and installs required libraries automatically
- **Impressive Splash Screen** – Professional and attractive design

### ⚙️ Security & Reliability
- `set -o pipefail` – Safe error handling
- Smart hash file processing
- Local data protection

---

## 📋 Requirements

```
✓ Bash 4.0 or later (most Linux/macOS systems)
✓ hashcat – Password cracking engine
✓ hashid – Hash type identification
✓ jq – JSON history management
✓ sudo – For dependencies and global installation
```

**Don't worry:** The installer will check and install requirements automatically! 🚀

---

## 🚀 One-Line Installation

Copy and paste this command into your terminal:

```bash
git clone https://github.com/AhmedEmad-AEM/KASHIF.git && cd KASHIF && bash install.sh
```

### ✅ What Does the Installer Do?
1. ✔️ Makes the main script executable
2. ✔️ Installs missing dependencies automatically
3. ✔️ Copies the program to `/usr/local/bin`
4. ✔️ Creates a symbolic link in `/usr/bin`
5. ✔️ Creates history directory and required files

### 🎮 Running the Tool

After installation, run KASHIF using:

```bash
kashif
```

Or with sudo if needed:

```bash
sudo kashif
```

---

## 🎯 Usage Examples

### Example 1: Dictionary Attack
```bash
kashif
[Select option 1]
> Enter target hash: 5d41402abc4b2a76b9719d911017c592
> Wordlist path: /usr/share/wordlists/rockyou.txt
> Hashcat mode [0]: (Press Enter)
```

### Example 2: Brute-Force (Mask) Attack
```bash
kashif
[Select option 2]
> Enter target hash: 5d41402abc4b2a76b9719d911017c592
> Choose mask type: [1] Custom or [2-5] Presets
```

### Example 3: Hash Type Detection
```bash
kashif
[Select option 4]
> Enter hash: 5d41402abc4b2a76b9719d911017c592
```

### View Cracked Password History
```bash
kashif
[Select option 5]
```

---

## 📊 Main Menu

```
  ──  MAIN MENU  ──
    [1] 📚 Dictionary Attack
    [2] 💪 Brute-Force (Mask) Attack
    [3] 🧠 Rule-Based Attack
    [4] 🔬 Hash Identifier
    [5] 📂 View Cracked Passwords
    [0] 👋 Exit
```

---

## 🗂️ Program Structure

```
KASHIF/
├── kashif              # Main script (core engine)
├── install.sh          # Automatic installation script
├── README.md           # This file
└── .github/            # GitHub files (if present)
```

### Output and Data Files

```
~/.kashif_cracked.json     # Record of cracked passwords
/tmp/kashif_*.txt          # Temporary files during operation
```

---

## 🔐 Supported Hash Types

| Hash Type | Hashcat Mode | Expected Length |
|-----------|------------|-----------------|
| **MD5** | 0 | 32 characters |
| **SHA1** | 100 | 40 characters |
| **SHA256** | 1400 | 64 characters |
| **SHA512** | 1700 | 128 characters |
| **NTLM** | 1000 | 32 characters |

> ✨ Automatic detection! Don't worry about choosing the correct mode.

---

## 💡 Tips & Tricks

### 🎯 To Improve Attack Speed
1. Use domain-specific wordlists for the target
2. Use Mask Attacks instead of Dictionary if you know part of the password
3. Apply rules to generate variations from the wordlist

### 📁 Where to Find Wordlists?
```bash
# On Kali Linux systems
/usr/share/wordlists/

# Popular wordlists
rockyou.txt          # The largest and most popular
fasttrack.txt        # Fast and effective
common.txt           # Very common words
```

### 🔍 To Detect Hash Type Easily
```bash
# Use the built-in hash detector
kashif
[Select 4]

# Or manually
echo "your_hash_here" | hashid -m
```

---

## 📚 Mask Guide (Mask Syntax)

### Basic Mask Symbols
| Symbol | Meaning | Example |
|--------|---------|---------|
| `?l` | Lowercase a-z | `?l?l?l` = abc |
| `?u` | Uppercase A-Z | `?u?u?u` = ABC |
| `?d` | Digit 0-9 | `?d?d?d` = 123 |
| `?s` | Special char !@#$ | `?s?s` = !@ |
| `?a` | Any printable character | `?a?a?a` = any 3 chars |

### Mask Examples
```bash
?l?l?l?l?l?l?l?l    # 8 lowercase letters (abcdefgh)
?u?l?l?l?d?d       # Capital + 3 lowercase + 2 digits (Abc12)
?d?d?d?d           # 4 digits only (0000-9999)
?a?a?a             # Any 3 printable characters
```

---

## 🛠️ Troubleshooting

### Issue: "hashcat not found"
```bash
sudo apt install hashcat
kashif
```

### Issue: "Permission denied"
```bash
chmod +x kashif
./kashif
```

### Issue: Password Not Found
1. Try a different wordlist
2. Verify the hash is correct
3. Try Mask Attack instead of Dictionary

### Issue: Wordlist not found
```bash
# Check the path
ls /usr/share/wordlists/

# Or use the full path
kashif
> /path/to/your/wordlist.txt
```

---

## 📊 Example Saved History

```json
[
  {
    "hash": "5d41402abc4b2a76b97...",
    "password": "hello",
    "mode": "dict",
    "timestamp": "2026-07-24T14:30:00+00:00"
  },
  {
    "hash": "482c811da5d5b4bc6...",
    "password": "password123",
    "mode": "rule",
    "timestamp": "2026-07-24T14:45:23+00:00"
  }
]
```

---

## 👥 Development Team

KASHIF was developed by a specialized cybersecurity team:

```
🔹 AHMED EMAD          – Lead Developer & Architect
🔹 MOHAMED NAGY        – Advanced Features Development
🔹 ABDALLAH NEGEADA    – Testing & Performance Optimization
🔹 ABDALLAH SALMAN     – Support & Documentation
```

---

## 📜 License

This project is open source. For more information, see the `LICENSE` file.

---

## 🎓 Important Notes

### ⚖️ Legal Responsibility
- Use KASHIF **only on systems you own or have explicit permission to test**
- **Do not use it illegally or without authorization**
- Developers are not responsible for misuse

### 🔒 Best Practices
1. Keep sensitive data secure
2. Use reliable and trustworthy wordlists
3. Test tools in isolated environments
4. Document all tests and results

---

## 🌟 Standout Features

✨ **Elegant Interface** – Professional design with attractive colors  
⚡ **Fast & Efficient** – Built on powerful hashcat engine  
🔄 **Flexible & Versatile** – Three different attack types  
📊 **Smart Detection** – Automatically identify hash types  
💾 **Complete History** – Save all results  
🚀 **Easy Installation** – One step and you're ready  

---

## 🔗 Important Links

- 🐙 [GitHub Repository](https://github.com/AhmedEmad-AEM/KASHIF)
- 📖 [Hashcat Documentation](https://hashcat.net/wiki/)
- 🎓 [Hashid Guide](https://psypanda.github.io/hashID/)

---

## 💬 Support & Contribution

Found a bug? Have an idea to improve KASHIF?

- 🐛 [Report a Bug](https://github.com/AhmedEmad-AEM/KASHIF/issues)
- 💡 [Suggest a Feature](https://github.com/AhmedEmad-AEM/KASHIF/issues)
- 🔄 [Contribute with Pull Request](https://github.com/AhmedEmad-AEM/KASHIF/pulls)

---

## 🔧 Advanced Configuration

### Custom Hash Modes
If you encounter hash types not in the default list, you can:
```bash
kashif
[Select option 4 - Hash Identifier]
# This will show you the correct hashcat mode number
```

### Performance Optimization
For faster cracking on powerful systems:
```bash
# Edit the hashcat command in kashif script:
hashcat -m [mode] -a [attack] --workload-profile=4 ...
# Workload profiles: 1 (low), 2 (default), 3 (high), 4 (nightmare)
```

---

## 📈 Statistics & Capabilities

| Metric | Capability |
|--------|-----------|
| **Supported Algorithms** | 5+ hash types |
| **Attack Methods** | 3 (Dictionary, Mask, Rules) |
| **History Tracking** | Unlimited (JSON format) |
| **Installation Time** | < 2 minutes |
| **Performance** | GPU-accelerated via hashcat |

---

<div align="center">

### 🔓 Crack Passwords Easily and Safely

**KASHIF v4.1** | All Rights Reserved © 2026

Thank you for using KASHIF! 🙏

**Crack Responsibly** | **Use Ethically** | **Stay Secure**

</div>
