<p align="center">
  <img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/banner-round.png" alt="The Open Music Box" width="600" />
</p>

<p align="center">
  <strong>A repairable and upgradable audio player for children.</strong><br/>
  Play stories or music independently using NFC tags — figurines or illustrated cards.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/License-Custom-blue.svg" alt="License" />
  <img src="https://img.shields.io/badge/ESP32-v0.4.1-orange" alt="ESP32" />
  <img src="https://img.shields.io/badge/Flutter-v0.4.1-blue" alt="Flutter" />
  <img src="https://img.shields.io/badge/Contracts-OpenAPI-green" alt="Contracts" />
</p>

---

## The Story

I wanted to share my passion with my kids: music and video games. This is how the project started.

First, I built a quick Python script on a Raspberry Pi that plays audio tracks when scanning an NFC tag. My kid just LOVED it! Instead of stupid songs, I was listening to my favorite video game tracks as my son discovered them.

It needed an easy UI so users can easily add tracks and tags without having to go into code.

Here comes **The Open Music Box** project.

---

## What is it?

An open-source, NFC-based audio player designed for children — **repairable** by design and **upgradable** over time.

Kids simply tap an NFC tag (a figurine, a card, a sticker) and the music or story starts playing instantly. No screen needed, no complex menus — just tap and listen.

### Key Features

- **Tangible Music Control** — Physical NFC tags make audio interactive and fun for kids
- **Screen-Free Experience** — No screen needed, just tap a tag and enjoy
- **Stories & Music** — Play playlists, audiobooks, interactive stories, and podcasts
- **Mobile App** — Control and manage content from your phone via BLE or WiFi
- **Auto-Discovery** — Devices are found automatically on your network via mDNS
- **Repairable & Upgradable** — Standard components, open hardware, designed to last
- **Open Source** — Fully open for non-commercial use and contributions

---

## Architecture

The Open Music Box is a multi-platform project following a **contract-driven development** approach:

| Component | Description | Tech Stack |
|-----------|-------------|------------|
| **[Contracts](https://github.com/The-Open-Music-Box/contracts)** | API specifications & data models (source of truth) | OpenAPI, Socket.IO |
| **[ESP32 Firmware](https://github.com/The-Open-Music-Box/esp32-firmware)** | Embedded audio player firmware | C++, Arduino, Hexagonal Architecture |
| **[Flutter App](https://github.com/The-Open-Music-Box/flutter-app)** | Universal mobile remote control | Dart, Flutter |
| **[Web](https://github.com/The-Open-Music-Box/web)** | Project website | Next.js |
| **[PCB](https://github.com/The-Open-Music-Box/pcb)** | Custom circuit board design | KiCad |
| **[HIL Testing](https://github.com/The-Open-Music-Box/hil-testing)** | Hardware-in-the-loop test framework | Python |

### How it works

```
┌─────────────┐     NFC Tag      ┌──────────────┐     WiFi/BLE     ┌──────────────┐
│  Figurine   │ ──── tap ────▶   │   ESP32 Box  │ ◀──────────────▶ │  Flutter App │
│  or Card    │                  │  (firmware)  │                  │  (remote)    │
└─────────────┘                  └──────────────┘                  └──────────────┘
                                       │
                                   Speaker 🔊
```

---

## Getting Started

### Hardware

- ESP32-S3 development board
- PN532 NFC Reader
- I2S DAC + Speaker
- SD Card for audio storage
- Optional: D-pad buttons, LED ring

### Software

1. Clone the firmware:
   ```bash
   git clone https://github.com/The-Open-Music-Box/esp32-firmware.git
   ```
2. Flash with PlatformIO
3. Install the Flutter app on your phone
4. Pair your device and start adding content!

For detailed instructions, see the [Technical Specifications](TECHNICAL_SPECIFICATIONS.md).

---

## Documentation

- **[Technical Specifications](TECHNICAL_SPECIFICATIONS.md)** — Full technical details, architecture, and API documentation
- **[Contracts](https://github.com/The-Open-Music-Box/contracts)** — API specifications and data models
- **[Project Website](https://www.theopenmusicbox.com)** — Learn more about the project

---

## Contributing

Contributions are welcome! Whether you want to:
- Add features to the ESP32 firmware
- Build the Flutter app
- Design new PCB revisions
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

## Special Thanks

[@Lynerah](https://github.com/lynerah) for web development and 3D modeling

## Contact

**Jonathan Piette** — Creator & Maintainer

- GitHub: [@jonathanpiette](https://github.com/jonathanpiette)
- Email: contact@theopenmusicbox.com
- Website: [theopenmusicbox.com](https://www.theopenmusicbox.com)
- Issues: [GitHub Issues](https://github.com/The-Open-Music-Box)

## Support the Project

If you enjoy this project and want to support its development:

<a href="https://www.buymeacoffee.com/rhy6j5cdpq9" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
