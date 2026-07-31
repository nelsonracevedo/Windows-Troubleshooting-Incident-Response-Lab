# Incident Report

## Network Problem
**Incident #:  01
**Date: 5/25/2026 
**System/Device: Windows 11 Pro Virtual Machine (Domain-Joined Client) 
**Severity: Low

---

# 1. Incident Summary

**Issue Reported:**

Describe the problem from the user's perspective.

Example:
> The user reported that they couldn't access websites from their workstation 

---

# 2. Symptoms

Symptoms observed:

- The computer wouldn't charge any website
- After failing to charge the website it would show an error "{website domain}'s IP Address could be not found"

---

# 3. Environment Details

**Operating System: Windows 11 Pro 

**Device Type: VMware Virtual Machine 

**Network Configuration:  Connected to Active Directory environment

**Domain/Workgroup: nelcorp.local


---

# 4. Initial Assessment

Initial checks performed::

- Verified that the Windows 11 client VM was powered on and connected to the network.
- Confirmed that the issue was only affecting this workstation.
- Checked the network adapter status and confirmed it was enabled.
- Tested network connectivity with the ping command.
- Tested network connectivity with the nslookup command and realized it was a problem with the DNS server. 

---

# 5. Troubleshooting Steps

## Step 1: 

**Action Performed:**

Reviewed the workstation's IP configuration to verify the IP address, default gateway, and DNS settings.

**Command Used:**

```cmd
ipconfig /all
```
**Result**
All the workstation network configuration was correct except the DNS server IP which should've been 192.168.44.10 and instead was set to 192.168.65.10

**Finding**
The problem might be a DNS server error rather than a connection error


## Step 2: 

**Action Performed:**

Ping the server IP (192.168.44.10) and the Google Public DNS ip (8.8.8.8)

**Command Used:**

```cmd
ping 192.168.44.10
ping 8.8.8.8
```
**Result**
The tests of network connectivity to both IPs was a success

**Finding**
In fact the problem was the incorrect settings in the DNS server IP address




