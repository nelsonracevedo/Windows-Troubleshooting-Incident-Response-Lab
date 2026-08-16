# Windows Troubleshooting & Incident Response Lab

This a hands on virtual lab focus in the troubleshooting of common issues. Every incident will be simulated in an Active Directory Environment to then be resolved and documented. 

The purpose of this project is to demonstrate knowledge and practical skills in the resolution of common system issues.

## 🖥️ Lab Environment

| Component | Details |
|---|---|
| Server | Windows Server 2022 |
| Client | Windows 11 Pro |
| Virtualization | VMware |
| Directory Services | Active Directory Domain Services |
| Domain | `nelcorp.local` |
| Network | Virtualized lab network |
| Client Type | Domain-Joined Windows 11 VM |

---

## 🎯 Project Objectives

This lab focuses on developing practical skills in:

- Windows troubleshooting
- Incident documentation
- Root cause analysis
- Active Directory administration
- User account management
- Security group management
- File and folder permissions
- DNS troubleshooting
- Hardware and driver troubleshooting
- Disk and storage management
- Network troubleshooting
- Problem verification and resolution

---

# 📋 Incidents

## Incident 01 — No Internet / DNS Misconfiguration

**Problem:**  
The workstation wasn't able to access websites because it was configured with an incorrect DNS server address.

**Skills Demonstrated:**

- DNS troubleshooting
- use of `ping` command
- use of `nslookup` command
- use of `ipconfig` command
- Network configuration
- Root cause analysis

[View Incident 01 →](Incident-01-No-Internet/incident-report.dm)

---

## Incident 02 — No Audio

**Problem:**  
The  workstation wasn't able to produce audio because the audio device was not being detected by Windows.

**Skills Demonstrated:**

- Windows Device Manager tool
- Hardware troubleshooting
- Driver troubleshooting
- Hardware detection
- Verification testing

[View Incident 02 →](Incident-02-No-Audio/incident-report.dm)

---

## Incident 03 — Disk Full

**Problem:**  
The workstation didn't have enough available disk space, preventing the user from installing new software and storing additional files.

**Skills Demonstrated:**

- Windows Storage Settings
- File Explorer
- Disk space analysis
- Identifying unnecessary files
- Storage cleanup
- Verification

[View Incident 03 →](Incident-03-Disk-Full/incident-report.dm)

---

## Incident 04 — Login Problems

**Problem:**  
A domain user was unable to log in because their Active Directory account had been disabled.

**Skills Demonstrated:**

- Active Directory Users and Computers
- User account management
- Authentication troubleshooting
- Account status investigation
- Windows login troubleshooting

[View Incident 04 →](Incident-04-Login-Problems/incident-report.dm)

---

## Incident 05 — Shared Folder Permissions

**Problem:**  
A user wasn't able to access a Finance shared folder because they were not a member of the security group which had access to the shared folder.

**Skills Demonstrated:**

- Active Directory security groups
- NTFS permissions
- Share permissions
- File and folder access
- Access control troubleshooting
- User authorization

[View Incident 05 →](Incident-05-Shared-Folder-Permissions/incident-report.dm)

---

# 🛠️ Troubleshooting Methodology

For each incident, I followed a structured troubleshooting process:

1. **Identify the problem**
2. **Document the symptoms**
3. **Perform an initial assessment**
4. **Investigate possible causes**
5. **Identify the root cause**
6. **Apply a resolution**
7. **Verify the solution**
8. **Document the incident and evidence**

---

# 📸 Documentation

Each incident contains:

- `incident-report.md` — Documentation of the incident, investigation, root cause, resolution, and verification.
- `screenshots/` — Screenshots documenting the troubleshooting process and evidence.

Example:

```text
Incident-01-No-Internet/
├── incident-report.md
└── screenshots/
    ├── 1-browser-error.png
    ├── 2-investigation-cmd.png
    ├── 3-evidence-incorrect-DNS-IP.png
    ├── 4-resolution.png
    ├── 5-browser-test.png
    └── 6-test-cmd.png