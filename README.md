# 🛡️ Pi-hole Network-wide Ad Blocker
![Pi-hole](https://img.shields.io/badge/Pi-hole-FF6C02?style=for-the-badge&logo=pi-hole&logoColor=white)
![DNS](https://img.shields.io/badge/DNS-0A84FF?style=for-the-badge)
![Homelab](https://img.shields.io/badge/Homelab-FF6C02?style=for-the-badge)
![Pi-hole Dashboard](images/dashboard.png)

A complete implementation of Pi-hole for network-wide ad blocking, tracking protection, and DNS management in a homelab environment.

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
Manual Installation
bash

# Install Pi-hole
curl -sSL https://install.pi-hole.net | bash

# Configure network
sudo nano /etc/dhcpcd.conf

🔧 Configuration
Network Setup
bash

# Static IP configuration
interface eth0
static ip_address=172.29.13.188/20
static routers=172.29.0.1

Router Integration

    Access router admin panel (192.168.1.1)

    Set DNS server to 172.29.13.188

    Restart router and devices

📈 Monitoring

Access the admin interface at: http://172.29.13.188/admin

https://images/statistics.png
🚨 Troubleshooting

Common issues and solutions are documented in docs/troubleshooting.md
🔄 Maintenance
Update Blocklists
bash

./scripts/update-lists.sh

Backup Configuration
bash

./scripts/backup-config.sh
