// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class LKn extends L {
  LKn([String locale = 'kn']) : super(locale);

  @override
  String get navHome => 'ಮುಖಪುಟ';

  @override
  String get navExplore => 'ಅನ್ವೇಷಿಸಿ';

  @override
  String get navLibrary => 'ಲೈಬ್ರರಿ';

  @override
  String get navTaste => 'ನಿಮ್ಮ ಅಭಿರುಚಿ';

  @override
  String get actionDone => 'ಮುಗಿಯಿತು';

  @override
  String get actionCancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get actionCreate => 'ರಚಿಸಿ';

  @override
  String get actionPlay => 'ಪ್ಲೇ';

  @override
  String get actionShuffle => 'ಶಫಲ್';

  @override
  String get actionPlayAll => 'ಎಲ್ಲವನ್ನೂ ಪ್ಲೇ ಮಾಡಿ';

  @override
  String get actionAdd => 'ಸೇರಿಸಿ';

  @override
  String get actionRemove => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get actionName => 'ಹೆಸರು';

  @override
  String get greetingNight => 'ಇನ್ನೂ ಎಚ್ಚರವೇ?';

  @override
  String get greetingMorning => 'ಶುಭೋದಯ';

  @override
  String get greetingAfternoon => 'ಶುಭ ಮಧ್ಯಾಹ್ನ';

  @override
  String get greetingEvening => 'ಶುಭ ಸಂಜೆ';

  @override
  String get homeBuilding => 'AI ನಿಮ್ಮ ಶೆಲ್ಫ್‌ಗಳನ್ನು ಸಿದ್ಧಪಡಿಸುತ್ತಿದೆ…';

  @override
  String get homeOffline => 'ಆಫ್‌ಲೈನ್ — ಸಾಧನದಲ್ಲಿರುವುದನ್ನು ತೋರಿಸಲಾಗುತ್ತಿದೆ';

  @override
  String get homeNothingYet => 'ಇನ್ನೂ ತೋರಿಸಲು ಏನೂ ಇಲ್ಲ';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಶೆಲ್ಫ್‌ಗಳು, ಈಗಷ್ಟೇ ರಿಫ್ರೆಶ್ ಆಗಿವೆ',
      one: '1 ಶೆಲ್ಫ್, ಈಗಷ್ಟೇ ರಿಫ್ರೆಶ್ ಆಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'ಶೆಲ್ಫ್‌ಗಳನ್ನು ಮರುರಚಿಸಿ';

  @override
  String get homeAddMusic => 'ಈ ಸಾಧನದಿಂದ ಸಂಗೀತ ಸೇರಿಸಿ';

  @override
  String get homeQuickPicks => 'ತ್ವರಿತ ಆಯ್ಕೆಗಳು';

  @override
  String get homeQuickPicksSub => 'ನೀವು ಕೇಳುತ್ತಿದ್ದದ್ದಕ್ಕೆ ನೇರವಾಗಿ ಮರಳಿ';

  @override
  String get homeEmptyTitle => 'ನಿಮ್ಮ ಲೈಬ್ರರಿ ಖಾಲಿಯಾಗಿದೆ';

  @override
  String get homeEmptyBody =>
      'ಏನನ್ನಾದರೂ ಹುಡುಕಿ, ಅಥವಾ ಈ ಸಾಧನದಲ್ಲಿರುವ ಸಂಗೀತವನ್ನು ಸೇರಿಸಿ. ನೀವು ಪ್ಲೇ ಮಾಡುವ ಮೊದಲ ಹಾಡಿನಿಂದಲೇ AI ಕಲಿಯಲು ಶುರುಮಾಡುತ್ತದೆ.';

  @override
  String get homeAddMyMusic => 'ನನ್ನ ಸಂಗೀತ ಸೇರಿಸಿ';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube ತಲುಪಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get moodFocus => 'ಏಕಾಗ್ರತೆ';

  @override
  String get moodWorkout => 'ವರ್ಕೌಟ್';

  @override
  String get moodChill => 'ಚಿಲ್';

  @override
  String get moodCommute => 'ಪ್ರಯಾಣ';

  @override
  String get moodParty => 'ಪಾರ್ಟಿ';

  @override
  String moodBuilding(Object mood) {
    return '$mood ಮಿಕ್ಸ್ ತಯಾರಾಗುತ್ತಿದೆ…';
  }

  @override
  String moodFailed(Object error) {
    return 'ಯಶಸ್ವಿಯಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get shelfRepeat => 'ಮತ್ತೆ ಮತ್ತೆ';

  @override
  String get shelfRepeatSub => 'ನಿಮ್ಮ ಕಳೆದ ಎರಡು ವಾರಗಳು';

  @override
  String get shelfForgotten => 'ನೀವು ಮೆಚ್ಚಿದ್ದ ಮರೆತುಹೋದ ಹಳೆಯ ಹಿಟ್‌ಗಳು';

  @override
  String get shelfForgottenSub =>
      'ಒಮ್ಮೆ ಪ್ರೀತಿಸಿದ್ದು, ಸ್ವಲ್ಪ ಕಾಲದಿಂದ ಮುಟ್ಟದೆ ಇರುವುದು';

  @override
  String get shelfNew => 'ಹೊಸದು';

  @override
  String get shelfNewSub => 'ನಿಮಗಾಗಿ ಎಂದು AI ಭಾವಿಸುವ ಹೊಸ ಹಾಡುಗಳು';

  @override
  String shelfBecause(Object artist) {
    return 'ನೀವು $artist ಕೇಳಿದ್ದರಿಂದ';
  }

  @override
  String get shelfBecauseSub => 'ನಿಮ್ಮ ಅಭಿರುಚಿಯ ಅದೇ ಮೂಲೆ';

  @override
  String get shelfDeep => 'ಅಷ್ಟೇನೂ ಮುಟ್ಟಿಲ್ಲ';

  @override
  String get shelfDeepSub => 'ನಿಮ್ಮ ಲೈಬ್ರರಿಯಲ್ಲಿದೆ, ಅಪರೂಪವಾಗಿ ಮಾತ್ರ ಪ್ಲೇ ಆಗಿದೆ';

  @override
  String get shelfMix => 'ನಿಮ್ಮ ಮಿಕ್ಸ್';

  @override
  String get shelfMixSub => 'ನೀವು ಆ್ಯಪ್ ತೆರೆದಾಗಲೆಲ್ಲ ಮರುರಚನೆಯಾಗುತ್ತದೆ';

  @override
  String get shelfAdded => 'ಇತ್ತೀಚೆಗೆ ಸೇರಿಸಿದ್ದು';

  @override
  String get shelfAddedSub => 'ನೀವು ಆಮದು ಮಾಡಿದ ಡೌನ್‌ಲೋಡ್‌ಗಳು ಮತ್ತು ಫೈಲ್‌ಗಳು';

  @override
  String get shelfStarter => 'ಇಲ್ಲಿಂದ ಶುರುಮಾಡಿ';

  @override
  String get shelfStarterSub =>
      'ಕೆಲವನ್ನು ಪ್ಲೇ ಮಾಡಿ, AI ತಕ್ಷಣ ಕಲಿಯಲು ಶುರುಮಾಡುತ್ತದೆ';

  @override
  String reasonPlays(int count) {
    return '$count ಬಾರಿ ಪ್ಲೇ';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ಮೆಚ್ಚಿದ್ದು, ಕೊನೆಯ ಬಾರಿ $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count ಬಾರಿ ಪ್ಲೇ, ಕೊನೆಯದಾಗಿ $when';
  }

  @override
  String get reasonTopArtist => 'ನೀವು ಅತಿ ಹೆಚ್ಚು ಕೇಳಿದ ಕಲಾವಿದರಲ್ಲಿ ಒಬ್ಬರು';

  @override
  String reasonMore(Object artist) {
    return 'ಇನ್ನಷ್ಟು $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'ನೀವು ಮತ್ತೆ ಮತ್ತೆ $artist ಬಳಿಗೆ ಬರುತ್ತೀರಿ';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'ನಿಮ್ಮ ರೀತಿಯ $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ಇತ್ತೀಚೆಗೆ $tag ಹೆಚ್ಚು';
  }

  @override
  String get reasonOutThisYear => 'ಈ ವರ್ಷ ಬಿಡುಗಡೆ';

  @override
  String get reasonReleasedRecently => 'ಇತ್ತೀಚೆಗೆ ಬಿಡುಗಡೆಯಾಗಿದೆ';

  @override
  String get reasonClose => 'ನೀವು ಕೇಳುತ್ತಿರುವುದಕ್ಕೆ ಹತ್ತಿರ';

  @override
  String reasonNear(Object artist) {
    return '$artist ಅವರಿಗೆ ಹತ್ತಿರ';
  }

  @override
  String get reasonNeverPlayed => 'ಎಂದೂ ಪ್ಲೇ ಆಗಿಲ್ಲ';

  @override
  String get reasonPlayedOnce => 'ಒಮ್ಮೆ ಪ್ಲೇ ಆಗಿದೆ';

  @override
  String get reasonPopular => 'ಈಗ ಜನಪ್ರಿಯ';

  @override
  String whenYearsAgo(int count) {
    return '$count ವರ್ಷದ ಹಿಂದೆ';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ತಿಂಗಳ ಹಿಂದೆ';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count ದಿನದ ಹಿಂದೆ';
  }

  @override
  String get searchHint => 'ಹಾಡುಗಳು, ಕಲಾವಿದರು, ಆಲ್ಬಮ್‌ಗಳು';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಫಲಿತಾಂಶಗಳು',
      one: '1 ಫಲಿತಾಂಶ',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'ಇತ್ತೀಚಿನ ಹುಡುಕಾಟಗಳು';

  @override
  String get searchEmptyTitle => 'ಏನೂ ಸಿಗಲಿಲ್ಲ';

  @override
  String get searchEmptyBody =>
      'ಬೇರೆ ಕಾಗುಣಿತ ಪ್ರಯತ್ನಿಸಿ, ಅಥವಾ ಕೇವಲ ಕಲಾವಿದರ ಹೆಸರನ್ನು ಹುಡುಕಿ.';

  @override
  String get searchStartTitle => 'ಪ್ಲೇ ಮಾಡಲು ಏನಾದರೂ ಹುಡುಕಿ';

  @override
  String get searchStartBody =>
      'YouTube Music ಹುಡುಕಿ — ಹಾಡುಗಳು ಮಾತ್ರ ಬರುತ್ತವೆ, ಬೇರೆ ವಿಷಯಗಳ ವೀಡಿಯೊಗಳು ಎಂದಿಗೂ ಬರುವುದಿಲ್ಲ.';

  @override
  String get libPlaylists => 'ಪ್ಲೇಲಿಸ್ಟ್‌ಗಳು';

  @override
  String get libSongs => 'ಹಾಡುಗಳು';

  @override
  String get libArtists => 'ಕಲಾವಿದರು';

  @override
  String get libLiked => 'ಮೆಚ್ಚಿದ್ದು';

  @override
  String get libDownloads => 'ಡೌನ್‌ಲೋಡ್‌ಗಳು';

  @override
  String get libImported => 'ಆಮದು ಮಾಡಿದ್ದು';

  @override
  String get libLikedSongs => 'ಮೆಚ್ಚಿದ ಹಾಡುಗಳು';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಹಾಡುಗಳು',
      one: '1 ಹಾಡು',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ಆಫ್‌ಲೈನ್';
  }

  @override
  String get libMyFiles => 'ನನ್ನದೇ ಫೈಲ್‌ಗಳು';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಫೈಲ್‌ಗಳು',
      one: '1 ಫೈಲ್',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'ಹೊಸ ಪ್ಲೇಲಿಸ್ಟ್';

  @override
  String get libMakeOne => 'ರಚಿಸಿ';

  @override
  String get libSortRecent => 'ಇತ್ತೀಚೆಗೆ ಸೇರಿಸಿದ್ದು';

  @override
  String get libSortTitle => 'ಶೀರ್ಷಿಕೆ';

  @override
  String get libSortArtist => 'ಕಲಾವಿದ';

  @override
  String get libSortPlays => 'ಹೆಚ್ಚು ಪ್ಲೇ ಆದದ್ದು';

  @override
  String get sheetNotForMe => 'ನನಗೆ ಬೇಡ';

  @override
  String get sheetNotForMeSub => 'ಇದನ್ನು ಮತ್ತೆ ಎಂದಿಗೂ ಶಿಫಾರಸು ಮಾಡಬೇಡಿ';

  @override
  String get sheetBlocked => 'ನಿರ್ಬಂಧಿಸಲಾಗಿದೆ — ಮತ್ತೆ ಅನುಮತಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get sheetBlockedSub => 'ಇದು ಮತ್ತೆ ಶಿಫಾರಸುಗಳಲ್ಲಿ ಕಾಣಿಸಿಕೊಳ್ಳಬಹುದು';

  @override
  String get sheetPlayNext => 'ಮುಂದೆ ಪ್ಲೇ ಮಾಡಿ';

  @override
  String get sheetAddToPlaylist => 'ಪ್ಲೇಲಿಸ್ಟ್‌ಗೆ ಸೇರಿಸಿ';

  @override
  String get sheetDownloaded => 'ಡೌನ್‌ಲೋಡ್ ಆಗಿದೆ';

  @override
  String get sheetRemoveFile => 'ಫೈಲ್ ತೆಗೆಯಲು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get sheetDownload => 'ಡೌನ್‌ಲೋಡ್';

  @override
  String get sheetKeepOffline => 'ಆಫ್‌ಲೈನ್‌ಗಾಗಿ ಇಟ್ಟುಕೊಳ್ಳಿ';

  @override
  String get sheetRadio => 'ರೇಡಿಯೋ ಶುರುಮಾಡಿ';

  @override
  String get sheetRadioSub => 'ಈ ಹಾಡಿನ ಸುತ್ತ ರಚಿಸಿದ ಕ್ಯೂ';

  @override
  String get sheetQueue => 'ಕ್ಯೂ';

  @override
  String get sheetSleepTimer => 'ಸ್ಲೀಪ್ ಟೈಮರ್';

  @override
  String get sheetSleepOff => 'ಆಫ್';

  @override
  String sheetSleepMinutes(int count) {
    return '$count ನಿಮಿಷಗಳು';
  }

  @override
  String get sheetSleepEndOfTrack => 'ಈ ಹಾಡಿನ ಕೊನೆ';

  @override
  String sheetSleepSet(int count) {
    return '$count ನಿಮಿಷದಲ್ಲಿ ಸಂಗೀತ ನಿಲ್ಲುತ್ತದೆ';
  }

  @override
  String get tasteTitle => 'ನಿಮ್ಮ ಅಭಿರುಚಿ';

  @override
  String get tasteRetrain => 'ಮರುತರಬೇತಿ';

  @override
  String get tasteRetraining => 'ನಿಮ್ಮ ಇತಿಹಾಸದ ಮೇಲೆ ಮರುತರಬೇತಿ ನಡೆಯುತ್ತಿದೆ…';

  @override
  String get tasteRetrained => 'AI ತನ್ನ ಮಾದರಿಯನ್ನು ಮರುರಚಿಸಿದೆ.';

  @override
  String tasteConfidence(int percent) {
    return 'ವಿಶ್ವಾಸ $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays ಪ್ಲೇ · $skips ಸ್ಕಿಪ್ · $likes ಮೆಚ್ಚುಗೆ';
  }

  @override
  String get tasteEmptySummary =>
      'ಕೆಲವು ಹಾಡುಗಳನ್ನು ಪ್ಲೇ ಮಾಡಿ, ಇದು ತುಂಬಿಕೊಳ್ಳುತ್ತದೆ.';

  @override
  String get tasteKeepLearning => 'ನಾನು ಕೇಳುವಾಗ ಕಲಿಯುತ್ತಲೇ ಇರಿ';

  @override
  String get tasteKeepLearningSub =>
      'ಈಗಿನ ಪ್ರೊಫೈಲ್ ಅನ್ನು ಸ್ಥಿರಗೊಳಿಸಲು ಆಫ್ ಮಾಡಿ';

  @override
  String get tasteDownloadsTitle => 'AI ನಿರ್ವಹಿಸುವ ಡೌನ್‌ಲೋಡ್‌ಗಳು';

  @override
  String get tasteDownloadsSub => 'ನೀವು ಕೇಳದೆಯೇ ಸಂಗೀತ ಸಾಧನಕ್ಕೆ ಬರುತ್ತದೆ';

  @override
  String get tasteDownloadLikes => 'ನಾನು ಮೆಚ್ಚಿದ್ದೆಲ್ಲವನ್ನೂ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get tasteDownloadLikesSub =>
      'ಹೃದಯ ಒತ್ತಿದರೆ ಫೈಲ್ ಆಫ್‌ಲೈನ್‌ಗಾಗಿ ಉಳಿಯುತ್ತದೆ';

  @override
  String get tasteAiInstall => 'AI ಆಯ್ಕೆ ಮಾಡುವ ಸಂಗೀತವನ್ನು ಅದೇ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಲಿ';

  @override
  String get tasteAiInstallSub => 'ಅದಕ್ಕೆ ವಿಶ್ವಾಸವಿರುವ ಹಾಡುಗಳನ್ನು ತರುತ್ತದೆ';

  @override
  String get tasteWhatItThinks =>
      'ನೀವು ಏನನ್ನು ಇಷ್ಟಪಡುತ್ತೀರಿ ಎಂದು ಅದು ಭಾವಿಸುತ್ತದೆ';

  @override
  String get tasteWhatItThinksSub =>
      'ಪ್ಲೇ, ಸ್ಕಿಪ್, ಮೆಚ್ಚುಗೆ ಮತ್ತು ಪುನರಾವರ್ತನೆಗಳಿಂದ ಕಲಿತದ್ದು';

  @override
  String get tasteArtists => 'ಅದು ಅವಲಂಬಿಸುವ ಕಲಾವಿದರು';

  @override
  String get tasteWhenYouListen => 'ನೀವು ಕೇಳುವ ಸಮಯ';

  @override
  String get tasteWhenYouListenSub => 'ಗಂಟೆಗೆ ಪ್ಲೇಗಳು — ಈಗಿನ ಗಂಟೆಗೆ ಹೆಚ್ಚು ತೂಕ';

  @override
  String get tasteDecades => 'ದಶಕಗಳು';

  @override
  String get tasteTune => 'ಶಿಫಾರಸುಗಳನ್ನು ಹೊಂದಿಸಿ';

  @override
  String get tasteTuneSub => 'ಮುಂದಿನ ಮುಖಪುಟ ರಿಫ್ರೆಶ್‌ನಲ್ಲಿ ಜಾರಿಗೆ ಬರುತ್ತದೆ';

  @override
  String get tasteDiscovery => 'ಅನ್ವೇಷಣೆ';

  @override
  String get tasteDiscoverySub => 'ಪರಿಚಿತ ↔ ನೀವು ಕೇಳದಿರುವುದು';

  @override
  String get tasteEnergy => 'ಶಕ್ತಿ';

  @override
  String get tasteEnergySub => 'ಶಾಂತ ↔ ಗದ್ದಲ';

  @override
  String get tasteRecency => 'ಹೊಸತನ';

  @override
  String get tasteRecencySub => 'ಕಾಲಾತೀತ ↔ ಹೊಚ್ಚ ಹೊಸದು';

  @override
  String get tasteNostalgia => 'ನೆನಪಿನ ಹಂಬಲ';

  @override
  String get tasteNostalgiaSub =>
      'ಎಷ್ಟು ಹಿಂದಿನ ನೆಚ್ಚಿನ ಹಾಡನ್ನು ಮರೆತಂತೆ ಎಣಿಸಬೇಕು';

  @override
  String get tasteSignals => 'ಅದು ಬಳಸಬಹುದಾದ ಸೂಚನೆಗಳು';

  @override
  String get tasteSignalsSub => 'ಎಲ್ಲವೂ ಈ ಸಾಧನದಲ್ಲೇ ಉಳಿಯುತ್ತದೆ';

  @override
  String get tasteUseHistory => 'ನಾನು ಪ್ಲೇ ಮಾಡಿದ್ದು';

  @override
  String get tasteUseSkips => 'ನಾನು ಸ್ಕಿಪ್ ಮಾಡುವುದು';

  @override
  String get tasteUseTime => 'ದಿನದ ಸಮಯ';

  @override
  String get tasteUseYouTube => 'YouTube ಸಲಹೆಗಳು';

  @override
  String get tasteAlwaysMore => 'ಯಾವಾಗಲೂ ಇನ್ನಷ್ಟು';

  @override
  String get tasteNeverAgain => 'ಇನ್ನೆಂದೂ ಬೇಡ';

  @override
  String get tasteAddArtist => 'ಕಲಾವಿದರನ್ನು ಸೇರಿಸಿ';

  @override
  String get tasteMoreOfPrompt => 'ಯಾವಾಗಲೂ ಇನ್ನಷ್ಟು…';

  @override
  String get tasteNeverAgainPrompt => 'ಇನ್ನೆಂದೂ ಬೇಡ…';

  @override
  String get tasteReset => 'ಅದು ಕಲಿತದ್ದನ್ನು ಮರುಹೊಂದಿಸಿ';

  @override
  String get tasteResetSub =>
      'ನಿಮ್ಮ ಸಂಗೀತ ಹಾಗೆಯೇ ಇರುತ್ತದೆ; ಪ್ರೊಫೈಲ್ ಸೊನ್ನೆಯಿಂದ ಶುರುವಾಗುತ್ತದೆ';

  @override
  String get trainCard => 'ರೇಟ್ ಮಾಡುವ ಮೂಲಕ ತರಬೇತಿ ನೀಡಿ';

  @override
  String get trainCardSub =>
      'ನಿಜವಾದ ಹಾಡುಗಳನ್ನು ಸ್ವೈಪ್ ಮಾಡಿ. ಇಂತಹವು ಇನ್ನಷ್ಟು ಬೇಕಾದರೆ ಬಲಕ್ಕೆ, ಇನ್ನೆಂದೂ ಬೇಡವಾದರೆ ಎಡಕ್ಕೆ. ಇಲ್ಲಿ ಎರಡು ನಿಮಿಷ ಒಂದು ವಾರದ ಆಲಿಸುವಿಕೆಗಿಂತ ಉತ್ತಮ.';

  @override
  String get trainStart => 'ತರಬೇತಿ ಸುತ್ತು ಶುರುಮಾಡಿ';

  @override
  String get trainTitle => 'ತರಬೇತಿ ಸುತ್ತು';

  @override
  String get trainQuestion => 'ಇದು ನಿಮ್ಮ ಮುಖಪುಟದಲ್ಲಿ ಬೇಕೇ?';

  @override
  String get trainMoreLikeThis => 'ಇಂತಹವು ಇನ್ನಷ್ಟು';

  @override
  String get trainNeverAgain => 'ಇನ್ನೆಂದೂ ಬೇಡ';

  @override
  String get trainDone => 'ಸುತ್ತು ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked ಉಳಿಸಲಾಗಿದೆ · $blocked ನಿರ್ಬಂಧಿಸಲಾಗಿದೆ. ವಿಶ್ವಾಸ $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'ನಿಮ್ಮ ಅಭಿರುಚಿಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String get trainNothingTitle => 'ಇನ್ನೂ ರೇಟ್ ಮಾಡಲು ಏನೂ ಇಲ್ಲ';

  @override
  String get trainNothingBody =>
      'ಸ್ವಲ್ಪ ಸಂಗೀತ ಸೇರಿಸಿ ಅಥವಾ ಮೊದಲು AI ಅಭ್ಯರ್ಥಿಗಳನ್ನು ತರಲಿ, ನಂತರ ಮರಳಿ ಬನ್ನಿ.';

  @override
  String get trainLeaveTitle => 'ತರಬೇತಿ ಸುತ್ತನ್ನು ಬಿಡುವಿರಾ?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ಈಗ ಬಿಟ್ಟರೆ, ಈ ಸುತ್ತಿನ ಎಲ್ಲವನ್ನೂ AI ತಿರಸ್ಕರಿಸುತ್ತದೆ — ನೀವು ಈಗಷ್ಟೇ ರೇಟ್ ಮಾಡಿದ ಎಲ್ಲಾ $count ಹಾಡುಗಳು.',
      one:
          'ಈಗ ಬಿಟ್ಟರೆ, ಈ ಸುತ್ತಿನ ಎಲ್ಲವನ್ನೂ AI ತಿರಸ್ಕರಿಸುತ್ತದೆ — ನೀವು ಈಗಷ್ಟೇ ರೇಟ್ ಮಾಡಿದ 1 ಹಾಡು.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'ತರಬೇತಿ ಮುಂದುವರಿಸಿ';

  @override
  String get trainDiscard => 'ತಿರಸ್ಕರಿಸಿ ಬಿಡಿ';

  @override
  String get setTitle => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get setAppearance => 'ಗೋಚರತೆ';

  @override
  String get setTheme => 'ಥೀಮ್';

  @override
  String get setThemeSystem => 'ಸಿಸ್ಟಮ್ ಅನುಸರಿಸಿ';

  @override
  String get setThemeLight => 'ಲೈಟ್';

  @override
  String get setThemeDark => 'ಡಾರ್ಕ್';

  @override
  String get setPureBlack => 'ಶುದ್ಧ ಕಪ್ಪು';

  @override
  String get setPureBlackSub => 'OLED ಪರದೆಯಲ್ಲಿ ವಿದ್ಯುತ್ ಉಳಿಸುತ್ತದೆ';

  @override
  String get setAccent => 'ಆಕ್ಸೆಂಟ್ ಬಣ್ಣ';

  @override
  String get setAccentArtwork => 'ಕವರ್ ಆರ್ಟ್‌ನಿಂದ';

  @override
  String get setAccentFixed => 'ನಾನು ಆರಿಸಿದ ಒಂದು ಬಣ್ಣ';

  @override
  String get setLanguage => 'ಭಾಷೆ';

  @override
  String get setLanguageSystem => 'ಸಿಸ್ಟಮ್ ಅನುಸರಿಸಿ';

  @override
  String get setAccessibility => 'ಪ್ರವೇಶಸಾಧ್ಯತೆ';

  @override
  String get setTextSize => 'ಪಠ್ಯದ ಗಾತ್ರ';

  @override
  String get setTextSizeSub => 'ನಿಮ್ಮ ಸಿಸ್ಟಮ್ ಸೆಟ್ಟಿಂಗ್‌ನ ಮೇಲೆ ಹೆಚ್ಚುವರಿ';

  @override
  String get setReduceMotion => 'ಚಲನೆ ಕಡಿಮೆ ಮಾಡಿ';

  @override
  String get setReduceMotionSub =>
      'ಬಾರ್‌ಗಳು, ವಿಷುಯಲೈಸರ್, ಪುಟಿಯುವ ಸ್ಕ್ರಾಲಿಂಗ್, ಸ್ಪ್ರಿಂಗ್ ಟ್ಯಾಪ್‌ಗಳು ಮತ್ತು ಪುಟ ಪರಿವರ್ತನೆಗಳನ್ನು ನಿಲ್ಲಿಸುತ್ತದೆ';

  @override
  String get setHighContrast => 'ಹೆಚ್ಚಿನ ಕಾಂಟ್ರಾಸ್ಟ್';

  @override
  String get setHighContrastSub => 'ಹೆಚ್ಚು ಸ್ಪಷ್ಟ ವಿಭಜನೆ ಮತ್ತು ಕಾಣುವ ಅಂಚುಗಳು';

  @override
  String get setBoldText => 'ದಪ್ಪ ಪಠ್ಯ';

  @override
  String get setPlayback => 'ಪ್ಲೇಬ್ಯಾಕ್';

  @override
  String get setAutoRadio => 'ಸಂಗೀತ ನಿಲ್ಲದಿರಲಿ';

  @override
  String get setAutoRadioSub =>
      'ಕ್ಯೂ ಮುಗಿದಾಗ, ಕೊನೆಯ ಹಾಡಿನಿಂದ ರಚಿಸಿದ ರೇಡಿಯೋ ಮುಂದುವರಿಸುತ್ತದೆ';

  @override
  String get setSmartShuffle => 'ಸ್ಮಾರ್ಟ್ ಶಫಲ್';

  @override
  String get setSmartShuffleSub =>
      'ಯಾದೃಚ್ಛಿಕವಾಗಿ ಅಲ್ಲ, ಅಭಿರುಚಿಯ ಪ್ರಕಾರ ಶಫಲ್ ಮಾಡುತ್ತದೆ';

  @override
  String get setResume => 'ನಾನು ಬಿಟ್ಟಲ್ಲಿಂದ ಮುಂದುವರಿಸಿ';

  @override
  String get setResumeSub =>
      'ಆ್ಯಪ್ ತೆರೆದಾಗ ಕ್ಯೂ ಅನ್ನು ವಿರಾಮ ಸ್ಥಿತಿಯಲ್ಲಿ ಮರುಸ್ಥಾಪಿಸುತ್ತದೆ';

  @override
  String get setDataSaver => 'Wi-Fi ಇಲ್ಲದಾಗ ಡೇಟಾ ಸೇವರ್';

  @override
  String get setDataSaverSub =>
      'ಮೊಬೈಲ್ ಡೇಟಾದಲ್ಲಿ ಸ್ಟ್ರೀಮ್ ಮತ್ತು ಡೌನ್‌ಲೋಡ್‌ಗಳನ್ನು 128 kbps ಗೆ ಮಿತಿಗೊಳಿಸುತ್ತದೆ';

  @override
  String get setHaptics => 'ಹ್ಯಾಪ್ಟಿಕ್ ಪ್ರತಿಕ್ರಿಯೆ';

  @override
  String get setShowReasons => 'ಏಕೆ ಶಿಫಾರಸು ಮಾಡಲಾಯಿತು ಎಂದು ತೋರಿಸಿ';

  @override
  String get setSkipSilence => 'ನಿಶ್ಶಬ್ದ ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get setQuality => 'ಆಡಿಯೋ ಗುಣಮಟ್ಟ';

  @override
  String get setQualityLow => 'ಕಡಿಮೆ · 64 kbps';

  @override
  String get setQualityNormal => 'ಸಾಮಾನ್ಯ · 128 kbps';

  @override
  String get setQualityHigh => 'ಹೆಚ್ಚು · 192 kbps';

  @override
  String get setQualityBest => 'ಲಭ್ಯವಿರುವುದರಲ್ಲಿ ಅತ್ಯುತ್ತಮ';

  @override
  String get setStorage => 'ಡೌನ್‌ಲೋಡ್‌ಗಳು ಮತ್ತು ಸಂಗ್ರಹಣೆ';

  @override
  String get setWifiOnly => 'Wi-Fi ನಲ್ಲಿ ಮಾತ್ರ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get setDailyLimit => 'AI ಗಾಗಿ ದೈನಂದಿನ ಮಿತಿ';

  @override
  String setDailyLimitSub(int count) {
    return 'ದಿನಕ್ಕೆ $count ಹಾಡುಗಳು';
  }

  @override
  String get setBudget => 'AI ಬಳಸಬಹುದಾದ ಸಂಗ್ರಹಣೆ';

  @override
  String setUsed(Object size) {
    return 'ಡೌನ್‌ಲೋಡ್‌ಗಳಿಂದ $size ಬಳಕೆಯಾಗಿದೆ';
  }

  @override
  String get setYourMusic => 'ನಿಮ್ಮ ಸಂಗೀತ';

  @override
  String get setImport => 'ಈ ಸಾಧನದಿಂದ ಸಂಗೀತ ಸೇರಿಸಿ';

  @override
  String get setImportSub => 'ಫೋಲ್ಡರ್‌ಗಳು ಅಥವಾ ಒಂಟಿ ಫೈಲ್‌ಗಳನ್ನು ಆರಿಸಿ';

  @override
  String get setCleanup => 'ಕಾಣೆಯಾದ ಫೈಲ್‌ಗಳನ್ನು ಸ್ವಚ್ಛಗೊಳಿಸಿ';

  @override
  String get setCleanupSub => 'ಫೈಲ್ ಇಲ್ಲದ ಹಾಡುಗಳನ್ನು ತೆಗೆಯಿರಿ';

  @override
  String setCleanupDone(int count) {
    return '$count ಕಾಣೆಯಾದ ಫೈಲ್‌ಗಳನ್ನು ತೆಗೆಯಲಾಗಿದೆ.';
  }

  @override
  String get setExport => 'ನನ್ನ ಅಭಿರುಚಿಯನ್ನು ಬೇರೆ ಸಾಧನಕ್ಕೆ ಕಳುಹಿಸಿ';

  @override
  String get setExportSub =>
      'ನಿಮ್ಮ ಮೆಚ್ಚುಗೆಗಳು, ಪ್ಲೇಗಳು ಮತ್ತು AI ಕಲಿತ ಎಲ್ಲವನ್ನೂ ಒಂದು ಫೈಲ್‌ನಲ್ಲಿ ಉಳಿಸುತ್ತದೆ';

  @override
  String get setImportTaste => 'ಬೇರೆ ಸಾಧನದಿಂದ ಅಭಿರುಚಿ ಲೋಡ್ ಮಾಡಿ';

  @override
  String get setImportTasteSub =>
      'ಉಳಿಸಿದ ಅಭಿರುಚಿ ಫೈಲ್ ಆರಿಸಿ ಮತ್ತು ವಿಲೀನಗೊಳಿಸಿ — ಪುನರಾವರ್ತಿಸಿದರೂ ಸುರಕ್ಷಿತ';

  @override
  String get setAbout => 'ಕುರಿತು';

  @override
  String get setAboutBody =>
      'YouTube ಮತ್ತು ನಿಮ್ಮದೇ ಫೈಲ್‌ಗಳ ಸಂಗೀತ. AI ಸಂಪೂರ್ಣವಾಗಿ ಈ ಸಾಧನದಲ್ಲೇ ಚಲಿಸುತ್ತದೆ — ಏನೂ ಹೊರಗೆ ಹೋಗುವುದಿಲ್ಲ.';

  @override
  String get setSource => 'ಸೋರ್ಸ್ ಕೋಡ್';

  @override
  String get importTitle => 'ಸಂಗೀತ ಸೇರಿಸಿ';

  @override
  String get importPickFolder => 'ಫೋಲ್ಡರ್ ಆರಿಸಿ';

  @override
  String get importPickFiles => 'ಫೈಲ್‌ಗಳನ್ನು ಆರಿಸಿ';

  @override
  String importScanning(Object file) {
    return '$file ಸ್ಕ್ಯಾನ್ ಆಗುತ್ತಿದೆ';
  }

  @override
  String importAdded(int count) {
    return '$count ಸೇರಿಸಲಾಗಿದೆ';
  }

  @override
  String get importDenied =>
      'ಅನುಮತಿ ನಿರಾಕರಿಸಲಾಗಿದೆ — ನಿಮ್ಮ ಸಂಗೀತವನ್ನು ಓದಲು ಸಾಧ್ಯವಿಲ್ಲ.';

  @override
  String get importWatched => 'ಅದು ಗಮನಿಸುವ ಫೋಲ್ಡರ್‌ಗಳು';

  @override
  String get importIosHint =>
      'Files ಆ್ಯಪ್ ತೆರೆಯಿರಿ, On My iPhone → TuneBox ಗೆ ಹೋಗಿ, ಅಲ್ಲಿ ಸಂಗೀತವನ್ನು ಹಾಕಿ.';

  @override
  String get playerQueue => 'ಕ್ಯೂ';

  @override
  String get playerUpNext => 'ಮುಂದೆ';

  @override
  String get playerLyrics => 'ಸಾಹಿತ್ಯ';

  @override
  String get playerNoLyrics => 'ಇದಕ್ಕೆ ಸಾಹಿತ್ಯ ಇಲ್ಲ.';

  @override
  String get playerRepeat => 'ಪುನರಾವರ್ತಿಸಿ';

  @override
  String get playerShuffle => 'ಶಫಲ್';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" ಪ್ಲೇ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" ಬಿಟ್ಟುಬಿಡಲಾಗುತ್ತಿದೆ — ಸ್ಟ್ರೀಮ್ ತೆರೆಯಲಿಲ್ಲ.';
  }

  @override
  String get undo => 'ರದ್ದುಗೊಳಿಸಿ';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ಈಗ: $tags, $artist ಮುಂಚೂಣಿಯಲ್ಲಿ.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ಈಗ: $tags.';
  }

  @override
  String get setColour => 'ಬಣ್ಣ';

  @override
  String get setColourSub => 'ಇಡೀ ಆ್ಯಪ್ ಇದನ್ನು ಅನುಸರಿಸುತ್ತದೆ';

  @override
  String get setCoverArt => 'ಕವರ್ ಆರ್ಟ್';

  @override
  String get setMyColour => 'ನನ್ನ ಬಣ್ಣ';

  @override
  String get setCoverArtSub =>
      'ಪ್ರತಿ ಹಾಡೂ ತನ್ನ ಕವರ್‌ನಿಂದ ಆ್ಯಪ್‌ಗೆ ಹೊಸ ಛಾಯೆ ನೀಡುತ್ತದೆ.';

  @override
  String get setMyColourSub => 'ಒಂದೇ ಬಣ್ಣ, ಎಲ್ಲೆಡೆ, ಯಾವಾಗಲೂ.';

  @override
  String get setPickColour => 'ಯಾವುದೇ ಬಣ್ಣ ಆರಿಸಿ';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi ನಲ್ಲಿ ಮಾತ್ರ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get setDownloadLikes => 'ನಾನು ಮೆಚ್ಚಿದ್ದೆಲ್ಲವನ್ನೂ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get setDownloadLikesSub => 'ಹೃದಯದ ಬಟನ್ ಫೈಲ್ ಅನ್ನೂ ಉಳಿಸುತ್ತದೆ';

  @override
  String get setAiInstall => 'AI ಆಯ್ಕೆ ಮಾಡುವ ಸಂಗೀತವನ್ನು ಅದೇ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಲಿ';

  @override
  String get setSkipSilenceSub =>
      'Android ಮಾತ್ರ. ಮೌನ ಆರಂಭ, ಫೇಡ್ ಮತ್ತು ಮೃದು ಭಾಗಗಳನ್ನು ಕತ್ತರಿಸಬಹುದು — ಸಂಗೀತ ಜಿಗಿದರೆ ಆಫ್ ಮಾಡಿ';

  @override
  String get setStorageUsed => 'ಡೌನ್‌ಲೋಡ್‌ಗಳು ಬಳಸಿದ ಸಂಗ್ರಹಣೆ';

  @override
  String get setLibrary => 'ಲೈಬ್ರರಿ';

  @override
  String get setUpdates => 'ಅಪ್‌ಡೇಟ್‌ಗಳು';

  @override
  String get setAutoUpdate => 'ಅಪ್‌ಡೇಟ್‌ಗಳನ್ನು ತಾನೇ ಪರಿಶೀಲಿಸಿ';

  @override
  String get setAutoUpdateSub =>
      'ಕೆಲವು ಗಂಟೆಗಳಿಗೊಮ್ಮೆ, ಸದ್ದಿಲ್ಲದೆ, Wi-Fi ನಲ್ಲಿ ಡೌನ್‌ಲೋಡ್ ಆಗುತ್ತದೆ. ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಲು ಈಗಲೂ ನಿಮ್ಮನ್ನು ಕೇಳುತ್ತದೆ.';

  @override
  String setUpdateReady(Object version) {
    return '$version ಗೆ ಅಪ್‌ಡೇಟ್ ಸಿದ್ಧವಾಗಿದೆ';
  }

  @override
  String get setUpdateReadySub =>
      'ಡೌನ್‌ಲೋಡ್ ಆಗಿದೆ — ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಲು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get setUpdateAvailableSub =>
      'ರಿಲೀಸ್ ಪುಟದಿಂದ ಪಡೆಯಿರಿ — ಲಿಂಕ್ ನಕಲಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get setLinkCopied => 'ಲಿಂಕ್ ನಕಲಿಸಲಾಗಿದೆ';

  @override
  String get setCheckNow => 'ಈಗ ಪರಿಶೀಲಿಸಿ';

  @override
  String get setUpToDate => 'TuneBox ನವೀಕೃತವಾಗಿದೆ';

  @override
  String get setChecking => 'ಹೊಸ ಆವೃತ್ತಿಗಾಗಿ ಹುಡುಕಲಾಗುತ್ತಿದೆ…';
}
