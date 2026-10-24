// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class LEn extends L {
  LEn([String locale = 'en']) : super(locale);

  @override
  String get navHome => 'Home';

  @override
  String get navExplore => 'Explore';

  @override
  String get navLibrary => 'Library';

  @override
  String get navTaste => 'Your taste';

  @override
  String get actionDone => 'Done';

  @override
  String get actionCancel => 'Cancel';

  @override
  String get actionCreate => 'Create';

  @override
  String get actionPlay => 'Play';

  @override
  String get actionShuffle => 'Shuffle';

  @override
  String get actionPlayAll => 'Play all';

  @override
  String get actionAdd => 'Add';

  @override
  String get actionRemove => 'Remove';

  @override
  String get actionName => 'Name';

  @override
  String get greetingNight => 'Still up?';

  @override
  String get greetingMorning => 'Good morning';

  @override
  String get greetingAfternoon => 'Good afternoon';

  @override
  String get greetingEvening => 'Good evening';

  @override
  String get homeBuilding => 'The AI is building your shelves…';

  @override
  String get homeOffline => 'Offline — showing what is on the device';

  @override
  String get homeNothingYet => 'Nothing to show yet';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count shelves, refreshed just now',
      one: '1 shelf, refreshed just now',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Rebuild shelves';

  @override
  String get homeAddMusic => 'Add music from this device';

  @override
  String get homeQuickPicks => 'Quick picks';

  @override
  String get homeQuickPicksSub => 'Straight back into what you were on';

  @override
  String get homeEmptyTitle => 'Your library is empty';

  @override
  String get homeEmptyBody =>
      'Search for something, or add the music already on this device. The AI starts learning from your very first play.';

  @override
  String get homeAddMyMusic => 'Add my music';

  @override
  String homeCouldNotReach(Object error) {
    return 'Could not reach YouTube: $error';
  }

  @override
  String get moodFocus => 'Focus';

  @override
  String get moodWorkout => 'Workout';

  @override
  String get moodChill => 'Chill';

  @override
  String get moodCommute => 'Commute';

  @override
  String get moodParty => 'Party';

  @override
  String moodBuilding(Object mood) {
    return 'Building a $mood mix…';
  }

  @override
  String moodFailed(Object error) {
    return 'No luck: $error';
  }

  @override
  String get shelfRepeat => 'On repeat';

  @override
  String get shelfRepeatSub => 'Your last two weeks';

  @override
  String get shelfForgotten => 'Old forgotten hits you liked';

  @override
  String get shelfForgottenSub => 'Loved once, untouched for a while';

  @override
  String get shelfNew => 'New';

  @override
  String get shelfNewSub => 'Fresh tracks the AI thinks are for you';

  @override
  String shelfBecause(Object artist) {
    return 'Because you played $artist';
  }

  @override
  String get shelfBecauseSub => 'Same corner of your taste';

  @override
  String get shelfDeep => 'Barely touched';

  @override
  String get shelfDeepSub => 'In your library, hardly ever played';

  @override
  String get shelfMix => 'Your mix';

  @override
  String get shelfMixSub => 'Rebuilt every time you open the app';

  @override
  String get shelfAdded => 'Recently added';

  @override
  String get shelfAddedSub => 'Downloads and files you imported';

  @override
  String get shelfStarter => 'Start here';

  @override
  String get shelfStarterSub =>
      'Play a few and the AI starts learning immediately';

  @override
  String reasonPlays(int count) {
    return '$count plays';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Liked, last played $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count plays, last $when';
  }

  @override
  String get reasonTopArtist => 'One of your most played artists';

  @override
  String reasonMore(Object artist) {
    return 'More $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'You keep coming back to $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Your kind of $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Heavy on $tag lately';
  }

  @override
  String get reasonOutThisYear => 'Out this year';

  @override
  String get reasonReleasedRecently => 'Released recently';

  @override
  String get reasonClose => 'Close to what you have been playing';

  @override
  String reasonNear(Object artist) {
    return 'Sits near $artist';
  }

  @override
  String get reasonNeverPlayed => 'Never played';

  @override
  String get reasonPlayedOnce => 'Played once';

  @override
  String get reasonPopular => 'Popular right now';

  @override
  String whenYearsAgo(int count) {
    return '${count}y ago';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count months ago';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count days ago';
  }

  @override
  String get searchHint => 'Songs, artists, albums';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count results',
      one: '1 result',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Recent searches';

  @override
  String get searchEmptyTitle => 'Nothing found';

  @override
  String get searchEmptyBody =>
      'Try another spelling, or the artist\'s name on its own.';

  @override
  String get searchStartTitle => 'Find something to play';

  @override
  String get searchStartBody =>
      'Search YouTube Music — only songs come back, never videos of other things.';

  @override
  String get libPlaylists => 'Playlists';

  @override
  String get libSongs => 'Songs';

  @override
  String get libArtists => 'Artists';

  @override
  String get libLiked => 'Liked';

  @override
  String get libDownloads => 'Downloads';

  @override
  String get libImported => 'Imported';

  @override
  String get libLikedSongs => 'Liked songs';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count songs',
      one: '1 song',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'My own files';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files',
      one: '1 file',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'New playlist';

  @override
  String get libMakeOne => 'Make one';

  @override
  String get libSortRecent => 'Recently added';

  @override
  String get libSortTitle => 'Title';

  @override
  String get libSortArtist => 'Artist';

  @override
  String get libSortPlays => 'Most played';

  @override
  String get sheetNotForMe => 'Not for me';

  @override
  String get sheetNotForMeSub => 'Never recommend this again';

  @override
  String get sheetBlocked => 'Blocked — tap to allow again';

  @override
  String get sheetBlockedSub => 'It can show up in recommendations again';

  @override
  String get sheetPlayNext => 'Play next';

  @override
  String get sheetAddToPlaylist => 'Add to playlist';

  @override
  String get sheetDownloaded => 'Downloaded';

  @override
  String get sheetRemoveFile => 'Tap to remove the file';

  @override
  String get sheetDownload => 'Download';

  @override
  String get sheetKeepOffline => 'Keep it for offline';

  @override
  String get sheetRadio => 'Start radio';

  @override
  String get sheetRadioSub => 'A queue built around this song';

  @override
  String get sheetQueue => 'Queue';

  @override
  String get sheetSleepTimer => 'Sleep timer';

  @override
  String get sheetSleepOff => 'Off';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minutes';
  }

  @override
  String get sheetSleepEndOfTrack => 'End of this song';

  @override
  String sheetSleepSet(int count) {
    return 'Music stops in $count min';
  }

  @override
  String get tasteTitle => 'Your taste';

  @override
  String get tasteRetrain => 'Retrain';

  @override
  String get tasteRetraining => 'Retraining on your history…';

  @override
  String get tasteRetrained => 'The AI rebuilt its model.';

  @override
  String tasteConfidence(int percent) {
    return 'Confidence $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays plays · $skips skips · $likes likes';
  }

  @override
  String get tasteEmptySummary => 'Play a few songs and this fills in.';

  @override
  String get tasteKeepLearning => 'Keep learning while I listen';

  @override
  String get tasteKeepLearningSub => 'Turn off to freeze the current profile';

  @override
  String get tasteDownloadsTitle => 'Downloads the AI handles';

  @override
  String get tasteDownloadsSub =>
      'Music lands on the device without you asking';

  @override
  String get tasteDownloadLikes => 'Download everything I like';

  @override
  String get tasteDownloadLikesSub =>
      'Hit the heart and the file is saved for offline';

  @override
  String get tasteAiInstall => 'Let the AI install music it picks';

  @override
  String get tasteAiInstallSub => 'It will fetch tracks it is confident about';

  @override
  String get tasteWhatItThinks => 'What it thinks you like';

  @override
  String get tasteWhatItThinksSub =>
      'Learned from plays, skips, likes and repeats';

  @override
  String get tasteArtists => 'Artists it leans on';

  @override
  String get tasteWhenYouListen => 'When you listen';

  @override
  String get tasteWhenYouListenSub =>
      'Plays per hour — the current hour gets weighted';

  @override
  String get tasteDecades => 'Decades';

  @override
  String get tasteTune => 'Tune the recommendations';

  @override
  String get tasteTuneSub => 'Takes effect on the next Home refresh';

  @override
  String get tasteDiscovery => 'Discovery';

  @override
  String get tasteDiscoverySub => 'Familiar ↔ things you have never heard';

  @override
  String get tasteEnergy => 'Energy';

  @override
  String get tasteEnergySub => 'Calm ↔ loud';

  @override
  String get tasteRecency => 'Recency';

  @override
  String get tasteRecencySub => 'Timeless ↔ brand new';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'How far back an old favourite counts as forgotten';

  @override
  String get tasteSignals => 'Signals it may use';

  @override
  String get tasteSignalsSub => 'Everything stays on this device';

  @override
  String get tasteUseHistory => 'What I have played';

  @override
  String get tasteUseSkips => 'What I skip';

  @override
  String get tasteUseTime => 'Time of day';

  @override
  String get tasteUseYouTube => 'Suggestions from YouTube';

  @override
  String get tasteAlwaysMore => 'Always more of';

  @override
  String get tasteNeverAgain => 'Never again';

  @override
  String get tasteAddArtist => 'Add an artist';

  @override
  String get tasteMoreOfPrompt => 'Always more of…';

  @override
  String get tasteNeverAgainPrompt => 'Never again…';

  @override
  String get tasteReset => 'Reset what it learned';

  @override
  String get tasteResetSub => 'Your music stays; the profile starts from zero';

  @override
  String get trainCard => 'Train it by rating';

  @override
  String get trainCardSub =>
      'Swipe through real songs. Right for more like this, left for never again. Two minutes here beats a week of listening.';

  @override
  String get trainStart => 'Start a training round';

  @override
  String get trainTitle => 'Training round';

  @override
  String get trainQuestion => 'Would you want this on your Home?';

  @override
  String get trainMoreLikeThis => 'More like this';

  @override
  String get trainNeverAgain => 'Never again';

  @override
  String get trainDone => 'Round complete';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked kept · $blocked blocked. Confidence $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Back to your taste';

  @override
  String get trainNothingTitle => 'Nothing to rate yet';

  @override
  String get trainNothingBody =>
      'Add some music or let the AI fetch candidates first, then come back.';

  @override
  String get trainLeaveTitle => 'Leave the training round?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'If you leave now, the AI discards everything from this round — all $count songs you just rated.',
      one:
          'If you leave now, the AI discards everything from this round — the 1 song you just rated.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Keep training';

  @override
  String get trainDiscard => 'Discard and leave';

  @override
  String get setTitle => 'Settings';

  @override
  String get setAppearance => 'Appearance';

  @override
  String get setTheme => 'Theme';

  @override
  String get setThemeSystem => 'Follow the system';

  @override
  String get setThemeLight => 'Light';

  @override
  String get setThemeDark => 'Dark';

  @override
  String get setPureBlack => 'Pure black';

  @override
  String get setPureBlackSub => 'Saves power on an OLED screen';

  @override
  String get setAccent => 'Accent colour';

  @override
  String get setAccentArtwork => 'From the cover art';

  @override
  String get setAccentFixed => 'One colour I picked';

  @override
  String get setLanguage => 'Language';

  @override
  String get setLanguageSystem => 'Follow the system';

  @override
  String get setAccessibility => 'Accessibility';

  @override
  String get setTextSize => 'Text size';

  @override
  String get setTextSizeSub => 'On top of your system setting';

  @override
  String get setReduceMotion => 'Reduce motion';

  @override
  String get setReduceMotionSub =>
      'Stops the bars, the visualiser, bouncy scrolling, springy taps and page transitions';

  @override
  String get setHighContrast => 'High contrast';

  @override
  String get setHighContrastSub => 'Stronger separation and visible outlines';

  @override
  String get setBoldText => 'Bold text';

  @override
  String get setPlayback => 'Playback';

  @override
  String get setAutoRadio => 'Keep the music going';

  @override
  String get setAutoRadioSub =>
      'When the queue ends, carry on with a radio built from the last song';

  @override
  String get setSmartShuffle => 'Smart shuffle';

  @override
  String get setSmartShuffleSub => 'Shuffles by taste instead of at random';

  @override
  String get setResume => 'Pick up where I left off';

  @override
  String get setResumeSub => 'Restores the queue when the app opens, paused';

  @override
  String get setDataSaver => 'Data saver off Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Caps streams and downloads at 128 kbps on mobile data';

  @override
  String get setHaptics => 'Haptic feedback';

  @override
  String get setShowReasons => 'Show why something was recommended';

  @override
  String get setSkipSilence => 'Skip silence';

  @override
  String get setQuality => 'Audio quality';

  @override
  String get setQualityLow => 'Low · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'High · 192 kbps';

  @override
  String get setQualityBest => 'Best available';

  @override
  String get setStorage => 'Downloads and storage';

  @override
  String get setWifiOnly => 'Download on Wi-Fi only';

  @override
  String get setDailyLimit => 'Daily limit for the AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count songs a day';
  }

  @override
  String get setBudget => 'Storage the AI may use';

  @override
  String setUsed(Object size) {
    return '$size used by downloads';
  }

  @override
  String get setYourMusic => 'Your music';

  @override
  String get setImport => 'Add music from this device';

  @override
  String get setImportSub => 'Pick folders or single files';

  @override
  String get setCleanup => 'Clean up missing files';

  @override
  String get setCleanupSub => 'Drop songs whose file is gone';

  @override
  String setCleanupDone(int count) {
    return 'Removed $count missing files.';
  }

  @override
  String get setExport => 'Send my taste to another device';

  @override
  String get setExportSub =>
      'Saves a file with your likes, plays and everything the AI learned';

  @override
  String get setImportTaste => 'Load taste from another device';

  @override
  String get setImportTasteSub =>
      'Pick a saved taste file and merge it in — safe to repeat';

  @override
  String get setAbout => 'About';

  @override
  String get setAboutBody =>
      'Music from YouTube and your own files. The AI runs entirely on this device — nothing leaves it.';

  @override
  String get setSource => 'Source code';

  @override
  String get importTitle => 'Add music';

  @override
  String get importPickFolder => 'Pick a folder';

  @override
  String get importPickFiles => 'Pick files';

  @override
  String importScanning(Object file) {
    return 'Scanning $file';
  }

  @override
  String importAdded(int count) {
    return '$count added';
  }

  @override
  String get importDenied => 'Permission denied — cannot read your music.';

  @override
  String get importWatched => 'Folders it watches';

  @override
  String get importIosHint =>
      'Open the Files app, go to On My iPhone → TuneBox, and drop music in there.';

  @override
  String get playerQueue => 'Queue';

  @override
  String get playerUpNext => 'Up next';

  @override
  String get playerLyrics => 'Lyrics';

  @override
  String get playerNoLyrics => 'No lyrics for this one.';

  @override
  String get playerRepeat => 'Repeat';

  @override
  String get playerShuffle => 'Shuffle';

  @override
  String errorPlayback(Object title) {
    return 'Could not play \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Skipping \"$title\" — the stream would not open.';
  }

  @override
  String get undo => 'Undo';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Right now: $tags, led by $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Right now: $tags.';
  }

  @override
  String get setColour => 'Colour';

  @override
  String get setColourSub => 'The whole app follows this';

  @override
  String get setCoverArt => 'Cover art';

  @override
  String get setMyColour => 'My colour';

  @override
  String get setCoverArtSub => 'Every song retints the app from its cover.';

  @override
  String get setMyColourSub => 'One colour, everywhere, all the time.';

  @override
  String get setPickColour => 'Pick any colour';

  @override
  String get setWifiOnlyTitle => 'Download on Wi-Fi only';

  @override
  String get setDownloadLikes => 'Download everything I like';

  @override
  String get setDownloadLikesSub => 'The heart button also saves the file';

  @override
  String get setAiInstall => 'Let the AI install music it picks';

  @override
  String get setSkipSilenceSub =>
      'Android only. Can cut quiet intros, fades and soft parts — leave off if music skips';

  @override
  String get setStorageUsed => 'Storage used by downloads';

  @override
  String get setLibrary => 'Library';

  @override
  String get setUpdates => 'Updates';

  @override
  String get setAutoUpdate => 'Check for updates by itself';

  @override
  String get setAutoUpdateSub =>
      'Every few hours, quietly, and downloads on Wi-Fi. Installing still asks you.';

  @override
  String setUpdateReady(Object version) {
    return 'Update to $version is ready';
  }

  @override
  String get setUpdateReadySub => 'Downloaded — tap to install';

  @override
  String get setUpdateAvailableSub =>
      'Get it from the releases page — tap to copy the link';

  @override
  String get setLinkCopied => 'Link copied';

  @override
  String get setCheckNow => 'Check now';

  @override
  String get setUpToDate => 'TuneBox is up to date';

  @override
  String get setChecking => 'Looking for a newer version…';

  @override
  String get homeCantReach => 'Can\'t reach YouTube';

  @override
  String get homeOfflineHint =>
      'Check your connection. Everything already on this device still works.';

  @override
  String get actionRetry => 'Try again';

  @override
  String get actionClear => 'Clear';

  @override
  String get searchFailed => 'Search didn\'t work';

  @override
  String get profWho => 'Who is listening?';

  @override
  String get profExplain =>
      'Each profile has its own library, likes, playlists and taste.';

  @override
  String get profActive => 'Active';

  @override
  String get profRename => 'Rename';

  @override
  String get profDeleteMenu => 'Delete profile';

  @override
  String get profAdd => 'Add profile';

  @override
  String get profNew => 'New profile';

  @override
  String get profName => 'Name';

  @override
  String profDeleteTitle(String name) {
    return 'Delete \"$name\"?';
  }

  @override
  String get profDeleteBody =>
      'Its library, likes, playlists and learned taste are removed for good. Music files stay on the device.';

  @override
  String get profKeep => 'Keep';

  @override
  String get actionOk => 'OK';

  @override
  String get actionDelete => 'Delete';

  @override
  String get xferTitle => 'Move your taste';

  @override
  String xferIntro(String profile) {
    return 'Likes, plays and artist rules of \"$profile\". Receiving merges into this profile and is safe to repeat — nothing is doubled.';
  }

  @override
  String get xferSectionWifi => 'Between devices on the same Wi-Fi';

  @override
  String get xferSend => 'Send to a nearby device';

  @override
  String get xferSendSub => 'Shows a code; the other device finds this one';

  @override
  String get xferReceive => 'Receive from a nearby device';

  @override
  String get xferReceiveSub =>
      'Finds senders automatically — you type the code';

  @override
  String get xferSectionFile => 'With a file';

  @override
  String get xferSave => 'Save to a file';

  @override
  String get xferSaveSub => 'Pick where it goes: Downloads, USB, a chat…';

  @override
  String get xferLoad => 'Load from a file';

  @override
  String get xferLoadSub => 'Any TuneBox taste file, old or new';

  @override
  String get xferSectionText => 'As text';

  @override
  String get xferCopy => 'Copy as text';

  @override
  String get xferCopySub => 'One line you can paste into any chat or note';

  @override
  String get xferPaste => 'Paste text';

  @override
  String get xferPasteSub => 'From the clipboard';

  @override
  String get xferSaveDialog => 'Save your taste';

  @override
  String xferSaved(String kb) {
    return 'Saved $kb KB. On the other device choose \"Load from a file\".';
  }

  @override
  String xferSaveFailed(String error) {
    return 'Could not save: $error';
  }

  @override
  String xferFileUnreadable(String error) {
    return 'That file could not be read as a taste: $error';
  }

  @override
  String xferCopied(String kb) {
    return 'Copied ($kb KB of text). Paste it on the other device with \"Paste text\".';
  }

  @override
  String xferCopyFailed(String error) {
    return 'Could not copy: $error';
  }

  @override
  String get xferClipboardEmpty =>
      'The clipboard does not hold a TuneBox taste. Copy it on the other device first.';

  @override
  String get xferNewerTitle => 'Newer than this app';

  @override
  String get xferNewerBody =>
      'This taste was made by a newer TuneBox. Update this device first.';

  @override
  String xferMergeTitle(String profile) {
    return 'Merge into \"$profile\"?';
  }

  @override
  String xferMergeBody(
    String source,
    int songs,
    int liked,
    int plays,
    int rules,
  ) {
    return 'From $source:\n• $songs songs, $liked liked\n• $plays plays\n• $rules artist rules\n\nYour own likes and history stay. Doing this twice changes nothing.';
  }

  @override
  String get xferSourceFile => 'the file';

  @override
  String get xferSourceClipboard => 'the clipboard';

  @override
  String get xferMerge => 'Merge';

  @override
  String get xferMerging => 'Merging…';

  @override
  String xferMerged(String summary) {
    return 'Merged: $summary';
  }

  @override
  String xferMergeFailed(String error) {
    return 'Merge failed: $error';
  }

  @override
  String get xferSendTitle => 'Send your taste';

  @override
  String xferCouldNotStart(String error) {
    return 'Could not start: $error';
  }

  @override
  String get xferSent => 'Sent. The other device has your taste.';

  @override
  String get xferClosed =>
      'Closed — the code expired or was guessed wrong too often. Start again for a new one.';

  @override
  String get xferSendHow =>
      'On the other device open Settings → Move your taste → Receive, then pick this device and type:';

  @override
  String get xferNoWifi =>
      'No Wi-Fi address found — connect both devices to the same network.';

  @override
  String xferThisDevice(String addresses, int port) {
    return 'This device: $addresses (port $port)';
  }

  @override
  String get xferWaiting =>
      'Waiting for the other device… (closes after 5 minutes)';

  @override
  String xferCodeFor(String name) {
    return 'Code shown on $name';
  }

  @override
  String get xferCodeLabel => '6-digit code';

  @override
  String get xferReceiveAction => 'Receive';

  @override
  String xferReceivingFrom(String name) {
    return 'Receiving from $name…';
  }

  @override
  String get xferWrongCode =>
      'Wrong code. Check the number on the other device.';

  @override
  String get xferNotTaste => 'That was not a TuneBox taste.';

  @override
  String xferCouldNotReach(String error) {
    return 'Could not reach it: $error';
  }

  @override
  String xferLooking(String host) {
    return 'Looking for $host…';
  }

  @override
  String xferNothingAt(String host) {
    return 'Nothing answered at $host. Is Send open there?';
  }

  @override
  String get xferReceiveTitle => 'Receive a taste';

  @override
  String get xferOpenSendFirst =>
      'Open Send on the other device first (same Wi-Fi).';

  @override
  String get xferSearching => 'Looking for nearby devices…';

  @override
  String get xferNoSender => 'No sender found yet.';

  @override
  String get xferSearchAgain => 'Search again';

  @override
  String get xferTypeAddress => 'Not listed? Type its address';

  @override
  String get xferConnect => 'Connect';

  @override
  String get qUndo => 'Undo';

  @override
  String qRemoved(String title) {
    return 'Removed \"$title\"';
  }

  @override
  String get qCleared => 'Queue cleared';

  @override
  String qSaved(String songs, String name) {
    return 'Saved $songs to \"$name\"';
  }

  @override
  String qTitle(int count) {
    return 'Queue · $count';
  }

  @override
  String get qSavePlaylist => 'Save as playlist';

  @override
  String get qClear => 'Clear queue';

  @override
  String get qClearSub => 'Keeps the song that is playing';

  @override
  String get qEmptyTitle => 'The queue is empty';

  @override
  String get qEmptyBody => 'Play something and it fills up here.';

  @override
  String get qDrag => 'Drag to reorder';

  @override
  String plDeleted(String name) {
    return 'Deleted \"$name\"';
  }

  @override
  String get plDeleteSub => 'The songs stay in your library';

  @override
  String get plDelete => 'Delete playlist';

  @override
  String get plRenameOrDelete => 'Rename or delete';

  @override
  String get aLibListView => 'List view';

  @override
  String get aLibGridView => 'Grid view';

  @override
  String get aLibSortAlpha => 'A–Z';

  @override
  String get aLibSortYear => 'Year';

  @override
  String get aLibNothingYet => 'Nothing here yet';

  @override
  String get aLibImportedEmptyBody =>
      'Add the music that is already on this device.';

  @override
  String get aLibEmptyBody => 'Play or download something and it lands here.';

  @override
  String aLibBannerSummary(String songs, String size) {
    return '$songs · $size on this device';
  }

  @override
  String get aLibOfflineNote => 'These play with no connection at all';

  @override
  String aLibAiPicked(String count) {
    return '$count of them the AI picked for you';
  }

  @override
  String get aPlaylistLabel => 'Playlist';

  @override
  String get aLibNoArtists => 'No artists yet';

  @override
  String get aLibNoArtistsBody => 'Play a few songs and they collect here.';

  @override
  String get aHomeSearch => 'Search';

  @override
  String get aHomeInYourLibrary => 'In your library';

  @override
  String get aHomeInYourLibrarySub => 'What you have added so far';

  @override
  String get aSearchHintDots => 'Songs, artists, albums…';

  @override
  String get aSearchEmptyBody =>
      'Try a different spelling, or paste a YouTube link.';

  @override
  String get aSearchTrySomething => 'Try something';

  @override
  String get aSearchLearnedFrom => 'From what the AI learned';

  @override
  String get aSearchAnything => 'Search for anything on YouTube';

  @override
  String get aSearchSeedTap => 'Tap a seed to dig around it';

  @override
  String get aSearchArtistsYouPlay => 'Artists you play';

  @override
  String aSearchAffinity(String percent) {
    return '$percent% affinity';
  }

  @override
  String get aArtistAlwaysMore => 'Always more of this';

  @override
  String get aArtistClearRule => 'Clear rule';

  @override
  String get aArtistBoosted => 'boosted';

  @override
  String get aArtistBlocked => 'blocked';

  @override
  String get aArtistRadio => 'Radio';

  @override
  String get aPlLikedSub => 'Everything you hit the heart on';

  @override
  String get aPlDownloadsSub => 'Plays with no connection';

  @override
  String get aPlImportedSub => 'Music you added from this device';

  @override
  String get aPlEmptyTitle => 'Empty for now';

  @override
  String get aPlEmptyBody => 'Add songs from the ⋮ menu on any track.';

  @override
  String aPlDownloading(String songs) {
    return 'Downloading $songs…';
  }

  @override
  String bTasteAiBudgetSub(String count, String gb) {
    return 'Up to $count songs a day, $gb GB budget';
  }

  @override
  String get bTasteSongsPerDay => 'Songs per day';

  @override
  String get bTasteStorageMayUse => 'Storage it may use';

  @override
  String bTasteGb(String gb) {
    return '$gb GB';
  }

  @override
  String get bTasteNothingToDownload =>
      'Nothing new worth downloading right now.';

  @override
  String bTasteQueuedSongs(String count) {
    return 'Queued $count songs the AI picked.';
  }

  @override
  String get bTasteFetchNow => 'Fetch some now';

  @override
  String get bTasteNotEnoughListening =>
      'Not enough listening yet. Play a handful of songs, or run a training round below.';

  @override
  String get bTasteFamiliar => 'Familiar';

  @override
  String get bTasteDiscoveryCap1 => 'Mostly songs you already know';

  @override
  String get bTasteDiscoveryCap2 => 'A few new songs per shelf';

  @override
  String get bTasteDiscoveryCap3 => 'Half of Home will be new to you';

  @override
  String get bTasteDiscoveryCap4 => 'Show me things I have never heard';

  @override
  String get bTasteCalm => 'Calm';

  @override
  String get bTasteHighEnergy => 'High energy';

  @override
  String get bTasteEnergyCaption => 'Nudges picks louder and faster';

  @override
  String get bTasteTimeless => 'Timeless';

  @override
  String get bTasteFresh => 'Fresh';

  @override
  String get bTasteRecencyCaption => 'How much \"New ⭐\" leans on release date';

  @override
  String get bTasteRarely => 'Rarely';

  @override
  String get bTasteOften => 'Often';

  @override
  String get bTasteNostalgiaCaption => 'How hard to dig for old forgotten hits';

  @override
  String get bTasteListeningHistory => 'Listening history';

  @override
  String bTastePlaysRecorded(String count) {
    return '$count plays recorded';
  }

  @override
  String get bTasteSkips => 'Skips';

  @override
  String bTasteSkipsCounted(String count) {
    return '$count skips counted against songs';
  }

  @override
  String get bTasteTimeOfDaySub => 'Different picks at 08:00 and 23:00';

  @override
  String get bTasteYoutubeRelated => 'YouTube related tracks';

  @override
  String get bTasteYoutubeRelatedSub => 'Pull in songs you do not own yet';

  @override
  String get bTasteResetSub =>
      'Clears plays, skips and weights. Keeps library.';

  @override
  String get bTasteResetDialogTitle => 'Reset the AI?';

  @override
  String get bTasteResetDialogBody =>
      'Your library, playlists and downloads stay. Everything it learned about you is deleted and Home goes back to defaults.';

  @override
  String get bTasteResetAction => 'Reset';

  @override
  String get bTrainHearIt => 'Hear it';

  @override
  String bImportDoneAdded(String count) {
    return 'Done · $count new songs added';
  }

  @override
  String bImportScanningProgress(String scanned, String total) {
    return 'Scanning · $scanned of $total files';
  }

  @override
  String get bImportWatchedFolders => 'Watched folders';

  @override
  String get bImportWatchedFoldersSub => 'Rescanned when the app starts';

  @override
  String get bImportNoneYet =>
      'None yet. Pick a folder and it gets watched automatically.';

  @override
  String get bImportFoundOnDevice => 'Found on this device';

  @override
  String get bImportFoundOnDeviceSub => 'Tap to scan and keep watching';

  @override
  String get bImportYourFiles => 'Your files';

  @override
  String bImportImportedSoFar(String count) {
    return '$count imported so far';
  }

  @override
  String get bImportFilesStayNote =>
      'Files stay where they are — TuneBox only indexes them. Delete a file and it quietly leaves your library on the next scan.';

  @override
  String get bImportRescan => 'Rescan';

  @override
  String get cMore => 'More';

  @override
  String cBlockedSnack(String title) {
    return 'Blocked \"$title\" — the AI will avoid it';
  }

  @override
  String get cLike => 'Like';

  @override
  String get cUnlike => 'Unlike';

  @override
  String get cRemoveFromLiked => 'Remove from liked';

  @override
  String get cLikeSub => 'Teaches the AI straight away';

  @override
  String get cSave => 'Save';

  @override
  String get cNothingPlaying => 'Nothing playing';

  @override
  String get cNothingPlayingBody => 'Pick a song and it shows up here.';

  @override
  String get cPlayingFrom => 'Playing from';

  @override
  String get cSeek => 'Seek';

  @override
  String cTimeOf(String done, String total) {
    return '$done of $total';
  }

  @override
  String get cShuffleOn => 'Shuffle: on';

  @override
  String get cShuffleOff => 'Shuffle: off';

  @override
  String get cPrevious => 'Previous';

  @override
  String get cNext => 'Next';

  @override
  String get cPause => 'Pause';

  @override
  String get cRepeatOne => 'Repeat: this song';

  @override
  String get cRepeatOff => 'Repeat: off';

  @override
  String get cRepeatAll => 'Repeat: whole queue';

  @override
  String get cSaved => 'Saved';

  @override
  String get cAudio => 'Audio';

  @override
  String get cSpeed => 'Speed';

  @override
  String get cAndroidOnly => 'Android only';

  @override
  String get cPlaylist => 'Playlist';

  @override
  String get cSearchResults => 'Search results';

  @override
  String get cYourLibrary => 'Your library';

  @override
  String get cRadio => 'Radio';

  @override
  String get cYourQueue => 'Your queue';

  @override
  String cDownloadFailed(String title) {
    return 'Download failed: $title';
  }

  @override
  String cAiDownloading(String title) {
    return 'AI is downloading $title';
  }

  @override
  String cDownloading(String title) {
    return 'Downloading $title';
  }

  @override
  String get cSaveQueueAs => 'Save queue as';

  @override
  String cProfileSwitch(String count) {
    return 'Profile · tap to switch ($count)';
  }

  @override
  String get cProfileAddAnother => 'Profile · tap to add another listener';

  @override
  String get cUseIt => 'Use it';

  @override
  String cAiBudgetSub(String daily, String gb) {
    return 'Up to $daily/day · $gb GB budget · tune it in Your taste';
  }

  @override
  String cFoldersWatched(String count) {
    return '$count folders watched';
  }

  @override
  String get cMoveTasteSub =>
      'Between devices over Wi-Fi, or with a file or text';

  @override
  String get cSearchLanguages => 'Search languages';

  @override
  String cNoLanguageMatch(String query) {
    return 'No language matches \"$query\"';
  }
}
