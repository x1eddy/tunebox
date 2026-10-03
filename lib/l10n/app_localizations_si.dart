// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class LSi extends L {
  LSi([String locale = 'si']) : super(locale);

  @override
  String get navHome => 'මුල් පිටුව';

  @override
  String get navExplore => 'ගවේෂණය';

  @override
  String get navLibrary => 'පුස්තකාලය';

  @override
  String get navTaste => 'ඔබේ රසය';

  @override
  String get actionDone => 'අවසන්';

  @override
  String get actionCancel => 'අවලංගු කරන්න';

  @override
  String get actionCreate => 'සාදන්න';

  @override
  String get actionPlay => 'වාදනය';

  @override
  String get actionShuffle => 'මිශ්‍ර කරන්න';

  @override
  String get actionPlayAll => 'සියල්ල වාදනය';

  @override
  String get actionAdd => 'එක් කරන්න';

  @override
  String get actionRemove => 'ඉවත් කරන්න';

  @override
  String get actionName => 'නම';

  @override
  String get greetingNight => 'තාම නිදි නැද්ද?';

  @override
  String get greetingMorning => 'සුභ උදෑසනක්';

  @override
  String get greetingAfternoon => 'සුභ දහවලක්';

  @override
  String get greetingEvening => 'සුභ සන්ධ්‍යාවක්';

  @override
  String get homeBuilding => 'AI ඔබේ රාක්ක සාදමින්…';

  @override
  String get homeOffline => 'නොබැඳි — උපාංගයේ ඇති දේ පෙන්වමින්';

  @override
  String get homeNothingYet => 'තවම පෙන්වීමට කිසිවක් නැත';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'රාක්ක $countක්, මේ දැන් නවීකරණය කළා',
      one: 'රාක්ක 1ක්, මේ දැන් නවීකරණය කළා',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'රාක්ක නැවත සාදන්න';

  @override
  String get homeAddMusic => 'මෙම උපාංගයෙන් සංගීතය එක් කරන්න';

  @override
  String get homeQuickPicks => 'ඉක්මන් තේරීම්';

  @override
  String get homeQuickPicksSub => 'ඔබ සිටි තැනටම නැවත';

  @override
  String get homeEmptyTitle => 'ඔබේ පුස්තකාලය හිස්';

  @override
  String get homeEmptyBody =>
      'යමක් සොයන්න, නැතහොත් මෙම උපාංගයේ දැනටමත් ඇති සංගීතය එක් කරන්න. AI ඔබේ පළමු ගීතයෙන්ම ඉගෙනීම ආරම්භ කරයි.';

  @override
  String get homeAddMyMusic => 'මගේ සංගීතය එක් කරන්න';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube වෙත ළඟා විය නොහැක: $error';
  }

  @override
  String get moodFocus => 'අවධානය';

  @override
  String get moodWorkout => 'ව්‍යායාම';

  @override
  String get moodChill => 'සැහැල්ලුව';

  @override
  String get moodCommute => 'ගමන';

  @override
  String get moodParty => 'පාර්ටි';

  @override
  String moodBuilding(Object mood) {
    return '$mood මික්ස් එකක් සාදමින්…';
  }

  @override
  String moodFailed(Object error) {
    return 'සාර්ථක නොවුණා: $error';
  }

  @override
  String get shelfRepeat => 'නැවත නැවත';

  @override
  String get shelfRepeatSub => 'ඔබේ පසුගිය සති දෙක';

  @override
  String get shelfForgotten => 'ඔබ ප්‍රිය කළ අමතක වූ පැරණි ගීත';

  @override
  String get shelfForgottenSub => 'වරක් ප්‍රිය කළ, මඳ කලක් අල්ලා නැති';

  @override
  String get shelfNew => 'අලුත්';

  @override
  String get shelfNewSub => 'ඔබට ගැලපෙන බව AI සිතන නව ගීත';

  @override
  String shelfBecause(Object artist) {
    return 'ඔබ $artist වාදනය කළ නිසා';
  }

  @override
  String get shelfBecauseSub => 'ඔබේ රසයේ එම කොන';

  @override
  String get shelfDeep => 'ඇඟිලි තුඩවත් නොගත්';

  @override
  String get shelfDeepSub => 'ඔබේ පුස්තකාලයේ ඇත, නමුත් කලාතුරකින් වාදනය කළ';

  @override
  String get shelfMix => 'ඔබේ මික්ස්';

  @override
  String get shelfMixSub => 'ඔබ යෙදුම විවෘත කරන සෑම වාරයකම නැවත සෑදේ';

  @override
  String get shelfAdded => 'මෑතදී එක් කළ';

  @override
  String get shelfAddedSub => 'බාගත කළ සහ ආයාත කළ ගොනු';

  @override
  String get shelfStarter => 'මෙතැනින් පටන් ගන්න';

  @override
  String get shelfStarterSub =>
      'ගීත කිහිපයක් වාදනය කරන්න, AI වහාම ඉගෙනීම අරඹයි';

  @override
  String reasonPlays(int count) {
    return 'වාර $count වාදනය';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ප්‍රිය කළා, අවසන් වරට $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'වාර $count වාදනය, අවසන් වරට $when';
  }

  @override
  String get reasonTopArtist => 'ඔබ වැඩිපුරම අසන කලාකරුවන්ගෙන් කෙනෙක්';

  @override
  String reasonMore(Object artist) {
    return 'තවත් $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'ඔබ නිතර $artist වෙත ආපසු එයි';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'ඔබ කැමති $tag වර්ගය';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'මෑතදී $tag වැඩියෙන්';
  }

  @override
  String get reasonOutThisYear => 'මේ වසරේ නිකුත් වූ';

  @override
  String get reasonReleasedRecently => 'මෑතදී නිකුත් වූ';

  @override
  String get reasonClose => 'ඔබ අසමින් සිටි දේට ආසන්නයි';

  @override
  String reasonNear(Object artist) {
    return '$artist ට ආසන්නයි';
  }

  @override
  String get reasonNeverPlayed => 'කිසි දිනක වාදනය කර නැත';

  @override
  String get reasonPlayedOnce => 'එක් වරක් වාදනය කළා';

  @override
  String get reasonPopular => 'දැන් ජනප්‍රියයි';

  @override
  String whenYearsAgo(int count) {
    return 'වසර $countකට පෙර';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'මාස $countකට පෙර';
  }

  @override
  String whenDaysAgo(int count) {
    return 'දින $countකට පෙර';
  }

  @override
  String get searchHint => 'ගීත, කලාකරුවන්, ඇල්බම';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ප්‍රතිඵල $countක්',
      one: 'ප්‍රතිඵල 1ක්',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'මෑත සෙවුම්';

  @override
  String get searchEmptyTitle => 'කිසිවක් හමු නොවීය';

  @override
  String get searchEmptyBody =>
      'වෙනත් අකුරු වින්‍යාසයක් හෝ කලාකරුවාගේ නම පමණක් උත්සාහ කරන්න.';

  @override
  String get searchStartTitle => 'වාදනය කිරීමට යමක් සොයන්න';

  @override
  String get searchStartBody =>
      'YouTube Music සොයන්න — ගීත පමණක් එයි, වෙනත් දේවල වීඩියෝ කිසිදා නොවේ.';

  @override
  String get libPlaylists => 'ප්ලේලිස්ට්';

  @override
  String get libSongs => 'ගීත';

  @override
  String get libArtists => 'කලාකරුවන්';

  @override
  String get libLiked => 'ප්‍රිය කළ';

  @override
  String get libDownloads => 'බාගැනීම්';

  @override
  String get libImported => 'ආයාත කළ';

  @override
  String get libLikedSongs => 'ප්‍රිය කළ ගීත';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ගීත $countක්',
      one: 'ගීත 1ක්',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return 'නොබැඳි $count';
  }

  @override
  String get libMyFiles => 'මගේම ගොනු';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ගොනු $countක්',
      one: 'ගොනු 1ක්',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'නව ප්ලේලිස්ට්';

  @override
  String get libMakeOne => 'එකක් සාදන්න';

  @override
  String get libSortRecent => 'මෑතදී එක් කළ';

  @override
  String get libSortTitle => 'මාතෘකාව';

  @override
  String get libSortArtist => 'කලාකරු';

  @override
  String get libSortPlays => 'වැඩිපුරම වාදනය කළ';

  @override
  String get sheetNotForMe => 'මට නොගැලපේ';

  @override
  String get sheetNotForMeSub => 'මෙය නැවත කිසිදා නිර්දේශ නොකරන්න';

  @override
  String get sheetBlocked => 'අවහිර කළා — නැවත ඉඩ දීමට ඔබන්න';

  @override
  String get sheetBlockedSub => 'මෙය නැවත නිර්දේශවල පෙනී සිටිය හැක';

  @override
  String get sheetPlayNext => 'ඊළඟට වාදනය';

  @override
  String get sheetAddToPlaylist => 'ප්ලේලිස්ට් එකට එක් කරන්න';

  @override
  String get sheetDownloaded => 'බාගත කළා';

  @override
  String get sheetRemoveFile => 'ගොනුව ඉවත් කිරීමට ඔබන්න';

  @override
  String get sheetDownload => 'බාගන්න';

  @override
  String get sheetKeepOffline => 'නොබැඳිව තබා ගන්න';

  @override
  String get sheetRadio => 'රේඩියෝ අරඹන්න';

  @override
  String get sheetRadioSub => 'මෙම ගීතය වටා සාදන ලද පෝලිමක්';

  @override
  String get sheetQueue => 'පෝලිම';

  @override
  String get sheetSleepTimer => 'නින්ද ටයිමරය';

  @override
  String get sheetSleepOff => 'අක්‍රියයි';

  @override
  String sheetSleepMinutes(int count) {
    return 'මිනිත්තු $count';
  }

  @override
  String get sheetSleepEndOfTrack => 'මෙම ගීතය අවසානයේ';

  @override
  String sheetSleepSet(int count) {
    return 'සංගීතය මිනිත්තු $countකින් නවතී';
  }

  @override
  String get tasteTitle => 'ඔබේ රසය';

  @override
  String get tasteRetrain => 'නැවත පුහුණු කරන්න';

  @override
  String get tasteRetraining => 'ඔබේ ඉතිහාසය මත නැවත පුහුණු වෙමින්…';

  @override
  String get tasteRetrained => 'AI එහි ආකෘතිය නැවත සෑදුවා.';

  @override
  String tasteConfidence(int percent) {
    return 'විශ්වාසය $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'වාදන $plays · මඟහැරීම් $skips · ප්‍රිය කිරීම් $likes';
  }

  @override
  String get tasteEmptySummary => 'ගීත කිහිපයක් වාදනය කරන්න, මෙය පිරෙනු ඇත.';

  @override
  String get tasteKeepLearning => 'මා අසන විට ඉගෙනීම දිගටම කරන්න';

  @override
  String get tasteKeepLearningSub => 'වත්මන් පැතිකඩ ශීත කිරීමට අක්‍රිය කරන්න';

  @override
  String get tasteDownloadsTitle => 'AI හසුරුවන බාගැනීම්';

  @override
  String get tasteDownloadsSub => 'ඔබ ඉල්ලා නැතිව සංගීතය උපාංගයට පැමිණේ';

  @override
  String get tasteDownloadLikes => 'මා ප්‍රිය කරන සියල්ල බාගන්න';

  @override
  String get tasteDownloadLikesSub =>
      'හදවත ඔබන්න, ගොනුව නොබැඳිව භාවිතයට සුරැකේ';

  @override
  String get tasteAiInstall => 'AI තෝරන සංගීතය ස්ථාපනය කිරීමට ඉඩ දෙන්න';

  @override
  String get tasteAiInstallSub => 'එය විශ්වාසයෙන් සිටින ගීත ගෙන එයි';

  @override
  String get tasteWhatItThinks => 'ඔබ කැමති යැයි එය සිතන දේ';

  @override
  String get tasteWhatItThinksSub =>
      'වාදන, මඟහැරීම්, ප්‍රිය කිරීම් සහ නැවත වාදනවලින් ඉගෙන ගත්';

  @override
  String get tasteArtists => 'එය රඳා පවතින කලාකරුවන්';

  @override
  String get tasteWhenYouListen => 'ඔබ අසන වේලාව';

  @override
  String get tasteWhenYouListenSub => 'පැයකට වාදන — වත්මන් පැයට වැඩි බරක් ලැබේ';

  @override
  String get tasteDecades => 'දශක';

  @override
  String get tasteTune => 'නිර්දේශ සකසන්න';

  @override
  String get tasteTuneSub => 'ඊළඟ මුල් පිටුව නැවුම් කිරීමේදී බලපායි';

  @override
  String get tasteDiscovery => 'සොයාගැනීම';

  @override
  String get tasteDiscoverySub => 'හුරුපුරුදු ↔ ඔබ කිසිදා නොඅසා ඇති දේ';

  @override
  String get tasteEnergy => 'ශක්තිය';

  @override
  String get tasteEnergySub => 'සන්සුන් ↔ හයියෙන්';

  @override
  String get tasteRecency => 'නවතාව';

  @override
  String get tasteRecencySub => 'කාලාතීත ↔ අලුත්ම';

  @override
  String get tasteNostalgia => 'නොස්ටැල්ජියාව';

  @override
  String get tasteNostalgiaSub =>
      'පැරණි ප්‍රියතමයක් අමතක වූවක් ලෙස සැලකෙන්නේ කොපමණ කලකටද';

  @override
  String get tasteSignals => 'එය භාවිත කළ හැකි සංඥා';

  @override
  String get tasteSignalsSub => 'සියල්ල මෙම උපාංගයේම පවතී';

  @override
  String get tasteUseHistory => 'මා වාදනය කළ දේ';

  @override
  String get tasteUseSkips => 'මා මඟහරින දේ';

  @override
  String get tasteUseTime => 'දවසේ වේලාව';

  @override
  String get tasteUseYouTube => 'YouTube වෙතින් යෝජනා';

  @override
  String get tasteAlwaysMore => 'සැමවිටම තවත්';

  @override
  String get tasteNeverAgain => 'නැවත කිසිදා නැත';

  @override
  String get tasteAddArtist => 'කලාකරුවකු එක් කරන්න';

  @override
  String get tasteMoreOfPrompt => 'සැමවිටම තවත්…';

  @override
  String get tasteNeverAgainPrompt => 'නැවත කිසිදා නැත…';

  @override
  String get tasteReset => 'ඉගෙන ගත් දේ යළි සකසන්න';

  @override
  String get tasteResetSub => 'ඔබේ සංගීතය රැඳේ; පැතිකඩ මුල සිට අරඹයි';

  @override
  String get trainCard => 'ශ්‍රේණිගත කර පුහුණු කරන්න';

  @override
  String get trainCardSub =>
      'සැබෑ ගීත හරහා ස්වයිප් කරන්න. මෙවැනි තවත් සඳහා දකුණට, නැවත කිසිදා නොවේ සඳහා වමට. මෙහි මිනිත්තු දෙකක් සතියක ශ්‍රවණයට වඩා හොඳයි.';

  @override
  String get trainStart => 'පුහුණු වටයක් අරඹන්න';

  @override
  String get trainTitle => 'පුහුණු වටය';

  @override
  String get trainQuestion => 'මෙය ඔබේ මුල් පිටුවේ තිබිය යුතුද?';

  @override
  String get trainMoreLikeThis => 'මෙවැනි තවත්';

  @override
  String get trainNeverAgain => 'නැවත කිසිදා නැත';

  @override
  String get trainDone => 'වටය සම්පූර්ණයි';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$likedක් තබා ගත් · $blockedක් අවහිර කළ. විශ්වාසය $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'ඔබේ රසය වෙත ආපසු';

  @override
  String get trainNothingTitle => 'තවම ශ්‍රේණිගත කිරීමට කිසිවක් නැත';

  @override
  String get trainNothingBody =>
      'මුලින් සංගීතය එක් කරන්න, නැතහොත් AI හට අපේක්ෂකයන් ගෙන ඒමට ඉඩ දී නැවත එන්න.';

  @override
  String get trainLeaveTitle => 'පුහුණු වටය හැර යනවාද?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'දැන් හැර ගියහොත්, AI මෙම වටයේ සියල්ල — ඔබ දැන් ශ්‍රේණිගත කළ ගීත $countම — ඉවත දමයි.',
      one:
          'දැන් හැර ගියහොත්, AI මෙම වටයේ සියල්ල — ඔබ දැන් ශ්‍රේණිගත කළ ගීතය 1 — ඉවත දමයි.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'පුහුණුව දිගටම කරන්න';

  @override
  String get trainDiscard => 'ඉවත දමා හැර යන්න';

  @override
  String get setTitle => 'සැකසුම්';

  @override
  String get setAppearance => 'පෙනුම';

  @override
  String get setTheme => 'තේමාව';

  @override
  String get setThemeSystem => 'පද්ධතිය අනුගමනය';

  @override
  String get setThemeLight => 'ලා';

  @override
  String get setThemeDark => 'අඳුරු';

  @override
  String get setPureBlack => 'පිරිසිදු කළු';

  @override
  String get setPureBlackSub => 'OLED තිරයක බලශක්තිය ඉතිරි කරයි';

  @override
  String get setAccent => 'උපවර්ණය';

  @override
  String get setAccentArtwork => 'කවර කලාවෙන්';

  @override
  String get setAccentFixed => 'මා තෝරාගත් එක වර්ණයක්';

  @override
  String get setLanguage => 'භාෂාව';

  @override
  String get setLanguageSystem => 'පද්ධතිය අනුගමනය';

  @override
  String get setAccessibility => 'ප්‍රවේශ්‍යතාව';

  @override
  String get setTextSize => 'අකුරු ප්‍රමාණය';

  @override
  String get setTextSizeSub => 'ඔබේ පද්ධති සැකසුමට අමතරව';

  @override
  String get setReduceMotion => 'චලනය අඩු කරන්න';

  @override
  String get setReduceMotionSub =>
      'තීරු, දෘශ්‍යකය, පැනීමක් සහිත අනුචලනය, ප්‍රත්‍යාස්ථ ස්පර්ශ සහ පිටු සංක්‍රමණ නවත්වයි';

  @override
  String get setHighContrast => 'ඉහළ වෙනස';

  @override
  String get setHighContrastSub => 'වඩා තදින් වෙන් කිරීම සහ පෙනෙන දාර';

  @override
  String get setBoldText => 'තද අකුරු';

  @override
  String get setPlayback => 'වාදනය';

  @override
  String get setAutoRadio => 'සංගීතය දිගටම යවන්න';

  @override
  String get setAutoRadioSub =>
      'පෝලිම අවසන් වූ විට, අවසන් ගීතයෙන් සාදන රේඩියෝවකින් දිගටම යන්න';

  @override
  String get setSmartShuffle => 'ස්මාර්ට් මිශ්‍ර කිරීම';

  @override
  String get setSmartShuffleSub => 'අහඹුවට වඩා රසය අනුව මිශ්‍ර කරයි';

  @override
  String get setResume => 'නතර කළ තැනින් දිගටම';

  @override
  String get setResumeSub => 'යෙදුම විවෘත වන විට පෝලිම විරාමයෙන් යළි පිහිටුවයි';

  @override
  String get setDataSaver => 'Wi-Fi නොමැති විට දත්ත ඉතිරි කිරීම';

  @override
  String get setDataSaverSub =>
      'ජංගම දත්ත මත ප්‍රවාහ සහ බාගැනීම් 128 kbps දක්වා සීමා කරයි';

  @override
  String get setHaptics => 'ස්පර්ශ ප්‍රතිචාරය';

  @override
  String get setShowReasons => 'යමක් නිර්දේශ කළේ ඇයිදැයි පෙන්වන්න';

  @override
  String get setSkipSilence => 'නිහඬතාව මඟහරින්න';

  @override
  String get setQuality => 'ශ්‍රව්‍ය ගුණාත්මකභාවය';

  @override
  String get setQualityLow => 'අඩු · 64 kbps';

  @override
  String get setQualityNormal => 'සාමාන්‍ය · 128 kbps';

  @override
  String get setQualityHigh => 'ඉහළ · 192 kbps';

  @override
  String get setQualityBest => 'ලබා ගත හැකි හොඳම';

  @override
  String get setStorage => 'බාගැනීම් සහ ගබඩාව';

  @override
  String get setWifiOnly => 'Wi-Fi මත පමණක් බාගන්න';

  @override
  String get setDailyLimit => 'AI සඳහා දෛනික සීමාව';

  @override
  String setDailyLimitSub(int count) {
    return 'දිනකට ගීත $countක්';
  }

  @override
  String get setBudget => 'AI හට භාවිත කළ හැකි ගබඩාව';

  @override
  String setUsed(Object size) {
    return 'බාගැනීම් විසින් $size භාවිත කර ඇත';
  }

  @override
  String get setYourMusic => 'ඔබේ සංගීතය';

  @override
  String get setImport => 'මෙම උපාංගයෙන් සංගීතය එක් කරන්න';

  @override
  String get setImportSub => 'ෆෝල්ඩර හෝ තනි ගොනු තෝරන්න';

  @override
  String get setCleanup => 'අස්ථානගත ගොනු පිරිසිදු කරන්න';

  @override
  String get setCleanupSub => 'ගොනුව නැති ගීත ඉවත් කරන්න';

  @override
  String setCleanupDone(int count) {
    return 'අස්ථානගත ගොනු $countක් ඉවත් කළා.';
  }

  @override
  String get setExport => 'මගේ රසය වෙනත් උපාංගයකට යවන්න';

  @override
  String get setExportSub =>
      'ඔබේ ප්‍රිය කිරීම්, වාදන සහ AI ඉගෙන ගත් සියල්ල ඇති ගොනුවක් සුරකියි';

  @override
  String get setImportTaste => 'වෙනත් උපාංගයකින් රසය පූරණය කරන්න';

  @override
  String get setImportTasteSub =>
      'සුරැකි රස ගොනුවක් තෝරා ඒකාබද්ධ කරන්න — නැවත කිරීම ආරක්ෂිතයි';

  @override
  String get setAbout => 'පිළිබඳව';

  @override
  String get setAboutBody =>
      'YouTube සහ ඔබේම ගොනු වලින් සංගීතය. AI සම්පූර්ණයෙන්ම මෙම උපාංගයේ ධාවනය වේ — කිසිවක් පිටතට නොයයි.';

  @override
  String get setSource => 'මූලාශ්‍ර කේතය';

  @override
  String get importTitle => 'සංගීතය එක් කරන්න';

  @override
  String get importPickFolder => 'ෆෝල්ඩරයක් තෝරන්න';

  @override
  String get importPickFiles => 'ගොනු තෝරන්න';

  @override
  String importScanning(Object file) {
    return '$file ස්කෑන් කරමින්';
  }

  @override
  String importAdded(int count) {
    return '$countක් එක් කළා';
  }

  @override
  String get importDenied => 'අවසරය ප්‍රතික්ෂේප විය — ඔබේ සංගීතය කියවිය නොහැක.';

  @override
  String get importWatched => 'එය නිරීක්ෂණය කරන ෆෝල්ඩර';

  @override
  String get importIosHint =>
      'Files යෙදුම විවෘත කර, On My iPhone → TuneBox වෙත ගොස්, සංගීතය එහි දමන්න.';

  @override
  String get playerQueue => 'පෝලිම';

  @override
  String get playerUpNext => 'ඊළඟට';

  @override
  String get playerLyrics => 'පද රචනය';

  @override
  String get playerNoLyrics => 'මෙයට පද රචනයක් නැත.';

  @override
  String get playerRepeat => 'නැවත';

  @override
  String get playerShuffle => 'මිශ්‍ර කරන්න';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" වාදනය කළ නොහැකි විය';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" මඟහරිමින් — ප්‍රවාහය විවෘත නොවීය.';
  }

  @override
  String get undo => 'පෙරසේ කරන්න';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'දැන්: $tags, $artist ප්‍රමුඛව.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'දැන්: $tags.';
  }

  @override
  String get setColour => 'වර්ණය';

  @override
  String get setColourSub => 'මුළු යෙදුමම මෙය අනුගමනය කරයි';

  @override
  String get setCoverArt => 'කවර කලාව';

  @override
  String get setMyColour => 'මගේ වර්ණය';

  @override
  String get setCoverArtSub =>
      'සෑම ගීතයක්ම එහි කවරයෙන් යෙදුම නැවත වර්ණ ගන්වයි.';

  @override
  String get setMyColourSub => 'එක් වර්ණයක්, සෑම තැනකම, සැමවිටම.';

  @override
  String get setPickColour => 'ඕනෑම වර්ණයක් තෝරන්න';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi මත පමණක් බාගන්න';

  @override
  String get setDownloadLikes => 'මා ප්‍රිය කරන සියල්ල බාගන්න';

  @override
  String get setDownloadLikesSub => 'හදවත බොත්තම ගොනුවද සුරකියි';

  @override
  String get setAiInstall => 'AI තෝරන සංගීතය ස්ථාපනය කිරීමට ඉඩ දෙන්න';

  @override
  String get setSkipSilenceSub =>
      'Android පමණි. නිහඬ ආරම්භ, අඩුවීම් සහ මෘදු කොටස් කපා දැමිය හැක — සංගීතය කඩනම් වේ නම් අක්‍රිය කරන්න';

  @override
  String get setStorageUsed => 'බාගැනීම් භාවිත කළ ගබඩාව';

  @override
  String get setLibrary => 'පුස්තකාලය';

  @override
  String get setUpdates => 'යාවත්කාලීන';

  @override
  String get setAutoUpdate => 'ස්වයංක්‍රීයව යාවත්කාලීන සොයන්න';

  @override
  String get setAutoUpdateSub =>
      'පැය කිහිපයකට වරක්, නිහඬව, Wi-Fi මත බාගනී. ස්ථාපනයට තවමත් ඔබෙන් අසයි.';

  @override
  String setUpdateReady(Object version) {
    return '$version වෙත යාවත්කාලීනය සූදානම්';
  }

  @override
  String get setUpdateReadySub => 'බාගත කළා — ස්ථාපනයට ඔබන්න';

  @override
  String get setUpdateAvailableSub =>
      'නිකුතු පිටුවෙන් ලබා ගන්න — සබැඳිය පිටපත් කිරීමට ඔබන්න';

  @override
  String get setLinkCopied => 'සබැඳිය පිටපත් කළා';

  @override
  String get setCheckNow => 'දැන් පරීක්ෂා කරන්න';

  @override
  String get setUpToDate => 'TuneBox යාවත්කාලීනයි';

  @override
  String get setChecking => 'අලුත් අනුවාදයක් සොයමින්…';
}
