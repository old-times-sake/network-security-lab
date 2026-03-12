Lab 1: Network Firewall Configuration & Verification (Windows/Linux)
Project Overview
This laboratory focuses on the practical implementation of network security policies using stateful and stateless firewalls. The project covers rule creation, administrative automation via CLI, and traffic observability through system logs on both Windows and Linux platforms.
Authors: Maciej Borysiewicz, Mikołaj Zarzeczny 
Key Technical Objectives
•	Policy Implementation: Deploying "explicit block" rules for specific services (TCP/80).
•	Automation: Comparing GUI-based configuration with PowerShell scripting for reproducible security policies.
•	Observability: Utilizing Event Viewer (Windows) and UFW status (Linux) to audit firewall changes.
•	Validation: Performing positive and negative connectivity tests using an Apache HTTP server.
Technical Stack
Platform	Tools & Services
Windows	Windows Defender Firewall (WFAS), PowerShell, Event Viewer (ID 2097) 
Linux	UFW (Uncomplicated Firewall) 
Services	Apache HTTP Server (httpd) 
Laboratory Workflow
1. Windows Firewall Configuration
•	GUI Method: Used the "New Inbound Rule Wizard" to block incoming traffic on TCP Port 80.
•	CLI Method: Executed the New-NetFirewallRule command in PowerShell to automate the block policy.
•	Verification: Confirmed rule persistence and priority within the WFAS console.
2. Linux Firewall Management
•	Activation: Enabled UFW to transition from inactive to active state.
•	Rule Setup: Implemented an "explicit allow" policy for administrative traffic:
o	SSH (22/tcp) 
o	RDP (3389/tcp) 
3. Auditing & Logging
•	Analyzed Event ID 2097 in the Windows Firewall channel to verify that new rules were successfully parsed and added to the exception list.
4. Testing & Validation
•	Initial State: Verified that the Apache server was reachable ("It works!") before applying blocks.
•	Policy Enforcement: Confirmed that firewall rules effectively dropped traffic to port 80 despite the application service being operational.
Conclusion
The lab demonstrates that while GUI tools are effective for visual verification, CLI tools (PowerShell/UFW) provide the automation necessary for consistent security posture across multiple endpoints. Proper logging remains the cornerstone of network observability and incident response.
