<p align="center">
  <img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/readme-hero.png" alt="The Open Music Box, screen-free audio player for kids" width="100%" />
</p>

<p align="center">
  <strong>MusicBox is a screen-free audio player for children.</strong><br/>
  You fill it with your own music and stories, link them to a card, and your child listens on their own.<br/>
  No subscription, no account, no screen.
</p>

<p align="center">
  <a href="https://theopenmusicbox.com"><img src="https://img.shields.io/badge/Website-theopenmusicbox.com-264C6E?style=flat-square&labelColor=C7DEC9" alt="Website" /></a>
  <a href="https://discord.gg/5sUnQ553Af"><img src="https://img.shields.io/badge/Discord-join%20the%20community-264C6E?style=flat-square&labelColor=FFE8B0" alt="Discord" /></a>
  <a href="https://testflight.apple.com/join/5vC2Dfzg"><img src="https://img.shields.io/badge/iOS%20app-open%20beta-264C6E?style=flat-square&labelColor=F8C9B9" alt="iOS app open beta" /></a>
  <img src="https://img.shields.io/badge/Android%20app-closed%20beta-264C6E?style=flat-square&labelColor=E8DFC9" alt="Android app closed beta" />
  <a href="https://github.com/The-Open-Music-Box/enclosure"><img src="https://img.shields.io/badge/Enclosure-CERN--OHL--S%20v2-264C6E?style=flat-square&labelColor=FDF8EF" alt="Enclosure under CERN-OHL-S v2" /></a>
</p>

<br/>

<img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/readme-story.png" alt="The story" width="100%" />

I wanted to share my passion with my kids: music and video games.

I built a quick Python script on a Raspberry Pi that played a track when an NFC tag was scanned. My kid loved it. Instead of nursery rhymes on repeat, I was listening to my favourite video game soundtracks while my son discovered them. It needed an easy way to add tracks and tags without touching code.

That was the proof of concept. Today The Open Music Box is a real product in the making: a compact ESP32 player, a mobile app, and a design that keeps one promise. What you bought stays yours.

<br/>

<img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/readme-how.png" alt="How it works" width="100%" />

<p align="center">
  <img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/musicbox-v4-render.jpg" alt="The MusicBox V4 prototype with a card in its slot" width="420" />
</p>

**What you do from your phone**<br/>You add your music, your stories and your podcasts, you create playlists and you link each one to an NFC card. Standard cards, stickers or figurines, nothing proprietary.

**What your child does**<br/>Place the card on the MusicBox and it plays. Take it off and it stops. Four buttons for volume and tracks, nothing else to learn, and no need to know how to read.

**Where it works**<br/>In the bedroom, in the car, at the grandparents. The MusicBox plays its content on its own, with no server to reach and no account to revalidate.

<br/>

<img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/readme-promises.png" alt="The promise: what you put in stays yours" width="100%" />

Connected things for children raise a simple question: who owns what you bought? The MusicBox is designed so the answer is you.

**Your music, your stories**<br/>You put in whatever you want, and it stays yours. No house catalogue, nothing that vanishes the day a catalogue shuts down.

**Works without internet**<br/>No cloud in the loop. The day the project stops, the MusicBox keeps playing.

**Repairable by design**<br/>Standard parts, chosen so they can be swapped. Nothing glued shut for good.

**No account, no ads**<br/>Nothing to sign up for, nothing watching your child.

**No screen, and that is the point**<br/>No scrolling, no video queueing itself up, no notification. Your child listens and imagines.

<br/>

<img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/readme-build.png" alt="Build your own MusicBox" width="100%" />

Handy with tools? The assembly guide, the parts list and the software are on the website, and the community helps out on Discord.

**Breadboard** *(available)*<br/>Off-the-shelf parts, a breadboard, Dupont wires and an enclosure of your own.

**Development board** *(available)*<br/>An all-in-one HermitX board with the NFC antenna, a 3 W speaker and an NTAG215 card, a soldering iron and a 3D printer.

**The Open Music Box player** *(coming)*<br/>Our own board, with audio jack and battery management. Nothing to solder or print.

