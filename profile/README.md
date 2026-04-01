<p align="center">
  <img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/banner-round.png" alt="The Open Music Box" width="600" />
</p>

<p align="center">
  <strong>A repairable and upgradable audio player for children.</strong><br/>
  Play stories or music independently using NFC tags — figurines or illustrated cards.
</p>

<p align="center">
  <a href="https://theopenmusicbox.com"><img src="https://img.shields.io/badge/Website-theopenmusicbox.com-A3C9A8?style=flat-square&logo=google-chrome&logoColor=white" alt="Website" /></a>
  <a href="https://discord.gg/5sUnQ553Af"><img src="https://img.shields.io/badge/Discord-Join%20us-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
  <img src="https://img.shields.io/badge/License-Custom-blue?style=flat-square" alt="License" />
  <img src="https://img.shields.io/badge/Contracts-v6.5.0-green?style=flat-square" alt="Contracts" />
</p>

---

### The Story

I wanted to share my passion with my kids: music and video games.

I built a quick Python script on a Raspberry Pi that plays audio tracks when scanning an NFC tag. My kid just LOVED it! Instead of stupid songs, I was listening to my favorite video game tracks as my son discovered them. It needed an easy UI so users can manage tracks and tags without touching code.

Here comes **The Open Music Box**.

---

### How it works

```
   NFC Tag             WiFi / BLE
┌───────────┐       ┌──────────────┐       ┌──────────────┐
│ Figurine  │──tap──│  ESP32 Box   │◀─────▶│  Flutter App │
│ or Card   │       │  (firmware)  │       │  (remote)    │
└───────────┘       └──────┬───────┘       └──────────────┘
                        Speaker
```

Kids tap an NFC tag — a figurine, a card, a sticker — and the music or story starts playing instantly. No screen, no complex menus. Just tap and listen.

---

### Key Features

| | |
|---|---|
| **Tangible Control** | Physical NFC tags make audio interactive and fun |
| **Screen-Free** | No screen needed — just tap a tag and enjoy |
| **Stories & Music** | Playlists, audiobooks, interactive stories, podcasts |
| **Mobile App** | Control and manage content via BLE or WiFi |
| **Auto-Discovery** | Devices found automatically on your network (mDNS) |
| **Repairable** | Standard components, open hardware, designed to last |
| **Open Source** | Free for non-commercial use and contributions |

---

### Architecture

Contract-driven development — the API spec is the source of truth, shared across all platforms.

| Component | Description | Tech |
|-----------|-------------|------|
| **[Contracts](https://github.com/The-Open-Music-Box/contracts)** | API specs & data models | OpenAPI, Socket.IO |
| **ESP32 Firmware** | Embedded audio player | C++, Hexagonal Architecture |
| **Flutter App** | Mobile remote control | Dart, Riverpod |

---

### Roadmap

| Milestone | Status |
|-----------|--------|
| Proof of concept (Raspberry Pi) | ✅ Validated — [source available](https://github.com/The-Open-Music-Box/raspberrypi-firmware) |
| ESP32 embedded firmware | 🔧 Alpha — beta coming soon |
| Flutter mobile app | 🔧 Alpha — beta coming soon |

---

### Contributing

Contributions are welcome! Join the community, report bugs, or submit a pull request.

---

### Connect

<p align="center">
  <a href="https://theopenmusicbox.com"><img src="https://img.shields.io/badge/Website-A3C9A8?style=for-the-badge&logo=google-chrome&logoColor=white" alt="Website" /></a>
  <a href="https://discord.gg/5sUnQ553Af"><img src="https://img.shields.io/badge/Discord-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Discord" /></a>
  <a href="https://bsky.app/profile/theopenmusicbox.bsky.social"><img src="https://img.shields.io/badge/Bluesky-1185FE?style=for-the-badge&logo=bluesky&logoColor=white" alt="Bluesky" /></a>
  <a href="https://www.facebook.com/theopenmusicbox"><img src="https://img.shields.io/badge/Facebook-1877F2?style=for-the-badge&logo=facebook&logoColor=white" alt="Facebook" /></a>
  <a href="https://www.instagram.com/theopenmusicbox/"><img src="https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white" alt="Instagram" /></a>
  <a href="https://www.linkedin.com/in/jonathan-piette-110aa33bb/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn" /></a>
  <a href="https://github.com/The-Open-Music-Box"><img src="https://img.shields.io/badge/GitHub-264C6E?style=for-the-badge&logo=github&logoColor=white" alt="GitHub" /></a>
</p>

<p align="center">
  <strong>Jonathan Piette</strong> — Creator & Maintainer<br/>
  contact@theopenmusicbox.com
</p>

---

### License

**Open Source with Reserved Commercial Rights** — Free for non-commercial use. Commercial use requires licensing from the original author.
See [LICENSE](LICENSE) for full terms.

---

<p align="center">
  <strong>Special thanks to <a href="https://github.com/lynerah">@Lynerah</a></strong> for web development and 3D modeling
</p>

<p align="center">
  <a href="https://www.buymeacoffee.com/rhy6j5cdpq9" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" /></a>
</p>
