# IT Automation Scripts for WestSpring IT

This repository contains various automation scripts used by WestSpring IT to manage and configure devices, perform system checks, and automate repetitive tasks. The scripts are written in **PowerShell** for Windows-based tasks and **Bash** for macOS-based tasks.

## Table of Contents

- [Atera RMM and Duo Authentication Service Check](#atera-rmm-and-duo-authentication-service-check)
- [Font Registration Script (PowerShell)](#font-registration-script-powerShell)
- [Registry Modification and Task Scheduling (PowerShell)](#registry-modification-and-task-scheduling-powerShell)
- [Set Hostname Based on Serial Number (macOS)](#set-hostname-based-on-serial-number-macos)
- [Create Local Administrator on macOS](#create-local-administrator-on-macos)
- [Set Desktop Wallpaper on macOS](#set-desktop-wallpaper-on-macos)
- [JSON Bookmark List](#json-bookmark-list)
- [Remove Font Files (PowerShell)](#remove-font-files-powershell)

---

## Atera RMM and Duo Authentication Service Check

### Purpose:
This **PowerShell** script checks whether the **Atera RMM Agent** service is running and whether the **Duo Authentication** client is installed on the computer.

### Key Actions:
- Retrieves the status of the Atera RMM Agent service.
- Checks for the installation of Duo Authentication using its identifying number.
- Returns a compliance status in JSON format.

---

## Font Registration Script (PowerShell)

### Purpose:
This **PowerShell** script registers font files found in a specified folder and installs them into the **Windows Fonts directory**.

### Key Actions:
- Scans a local folder (`fonts`) for `.ttf` font files.
- Copies each font file into the **C:\Windows\Fonts** directory.
- Registers the font files for system use.

### Notes:
- The registration is temporary and only applies to applications that load fonts via the script.
- For permanent installation, additional registry changes are required.

---

## Registry Modification and Task Scheduling (PowerShell)

### Purpose:
This **PowerShell** script modifies a specific Windows registry key and schedules a task to run.

### Key Actions:
- Creates a registry key for verifying multifactor authentication (MFA) settings.
- Adds read permissions for the "Interactive" group to the registry key.
- Starts a predefined scheduled task (`LicenseAcquisition`).

### Notes:
- Ensure the task `LicenseAcquisition` exists on the system.
- The script modifies system-level registry settings, so administrator rights are required.

---

## Set Hostname Based on Serial Number (macOS)

### Purpose:
This **Bash** script sets the **hostname** of a macOS system based on its **serial number**.

### Key Actions:
- Retrieves the Mac's serial number using `system_profiler`.
- Constructs a new hostname using the format `WS-<SerialNumber>`.
- Applies the new hostname using `scutil`.

### Notes:
- The script only works on macOS and requires admin privileges to set the hostname.

---

## Create Local Administrator on macOS

### Purpose:
This **Bash** script creates a local **administrator user** on macOS systems.

### Key Actions:
- Creates a new user (`wsadmin`) with specified attributes.
- Sets the password for the user.
- Adds the new user to the **admin group**.
- Creates the user's home directory.

### Notes:
- This script should only be run in secure environments as it creates a local admin user.

---

## Set Desktop Wallpaper on macOS

### Purpose:
This **Bash** script downloads and sets the **desktop wallpaper** on macOS systems.

### Key Actions:
- Downloads a wallpaper image from a specified URL (`desktop-wallpaper.jpeg`).
- Sets the downloaded image as the desktop wallpaper using AppleScript (`osascript`).

### Notes:
- The script assumes that `curl` and `osascript` are available on the system.
- The wallpaper is saved in the `/Users/Shared` directory.

---

## JSON Bookmark List

### Purpose:
This JSON structure defines a list of **bookmarks** for commonly used applications and tools by WestSpring IT.

### Key Actions:
- Contains URLs for services like **AutoTask PSA**, **Atera RMM**, **Microsoft Lighthouse**, **IT Glue**, and many more.
- The structure allows for easy addition or removal of URLs.

### Notes:
- The bookmarks are stored in a JSON format for easy integration into web portals or automated platforms.

---

## Remove Font Files (PowerShell)

### Purpose:
This **PowerShell** script removes specific **font files** from the **Windows Fonts directory**.

### Key Actions:
- Loops through a folder of `.ttf` font files and attempts to remove any that already exist in the **C:\Windows\Fonts** directory.

### Notes:
- The script will only delete fonts that are already installed in the system's Fonts directory.
- It requires administrative privileges to remove system fonts.

---

## Prerequisites

- **PowerShell** (Windows Scripts)
- **Bash** (macOS Scripts)
- Administrator rights on the machine for certain tasks (e.g., modifying registry, adding users, setting hostname)
- Access to system resources like the Windows Fonts directory or the macOS system settings

## How to Use

1. Clone this repository or download the scripts you need.
2. Run the scripts with the appropriate administrative privileges.
3. Customize script variables (such as file paths, usernames, URLs) based on your specific environment.

## License

This repository is intended for internal use by **WestSpring IT**. Unauthorized distribution or modification is not allowed without permission.

---

For further questions or issues, please contact the IT support team at **support@westspringit.com**.
