Signal Cities — Live Stream Puzzle Wrapper

What this is
- A browser-based Three.js game shell that turns live city streams into an easy puzzle.
- Each feed is sampled in real time and translated into an 8-step signal bucket.
- The player rotates three relay dials until they match the live signal values.
- The scene is styled as a premium 3D control room and can load remote GLB/GLTF assets from servers.

How to use
1. Open `index.html` on a local web server or HTTPS host.
2. At the top of the file, edit `FEED_SOURCES`.
3. Replace demo sources with your own authorized feeds.
4. Optionally edit `REMOTE_MODEL_MANIFEST` to load GLB/GLTF models from your own asset server.

Supported feed types
- `hls`   → `.m3u8`
- `mp4`   → direct `.mp4`
- `whep`  → WebRTC egress endpoint

Recommended production pipeline
- Cameras in each city publish to an ingest service.
- Ingest service outputs HLS for broad compatibility and WHEP/WebRTC for low latency.
- Browser wrapper consumes those feeds and maps them to Three.js video textures.
- GLB models are served from your own CDN or asset storage with CORS enabled.

Important production notes
- Use only public or authorized cameras.
- Streams must allow cross-origin access.
- If a feed is private, secure it with tokenized URLs or your own gateway.
- Safari can use native HLS, while most other browsers use HLS.js.
- If you need ultra-low latency, use WebRTC/WHEP rather than HLS.

Fast local test
- Python: `python3 -m http.server 8080`
- Then open `http://localhost:8080/index.html`

Good next upgrades
- Add leaderboard + multiplayer race mode
- Add day/night scoring based on actual city local time
- Add object picking missions layered over the live feeds
- Add branded robot guides or drone assistants using your own GLB models
