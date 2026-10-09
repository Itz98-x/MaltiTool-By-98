# MaltiTool By 98

A menu-driven Windows toolbox written in batch (`.bat`). It puts Android (ADB / scrcpy) helpers, Windows maintenance fixes and basic network tools behind one numbered menu, so common IT jobs take a single keypress.

---

## Features at a glance

| Area | What it does |
|------|--------------|
| Android | Mirror/control a phone with scrcpy, run ADB commands, use the ADB ToolBox |
| Windows maintenance | Clear temp files, repair corrupted system files, fix shortcut arrows and icons |
| Network | Ping tests, router checks, DNS flush, IP renew, network stack reset |
| Wi-Fi | Export saved Wi-Fi profiles and passwords from the current Windows PC |

---

## Requirements

- Windows 10 or Windows 11
- A terminal that supports ANSI colors (Windows Terminal or recent `cmd`)
- Administrator rights for the maintenance tools (the launcher asks via UAC)
- For Android tools: USB debugging enabled on the phone, and a USB cable

## Folder structure

MaltiTool expects a folder named `By 98` next to the launcher:

```
MaltiTool By 98.bat          <- main launcher (run this)
By 98/
├── scrcpy-win64-v3.3.1/     <- scrcpy.exe lives here
├── platform-tools/          <- adb.exe lives here
├── ADB Toolbox.bat
├── ADB D.bat                <- device check, used by ADB Toolbox
├── Clear.bat
├── Fix Corrupted System Files.bat
├── Remove Shortcut Arrow In Windows.bat
├── Restore Shortcut Arrow In Windows 11.bat
├── Icon Fixer.bat
├── Icon Filer v2.bat
├── WiFi Password Dumper.bat
├── Ping Master.bat
└── Reset IP Settings.bat
```

Download scrcpy and Android platform-tools separately and place them in the folders shown above.

## How to use

1. Put all files in the layout above.
2. Double-click `MaltiTool By 98.bat`.
3. Type the number of the tool you want and press Enter.
4. Type `99` to exit.

---

## Main menu

| Menu # | Tool | Description |
|:------:|------|-------------|
| 1 | Scrcpy (default) | Opens scrcpy to mirror and control a connected Android device |
| 2 | Scrcpy (Fullscreen) | Same as above, launched with `-f` (fullscreen) |
| 3 | ADB | Opens a command prompt inside `platform-tools` so you can type `adb` commands |
| 4 | ADB ToolBox | Opens the ADB ToolBox menu (see below) |
| 5 | Clear Temp Files | Runs `Clear.bat` as administrator |
| 6 | Fix Corrupted System Files | Runs `Fix Corrupted System Files.bat` as administrator |
| 7 | Remove Shortcut Arrow | Removes the arrow overlay from desktop shortcut icons (admin) |
| 8 | Restore Shortcut Arrow (Win 11) | Puts the shortcut arrow back (admin) |
| 9 | Icon Fixer | Repairs broken or blank icons (admin) |
| 10 | Icon Fixer V2 | Alternative icon repair (admin) |
| 11 | WiFi Password Dumper | Exports saved Wi-Fi names and passwords |
| 12 | Ping Master | Ping and connectivity tests |
| 13 | Reset IP | DNS, IP and network reset options |
| 99 | Exit | Closes MaltiTool |

> **Note:** see [Known issues](#known-issues). In the current script the numbers handled in code are shifted by one compared with the numbers displayed in the menu.

---

## Sub tools

### ADB ToolBox (`ADB Toolbox.bat`)

A simple menu around common `adb` commands. Requires a device with USB debugging enabled.

| # | Option | Command used |
|:-:|--------|--------------|
| 1 | Check Device | Launches `ADB D.bat` |
| 2 | Reboot Device | `adb reboot` |
| 3 | Reboot Recovery | `adb reboot recovery` |
| 4 | Reboot Fastboot | `adb reboot bootloader` |
| 5 | Install APK | `adb install <path>` (drag and drop the APK into the window) |
| 6 | Show Package List | `adb shell cmd package list packages` |
| 7 | Uninstall Package | `adb uninstall <package name>` |
| 9 | Open Shell | `adb shell` |
| 99 | Exit | Closes the tool |

### Android ADB (`Android ADB.bat`)

A one-line shortcut that opens a command prompt in a `platform-tools` folder. The path is hardcoded to `C:\Users\Hacker_98\Desktop\Android\platform-tools`, so edit it to match your own machine.

### Ping Master (`Ping Master.bat`)

Continuous ping (`ping -t`) shortcuts. Press `Ctrl + C` to stop a running ping.

| # | Target |
|:-:|--------|
| 1 | google.com |
| 2 | youtube.com |
| 3 | 192.168.0.1 |
| 4 | 192.168.1.1 |
| 5 | 192.168.10.1 |
| 6 | Custom address (you type it) |
| 99 | Exit |

Options 3 to 5 are common default router addresses, which makes this a quick way to check whether the router is reachable.

### Reset IP (`Reset IP Settings.bat`)

Network repair options. Run as administrator.

| # | Option | Commands |
|:-:|--------|----------|
| 1 | Flush DNS | `ipconfig /flushdns` |
| 2 | Get New IP | `ipconfig /release` then `ipconfig /renew` |
| 3 | Fix No Internet | `netsh winsock reset` and `netsh int ip reset` (restart the PC afterwards) |
| 4 | Reset Firewall | `netsh advfirewall reset` (restores Windows Firewall defaults and removes custom rules) |
| 9 | Exit | Closes the tool |

### WiFi Password Dumper (`WiFi Password Dumper.bat`)

Reads the Wi-Fi profiles saved on the current Windows PC using `netsh wlan show profile ... key=clear`, and writes `name:password` pairs to `wifi.txt` in the same folder as the script.

Use it only on computers you own or are authorized to service, for example recovering a password for a customer who forgot it, with their permission. Delete `wifi.txt` when you are done, since it stores passwords in plain text.

---

## Disclaimer

These tools change system settings (firewall, network stack, registry-based icon tweaks, system files). Use them at your own risk, keep a backup or restore point, and only run them on systems you are authorized to maintain.

## Credits

Created by **98**.
