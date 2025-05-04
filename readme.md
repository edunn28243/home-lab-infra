# 🏠 Home Lab Infrastructure Project

## 📌 Test IT Solution

Home Lab Infrastructure for Skills Development & Portfolio Showcase

## 📚 Table of Contents

- [Overview](#overview)  
- [Existing Architecture](#existing--architecture)  
- [Features](#features)  
- [Installation](#installation)  
- [Usage](#usage)  
- [Screenshots / Diagrams](#screenshots--diagrams)  
- [Configuration](#configuration)  
- [Security](#security)  
- [Todo / Roadmap](#todo--roadmap)    
- [Author](#author)

## Overview

This project is a comprehensive home lab built to sharpen infrastructure, networking, and automation skills. It serves as a living portfolio for demonstrating cloud-native and systems architecture competencies.

## Existing Architecture

- Physical Server host running Proxmox VE  
- Physical Windows host for management  
- Linux VMs
	- Docker host
	- Bastion host
	- Ubuntu for Samba4
- Windows VMs
	- RSAT (AD tools)
	- Bastion for Remote Desktop
- SSH key-based authentication (ED25519)  

## Features

- Proxmox hypervisor with GUI and CLI access  
- Wake-on-LAN setup for energy efficiency  
- Static DHCP leases and hostname resolution  
- Local DNS with Samba4
- SSH hardened with key authentication only  
- RSAT id Management (Active Directory)
- Windows Management Machine
	- Git Bash
	- Python, Git paths added to System Environment Variables for PowerShell

## Installation

1. Set up Proxmox on bare metal  
2. Configure VMs with static IPs and hostnames  
3. Set up Samba4 for DNS  
4. Disable root SSH, set up sudo user  
5. Generate SSH keys and copy with `ssh-copy-id`  
6. Install Git and configure terminal environment   
7. Set up identity management

## Usage

- SSH into VMs: `ssh user@vm-name.local`  
- Start Proxmox via Wake-on-LAN from another machine  
- Use Git Bash or PowerShell for terminal work  
- Use web interfaces when necessary/advantageous

## Screenshots / Diagrams

_To be added: Network topology and Proxmox dashboard screenshots._

## Configuration

- `/etc/ssh/sshd_config`: Root login disabled  
- `~/.ssh/config`: Host shortcuts (optional)  
- System environment path configured for Git

## Security

- SSH: ED25519 keys, root login disabled  
- Local-only services, firewall enforced  
- Limited user accounts with sudo access

## Todo / Roadmap

- Add Docker containerization for web services
- Establish identity management for centralized security  
- Auth solution w/ an IDp
- Deploy Cloudflare account
- Integrate w/ AWS dev+prod environments
- Vulnerability Scanning with Tenable Nessus
- Implement monitoring with Prometheus + Grafana  
- Set up CI/CD pipelines  
- Automate with Ansible
- IAC w/ Terraform

## Author

Eric — aspiring Solutions Architect
