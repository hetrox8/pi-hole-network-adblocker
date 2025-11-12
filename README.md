# 🛡️ Pi-hole Network-wide Ad Blocker

![Pi-hole](https://img.shields.io/badge/Pi-hole-FF6C02?style=for-the-badge&logo=pi-hole&logoColor=white)
![DNS](https://img.shields.io/badge/DNS-0A84FF?style=for-the-badge)
![Homelab](https://img.shields.io/badge/Homelab-FF6C02?style=for-the-badge)

![Pi-hole Dashboard](images/dashboard.png)

## 📖 Project Description

This repository contains a complete, production-ready implementation of **Pi-hole**, a network-level advertisement and internet tracker blocking application. Pi-hole acts as a DNS sinkhole, protecting all devices on your network from unwanted content without requiring any client-side software.

### What is Pi-hole?

Pi-hole is a Linux network-level advertisement and internet tracker blocking application which acts as a DNS sinkhole. It's designed for use on private networks and blocks ads for all devices connected to your network, improving privacy, security, and network performance.

### Key Benefits

- **🚫 Block Ads Everywhere**: Blocks ads on all devices including smart TVs, mobile devices, and IoT devices that can't run traditional ad blockers
- **🔒 Enhanced Privacy**: Prevents tracking scripts and analytics from following your online activity
- **⚡ Faster Browsing**: Reduces bandwidth usage and speeds up page loading by blocking unwanted content
- **🛡️ Network Security**: Protects against malware and phishing by blocking malicious domains
- **📊 Network Insights**: Provides detailed analytics about your network's DNS queries and blocked content
- **💰 Cost Effective**: Runs efficiently on low-power hardware like Raspberry Pi

### Use Case

This implementation is designed for a **homelab environment** running on **Hyper-V virtualization**, providing enterprise-grade ad blocking and DNS management for home networks. It currently protects 15+ devices and processes over 175,000 DNS queries daily, blocking approximately 28.5% of requests (50,000+ ads per day).

## 🚀 Features

- **Network-wide Ad Blocking** - Blocks ads on all connected devices
- **Privacy Protection** - Prevents tracking and analytics
- **Malware Protection** - Blocks known malicious domains
- **DNS Management** - Centralized DNS control with custom rules
- **Real-time Analytics** - Monitor network traffic and blocked content
- **Client Group Management** - Device-specific filtering rules

## 📊 Project Impact

| Metric | Result |
|--------|--------|
| **Ads Blocked Daily** | 50,000+ |
| **Block Rate** | 28.5% |
| **Devices Protected** | 15+ |
| **DNS Queries/Day** | 175,000+ |

## 🛠️ Technical Stack

- **Platform**: Raspberry Pi OS on Hyper-V
- **Core Service**: Pi-hole vX.X
- **DNS**: Cloudflare + Google (DoH)
- **Virtualization**: Hyper-V
- **Network**: Internal Virtual Switch

## 🏗️ Architecture

![Network Diagram](images/network-diagram.png)

## ⚡ Quick Start

### Prerequisites
- Hyper-V enabled Windows system
- Minimum 1GB RAM available
- Network connectivity

### Automated Installation
```bash
# Run the setup script
chmod +x scripts/setup-pihole.sh
./scripts/setup-pihole.sh
```

### Manual Installation
```bash
# Install Pi-hole
curl -sSL https://install.pi-hole.net | bash

# Configure network
sudo nano /etc/dhcpcd.conf
```

## 🔧 Configuration

### Network Setup
```bash
# Static IP configuration
interface eth0
static ip_address=172.29.13.188/20
static routers=172.29.0.1
```

### Router Integration

1. Access router admin panel (192.168.1.1)
2. Set DNS server to 172.29.13.188
3. Restart router and devices

## 📈 Monitoring

Access the admin interface at: http://172.29.13.188/admin

![Statistics Dashboard](images/statistics.png)

## 🚨 Troubleshooting

Common issues and solutions are documented in docs/troubleshooting.md

## 🔄 Maintenance

### Update Blocklists
```bash
./scripts/update-lists.sh
```

### Backup Configuration
```bash
./scripts/backup-config.sh
```

## 📝 License

This project is open source and available under the MIT License.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the issues page.

## 📧 Contact

- GitHub: [@hetrox8](https://github.com/hetrox8)
- Repository: [pi-hole-network-adblocker](https://github.com/hetrox8/pi-hole-network-adblocker)

## ⭐ Show your support

Give a ⭐️ if this project helped you!
