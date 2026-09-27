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
      'Stops the bars, the visualiser and page transitions';

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
      'Writes a transfer file: likes, plays and everything the AI learned';

  @override
  String get setImportTaste => 'Load taste from another device';

  @override
  String get setImportTasteSub => 'Merges it with what this device knows';

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
  String get setSkipSilenceSub => 'Android only';

  @override
  String get setStorageUsed => 'Storage used by downloads';

  @override
  String get setLibrary => 'Library';
}
