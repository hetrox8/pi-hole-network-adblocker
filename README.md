# 🛡️ Pi-hole Network-wide Ad Blocker

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
