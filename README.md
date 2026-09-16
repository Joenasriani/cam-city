# Signal Cities

**Project type:** browser puzzle game / live stream game prototype  
**Repository:** `Joenasriani/cam-city`  
**Status:** original experimental browser game  
**Creator:** Joe Nasr  
**Creator identity:** https://joe-nasr-signals.vercel.app/v2/

Signal Cities is a Three.js browser puzzle game that turns authorized live city video streams into an eight-step signal-matching challenge. Players rotate three relay dials until they match the values derived from the active feeds.

## Core game loop

- Load three live or recorded city feeds.
- Sample each feed into an eight-step signal bucket.
- Read the current signal state in a 3D control-room interface.
- Rotate the relay dials until all three values match.

The live-stream layer is an input mechanic for the puzzle. Signal Cities is not a surveillance system or camera-monitoring product.

## Feed support

- HLS (`.m3u8`)
- direct MP4
- WHEP / WebRTC egress

Use only public or authorized camera feeds. Remote streams must permit cross-origin access. Private feeds should be protected through tokenized URLs or an authorized gateway.

## 3D implementation

The game uses Three.js and can load remote GLB or GLTF assets from authorized asset hosts. The control-room scene can be extended with scoring, multiplayer race logic, object-picking missions, day/night rules, or additional game entities.

## Local test

```bash
python3 -m http.server 8080
```

Then open:

```text
http://localhost:8080/index.html
```

## Provenance

Signal Cities is an original Joe Nasr game project. Creator identity resolves to the same canonical Person record used across his other public game, XR and interactive-system repositories.
