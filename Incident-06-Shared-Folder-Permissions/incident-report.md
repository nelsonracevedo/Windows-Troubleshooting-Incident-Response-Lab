# Incident Report

## Shared Folder Access Denied Due to Missing Group Membership

**Incident #:** 06

**Date:** 7/02/2026

**System/Device:** Windows 11 Pro Virtual Machine (Domain-Joined Client)

**Severity:** Medium

---

# 1. Incident Summary

**Issue Reported:**

The user reported being unable to access a shared folder containing finance information after being authorized to access it by the Finance Department.

---

# 2. Symptoms

Symptoms observed:

- The user was able to see the shared folder but was unable to access it.
- When attempting to access the Finance shared folder, the user received an "Access Denied" message.

---

# 3. Environment Details

**Operating System:** Windows 11 Pro

**Device Type:** VMware Virtual Machine

**Network Configuration:** Domain-joined Windows 11 VM connected to an Active Directory environment.

**Domain:** nelcorp.local

---

# 4. Initial Assessment

Initial checks performed:

- Verified that the user could communicate with the server hosting the shared folder.
- Verified that the shared folder existed on the Domain Controller.
- Confirmed that the folder was being shared.
- Reviewed the NTFS and share permissions of the shared folder.

---

# 5. Troubleshooting Steps

## Step 1

**Action Performed:**

Verified that the NTFS and share permissions were correctly configured for the shared folder on the Windows Server.

**Tool Used:**

File Explorer

**Result:**

The NTFS permissions allowed access to the folder, while the share permissions restricted access to the appropriate security groups and users.

**Finding:**

The shared folder was configured to allow access only to administrators and members of the Finance security group.

---

## Step 2

**Action Performed:**

Verified whether the user attempting to access the shared folder was a member of the Finance security group and confirmed with the Finance Department that the user was authorized to access the financial information.

**Tool Used:**

Active Directory Users and Computers

**Result:**

The Finance Department confirmed that the user was authorized to access the financial data. However, Active Directory Users and Computers showed that the user was not a member of the Finance security group.

**Finding:**

The user was authorized to access the resource but was missing the required security group membership.

---

## Step 3

**Action Performed:**

Added the user to the Finance security group.

**Tool Used:**

Active Directory Users and Computers

**Result:**

The user was successfully added to the Finance security group.

---

## Step 4

**Action Performed:**

Tested whether the user was able to access the shared folder.

**Tool Used:**

File Explorer

**Result:**

The user was able to successfully access and edit data in the Finance shared folder.

---

# 6. Root Cause

The user was unable to access the Finance shared folder because they were not a member of the Finance security group. Access to the shared folder was restricted to authorized users and members of the Finance security group.

---

# 7. Resolution

Steps performed:

- Reviewed the shared folder's NTFS and share permissions.
- Checked the user's Active Directory group membership.
- Confirmed with the Finance Department that the user was authorized to access the financial data.
- Added the user to the Finance security group.
- Tested the user's ability to access and modify files in the shared folder.

---

# 8. Verification

Tests performed:

- Verified that the user was able to access the Finance shared folder.
- Verified that the user could read files within the folder.
- Verified that the user could modify files according to the assigned permissions.
- Confirmed that access was granted through the Finance security group.

---

# 9. Screenshots / Evidence

(Add screenshots here)

---

# 10. Lessons Learned

This incident demonstrated the importance of properly managing NTFS and shared folder permissions. It also showed how security groups can be used to manage access to organizational resources efficiently. Assigning users to department specific security groups helps ensure that users receive the appropriate level of access to shared resources.