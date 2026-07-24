# KASHIF
# 🔓 KASHIF – Advanced Password Cracking Toolkit

**KASHIF** is a professional, menu‑driven password cracking tool built as a Bash script around `hashcat`. It simplifies hash identification, dictionary attacks, brute‑force (mask) attacks, rule‑based attacks, and cracked password history – all from a clean, colourful terminal interface.

---

## ✨ Features

- **Interactive menu** with clear options and colour‑coded output.
- **Dictionary attacks** – use custom wordlists (default: `rockyou.txt`).
- **Mask (brute‑force) attacks** – flexible mask patterns with presets.
- **Rule‑based attacks** – apply hashcat rules to wordlists.
- **Hash identifier** – automatically detect hash types using `hashid`.
- **Cracked password history** – saved to `~/.kashif_cracked.json`.
- **Smart hash mode detection** – supports MD5, SHA1, SHA256, SHA512, NTLM.
- **Auto‑install dependencies** – checks for `hashcat`, `hashid`, `jq`.
- **Ultra‑cool splash screen** – professional branding.

---

## 📋 Requirements

- **Bash** 4.0 or later (most Linux/macOS systems).
- **hashcat** – the password cracking engine.
- **hashid** – for hash type identification.
- **jq** – for JSON history management.
- **sudo** – for installing dependencies and global installation.

The installer will automatically check and install missing dependencies.

---

## 🚀 One‑Line Installation

Copy and paste this command into your terminal:

```bash
git clone https://github.com/AhmedEmad-AEM/KASHIF.git && cd KASHIF && bash install.sh
