// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class LPa extends L {
  LPa([String locale = 'pa']) : super(locale);

  @override
  String get navHome => 'ਹੋਮ';

  @override
  String get navExplore => 'ਖੋਜੋ';

  @override
  String get navLibrary => 'ਲਾਇਬ੍ਰੇਰੀ';

  @override
  String get navTaste => 'ਤੁਹਾਡੀ ਪਸੰਦ';

  @override
  String get actionDone => 'ਹੋ ਗਿਆ';

  @override
  String get actionCancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get actionCreate => 'ਬਣਾਓ';

  @override
  String get actionPlay => 'ਚਲਾਓ';

  @override
  String get actionShuffle => 'ਸ਼ਫਲ';

  @override
  String get actionPlayAll => 'ਸਭ ਚਲਾਓ';

  @override
  String get actionAdd => 'ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get actionRemove => 'ਹਟਾਓ';

  @override
  String get actionName => 'ਨਾਮ';

  @override
  String get greetingNight => 'ਅਜੇ ਜਾਗ ਰਹੇ ਹੋ?';

  @override
  String get greetingMorning => 'ਸ਼ੁਭ ਸਵੇਰ';

  @override
  String get greetingAfternoon => 'ਸ਼ੁਭ ਦੁਪਹਿਰ';

  @override
  String get greetingEvening => 'ਸ਼ੁਭ ਸ਼ਾਮ';

  @override
  String get homeBuilding => 'AI ਤੁਹਾਡੀਆਂ ਸ਼ੈਲਫਾਂ ਤਿਆਰ ਕਰ ਰਿਹਾ ਹੈ…';

  @override
  String get homeOffline =>
      'ਆਫ਼ਲਾਈਨ — ਡੀਵਾਈਸ ਵਿੱਚ ਮੌਜੂਦ ਚੀਜ਼ਾਂ ਦਿਖਾਈਆਂ ਜਾ ਰਹੀਆਂ ਹਨ';

  @override
  String get homeNothingYet => 'ਹਾਲੇ ਦਿਖਾਉਣ ਲਈ ਕੁਝ ਨਹੀਂ';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਸ਼ੈਲਫਾਂ, ਹੁਣੇ ਤਾਜ਼ਾ ਕੀਤੀਆਂ',
      one: '1 ਸ਼ੈਲਫ, ਹੁਣੇ ਤਾਜ਼ਾ ਕੀਤੀ',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'ਸ਼ੈਲਫਾਂ ਦੁਬਾਰਾ ਬਣਾਓ';

  @override
  String get homeAddMusic => 'ਇਸ ਡੀਵਾਈਸ ਤੋਂ ਸੰਗੀਤ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get homeQuickPicks => 'ਝਟਪਟ ਚੋਣਾਂ';

  @override
  String get homeQuickPicksSub => 'ਜੋ ਸੁਣ ਰਹੇ ਸੀ ਉੱਥੇ ਸਿੱਧੇ ਵਾਪਸ ਜਾਓ';

  @override
  String get homeEmptyTitle => 'ਤੁਹਾਡੀ ਲਾਇਬ੍ਰੇਰੀ ਖਾਲੀ ਹੈ';

  @override
  String get homeEmptyBody =>
      'ਕੁਝ ਖੋਜੋ, ਜਾਂ ਇਸ ਡੀਵਾਈਸ ਵਿੱਚ ਪਹਿਲਾਂ ਤੋਂ ਮੌਜੂਦ ਸੰਗੀਤ ਸ਼ਾਮਲ ਕਰੋ। ਪਹਿਲੀ ਵਾਰ ਚਲਾਉਣ ਤੋਂ ਹੀ AI ਸਿੱਖਣਾ ਸ਼ੁਰੂ ਕਰ ਦਿੰਦਾ ਹੈ।';

  @override
  String get homeAddMyMusic => 'ਮੇਰਾ ਸੰਗੀਤ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube ਤੱਕ ਨਹੀਂ ਪਹੁੰਚ ਸਕੇ: $error';
  }

  @override
  String get moodFocus => 'ਫੋਕਸ';

  @override
  String get moodWorkout => 'ਵਰਕਆਊਟ';

  @override
  String get moodChill => 'ਚਿੱਲ';

  @override
  String get moodCommute => 'ਸਫ਼ਰ';

  @override
  String get moodParty => 'ਪਾਰਟੀ';

  @override
  String moodBuilding(Object mood) {
    return '$mood ਮਿਕਸ ਬਣਾਇਆ ਜਾ ਰਿਹਾ ਹੈ…';
  }

  @override
  String moodFailed(Object error) {
    return 'ਕਾਮਯਾਬ ਨਹੀਂ ਹੋਇਆ: $error';
  }

  @override
  String get shelfRepeat => 'ਵਾਰ-ਵਾਰ';

  @override
  String get shelfRepeatSub => 'ਤੁਹਾਡੇ ਪਿਛਲੇ ਦੋ ਹਫ਼ਤੇ';

  @override
  String get shelfForgotten => 'ਤੁਹਾਡੇ ਪਸੰਦੀਦਾ ਭੁੱਲੇ ਹੋਏ ਹਿੱਟ';

  @override
  String get shelfForgottenSub => 'ਕਦੇ ਪਸੰਦ ਆਏ ਸਨ, ਕੁਝ ਸਮੇਂ ਤੋਂ ਛੋਹੇ ਨਹੀਂ';

  @override
  String get shelfNew => 'ਨਵਾਂ';

  @override
  String get shelfNewSub => 'ਤਾਜ਼ਾ ਟਰੈਕ ਜੋ AI ਨੂੰ ਲੱਗਦਾ ਹੈ ਕਿ ਤੁਹਾਡੇ ਲਈ ਹਨ';

  @override
  String shelfBecause(Object artist) {
    return 'ਕਿਉਂਕਿ ਤੁਸੀਂ $artist ਸੁਣਿਆ';
  }

  @override
  String get shelfBecauseSub => 'ਤੁਹਾਡੀ ਪਸੰਦ ਦੇ ਉਸੇ ਕੋਨੇ ਤੋਂ';

  @override
  String get shelfDeep => 'ਮੁਸ਼ਕਲ ਨਾਲ ਛੋਹੇ';

  @override
  String get shelfDeepSub => 'ਲਾਇਬ੍ਰੇਰੀ ਵਿੱਚ ਹਨ, ਪਰ ਸ਼ਾਇਦ ਹੀ ਕਦੇ ਚੱਲੇ';

  @override
  String get shelfMix => 'ਤੁਹਾਡਾ ਮਿਕਸ';

  @override
  String get shelfMixSub => 'ਐਪ ਖੋਲ੍ਹਣ ਤੇ ਹਰ ਵਾਰ ਨਵਾਂ ਬਣਦਾ ਹੈ';

  @override
  String get shelfAdded => 'ਹਾਲ ਹੀ ਵਿੱਚ ਸ਼ਾਮਲ ਕੀਤੇ';

  @override
  String get shelfAddedSub => 'ਡਾਊਨਲੋਡ ਅਤੇ ਇੰਪੋਰਟ ਕੀਤੀਆਂ ਫ਼ਾਈਲਾਂ';

  @override
  String get shelfStarter => 'ਇੱਥੋਂ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get shelfStarterSub => 'ਕੁਝ ਚਲਾਓ, AI ਤੁਰੰਤ ਸਿੱਖਣਾ ਸ਼ੁਰੂ ਕਰ ਦੇਵੇਗਾ';

  @override
  String reasonPlays(int count) {
    return '$count ਵਾਰ ਚਲਾਇਆ';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ਪਸੰਦ ਕੀਤਾ, ਆਖਰੀ ਵਾਰ ਚਲਾਇਆ $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count ਵਾਰ ਚਲਾਇਆ, ਆਖਰੀ ਵਾਰ $when';
  }

  @override
  String get reasonTopArtist => 'ਤੁਹਾਡੇ ਸਭ ਤੋਂ ਵੱਧ ਸੁਣੇ ਕਲਾਕਾਰਾਂ ਵਿੱਚੋਂ ਇੱਕ';

  @override
  String reasonMore(Object artist) {
    return 'ਹੋਰ $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'ਤੁਸੀਂ ਵਾਰ-ਵਾਰ $artist ਵੱਲ ਮੁੜਦੇ ਹੋ';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'ਤੁਹਾਡੀ ਪਸੰਦ ਦਾ $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ਹਾਲ ਹੀ ਵਿੱਚ $tag ਬਹੁਤ';
  }

  @override
  String get reasonOutThisYear => 'ਇਸ ਸਾਲ ਰਿਲੀਜ਼ ਹੋਇਆ';

  @override
  String get reasonReleasedRecently => 'ਹਾਲ ਹੀ ਵਿੱਚ ਰਿਲੀਜ਼ ਹੋਇਆ';

  @override
  String get reasonClose => 'ਜੋ ਤੁਸੀਂ ਸੁਣ ਰਹੇ ਹੋ ਉਸ ਦੇ ਨੇੜੇ';

  @override
  String reasonNear(Object artist) {
    return '$artist ਦੇ ਨੇੜੇ';
  }

  @override
  String get reasonNeverPlayed => 'ਕਦੇ ਨਹੀਂ ਚਲਾਇਆ';

  @override
  String get reasonPlayedOnce => 'ਇੱਕ ਵਾਰ ਚਲਾਇਆ';

  @override
  String get reasonPopular => 'ਹੁਣ ਮਸ਼ਹੂਰ';

  @override
  String whenYearsAgo(int count) {
    return '$count ਸਾਲ ਪਹਿਲਾਂ';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ਮਹੀਨੇ ਪਹਿਲਾਂ';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count ਦਿਨ ਪਹਿਲਾਂ';
  }

  @override
  String get searchHint => 'ਗੀਤ, ਕਲਾਕਾਰ, ਐਲਬਮ';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਨਤੀਜੇ',
      one: '1 ਨਤੀਜਾ',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'ਹਾਲੀਆ ਖੋਜਾਂ';

  @override
  String get searchEmptyTitle => 'ਕੁਝ ਨਹੀਂ ਮਿਲਿਆ';

  @override
  String get searchEmptyBody =>
      'ਕੋਈ ਹੋਰ ਸਪੈਲਿੰਗ ਅਜ਼ਮਾਓ, ਜਾਂ ਸਿਰਫ਼ ਕਲਾਕਾਰ ਦਾ ਨਾਮ ਲਿਖੋ।';

  @override
  String get searchStartTitle => 'ਚਲਾਉਣ ਲਈ ਕੁਝ ਲੱਭੋ';

  @override
  String get searchStartBody =>
      'YouTube Music ਵਿੱਚ ਖੋਜੋ — ਸਿਰਫ਼ ਗੀਤ ਆਉਣਗੇ, ਹੋਰ ਚੀਜ਼ਾਂ ਦੇ ਵੀਡੀਓ ਕਦੇ ਨਹੀਂ।';

  @override
  String get libPlaylists => 'ਪਲੇਲਿਸਟਾਂ';

  @override
  String get libSongs => 'ਗੀਤ';

  @override
  String get libArtists => 'ਕਲਾਕਾਰ';

  @override
  String get libLiked => 'ਪਸੰਦੀਦਾ';

  @override
  String get libDownloads => 'ਡਾਊਨਲੋਡ';

  @override
  String get libImported => 'ਇੰਪੋਰਟ ਕੀਤੇ';

  @override
  String get libLikedSongs => 'ਪਸੰਦੀਦਾ ਗੀਤ';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਗੀਤ',
      one: '1 ਗੀਤ',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ਆਫ਼ਲਾਈਨ';
  }

  @override
  String get libMyFiles => 'ਮੇਰੀਆਂ ਆਪਣੀਆਂ ਫ਼ਾਈਲਾਂ';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਫ਼ਾਈਲਾਂ',
      one: '1 ਫ਼ਾਈਲ',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'ਨਵੀਂ ਪਲੇਲਿਸਟ';

  @override
  String get libMakeOne => 'ਇੱਕ ਬਣਾਓ';

  @override
  String get libSortRecent => 'ਹਾਲ ਹੀ ਵਿੱਚ ਸ਼ਾਮਲ ਕੀਤੇ';

  @override
  String get libSortTitle => 'ਸਿਰਲੇਖ';

  @override
  String get libSortArtist => 'ਕਲਾਕਾਰ';

  @override
  String get libSortPlays => 'ਸਭ ਤੋਂ ਵੱਧ ਚਲਾਏ';

  @override
  String get sheetNotForMe => 'ਮੇਰੇ ਲਈ ਨਹੀਂ';

  @override
  String get sheetNotForMeSub => 'ਇਹ ਦੁਬਾਰਾ ਕਦੇ ਸਿਫ਼ਾਰਸ਼ ਨਾ ਕਰੋ';

  @override
  String get sheetBlocked => 'ਬਲੌਕ ਕੀਤਾ ਹੈ — ਦੁਬਾਰਾ ਇਜਾਜ਼ਤ ਦੇਣ ਲਈ ਟੈਪ ਕਰੋ';

  @override
  String get sheetBlockedSub => 'ਇਹ ਸਿਫ਼ਾਰਸ਼ਾਂ ਵਿੱਚ ਦੁਬਾਰਾ ਆ ਸਕਦਾ ਹੈ';

  @override
  String get sheetPlayNext => 'ਅਗਲਾ ਚਲਾਓ';

  @override
  String get sheetAddToPlaylist => 'ਪਲੇਲਿਸਟ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get sheetDownloaded => 'ਡਾਊਨਲੋਡ ਹੋ ਗਿਆ';

  @override
  String get sheetRemoveFile => 'ਫ਼ਾਈਲ ਹਟਾਉਣ ਲਈ ਟੈਪ ਕਰੋ';

  @override
  String get sheetDownload => 'ਡਾਊਨਲੋਡ';

  @override
  String get sheetKeepOffline => 'ਆਫ਼ਲਾਈਨ ਲਈ ਰੱਖੋ';

  @override
  String get sheetRadio => 'ਰੇਡੀਓ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get sheetRadioSub => 'ਇਸ ਗੀਤ ਦੁਆਲੇ ਬਣਾਈ ਕਤਾਰ';

  @override
  String get sheetQueue => 'ਕਤਾਰ';

  @override
  String get sheetSleepTimer => 'ਸਲੀਪ ਟਾਈਮਰ';

  @override
  String get sheetSleepOff => 'ਬੰਦ';

  @override
  String sheetSleepMinutes(int count) {
    return '$count ਮਿੰਟ';
  }

  @override
  String get sheetSleepEndOfTrack => 'ਇਸ ਗੀਤ ਦੇ ਅੰਤ ਤੇ';

  @override
  String sheetSleepSet(int count) {
    return 'ਸੰਗੀਤ $count ਮਿੰਟ ਵਿੱਚ ਰੁਕੇਗਾ';
  }

  @override
  String get tasteTitle => 'ਤੁਹਾਡੀ ਪਸੰਦ';

  @override
  String get tasteRetrain => 'ਦੁਬਾਰਾ ਸਿਖਲਾਈ';

  @override
  String get tasteRetraining => 'ਤੁਹਾਡੇ ਇਤਿਹਾਸ ਤੇ ਦੁਬਾਰਾ ਸਿਖਲਾਈ ਹੋ ਰਹੀ ਹੈ…';

  @override
  String get tasteRetrained => 'AI ਨੇ ਆਪਣਾ ਮਾਡਲ ਦੁਬਾਰਾ ਬਣਾਇਆ।';

  @override
  String tasteConfidence(int percent) {
    return 'ਭਰੋਸਾ $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays ਵਾਰ ਚਲਾਏ · $skips ਸਕਿੱਪ · $likes ਪਸੰਦ';
  }

  @override
  String get tasteEmptySummary => 'ਕੁਝ ਗੀਤ ਚਲਾਓ ਅਤੇ ਇਹ ਭਰ ਜਾਵੇਗਾ।';

  @override
  String get tasteKeepLearning => 'ਮੇਰੇ ਸੁਣਦੇ ਸਮੇਂ ਸਿੱਖਦੇ ਰਹੋ';

  @override
  String get tasteKeepLearningSub =>
      'ਮੌਜੂਦਾ ਪ੍ਰੋਫਾਈਲ ਨੂੰ ਫ੍ਰੀਜ਼ ਕਰਨ ਲਈ ਬੰਦ ਕਰੋ';

  @override
  String get tasteDownloadsTitle => 'AI ਵੱਲੋਂ ਸੰਭਾਲੇ ਡਾਊਨਲੋਡ';

  @override
  String get tasteDownloadsSub => 'ਤੁਹਾਡੇ ਕਹੇ ਬਿਨਾਂ ਸੰਗੀਤ ਡੀਵਾਈਸ ਤੇ ਆ ਜਾਂਦਾ ਹੈ';

  @override
  String get tasteDownloadLikes => 'ਜੋ ਮੈਨੂੰ ਪਸੰਦ ਹੈ ਸਭ ਡਾਊਨਲੋਡ ਕਰੋ';

  @override
  String get tasteDownloadLikesSub =>
      'ਦਿਲ ਤੇ ਟੈਪ ਕਰੋ ਅਤੇ ਫ਼ਾਈਲ ਆਫ਼ਲਾਈਨ ਲਈ ਸੇਵ ਹੋ ਜਾਂਦੀ ਹੈ';

  @override
  String get tasteAiInstall => 'AI ਨੂੰ ਆਪਣੀ ਚੁਣੀ ਸੰਗੀਤ ਇੰਸਟਾਲ ਕਰਨ ਦਿਓ';

  @override
  String get tasteAiInstallSub =>
      'ਇਹ ਉਹ ਟਰੈਕ ਲਿਆਏਗਾ ਜਿਨ੍ਹਾਂ ਬਾਰੇ ਇਸਨੂੰ ਭਰੋਸਾ ਹੈ';

  @override
  String get tasteWhatItThinks => 'ਇਸ ਮੁਤਾਬਕ ਤੁਹਾਨੂੰ ਕੀ ਪਸੰਦ ਹੈ';

  @override
  String get tasteWhatItThinksSub => 'ਚਲਾਉਣ, ਸਕਿੱਪ, ਪਸੰਦ ਅਤੇ ਦੁਹਰਾਓ ਤੋਂ ਸਿੱਖਿਆ';

  @override
  String get tasteArtists => 'ਜਿਨ੍ਹਾਂ ਕਲਾਕਾਰਾਂ ਤੇ ਇਹ ਭਰੋਸਾ ਕਰਦਾ ਹੈ';

  @override
  String get tasteWhenYouListen => 'ਤੁਸੀਂ ਕਦੋਂ ਸੁਣਦੇ ਹੋ';

  @override
  String get tasteWhenYouListenSub =>
      'ਪ੍ਰਤੀ ਘੰਟਾ ਚਲਾਏ ਗਏ — ਮੌਜੂਦਾ ਘੰਟੇ ਨੂੰ ਵੱਧ ਮਹੱਤਵ ਮਿਲਦਾ ਹੈ';

  @override
  String get tasteDecades => 'ਦਹਾਕੇ';

  @override
  String get tasteTune => 'ਸਿਫ਼ਾਰਸ਼ਾਂ ਨੂੰ ਸੈੱਟ ਕਰੋ';

  @override
  String get tasteTuneSub => 'ਅਗਲੀ ਹੋਮ ਰਿਫ੍ਰੈਸ਼ ਤੇ ਲਾਗੂ ਹੋਵੇਗਾ';

  @override
  String get tasteDiscovery => 'ਖੋਜ';

  @override
  String get tasteDiscoverySub => 'ਜਾਣਿਆ-ਪਛਾਣਿਆ ↔ ਜੋ ਕਦੇ ਨਹੀਂ ਸੁਣਿਆ';

  @override
  String get tasteEnergy => 'ਊਰਜਾ';

  @override
  String get tasteEnergySub => 'ਸ਼ਾਂਤ ↔ ਉੱਚੀ';

  @override
  String get tasteRecency => 'ਨਵੀਨਤਾ';

  @override
  String get tasteRecencySub => 'ਸਦੀਵੀ ↔ ਬਿਲਕੁਲ ਨਵਾਂ';

  @override
  String get tasteNostalgia => 'ਪੁਰਾਣੀਆਂ ਯਾਦਾਂ';

  @override
  String get tasteNostalgiaSub =>
      'ਕੋਈ ਪੁਰਾਣਾ ਮਨਪਸੰਦ ਕਿੰਨਾ ਪੁਰਾਣਾ ਹੋਣ ਤੇ ਭੁੱਲਿਆ ਮੰਨਿਆ ਜਾਵੇ';

  @override
  String get tasteSignals => 'ਇਹ ਕਿਹੜੇ ਸੰਕੇਤ ਵਰਤ ਸਕਦਾ ਹੈ';

  @override
  String get tasteSignalsSub => 'ਸਭ ਕੁਝ ਇਸ ਡੀਵਾਈਸ ਤੇ ਹੀ ਰਹਿੰਦਾ ਹੈ';

  @override
  String get tasteUseHistory => 'ਜੋ ਮੈਂ ਚਲਾਇਆ ਹੈ';

  @override
  String get tasteUseSkips => 'ਜੋ ਮੈਂ ਸਕਿੱਪ ਕਰਦਾ ਹਾਂ';

  @override
  String get tasteUseTime => 'ਦਿਨ ਦਾ ਸਮਾਂ';

  @override
  String get tasteUseYouTube => 'YouTube ਦੇ ਸੁਝਾਅ';

  @override
  String get tasteAlwaysMore => 'ਹਮੇਸ਼ਾ ਹੋਰ';

  @override
  String get tasteNeverAgain => 'ਦੁਬਾਰਾ ਕਦੇ ਨਹੀਂ';

  @override
  String get tasteAddArtist => 'ਕਲਾਕਾਰ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get tasteMoreOfPrompt => 'ਹਮੇਸ਼ਾ ਹੋਰ…';

  @override
  String get tasteNeverAgainPrompt => 'ਦੁਬਾਰਾ ਕਦੇ ਨਹੀਂ…';

  @override
  String get tasteReset => 'ਜੋ ਸਿੱਖਿਆ ਉਸਨੂੰ ਰੀਸੈੱਟ ਕਰੋ';

  @override
  String get tasteResetSub =>
      'ਤੁਹਾਡਾ ਸੰਗੀਤ ਰਹੇਗਾ; ਪ੍ਰੋਫਾਈਲ ਜ਼ੀਰੋ ਤੋਂ ਸ਼ੁਰੂ ਹੋਵੇਗਾ';

  @override
  String get trainCard => 'ਰੇਟਿੰਗ ਦੇ ਕੇ ਸਿਖਲਾਈ ਦਿਓ';

  @override
  String get trainCardSub =>
      'ਅਸਲੀ ਗੀਤਾਂ ਨੂੰ ਸਵਾਈਪ ਕਰੋ। ਇਸ ਵਰਗੇ ਹੋਰ ਲਈ ਸੱਜੇ, ਦੁਬਾਰਾ ਨਹੀਂ ਲਈ ਖੱਬੇ। ਇੱਥੇ ਦੋ ਮਿੰਟ ਇੱਕ ਹਫ਼ਤੇ ਦੇ ਸੁਣਨ ਨਾਲੋਂ ਬਿਹਤਰ ਹਨ।';

  @override
  String get trainStart => 'ਸਿਖਲਾਈ ਦਾ ਦੌਰ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get trainTitle => 'ਸਿਖਲਾਈ ਦਾ ਦੌਰ';

  @override
  String get trainQuestion => 'ਕੀ ਤੁਸੀਂ ਇਹ ਆਪਣੇ ਹੋਮ ਤੇ ਚਾਹੋਗੇ?';

  @override
  String get trainMoreLikeThis => 'ਇਸ ਵਰਗੇ ਹੋਰ';

  @override
  String get trainNeverAgain => 'ਦੁਬਾਰਾ ਕਦੇ ਨਹੀਂ';

  @override
  String get trainDone => 'ਦੌਰ ਪੂਰਾ ਹੋਇਆ';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked ਰੱਖੇ · $blocked ਬਲੌਕ ਕੀਤੇ। ਭਰੋਸਾ $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'ਆਪਣੀ ਪਸੰਦ ਤੇ ਵਾਪਸ ਜਾਓ';

  @override
  String get trainNothingTitle => 'ਹਾਲੇ ਰੇਟ ਕਰਨ ਲਈ ਕੁਝ ਨਹੀਂ';

  @override
  String get trainNothingBody =>
      'ਕੁਝ ਸੰਗੀਤ ਸ਼ਾਮਲ ਕਰੋ ਜਾਂ ਪਹਿਲਾਂ AI ਨੂੰ ਉਮੀਦਵਾਰ ਲਿਆਉਣ ਦਿਓ, ਫਿਰ ਵਾਪਸ ਆਓ।';

  @override
  String get trainLeaveTitle => 'ਸਿਖਲਾਈ ਦਾ ਦੌਰ ਛੱਡਣਾ ਹੈ?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ਹੁਣ ਛੱਡਿਆ ਤਾਂ AI ਇਸ ਦੌਰ ਦਾ ਸਭ ਕੁਝ ਰੱਦ ਕਰ ਦੇਵੇਗਾ — ਜਿਹੜੇ ਸਾਰੇ $count ਗੀਤ ਤੁਸੀਂ ਹੁਣੇ ਰੇਟ ਕੀਤੇ।',
      one:
          'ਹੁਣ ਛੱਡਿਆ ਤਾਂ AI ਇਸ ਦੌਰ ਦਾ ਸਭ ਕੁਝ ਰੱਦ ਕਰ ਦੇਵੇਗਾ — ਜਿਹੜਾ 1 ਗੀਤ ਤੁਸੀਂ ਹੁਣੇ ਰੇਟ ਕੀਤਾ।',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'ਸਿਖਲਾਈ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get trainDiscard => 'ਰੱਦ ਕਰੋ ਅਤੇ ਛੱਡੋ';

  @override
  String get setTitle => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get setAppearance => 'ਦਿੱਖ';

  @override
  String get setTheme => 'ਥੀਮ';

  @override
  String get setThemeSystem => 'ਸਿਸਟਮ ਦੀ ਪਾਲਣਾ ਕਰੋ';

  @override
  String get setThemeLight => 'ਲਾਈਟ';

  @override
  String get setThemeDark => 'ਡਾਰਕ';

  @override
  String get setPureBlack => 'ਸ਼ੁੱਧ ਕਾਲਾ';

  @override
  String get setPureBlackSub => 'OLED ਸਕ੍ਰੀਨ ਤੇ ਬਿਜਲੀ ਬਚਾਉਂਦਾ ਹੈ';

  @override
  String get setAccent => 'ਐਕਸੈਂਟ ਰੰਗ';

  @override
  String get setAccentArtwork => 'ਕਵਰ ਆਰਟ ਤੋਂ';

  @override
  String get setAccentFixed => 'ਇੱਕ ਰੰਗ ਜੋ ਮੈਂ ਚੁਣਿਆ';

  @override
  String get setLanguage => 'ਭਾਸ਼ਾ';

  @override
  String get setLanguageSystem => 'ਸਿਸਟਮ ਦੀ ਪਾਲਣਾ ਕਰੋ';

  @override
  String get setAccessibility => 'ਪਹੁੰਚਯੋਗਤਾ';

  @override
  String get setTextSize => 'ਟੈਕਸਟ ਦਾ ਆਕਾਰ';

  @override
  String get setTextSizeSub => 'ਤੁਹਾਡੀ ਸਿਸਟਮ ਸੈਟਿੰਗ ਦੇ ਉੱਪਰ';

  @override
  String get setReduceMotion => 'ਹਿਲਜੁਲ ਘਟਾਓ';

  @override
  String get setReduceMotionSub =>
      'ਬਾਰ, ਵਿਜ਼ੁਅਲਾਈਜ਼ਰ, ਉਛਲਦੀ ਸਕ੍ਰੌਲਿੰਗ, ਸਪ੍ਰਿੰਗ ਵਰਗੇ ਟੈਪ ਅਤੇ ਪੰਨਾ ਬਦਲਾਅ ਬੰਦ ਕਰਦਾ ਹੈ';

  @override
  String get setHighContrast => 'ਉੱਚ ਕੰਟ੍ਰਾਸਟ';

  @override
  String get setHighContrastSub =>
      'ਵਧੇਰੇ ਸਪਸ਼ਟ ਵਿਭਾਜਨ ਅਤੇ ਦਿਸਣ ਵਾਲੀਆਂ ਕਿਨਾਰੀਆਂ';

  @override
  String get setBoldText => 'ਗੂੜ੍ਹਾ ਟੈਕਸਟ';

  @override
  String get setPlayback => 'ਪਲੇਬੈਕ';

  @override
  String get setAutoRadio => 'ਸੰਗੀਤ ਚਲਦਾ ਰੱਖੋ';

  @override
  String get setAutoRadioSub =>
      'ਕਤਾਰ ਖਤਮ ਹੋਣ ਤੇ, ਆਖਰੀ ਗੀਤ ਤੋਂ ਬਣੇ ਰੇਡੀਓ ਨਾਲ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get setSmartShuffle => 'ਸਮਾਰਟ ਸ਼ਫਲ';

  @override
  String get setSmartShuffleSub => 'ਬੇਤਰਤੀਬੇ ਦੀ ਥਾਂ ਪਸੰਦ ਮੁਤਾਬਕ ਸ਼ਫਲ ਕਰਦਾ ਹੈ';

  @override
  String get setResume => 'ਜਿੱਥੇ ਛੱਡਿਆ ਸੀ ਉੱਥੋਂ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get setResumeSub =>
      'ਐਪ ਖੁੱਲ੍ਹਣ ਤੇ ਕਤਾਰ ਨੂੰ ਰੁਕੀ ਹੋਈ ਹਾਲਤ ਵਿੱਚ ਬਹਾਲ ਕਰਦਾ ਹੈ';

  @override
  String get setDataSaver => 'Wi-Fi ਤੋਂ ਬਿਨਾਂ ਡਾਟਾ ਸੇਵਰ';

  @override
  String get setDataSaverSub =>
      'ਮੋਬਾਈਲ ਡਾਟਾ ਤੇ ਸਟ੍ਰੀਮ ਅਤੇ ਡਾਊਨਲੋਡ ਨੂੰ 128 kbps ਤੱਕ ਸੀਮਤ ਕਰਦਾ ਹੈ';

  @override
  String get setHaptics => 'ਹੈਪਟਿਕ ਫੀਡਬੈਕ';

  @override
  String get setShowReasons => 'ਦਿਖਾਓ ਕਿ ਕੋਈ ਚੀਜ਼ ਕਿਉਂ ਸਿਫ਼ਾਰਸ਼ ਕੀਤੀ ਗਈ';

  @override
  String get setSkipSilence => 'ਚੁੱਪ ਛੱਡੋ';

  @override
  String get setQuality => 'ਆਡੀਓ ਗੁਣਵੱਤਾ';

  @override
  String get setQualityLow => 'ਘੱਟ · 64 kbps';

  @override
  String get setQualityNormal => 'ਆਮ · 128 kbps';

  @override
  String get setQualityHigh => 'ਉੱਚ · 192 kbps';

  @override
  String get setQualityBest => 'ਉਪਲਬਧ ਸਭ ਤੋਂ ਵਧੀਆ';

  @override
  String get setStorage => 'ਡਾਊਨਲੋਡ ਅਤੇ ਸਟੋਰੇਜ';

  @override
  String get setWifiOnly => 'ਸਿਰਫ਼ Wi-Fi ਤੇ ਡਾਊਨਲੋਡ ਕਰੋ';

  @override
  String get setDailyLimit => 'AI ਲਈ ਰੋਜ਼ਾਨਾ ਸੀਮਾ';

  @override
  String setDailyLimitSub(int count) {
    return 'ਰੋਜ਼ ਦੇ $count ਗੀਤ';
  }

  @override
  String get setBudget => 'AI ਦੇ ਵਰਤਣ ਲਈ ਸਟੋਰੇਜ';

  @override
  String setUsed(Object size) {
    return 'ਡਾਊਨਲੋਡਾਂ ਨੇ $size ਵਰਤੀ';
  }

  @override
  String get setYourMusic => 'ਤੁਹਾਡਾ ਸੰਗੀਤ';

  @override
  String get setImport => 'ਇਸ ਡੀਵਾਈਸ ਤੋਂ ਸੰਗੀਤ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get setImportSub => 'ਫੋਲਡਰ ਜਾਂ ਇਕੱਲੀਆਂ ਫ਼ਾਈਲਾਂ ਚੁਣੋ';

  @override
  String get setCleanup => 'ਗੁੰਮ ਫ਼ਾਈਲਾਂ ਸਾਫ਼ ਕਰੋ';

  @override
  String get setCleanupSub => 'ਜਿਨ੍ਹਾਂ ਗੀਤਾਂ ਦੀ ਫ਼ਾਈਲ ਨਹੀਂ ਰਹੀ ਉਹ ਹਟਾਓ';

  @override
  String setCleanupDone(int count) {
    return '$count ਗੁੰਮ ਫ਼ਾਈਲਾਂ ਹਟਾਈਆਂ ਗਈਆਂ।';
  }

  @override
  String get setExport => 'ਮੇਰੀ ਪਸੰਦ ਦੂਜੇ ਡੀਵਾਈਸ ਤੇ ਭੇਜੋ';

  @override
  String get setExportSub =>
      'ਤੁਹਾਡੀਆਂ ਪਸੰਦਾਂ, ਚਲਾਏ ਗੀਤਾਂ ਅਤੇ AI ਦੇ ਸਿੱਖੇ ਸਭ ਕੁਝ ਵਾਲੀ ਫ਼ਾਈਲ ਸੇਵ ਕਰਦਾ ਹੈ';

  @override
  String get setImportTaste => 'ਦੂਜੇ ਡੀਵਾਈਸ ਤੋਂ ਪਸੰਦ ਲੋਡ ਕਰੋ';

  @override
  String get setImportTasteSub =>
      'ਸੇਵ ਕੀਤੀ ਪਸੰਦ ਫ਼ਾਈਲ ਚੁਣ ਕੇ ਮਿਲਾਓ — ਦੁਹਰਾਉਣਾ ਸੁਰੱਖਿਅਤ ਹੈ';

  @override
  String get setAbout => 'ਬਾਰੇ';

  @override
  String get setAboutBody =>
      'YouTube ਅਤੇ ਤੁਹਾਡੀਆਂ ਆਪਣੀਆਂ ਫ਼ਾਈਲਾਂ ਤੋਂ ਸੰਗੀਤ। AI ਪੂਰੀ ਤਰ੍ਹਾਂ ਇਸ ਡੀਵਾਈਸ ਤੇ ਚੱਲਦਾ ਹੈ — ਕੁਝ ਵੀ ਬਾਹਰ ਨਹੀਂ ਜਾਂਦਾ।';

  @override
  String get setSource => 'ਸੋਰਸ ਕੋਡ';

  @override
  String get importTitle => 'ਸੰਗੀਤ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get importPickFolder => 'ਫੋਲਡਰ ਚੁਣੋ';

  @override
  String get importPickFiles => 'ਫ਼ਾਈਲਾਂ ਚੁਣੋ';

  @override
  String importScanning(Object file) {
    return '$file ਸਕੈਨ ਹੋ ਰਹੀ ਹੈ';
  }

  @override
  String importAdded(int count) {
    return '$count ਸ਼ਾਮਲ ਕੀਤੇ';
  }

  @override
  String get importDenied =>
      'ਇਜਾਜ਼ਤ ਨਹੀਂ ਮਿਲੀ — ਤੁਹਾਡਾ ਸੰਗੀਤ ਨਹੀਂ ਪੜ੍ਹਿਆ ਜਾ ਸਕਦਾ।';

  @override
  String get importWatched => 'ਨਿਗਰਾਨੀ ਹੇਠ ਫੋਲਡਰ';

  @override
  String get importIosHint =>
      'Files ਐਪ ਖੋਲ੍ਹੋ, On My iPhone → TuneBox ਵਿੱਚ ਜਾਓ, ਅਤੇ ਸੰਗੀਤ ਉੱਥੇ ਪਾਓ।';

  @override
  String get playerQueue => 'ਕਤਾਰ';

  @override
  String get playerUpNext => 'ਅੱਗੇ';

  @override
  String get playerLyrics => 'ਬੋਲ';

  @override
  String get playerNoLyrics => 'ਇਸ ਦੇ ਬੋਲ ਨਹੀਂ ਹਨ।';

  @override
  String get playerRepeat => 'ਦੁਹਰਾਓ';

  @override
  String get playerShuffle => 'ਸ਼ਫਲ';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" ਚਲਾਇਆ ਨਹੀਂ ਜਾ ਸਕਿਆ';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" ਛੱਡਿਆ ਜਾ ਰਿਹਾ ਹੈ — ਸਟ੍ਰੀਮ ਨਹੀਂ ਖੁੱਲ੍ਹੀ।';
  }

  @override
  String get undo => 'ਅਣਕੀਤਾ ਕਰੋ';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ਹੁਣ: $tags, ਅਗਵਾਈ $artist ਦੀ।';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ਹੁਣ: $tags।';
  }

  @override
  String get setColour => 'ਰੰਗ';

  @override
  String get setColourSub => 'ਸਾਰੀ ਐਪ ਇਸਦੀ ਪਾਲਣਾ ਕਰਦੀ ਹੈ';

  @override
  String get setCoverArt => 'ਕਵਰ ਆਰਟ';

  @override
  String get setMyColour => 'ਮੇਰਾ ਰੰਗ';

  @override
  String get setCoverArtSub => 'ਹਰ ਗੀਤ ਆਪਣੇ ਕਵਰ ਤੋਂ ਐਪ ਦਾ ਰੰਗ ਬਦਲਦਾ ਹੈ।';

  @override
  String get setMyColourSub => 'ਇੱਕ ਰੰਗ, ਹਰ ਥਾਂ, ਹਮੇਸ਼ਾ।';

  @override
  String get setPickColour => 'ਕੋਈ ਵੀ ਰੰਗ ਚੁਣੋ';

  @override
  String get setWifiOnlyTitle => 'ਸਿਰਫ਼ Wi-Fi ਤੇ ਡਾਊਨਲੋਡ ਕਰੋ';

  @override
  String get setDownloadLikes => 'ਜੋ ਮੈਨੂੰ ਪਸੰਦ ਹੈ ਸਭ ਡਾਊਨਲੋਡ ਕਰੋ';

  @override
  String get setDownloadLikesSub => 'ਦਿਲ ਵਾਲਾ ਬਟਨ ਫ਼ਾਈਲ ਵੀ ਸੇਵ ਕਰਦਾ ਹੈ';

  @override
  String get setAiInstall => 'AI ਨੂੰ ਆਪਣੀ ਚੁਣੀ ਸੰਗੀਤ ਇੰਸਟਾਲ ਕਰਨ ਦਿਓ';

  @override
  String get setSkipSilenceSub =>
      'ਸਿਰਫ਼ Android ਤੇ। ਸ਼ਾਂਤ ਸ਼ੁਰੂਆਤ, ਫੇਡ ਅਤੇ ਹੌਲੀ ਹਿੱਸੇ ਕੱਟ ਸਕਦਾ ਹੈ — ਜੇ ਸੰਗੀਤ ਛੁੱਟਦਾ ਹੈ ਤਾਂ ਬੰਦ ਰੱਖੋ';

  @override
  String get setStorageUsed => 'ਡਾਊਨਲੋਡਾਂ ਵੱਲੋਂ ਵਰਤੀ ਸਟੋਰੇਜ';

  @override
  String get setLibrary => 'ਲਾਇਬ੍ਰੇਰੀ';

  @override
  String get setUpdates => 'ਅੱਪਡੇਟ';

  @override
  String get setAutoUpdate => 'ਆਪਣੇ ਆਪ ਅੱਪਡੇਟ ਜਾਂਚੋ';

  @override
  String get setAutoUpdateSub =>
      'ਹਰ ਕੁਝ ਘੰਟਿਆਂ ਬਾਅਦ, ਚੁੱਪ-ਚਾਪ, ਅਤੇ Wi-Fi ਤੇ ਡਾਊਨਲੋਡ ਕਰਦਾ ਹੈ। ਇੰਸਟਾਲ ਕਰਨ ਲਈ ਫਿਰ ਵੀ ਤੁਹਾਡੇ ਤੋਂ ਪੁੱਛਦਾ ਹੈ।';

  @override
  String setUpdateReady(Object version) {
    return '$version ਲਈ ਅੱਪਡੇਟ ਤਿਆਰ ਹੈ';
  }

  @override
  String get setUpdateReadySub => 'ਡਾਊਨਲੋਡ ਹੋ ਗਿਆ — ਇੰਸਟਾਲ ਕਰਨ ਲਈ ਟੈਪ ਕਰੋ';

  @override
  String get setUpdateAvailableSub =>
      'ਰਿਲੀਜ਼ ਪੰਨੇ ਤੋਂ ਲਓ — ਲਿੰਕ ਕਾਪੀ ਕਰਨ ਲਈ ਟੈਪ ਕਰੋ';

  @override
  String get setLinkCopied => 'ਲਿੰਕ ਕਾਪੀ ਹੋ ਗਿਆ';

  @override
  String get setCheckNow => 'ਹੁਣੇ ਜਾਂਚੋ';

  @override
  String get setUpToDate => 'TuneBox ਅੱਪ ਟੂ ਡੇਟ ਹੈ';

  @override
  String get setChecking => 'ਨਵਾਂ ਵਰਜਨ ਲੱਭਿਆ ਜਾ ਰਿਹਾ ਹੈ…';

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
