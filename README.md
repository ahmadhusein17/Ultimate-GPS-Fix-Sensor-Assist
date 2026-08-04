# Ultimate GPS Fix & Sensor Assist (Global)

[![KernelSU](https://img.shields.io/badge/KernelSU-Supported-success)](https://kernelsu.org/)
[![Magisk](https://img.shields.io/badge/Magisk-Supported-blue)](https://topjohnwu.github.io/Magisk/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

An advanced KernelSU and Magisk module designed to drastically improve GPS accuracy, reduce lock-on time, and unlock full GNSS capabilities for Android devices worldwide. 

## 🚀 Features

- **Global NTP & Anycast Servers:** Uses Stratum 1 servers from Google, Cloudflare, and Apple for pinpoint time synchronization anywhere in the world.
- **Multi-Constellation GNSS Unlocked:** Forces the activation of all available satellites (GPS, GLONASS, Galileo, Beidou, QZSS, SBAS).
- **Sensor Assistance (Dead Reckoning):** Utilizes hardware sensors (Gyroscope, Accelerometer) to predict location when satellite signals are blocked (e.g., in tunnels, basements, or urban canyons).
- **Aggressive Satellite Locking:** Enforces zero-threshold accuracy and intermediate positioning for instant location rendering on Maps.
- **Universal Compatibility:** Works seamlessly across older OS versions (reading from `/system/etc/`) and modern Treble-supported Android versions (`/vendor/etc/` and `/vendor/etc/gnss/`).
- **Auto-Cache Cleaning:** Built-in installer script automatically wipes old A-GPS cache during flashing to ensure fresh satellite data.

## 📱 Compatibility
- **Root Manager:** KernelSU, Magisk, or APatch.
- **Android Version:** Android 9.0 (Pie) up to Android 14+.
- **Architecture:** ARM, ARM64, x86.

## 🛠️ Installation

1. Download the latest `GPS-Fix-Ultimate-KSU.zip` from the [Releases](../../releases) page.
2. Open your **KernelSU** or **Magisk** Manager app.
3. Navigate to the **Modules** tab.
4. Click **Install from storage** and select the downloaded `.zip` file.
5. Wait for the flashing process to complete and **Reboot** your device.

## ⚠️ Disclaimer
*This module forces the GPS chipset to scan aggressively and utilize maximum hardware capabilities. While it provides the best possible accuracy, it may result in slightly higher battery consumption when location services are actively used.*

*Use at your own risk. I am not responsible for bricked devices or any other issues.*

## 👨‍💻 Author
Developed and maintained by **ahmadhusein17**.

## 📝 License
This project is licensed under the MIT License - see the LICENSE file for details.
