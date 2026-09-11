<div align="center">

# 📦 cPanel Migration Tool

**Automated cPanel account transfers between servers via Ansible, with clear logging and minimal downtime.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)
[![Ansible](https://img.shields.io/badge/Ansible-EE0000?style=for-the-badge&logo=ansible&logoColor=white)](https://www.ansible.com/)
[![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)](https://www.gnu.org/software/bash/)

</div>

---

## ⚠️ The Problem

Manual cPanel account migrations are error-prone and hard to audit:

| Risk | Impact |
|------|--------|
| 🔑 **Manual credential entry** | Passwords typed/pasted repeatedly across steps |
| 📋 **No consistent log** | Hard to tell what happened after the fact |
| ⏱️ **Avoidable downtime** | Manual steps take longer than they need to |

## ✨ The Solution

```
prompt for source/target credentials (never stored)
        │
        ▼
Ansible playbook drives the transfer
        │
        ▼
account moved with logged, repeatable steps
```

## 🚀 Features

- 🔐 **No stored credentials** — prompts interactively at runtime (`read -s`), never written to disk
- 🤖 **Ansible-driven** — the actual transfer logic is a proper playbook, not ad-hoc shell
- 📝 **Clear logging** — know exactly what happened, in order

## 📋 Requirements

```
✓ Ansible
✓ SSH access to source and target servers
✓ cPanel/WHM on both ends
```

## 🎮 Usage

```bash
git clone https://github.com/Nextera-Matt/cpanel-migration.git
cd cpanel-migration
./cpanel_transfer.sh
```

You'll be prompted for the source and target VM root passwords interactively — nothing is stored or logged.

## 🛠️ Stack

<p align="center">
  <img src="https://img.shields.io/badge/Ansible-EE0000?style=for-the-badge&logo=ansible&logoColor=white" />
  <img src="https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white" />
  <img src="https://img.shields.io/badge/cPanel-FF6C2C?style=for-the-badge&logo=cpanel&logoColor=white" />
</p>

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file.

## 📬 Support

<div align="center">

[![GitHub Issues](https://img.shields.io/github/issues/Nextera-Matt/cpanel-migration)](https://github.com/Nextera-Matt/cpanel-migration/issues)

[Open an Issue](https://github.com/Nextera-Matt/cpanel-migration/issues) • [Visit Portfolio](https://matthodges.uk)

</div>

---

<div align="center">

**Made by [Matt Hodges](https://matthodges.uk)**

</div>
