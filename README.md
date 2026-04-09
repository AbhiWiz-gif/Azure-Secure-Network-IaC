# Azure-Secure-Network-IaC#

## 🗺️ Project Vision
Building a secure, enterprise-grade cloud environment using a "Security-First" mindset. This project automates the deployment of a dual-environment (Dev/Test) infrastructure using **Azure Bicep**, focusing on zero-trust connectivity and automated resource management.

> **The Analogy:** Think of this as building a digital fortress. Instead of building it brick-by-brick (manual clicking), I have written a "Master Blueprint" (Bicep) that can reconstruct the entire fortress, including the vaults, private tunnels, and guards, in minutes.

---

## 🏗️ Architecture Highlights
- **Hub-and-Spoke Ready:** Dual VNet topology with peering.
- **Zero Public Exposure:** All management via **Azure Bastion** (No Public IPs).
- **Traffic Control:** Internal Load Balancing and Micro-segmentation via NSGs/ASGs.
- **Secure Data:** Private Endpoints for Storage and Key Vault for secret management.

## 🛠️ Tech Stack
- **Cloud:** Microsoft Azure
- **IaC:** Azure Bicep (Modular)
- **Security:** NSG, ASG, Key Vault, Bastion
- **Tools:** Git, VS Code, Draw.io

---

## 📂 Project Structure
- `/modules`: Categorized Bicep modules (Compute, Network, Security, Storage).
- `main.bicep`: The master deployment file.
- `params.json`: Environment-specific configurations.

---

## 🚀 About Me
I am a Cybersecurity graduate (Master's) and certified professional (Security+, eJPT) transitioning into Cloud Administration. This project demonstrates my ability to merge security principles with automated cloud infrastructure.