1. **Assemble the hardware** following the [build guide](https://theopenmusicbox.com/en/build/), BOM and wiring included.
2. **Print the V4 enclosure** for the development board path: three parts, STL and 3MF, on [Printables](https://www.printables.com/model/1839324) or [on GitHub](https://github.com/The-Open-Music-Box/enclosure).
3. **Flash the firmware straight from your browser**, nothing to install: [theopenmusicbox.com/en/build/flash](https://theopenmusicbox.com/en/build/flash/).
4. **Install the app**, add your music and stories, link them to cards.

<br/>

<img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/readme-status.png" alt="Where we are" width="100%" />

- **Raspberry Pi proof of concept**: validated, [source available](https://github.com/The-Open-Music-Box/raspberrypi-firmware) (archived)
- **ESP32 firmware**: beta, installable from the browser
- **iOS app**: open beta on [TestFlight](https://testflight.apple.com/join/5vC2Dfzg)
- **Android app**: closed beta, [become a tester](mailto:contact@theopenmusicbox.com?subject=I%20want%20to%20test%20the%20Android%20beta)
- **Development board path**: available, 3D enclosure V4 published
- **The Open Music Box player board**: in design

Under the hood, everything is contract-driven: one API specification (OpenAPI and Socket.IO) is the source of truth shared by the ESP32 firmware (C++, hexagonal architecture), the Flutter app (Dart, Riverpod) and the backend (Rust).

<br/>

### What is public here

**[enclosure](https://github.com/The-Open-Music-Box/enclosure)**<br/>The 3D-printable enclosure of the Prototype V4: body, top and card holder, as STL and 3MF, under CERN-OHL-S v2. Print it, change it, sell what you build, as long as your own files stay open under the same licence.

**[raspberrypi-firmware](https://github.com/The-Open-Music-Box/raspberrypi-firmware)**<br/>The Raspberry Pi proof of concept that started all this, kept as it was.

**[update-provider](https://github.com/The-Open-Music-Box/update-provider)**<br/>The endpoint the app asks for firmware updates. Public so that anyone can see what the box fetches, and from where.

The product repositories (ESP32 firmware, mobile app, backend) are private. Why, and what that does and does not mean for you, is set out under [Source and licensing](#source-and-licensing) below.

<br/>

<img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/readme-follow.png" alt="Follow the project" width="100%" />

<p align="center">
  <a href="https://theopenmusicbox.com"><img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/rd-website.png" width="64" alt="Website" title="Website" /></a>
  <a href="https://discord.gg/5sUnQ553Af"><img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/rd-discord.png" width="64" alt="Discord" title="Discord" /></a>
  <a href="https://www.instagram.com/theopenmusicbox/"><img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/rd-instagram.png" width="64" alt="Instagram" title="Instagram" /></a>
  <a href="https://www.facebook.com/theopenmusicbox"><img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/rd-facebook.png" width="64" alt="Facebook" title="Facebook" /></a>
  <a href="https://bsky.app/profile/theopenmusicbox.bsky.social"><img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/rd-bluesky.png" width="64" alt="Bluesky" title="Bluesky" /></a>
  <a href="https://www.printables.com/model/1839324"><img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/rd-printables.png" width="64" alt="Printables" title="Printables" /></a>
  <a href="https://links.theopenmusicbox.com"><img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/rd-links.png" width="64" alt="All links" title="All links" /></a>
  <a href="mailto:contact@theopenmusicbox.com"><img src="https://raw.githubusercontent.com/The-Open-Music-Box/.github/main/profile/assets/rd-mail.png" width="64" alt="Email" title="Email" /></a>
</p>

<p align="center">
  Website &nbsp;·&nbsp; Discord &nbsp;·&nbsp; Instagram &nbsp;·&nbsp; Facebook &nbsp;·&nbsp; Bluesky &nbsp;·&nbsp; Printables &nbsp;·&nbsp; All links &nbsp;·&nbsp; Email
</p>

<p align="center">
  Newsletter: <a href="https://theopenmusicbox.com">theopenmusicbox.com</a> &nbsp;·&nbsp; Contact: <a href="mailto:contact@theopenmusicbox.com">contact@theopenmusicbox.com</a>
</p>

<p align="center">
  <strong>Jonathan Piette</strong>, creator and maintainer &nbsp;·&nbsp; <a href="https://www.linkedin.com/in/jonathan-piette-110aa33bb/">LinkedIn</a> &nbsp;·&nbsp; <a href="https://github.com/jonathanpiette">GitHub</a>
</p>

<br/>

### Source and licensing

The original **Raspberry Pi proof of concept** is source available and free to use for non-commercial purposes (commercial use requires licensing from the original author, see [LICENSE](LICENSE)). Its [technical specifications](TECHNICAL_SPECIFICATIONS.md) are kept for reference.

The **enclosure of the Prototype V4** is released under **[CERN-OHL-S v2](https://github.com/The-Open-Music-Box/enclosure)**, a strongly reciprocal open hardware licence. You may print it, modify it, share it and sell hardware based on it, as long as your modified design files stay open under the same licence, with attribution and a link to your source.

The **current product** (ESP32 firmware, mobile app, backend) is **not open source** and its source is **not public** at this time. The "Open" in the name is a promise about lock-in, not about code: your content stays yours, the hardware is repairable, and nothing depends on us to keep working.

We are not taking external code contributions for now. The best way to help: build one, share your feedback on Discord, and tell the parents around you.

<br/>

<p align="center">
  Special thanks to <a href="https://monatelierweb.com">Mon Atelier Web</a> for the web development and 3D modeling of the prototype.
</p>

<p align="center">
  <a href="https://www.buymeacoffee.com/rhy6j5cdpq9" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" width="136" /></a>
</p>
