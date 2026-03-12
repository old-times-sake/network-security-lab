# Lab 1: Network Firewall Configuration & Verification (Windows/Linux)

## Authors
* old-times-sake

## Project Overview
This project documents the practical implementation of network security policies using stateful and stateless firewalls on Windows and Linux platforms. The lab focuses on service blocking, administrative automation, and network observability through system logs.

## Technical Implementation

### Windows Environment
**GUI Configuration**: Utilized Windows Defender Firewall with Advanced Security (WFAS) to create an inbound rule named `Blokada_HTTP_80`.
**Service Control**: Implemented an explicit block for all incoming traffic on **TCP Port 80**.
**PowerShell Automation**: Automated the deployment of the block policy using the `New-NetFirewallRule` command.
**Auditing**: Verified rule enforcement by monitoring **Event ID 2097** in the Windows Event Viewer.

### Linux Environment
**Firewall Activation**: Configured the Uncomplicated Firewall (UFW), transitioning the status from inactive to active.
**Access Control**: Defined "explicit allow" rules for administrative services, specifically permitting **SSH (22/tcp)** and **RDP (3389/tcp)** traffic.

## Testing & Validation
**Initial State**: Verified that the Apache HTTP server was operational and reachable, displaying the "It works!" status.
**Rule Verification**: Conducted connectivity tests to ensure that the firewall successfully dropped packets on port 80 while the application service remained active.
**Syntax Checks**: Performed pre-deployment validation using `httpd.exe -t` to ensure application stability before testing firewall rules.

## Conclusion
The lab demonstrates the efficacy of both graphical and command-line tools in managing network security perimeters. By utilizing persistent configurations and detailed logging, the environment ensures high observability and a reduced attack surface.
