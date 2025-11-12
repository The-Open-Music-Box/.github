# TheOpenMusicBox

![License](https://img.shields.io/badge/License-Custom-blue.svg)
![RPI: v0.4.1](https://img.shields.io/badge/RPI-v0.4.1-green)
![ESP32: v0.4.1](https://img.shields.io/badge/ESP32-v0.4.1-orange)
![Flutter: v0.4.1](https://img.shields.io/badge/Flutter-v0.4.1-blue)

---

## The Story

I wanted to share my passion with my kids: music and video games. This is how the project started.

First, I built a quick Python script on a Raspberry Pi that plays audio tracks when scanning an NFC tag. My kid just LOVED it! Instead of stupid songs, I was listening to my favorite video game tracks as my son discovered them.

It needed an easy UI so users can easily add tracks and tags without having to go into code.

Here comes **The Open Music Box** project.

---

## What is it?

A simple Raspberry Pi with an audio HAT and NFC reader - and you can enjoy it!

It has a simple web UI to manage your tracks and tags:

### Your List of Tracks

Manage your music library with an easy-to-use interface. Add, organize, and play your favorite tracks.

### Easy NFC Association

Simply scan an NFC tag and associate it with a playlist. Touch the tag, and the music starts playing instantly!

### Easy Management

- Add tracks from your local files
- Download from YouTube
- Create and organize playlists
- Control playback with physical buttons or the web interface

### Auto Setup

Automated deployment scripts make installation a breeze. Just run the setup script and you're ready to go!

### Works with Any Compatible Tags*

(*you have to provide the tracks)

Use any NFC tags you have - cards, stickers, figurines. Make your music collection tangible and fun for kids!

---

## Hardware Options

### Raspberry Pi Version (Recommended)

- Full-featured music player with web UI
- YouTube download support
- Easy setup and deployment
- Works with Raspberry Pi 3/4/5

**Components:**
- Raspberry Pi 3/4/5
- Waveshare WM8960 Audio HAT
- PN532 NFC Reader
- Optional: Physical buttons and rotary encoder

### ESP32 Version (In Development)

A standalone, embedded version for a more compact solution.

- Smaller footprint
- Lower power consumption
- Ideal for portable applications

**Status:** Alpha - contributions welcome!

---

## Flutter App (In Development)

A universal mobile app to control your music box from your phone:

- Works with both Raspberry Pi and ESP32
- Multi-device support
- mDNS auto-discovery
- Real-time synchronization

**Status:** Alpha - contributions welcome!

---

## Features

- **Tangible Music Control**: Physical NFC tags make music interactive and fun for kids
- **Screen-Free Experience**: No screens needed - just tap a tag and enjoy
- **Easy Management**: Simple web interface to organize your music
- **Multi-Platform**: Choose between Raspberry Pi or ESP32 hardware
- **Open Source**: Fully open for non-commercial use and contributions

---

## Getting Started

### Quick Start (Raspberry Pi)

1. Flash Raspbian on your SD card
2. Install the audio HAT and connect the NFC reader
3. Clone the repository:
   ```bash
   git clone https://github.com/The-Open-Music-Box/raspberrypi-firmware.git
   cd raspberrypi-firmware
   ```
4. Run the setup script:
   ```bash
   ./setup.sh
   ```
5. Access the web UI at `http://theopenmusicbox.local:5004`

For detailed installation instructions, see the [Technical Specifications](TECHNICAL_SPECIFICATIONS.md).

---

## Documentation

- **[Technical Specifications](TECHNICAL_SPECIFICATIONS.md)** - Full technical details, architecture, and API documentation
- **[Contracts Repository](https://github.com/The-Open-Music-Box/contracts)** - API specifications and data models
- **[RPI Firmware](https://github.com/The-Open-Music-Box/raspberrypi-firmware)** - Raspberry Pi implementation
- **[ESP32 Firmware](https://github.com/The-Open-Music-Box/esp32-firmware)** - ESP32 embedded implementation (coming soon)
- **[Flutter App](https://github.com/The-Open-Music-Box/flutter_app)** - Mobile application (coming soon)

---

## Contributing

Contributions are welcome! Whether you want to:
- Add features to the RPI version
- Help develop the ESP32 firmware
- Build the Flutter app
- Improve documentation
- Report bugs

Feel free to open an issue or submit a pull request.

---

## License

**Open Source with Reserved Commercial Rights**

- ✅ **Free for non-commercial use**: Use, modify, distribute freely
- ✅ **Open contributions**: Pull requests welcome
- ⚠️ **Commercial use reserved**: Monetization requires licensing from original author (Jonathan Piette)

See [LICENSE](LICENSE) for full terms.

---
## Special thanks

[@Lynerah](https://github.com/lynerah) for web development and 3d modeling

## Contact

**Jonathan Piette** - Creator & Maintainer

- GitHub: [@jonathanpiette](https://github.com/jonathanpiette)
- Email: contact@theopenmusicbox.com
- Issues: [GitHub Issues](https://github.com/The-Open-Music-Box)

## Support the Project

If you enjoy this project and want to support its development:

<a href="https://www.buymeacoffee.com/rhy6j5cdpq9" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
