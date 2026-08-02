# Incident Report

## No Audio
**Incident #:**  02

**Date:** 5/30/2026 

**System/Device:** Windows 11 Pro Virtual Machine (Domain-Joined Client) 

**Severity:** Low

---

# 1. Incident Summary

**Issue Reported:**

The user reported that whenever they played a multimedia file no audio was played.
# 2. Symptoms

Symptoms observed:

- The computer's speaker wouldn't produce sound at all
- There was a 'X' symbol next to the speaker symbol at the bottom.


---

# 3. Environment Details

**Operating System:** Windows 11 Pro 

**Device Type:** VMware Virtual Machine 

**Network Configuration:**  Connected to Active Directory environment

**Domain/Workgroup:** nelcorp.local


---

# 4. Initial Assessment

Initial checks performed::

- Verified that the device couldn't produce audio by playing a video.
- Verified volume levels in the volume mixer.
- Verified device drivers in the device manager. 

---

# 5. Troubleshooting Steps

## Step 1: 

**Action Performed:**

Check if device was showing in the device manager

**Tool Used:**

Device manager

**Result:**

There wasn't any sound device showing in the device manager

**Finding:**

Because the device didn't appear, it's probable that the drivers were deleted somehow or aren't recognized by the system

## Step 2: 

**Action Performed:**

A device scan was done to see if the system was able to recognize the device again and install the drivers back.

**tool Used:**

Device manager

**Result:**

The audio drivers were now showing


## Step 3: 

**Action Performed:**

Check if the audio already works by playing a video

**Tool Used:**

Youtube website

**Result:**

The video's sound was now playing normally, and the x on the side of the speaker disappeared.


# 6. Root Cause

The problem was caused by an error with the drivers most probably by being deleted from an user by mistake or a system failure.

# 7. Resolution

Steps performed:
- Tested the audio.
- Checked volume levels in the volume mixer
- Checked if the audio device was being recognized in the device manager.
- Did a device scan from the device manager.

# 8. Verification

Tests performed:
- Tested audio by playing a video.

# 9. Screenshots / Evidence
## 1. Initial Issue
The user was unable to access websites due to a network connectivity issue.

![Browser Error](screenshots/1-browser-error.png)

---

## 2. Initial Investigation
Verified the workstation's network configuration and connectivity using Command Prompt.

![Investigation - Command Prompt](screenshots/2-investigation-cmd.png)

---

## 3. Root Cause Evidence
Identified that the workstation was configured with an incorrect DNS server.

![Incorrect DNS Configuration](screenshots/3-evidence-incorrect-DNS-IP.png)

---

## 4. Resolution
Updated the DNS configuration to use the correct DNS server.

![DNS Configuration Corrected](screenshots/4-resolution.png)

---

## 5. Browser Verification
Confirmed that websites loaded successfully after applying the fix.

![Browser Test](screenshots/5-browser-test.png)

---

## 6. Command-Line Verification
Verified successful DNS resolution and network connectivity using Command Prompt.

![Command Prompt Verification](screenshots/6-test-cmd.png)

# 10. Lessons Learned

Drives control a device, so not having the correct driver for your device can make your device not work properly or not work at all. Knowing how to perform drivers scans and knowing how to check what kind of device you have installed is crucial to solve this type of issues.


