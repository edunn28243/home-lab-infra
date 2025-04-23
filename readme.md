🏠 Home Lab Infrastructure Project

📌 Project Title

Home Lab Infrastructure for Skills Development & Portfolio Showcase

## 📚 Table of Contents

- [Overview](#-overview)
- [Architecture](#-architecture)
- [Features](#-features)
- [Installation](#-installation)
- [Usage](#-usage)
- [Screenshots / Diagrams](#-screenshots--diagrams)
- [Configuration](#-configuration)
- [Security](#-security)
- [Todo / Roadmap](#-todo--roadmap)
- [License](#-license)
- [Author](#-author)

🧩 Overview

This project is a comprehensive home lab built to sharpen infrastructure, networking, and automation skills. It serves as a living portfolio for demonstrating cloud-native and systems architecture competencies.

🏗️ Architecture

Physical host running Proxmox VE

Multiple Linux VMs (e.g., DNS, app containers)

DHCP environment

Local DNS resolution using dnsmasq

SSH key-based authentication (ED25519)

✅ Features

Proxmox hypervisor with GUI and CLI access

Wake-on-LAN setup for energy efficiency

Static DHCP leases and hostname resolution

Local DNS with dnsmasq

SSH hardened with key authentication only

Git Bash on Windows for SSH and remote management

🛠️ Installation

Set up Proxmox on bare metal

Configure VMs with static IPs and hostnames

Set up dnsmasq for DNS

Disable root SSH, set up sudo user

Generate SSH keys and copy with ssh-copy-id

Install Git and configure terminal environment

🚀 Usage

SSH into VMs: ssh user@vm-name.local

Start Proxmox via Wake-on-LAN from another machine

Use Git Bash or PowerShell for terminal work

📸 Screenshots / Diagrams

To be added: Network topology and Proxmox dashboard screenshots

⚙️ Configuration

/etc/ssh/sshd_config: Root login disabled

/etc/dnsmasq.conf: Custom DNS entries

~/.ssh/config: Host shortcuts (optional)

System environment path configured for Git

🔐 Security

SSH: ED25519 keys, root login disabled

Local-only services, firewall enforced

Limited user accounts with sudo access

🛣️ Todo / Roadmap

Add Docker containerization

Set up CI/CD pipelines

Implement monitoring with Prometheus + Grafana

Automate with Ansible or Terraform

📄 License

MIT License

👤 Author

Eric — aspiring Solutions Architect

