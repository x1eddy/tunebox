// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class LUg extends L {
  LUg([String locale = 'ug']) : super(locale);

  @override
  String get navHome => 'باش بەت';

  @override
  String get navExplore => 'ئىزدەش';

  @override
  String get navLibrary => 'ئامبار';

  @override
  String get navTaste => 'سېنىڭ زوقۇڭ';

  @override
  String get actionDone => 'تامام';

  @override
  String get actionCancel => 'ۋاز كەچ';

  @override
  String get actionCreate => 'قۇر';

  @override
  String get actionPlay => 'قويۇش';

  @override
  String get actionShuffle => 'ئارىلاشتۇر';

  @override
  String get actionPlayAll => 'ھەممىنى قوي';

  @override
  String get actionAdd => 'قوش';

  @override
  String get actionRemove => 'ئۆچۈر';

  @override
  String get actionName => 'ئاتى';

  @override
  String get greetingNight => 'تېخى ئۇخلىمىدىڭمۇ؟';

  @override
  String get greetingMorning => 'خەيرلىك ئەتىگەن';

  @override
  String get greetingAfternoon => 'خەيرلىك چۈش';

  @override
  String get greetingEvening => 'خەيرلىك كەچ';

  @override
  String get homeBuilding => 'AI رەفلىرىڭىزنى تەييارلاۋاتىدۇ…';

  @override
  String get homeOffline => 'تورسىز — ئۈسكۈنىدىكى مەزمۇنلار كۆرسىتىلىۋاتىدۇ';

  @override
  String get homeNothingYet => 'تېخى كۆرسىتىدىغان ھېچنېمە يوق';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count رەف، ھازىرلا يېڭىلاندى',
      one: '1 رەف، ھازىرلا يېڭىلاندى',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'رەفلەرنى قايتا تەييارلا';

  @override
  String get homeAddMusic => 'بۇ ئۈسكۈنىدىن مۇزىكا قوش';

  @override
  String get homeQuickPicks => 'تېز تاللاش';

  @override
  String get homeQuickPicksSub => 'ئاڭلاۋاتقىنىڭىزغا بىۋاسىتە قايتىڭ';

  @override
  String get homeEmptyTitle => 'ئامبىرىڭىز قۇرۇق';

  @override
  String get homeEmptyBody =>
      'بىر نېمە ئىزدەڭ، ياكى بۇ ئۈسكۈنىدە بار مۇزىكىنى قوشۇڭ. AI تۇنجى قويغان ناخشىڭىزدىنلا ئۆگىنىشكە باشلايدۇ.';

  @override
  String get homeAddMyMusic => 'مۇزىكامنى قوش';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube غا ئۇلىنالمىدى: $error';
  }

  @override
  String get moodFocus => 'مەركەزلىشىش';

  @override
  String get moodWorkout => 'چېنىقىش';

  @override
  String get moodChill => 'ئارام';

  @override
  String get moodCommute => 'يول';

  @override
  String get moodParty => 'پارتىي';

  @override
  String moodBuilding(Object mood) {
    return '$mood ئارىلاشمىسى تەييارلىنىۋاتىدۇ…';
  }

  @override
  String moodFailed(Object error) {
    return 'بولمىدى: $error';
  }

  @override
  String get shelfRepeat => 'تەكرار';

  @override
  String get shelfRepeatSub => 'ئۆتكەن ئىككى ھەپتىڭىز';

  @override
  String get shelfForgotten => 'ئۇنتۇلغان ياخشى كۆرگەن كونا ناخشىلار';

  @override
  String get shelfForgottenSub =>
      'بىر ۋاقىتلاردا ياقتۇرغان، ئۇزۇندىن بېرى ئاڭلىمىغان';

  @override
  String get shelfNew => 'يېڭى';

  @override
  String get shelfNewSub => 'AI سىزگە ماس دەپ قارىغان يېڭى ناخشىلار';

  @override
  String shelfBecause(Object artist) {
    return 'سىز $artist نى ئاڭلىغاچقا';
  }

  @override
  String get shelfBecauseSub => 'زوقىڭىزنىڭ شۇ بۇلۇڭى';

  @override
  String get shelfDeep => 'ئاران تەگكەن';

  @override
  String get shelfDeepSub => 'ئامبىرىڭىزدا بار، لېكىن ئاز قويۇلغان';

  @override
  String get shelfMix => 'ئارىلاشمىڭىز';

  @override
  String get shelfMixSub => 'ئەپنى ئاچقان ھەر قېتىم قايتا تەييارلىنىدۇ';

  @override
  String get shelfAdded => 'يېقىندا قوشۇلغان';

  @override
  String get shelfAddedSub => 'چۈشۈرۈلگەن ۋە ئىمپورت قىلىنغان ھۆججەتلەر';

  @override
  String get shelfStarter => 'مۇشۇ يەردىن باشلاڭ';

  @override
  String get shelfStarterSub =>
      'بىر نەچچە ناخشا قويۇڭ، AI دەرھال ئۆگىنىشكە باشلايدۇ';

  @override
  String reasonPlays(int count) {
    return '$count قېتىم قويۇلغان';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ياقتۇرۇلغان، ئاخىرقىسى $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count قېتىم قويۇلغان، ئاخىرقىسى $when';
  }

  @override
  String get reasonTopArtist => 'ئەڭ كۆپ ئاڭلىغان سەنئەتكارلىرىڭىزدىن بىرى';

  @override
  String reasonMore(Object artist) {
    return 'تېخىمۇ كۆپ $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'سىز تەكرار $artist غا قايتىسىز';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'سىزگە ماس $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ئەتراپتا $tag كۆپ';
  }

  @override
  String get reasonOutThisYear => 'بۇ يىل چىققان';

  @override
  String get reasonReleasedRecently => 'يېقىندا چىققان';

  @override
  String get reasonClose => 'يېقىندا ئاڭلىغىنىڭىزغا يېقىن';

  @override
  String reasonNear(Object artist) {
    return '$artist غا يېقىن';
  }

  @override
  String get reasonNeverPlayed => 'ھېچ قويۇلمىغان';

  @override
  String get reasonPlayedOnce => 'بىر قېتىم قويۇلغان';

  @override
  String get reasonPopular => 'ھازىر ئاممىباب';

  @override
  String whenYearsAgo(int count) {
    return '$count يىل ئىلگىرى';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ئاي ئىلگىرى';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count كۈن ئىلگىرى';
  }

  @override
  String get searchHint => 'ناخشا، سەنئەتكار، پىلاستىنكا';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نەتىجە',
      one: '1 نەتىجە',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'يېقىنقى ئىزدەشلەر';

  @override
  String get searchEmptyTitle => 'ھېچنېمە تېپىلمىدى';

  @override
  String get searchEmptyBody =>
      'باشقا يېزىلىشنى سىناڭ، ياكى سەنئەتكارنىڭ ئىسمىنىلا يېزىڭ.';

  @override
  String get searchStartTitle => 'قويىدىغان نەرسە ئىزدەڭ';

  @override
  String get searchStartBody =>
      'YouTube Music دىن ئىزدەڭ — پەقەت ناخشىلارلا چىقىدۇ، باشقا نەرسىلەرنىڭ ۋىدېئوسى ھەرگىز چىقمايدۇ.';

  @override
  String get libPlaylists => 'قويۇش تىزىملىكى';

  @override
  String get libSongs => 'ناخشىلار';

  @override
  String get libArtists => 'سەنئەتكارلار';

  @override
  String get libLiked => 'ياقتۇرغانلىرىم';

  @override
  String get libDownloads => 'چۈشۈرۈلگەنلەر';

  @override
  String get libImported => 'ئىمپورت قىلىنغان';

  @override
  String get libLikedSongs => 'ياقتۇرغان ناخشىلار';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ناخشا',
      one: '1 ناخشا',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count تورسىز';
  }

  @override
  String get libMyFiles => 'ئۆزۈمنىڭ ھۆججەتلىرى';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ھۆججەت',
      one: '1 ھۆججەت',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'يېڭى قويۇش تىزىملىكى';

  @override
  String get libMakeOne => 'بىرنى قۇر';

  @override
  String get libSortRecent => 'يېقىندا قوشۇلغان';

  @override
  String get libSortTitle => 'ماۋزۇ';

  @override
  String get libSortArtist => 'سەنئەتكار';

  @override
  String get libSortPlays => 'ئەڭ كۆپ قويۇلغان';

  @override
  String get sheetNotForMe => 'ماڭا ماس ئەمەس';

  @override
  String get sheetNotForMeSub => 'بۇنى ھەرگىز قايتا تەۋسىيە قىلما';

  @override
  String get sheetBlocked => 'توسۇلغان — قايتا رۇخسەت قىلىش ئۈچۈن چېكىڭ';

  @override
  String get sheetBlockedSub => 'بۇ قايتا تەۋسىيەلەردە كۆرۈنۈشى مۇمكىن';

  @override
  String get sheetPlayNext => 'كېيىنكىسى قوي';

  @override
  String get sheetAddToPlaylist => 'قويۇش تىزىملىكىگە قوش';

  @override
  String get sheetDownloaded => 'چۈشۈرۈلدى';

  @override
  String get sheetRemoveFile => 'ھۆججەتنى ئۆچۈرۈش ئۈچۈن چېكىڭ';

  @override
  String get sheetDownload => 'چۈشۈر';

  @override
  String get sheetKeepOffline => 'تورسىز ساقلا';

  @override
  String get sheetRadio => 'رادىئو باشلا';

  @override
  String get sheetRadioSub => 'بۇ ناخشا ئەتراپىدا تۈزۈلگەن ساقلاش رەت';

  @override
  String get sheetQueue => 'رەت';

  @override
  String get sheetSleepTimer => 'ئۇخلاش ۋاقىت ئۆلچىگۈچ';

  @override
  String get sheetSleepOff => 'ئېتىك';

  @override
  String sheetSleepMinutes(int count) {
    return '$count مىنۇت';
  }

  @override
  String get sheetSleepEndOfTrack => 'بۇ ناخشا ئاخىرلاشقاندا';

  @override
  String sheetSleepSet(int count) {
    return 'مۇزىكا $count مىنۇتتىن كېيىن توختايدۇ';
  }

  @override
  String get tasteTitle => 'سېنىڭ زوقۇڭ';

  @override
  String get tasteRetrain => 'قايتا مەشىقلەندۈر';

  @override
  String get tasteRetraining => 'تارىخىڭىز ئاساسىدا قايتا مەشىقلىنىۋاتىدۇ…';

  @override
  String get tasteRetrained => 'AI مودېلىنى قايتا قۇرۇپ چىقتى.';

  @override
  String tasteConfidence(int percent) {
    return 'ئىشەنچ $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays قويۇش · $skips ئاتلاش · $likes ياقتۇرۇش';
  }

  @override
  String get tasteEmptySummary => 'بىر نەچچە ناخشا قويسىڭىز، بۇ تولىدۇ.';

  @override
  String get tasteKeepLearning => 'ئاڭلىغاندا ئۆگىنىۋەر';

  @override
  String get tasteKeepLearningSub =>
      'نۆۋەتتىكى ئارخىپنى توڭلىتىش ئۈچۈن ئۆچۈرۈڭ';

  @override
  String get tasteDownloadsTitle => 'AI بىر تەرەپ قىلىدىغان چۈشۈرۈشلەر';

  @override
  String get tasteDownloadsSub => 'سورىمىساڭىزمۇ مۇزىكا ئۈسكۈنىگە كېلىدۇ';

  @override
  String get tasteDownloadLikes => 'ياقتۇرغانلىرىمنىڭ ھەممىسىنى چۈشۈر';

  @override
  String get tasteDownloadLikesSub =>
      'يۈرەكنى باسسىڭىز ھۆججەت تورسىز ئىشلىتىش ئۈچۈن ساقلىنىدۇ';

  @override
  String get tasteAiInstall => 'AI تاللىغان مۇزىكىنى قاچىلىسۇن';

  @override
  String get tasteAiInstallSub => 'ئىشەنچ قىلغان ناخشىلارنى ئېلىپ كېلىدۇ';

  @override
  String get tasteWhatItThinks => 'سىزگە ياقىدۇ دەپ ئويلىغىنى';

  @override
  String get tasteWhatItThinksSub =>
      'قويۇش، ئاتلاش، ياقتۇرۇش ۋە تەكرارلاشتىن ئۆگەنگەن';

  @override
  String get tasteArtists => 'ئاساسلانغان سەنئەتكارلار';

  @override
  String get tasteWhenYouListen => 'ئاڭلايدىغان ۋاقتىڭىز';

  @override
  String get tasteWhenYouListenSub =>
      'سائەتلىك قويۇش — نۆۋەتتىكى سائەتنىڭ ئېغىرلىقى چوڭ';

  @override
  String get tasteDecades => 'ئون يىللىقلار';

  @override
  String get tasteTune => 'تەۋسىيەلەرنى تەڭشە';

  @override
  String get tasteTuneSub => 'كېيىنكى باش بەت يېڭىلىنىشىدا ئۈنۈمگە ئىگە بولىدۇ';

  @override
  String get tasteDiscovery => 'يېڭىلىق ئاچىش';

  @override
  String get tasteDiscoverySub => 'تونۇشلار ↔ ھېچ ئاڭلاپ باقمىغانلار';

  @override
  String get tasteEnergy => 'ئېنېرگىيە';

  @override
  String get tasteEnergySub => 'تىنچ ↔ ئاۋازلىق';

  @override
  String get tasteRecency => 'يېڭىلىق';

  @override
  String get tasteRecencySub => 'مەڭگۈلۈك ↔ پۈتۈنلەي يېڭى';

  @override
  String get tasteNostalgia => 'ئەسلىمە';

  @override
  String get tasteNostalgiaSub =>
      'كونا ياخشى كۆرگەن ناخشا قانچىلىك ئۇزۇن بولسا ئۇنتۇلغان ھېسابلىنىدۇ';

  @override
  String get tasteSignals => 'ئىشلىتىشى مۇمكىن بولغان ئىشارەتلەر';

  @override
  String get tasteSignalsSub => 'ھەممىسى بۇ ئۈسكۈنىدە قالىدۇ';

  @override
  String get tasteUseHistory => 'مەن قويغانلىرىم';

  @override
  String get tasteUseSkips => 'مەن ئاتلىغانلىرىم';

  @override
  String get tasteUseTime => 'كۈننىڭ ۋاقتى';

  @override
  String get tasteUseYouTube => 'YouTube دىن تەكلىپلەر';

  @override
  String get tasteAlwaysMore => 'ھەمىشە تېخىمۇ كۆپ';

  @override
  String get tasteNeverAgain => 'ھەرگىز قايتا بولمىسۇن';

  @override
  String get tasteAddArtist => 'سەنئەتكار قوش';

  @override
  String get tasteMoreOfPrompt => 'ھەمىشە تېخىمۇ كۆپ…';

  @override
  String get tasteNeverAgainPrompt => 'ھەرگىز قايتا بولمىسۇن…';

  @override
  String get tasteReset => 'ئۆگەنگىنىنى ئەسلىگە قايتۇر';

  @override
  String get tasteResetSub => 'مۇزىكىڭىز قالىدۇ؛ ئارخىپ نۆلدىن باشلىنىدۇ';

  @override
  String get trainCard => 'باھالاش ئارقىلىق مەشىقلەندۈرۈڭ';

  @override
  String get trainCardSub =>
      'ھەقىقىي ناخشىلارنى سىيرىڭ. بۇنىڭغا ئوخشاش كۆپرەك ئۈچۈن ئوڭغا، ھەرگىز قايتا بولمىسۇن ئۈچۈن سولغا. بۇ يەردە ئىككى مىنۇت بىر ھەپتە ئاڭلاشتىن ياخشى.';

  @override
  String get trainStart => 'مەشىق ئايلىنىشىنى باشلا';

  @override
  String get trainTitle => 'مەشىق ئايلىنىشى';

  @override
  String get trainQuestion => 'بۇنىڭ باش بېتىڭىزدە بولۇشىنى خالامسىز؟';

  @override
  String get trainMoreLikeThis => 'بۇنىڭغا ئوخشاش كۆپرەك';

  @override
  String get trainNeverAgain => 'ھەرگىز قايتا بولمىسۇن';

  @override
  String get trainDone => 'ئايلىنىش تامام';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked ساقلاندى · $blocked توسالدى. ئىشەنچ $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'زوقىڭىزغا قايت';

  @override
  String get trainNothingTitle => 'تېخى باھالايدىغان ھېچنېمە يوق';

  @override
  String get trainNothingBody =>
      'ئاۋۋال مۇزىكا قوشۇڭ ياكى AI نامزاتلارنى ئېلىپ كەلسۇن، ئاندىن قايتىپ كېلىڭ.';

  @override
  String get trainLeaveTitle => 'مەشىق ئايلىنىشىدىن چىقامسىز؟';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ھازىر چىقسىڭىز، AI بۇ ئايلىنىشتىكى ھەممە نەرسىنى تاشلايدۇ — ھازىرلا باھالىغان $count ناخشىنىڭ ھەممىسى.',
      one:
          'ھازىر چىقسىڭىز، AI بۇ ئايلىنىشتىكى ھەممە نەرسىنى تاشلايدۇ — ھازىرلا باھالىغان 1 ناخشا.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'مەشىقنى داۋاملاشتۇر';

  @override
  String get trainDiscard => 'تاشلاپ چىق';

  @override
  String get setTitle => 'تەڭشەكلەر';

  @override
  String get setAppearance => 'كۆرۈنۈش';

  @override
  String get setTheme => 'ئۇسلۇب';

  @override
  String get setThemeSystem => 'سىستېمىغا ئەگەش';

  @override
  String get setThemeLight => 'ئوچۇق';

  @override
  String get setThemeDark => 'قاراڭغۇ';

  @override
  String get setPureBlack => 'ساپ قارا';

  @override
  String get setPureBlackSub => 'OLED ئېكراندا توك تېجەيدۇ';

  @override
  String get setAccent => 'ئاساسىي رەڭ';

  @override
  String get setAccentArtwork => 'مۇقاۋا سۈرىتىدىن';

  @override
  String get setAccentFixed => 'مەن تاللىغان بىر رەڭ';

  @override
  String get setLanguage => 'تىل';

  @override
  String get setLanguageSystem => 'سىستېمىغا ئەگەش';

  @override
  String get setAccessibility => 'قولايلىق ئىقتىدارلىرى';

  @override
  String get setTextSize => 'خەت چوڭلۇقى';

  @override
  String get setTextSizeSub => 'سىستېما تەڭشىكىڭىزنىڭ ئۈستىگە';

  @override
  String get setReduceMotion => 'ھەرىكەتنى ئازايت';

  @override
  String get setReduceMotionSub =>
      'رەتلەر، ۋىزۇاللاشتۇرغۇچ، سەكرەپ سىيرىلىش، ئېلاستىك چېكىش ۋە بەت ئالماشتۇرۇشلارنى توختىتىدۇ';

  @override
  String get setHighContrast => 'يۇقىرى سېلىشتۇرما';

  @override
  String get setHighContrastSub => 'كۈچلۈك ئايرىلىش ۋە ئېنىق ئىزلار';

  @override
  String get setBoldText => 'توم خەت';

  @override
  String get setPlayback => 'قويۇش';

  @override
  String get setAutoRadio => 'مۇزىكا توختىمىسۇن';

  @override
  String get setAutoRadioSub =>
      'رەت تۈگىگەندە ئاخىرقى ناخشىدىن تۈزۈلگەن رادىئو بىلەن داۋاملاشتۇر';

  @override
  String get setSmartShuffle => 'ئەقلىي ئارىلاشتۇرۇش';

  @override
  String get setSmartShuffleSub =>
      'ئىختىيارىي ئەمەس، زوققا ئاساسەن ئارىلاشتۇرىدۇ';

  @override
  String get setResume => 'توختىغان يەردىن داۋاملاشتۇر';

  @override
  String get setResumeSub =>
      'ئەپ ئېچىلغاندا رەتنى توختىتىلغان ھالەتتە ئەسلىگە كەلتۈرىدۇ';

  @override
  String get setDataSaver => 'Wi-Fi بولمىغاندا سانلىق مەلۇمات تېجەش';

  @override
  String get setDataSaverSub =>
      'كۆچمە سانلىق مەلۇماتتا ئېقىم ۋە چۈشۈرۈشنى 128 kbps غا چەكلەيدۇ';

  @override
  String get setHaptics => 'تىترەش ئىنكاسى';

  @override
  String get setShowReasons => 'نېمە ئۈچۈن تەۋسىيە قىلىنغانلىقىنى كۆرسەت';

  @override
  String get setSkipSilence => 'جىمجىتلىقنى ئات';

  @override
  String get setQuality => 'ئاۋاز سۈپىتى';

  @override
  String get setQualityLow => 'تۆۋەن · 64 kbps';

  @override
  String get setQualityNormal => 'ئادەتتىكى · 128 kbps';

  @override
  String get setQualityHigh => 'يۇقىرى · 192 kbps';

  @override
  String get setQualityBest => 'ئەڭ ياخشى';

  @override
  String get setStorage => 'چۈشۈرۈش ۋە ساقلاش بوشلۇقى';

  @override
  String get setWifiOnly => 'پەقەت Wi-Fi دا چۈشۈر';

  @override
  String get setDailyLimit => 'AI ئۈچۈن ھەر كۈنلۈك چەك';

  @override
  String setDailyLimitSub(int count) {
    return 'كۈنىگە $count ناخشا';
  }

  @override
  String get setBudget => 'AI ئىشلىتەلەيدىغان ساقلاش بوشلۇقى';

  @override
  String setUsed(Object size) {
    return 'چۈشۈرۈشلەر $size ئىشلەتتى';
  }

  @override
  String get setYourMusic => 'مۇزىكىڭىز';

  @override
  String get setImport => 'بۇ ئۈسكۈنىدىن مۇزىكا قوش';

  @override
  String get setImportSub => 'قىسقۇچ ياكى يەككە ھۆججەتلەرنى تاللاڭ';

  @override
  String get setCleanup => 'يوقالغان ھۆججەتلەرنى تازىلا';

  @override
  String get setCleanupSub => 'ھۆججىتى يوق ناخشىلارنى ئۆچۈر';

  @override
  String setCleanupDone(int count) {
    return '$count يوقالغان ھۆججەت ئۆچۈرۈلدى.';
  }

  @override
  String get setExport => 'زوقۇمنى باشقا ئۈسكۈنىگە ئەۋەت';

  @override
  String get setExportSub =>
      'ياقتۇرغانلىرىڭىز، قويغانلىرىڭىز ۋە AI ئۆگەنگەنلىرىنىڭ ھەممىسى بار ھۆججەتنى ساقلايدۇ';

  @override
  String get setImportTaste => 'باشقا ئۈسكۈنىدىن زوقنى يۈكلە';

  @override
  String get setImportTasteSub =>
      'ساقلانغان زوق ھۆججىتىنى تاللاپ بىرلەشتۈرۈڭ — تەكرارلاشقا بولىدۇ';

  @override
  String get setAbout => 'ھەققىدە';

  @override
  String get setAboutBody =>
      'YouTube ۋە ئۆز ھۆججەتلىرىڭىزدىن مۇزىكا. AI پۈتۈنلەي بۇ ئۈسكۈنىدە ئىشلەيدۇ — ھېچنېمە سىرتقا چىقمايدۇ.';

  @override
  String get setSource => 'مەنبە كودى';

  @override
  String get importTitle => 'مۇزىكا قوش';

  @override
  String get importPickFolder => 'قىسقۇچ تاللاڭ';

  @override
  String get importPickFiles => 'ھۆججەت تاللاڭ';

  @override
  String importScanning(Object file) {
    return '$file سايىلىنىۋاتىدۇ';
  }

  @override
  String importAdded(int count) {
    return '$count قوشۇلدى';
  }

  @override
  String get importDenied =>
      'رۇخسەت رەت قىلىندى — مۇزىكىڭىزنى ئوقۇغىلى بولمايدۇ.';

  @override
  String get importWatched => 'كۆزىتىدىغان قىسقۇچلار';

  @override
  String get importIosHint =>
      'Files ئەپىنى ئېچىپ، On My iPhone → TuneBox غا كىرىڭ ۋە مۇزىكىنى شۇ يەرگە سېلىڭ.';

  @override
  String get playerQueue => 'رەت';

  @override
  String get playerUpNext => 'كېيىنكىسى';

  @override
  String get playerLyrics => 'ناخشا سۆزى';

  @override
  String get playerNoLyrics => 'بۇنىڭ ناخشا سۆزى يوق.';

  @override
  String get playerRepeat => 'تەكرارلا';

  @override
  String get playerShuffle => 'ئارىلاشتۇر';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" نى قويغىلى بولمىدى';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" ئاتلىنىۋاتىدۇ — ئېقىم ئېچىلمىدى.';
  }

  @override
  String get undo => 'قايتۇر';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ھازىر: $tags، $artist باشلامچى.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ھازىر: $tags.';
  }

  @override
  String get setColour => 'رەڭ';

  @override
  String get setColourSub => 'پۈتۈن ئەپ بۇنىڭغا ئەگىشىدۇ';

  @override
  String get setCoverArt => 'مۇقاۋا سۈرىتى';

  @override
  String get setMyColour => 'مېنىڭ رەڭگىم';

  @override
  String get setCoverArtSub =>
      'ھەر بىر ناخشا ئۆز مۇقاۋىسىدىن ئەپنىڭ رەڭگىنى ئۆزگەرتىدۇ.';

  @override
  String get setMyColourSub => 'بىر رەڭ، ھەممە يەردە، ھەر ۋاقىت.';

  @override
  String get setPickColour => 'خالىغان رەڭنى تاللاڭ';

  @override
  String get setWifiOnlyTitle => 'پەقەت Wi-Fi دا چۈشۈر';

  @override
  String get setDownloadLikes => 'ياقتۇرغانلىرىمنىڭ ھەممىسىنى چۈشۈر';

  @override
  String get setDownloadLikesSub => 'يۈرەك كۇنوپكىسى ھۆججەتنىمۇ ساقلايدۇ';

  @override
  String get setAiInstall => 'AI تاللىغان مۇزىكىنى قاچىلىسۇن';

  @override
  String get setSkipSilenceSub =>
      'پەقەت Android. جىمجىت باشلىنىش، سۇسلىشىش ۋە ئاستا قىسىملارنى كېسىۋېتىشى مۇمكىن — مۇزىكا ئاتلاپ كەتسە ئۆچۈرۈڭ';

  @override
  String get setStorageUsed => 'چۈشۈرۈشلەر ئىشلەتكەن بوشلۇق';

  @override
  String get setLibrary => 'ئامبار';

  @override
  String get setUpdates => 'يېڭىلاشلار';

  @override
  String get setAutoUpdate => 'يېڭىلاشنى ئۆزى تەكشۈرسۇن';

  @override
  String get setAutoUpdateSub =>
      'بىر نەچچە سائەتتە بىر، جىمجىت، Wi-Fi دا چۈشۈرىدۇ. قاچىلاشتا يەنىلا سورايدۇ.';

  @override
  String setUpdateReady(Object version) {
    return '$version غا يېڭىلاش تەييار';
  }

  @override
  String get setUpdateReadySub => 'چۈشۈرۈلدى — قاچىلاش ئۈچۈن چېكىڭ';

  @override
  String get setUpdateAvailableSub =>
      'نەشر بېتىدىن ئېلىڭ — ئۇلانمىنى كۆچۈرۈش ئۈچۈن چېكىڭ';

  @override
  String get setLinkCopied => 'ئۇلانما كۆچۈرۈلدى';

  @override
  String get setCheckNow => 'ھازىر تەكشۈر';

  @override
  String get setUpToDate => 'TuneBox ئەڭ يېڭى';

  @override
  String get setChecking => 'يېڭى نەشرى ئىزدەلىۋاتىدۇ…';
}
