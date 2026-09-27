# TuneBox

A music player for Android, iPhone and Linux, with a recommender that runs entirely on
your device. Music comes from YouTube and from your own files; what the app
learns about your taste never leaves the phone.

Built with Flutter, so one codebase runs on all three.

<p align="center">
  <img src="docs/home.png" width="270" alt="Home, with shelves the AI built">
  <img src="docs/search.png" width="270" alt="Search results">
  <img src="docs/taste.png" width="270" alt="The taste profile and its dials">
</p>

<p align="center">
  <img src="docs/desktop.png" width="420" alt="The library on Linux">
</p>

## What it does

- **Plays YouTube** — search, stream, download for offline, background playback
  with proper media-notification and lock-screen controls.
- **Plays your own music** — point it at a folder and it reads the tags,
  embedded cover art and release years. Imported files and YouTube tracks live
  in one library.
- **Learns what you like.** Every finished play, skip, like and repeat updates a
  transparent scorer: per-artist, per-tag and per-decade weights, decayed over
  time. No black box — every recommendation can say *why* it is there
  ("One of your most played artists", "Liked, last played 8 months ago").
- **Builds shelves from that**: *On repeat*, *New ⭐*, *Old forgotten hits you
  liked*, *Because you played X*, *Barely touched*, *Your mix*. A song only ever
  appears on one shelf, so the home screen never repeats itself.
- **Train it directly** — a swipe-to-rate round, sliders for
  discovery / energy / recency / nostalgia, and per-artist "more of this" or
  "never again" overrides.
- **Auto-download** — optionally, anything you like is saved for offline, and
  the AI can fetch tracks it is confident about, inside a storage budget you set.
- **Moves between devices** — export your taste on one device, import it on
  another. Play counts merge, likes are OR'd.
- **Keeps going by itself** — when the queue runs out it carries on with a
  radio built from the last song; shuffle is weighted by taste rather than
  random; the queue comes back where you left it after a restart; and off
  Wi-Fi it drops to 128 kbps on its own. All on out of the box.
- **Speaks your language** — English, German, Spanish, French, Italian, Dutch,
  Polish and Portuguese, including what the AI says about its own picks.
- **Accessibility** — text scaling on top of the system setting, reduce
  motion, high contrast and bold text.

Everything is local: a SQLite database and a folder of audio files. No account,
no server, no telemetry.

## Install

### Android (7.0 or newer)

Grab `TuneBox-<version>.apk` from [Releases](../../releases) and open it on the
phone. Android asks once for permission to install from whatever app you opened
it with — that prompt is how sideloading works and it never goes away.

The APK is universal (arm64, arm32, x86_64) and is signed with a real release
key, not the debug key that Android build tools hand out by default:

```
CN=x1eddy, OU=TuneBox, O=TuneBox
SHA-256  B7:DD:73:CD:77:8A:3A:38:1B:9E:2E:09:21:02:AE:AD:7E:0D:2B:FD:10:A1:9E:21:D4:CF:82:4A:36:5B:85:44
```

Check it yourself before installing anything anyone sends you:

```bash
apksigner verify --print-certs TuneBox-<version>.apk
```

If Play Protect still shows a warning, it is saying "I have not seen this app
before", not "this app is malicious" — no sideloaded app has a Play Store
reputation. The permission list is the honest place to look, and it is short:
internet, network state, wake lock, a media-playback foreground service,
notifications, and read access to audio files (only if you import your own
music). No contacts, no location, no camera, no SMS, no ability to install
other apps.

### iPhone (iOS 15+)

There is no App Store build. The [Releases](../../releases) page carries an
**unsigned** `.ipa`, which you sign with your own free Apple ID:

- **[SideStore](https://sidestore.io) or [AltStore](https://altstore.io)** —
  installs the app from the phone itself and refreshes it in the background.
- **Xcode** on a Mac — drag the `.ipa` onto your device, or open `ios/Runner.xcworkspace`,
  pick your Apple ID under *Signing & Capabilities* and hit run.

On a free Apple ID the app stops opening after **7 days** until it is
re-signed; AltStore/SideStore do that for you automatically. A paid Apple
Developer account raises that to a year.

The first launch shows *"Untrusted Developer"* — that is iOS saying the app
was signed by *you* rather than by Apple, which is the only way to install an
app that is not on the App Store. Settings → General → VPN & Device
Management → your Apple ID → Trust.

The app asks iOS for nothing beyond background audio: no photos, no contacts,
no location, no microphone, no tracking. `ITSAppUsesNonExemptEncryption` is
false because it ships no cryptography of its own.

### Linux (x86_64)

Download `TuneBox-<version>-linux-x64.tar.gz` from
[Releases](../../releases), extract it and run:

```bash
./install.sh
```

It installs into `$HOME` only — no root — and adds a menu entry, icons and a
`tunebox` command. Sound needs libmpv:

```bash
sudo apt install libmpv2     # Debian / Ubuntu
sudo dnf install mpv-libs    # Fedora
sudo pacman -S mpv           # Arch
```

Uninstall with `~/.local/share/tunebox/uninstall.sh`.

## Build it yourself

Needs Flutter 3.35+, the Android SDK for the phone build, and a Mac with
Xcode for the iPhone build.

```bash
flutter pub get
flutter run -d linux                  # desktop
flutter build apk --release           # universal APK
flutter build ios --release --no-codesign   # iPhone (macOS only)
flutter build linux --release         # desktop bundle
flutter test                          # 26 tests
flutter analyze
```

## How it works

```
lib/
  ai/ai_engine.dart              the scorer, the shelves, the explanations
  data/db/database.dart          drift (SQLite): songs, play events, affinities
  data/services/innertube.dart   YouTube + YouTube Music API client
  data/services/song_filter.dart tells songs apart from the rest of YouTube
  data/services/import_service.dart  local files, tags, embedded artwork
  playback/audio_handler.dart    queue, just_audio + audio_service
  playback/stream_proxy.dart     loopback server between player and YouTube
  features/                      home, search, library, player, taste, settings
```

Every push runs the tests and builds all three platforms; tags attach the iOS
build to the release. See
[.github/workflows/build.yml](.github/workflows/build.yml). The Android and
Linux release builds are made locally, because the signing key never leaves
that machine.

Two things worth knowing if you read the code:

**Streaming.** YouTube's Android and iOS clients cap third-party streams at
about a megabyte, and its web clients hand out no stream URLs at all. The
visionOS client still serves whole files, so that is what `innertube.dart`
asks as. Media URLs then need a *bounded* Range header on every request, which
is what the loopback proxy in `stream_proxy.dart` guarantees.

**Search goes to YouTube Music, not YouTube.** Plain YouTube search answers a
music query with MMA livestreams and basketball games; `music.youtube.com`
only indexes music. Plain YouTube remains a fallback, and everything it returns
is filtered by `song_filter.dart`.

## Credits

The interface follows [OpenTune](https://github.com/Arturo254/OpenTune) and
[InnerTune](https://github.com/z-huang/InnerTune); the streaming approach
follows [yt-dlp](https://github.com/yt-dlp/yt-dlp).

A personal project, not affiliated with YouTube or Google.
