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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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
    return '$count of them picked for you';
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
  String get aSearchLearnedFrom => 'Based on what you play';

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
    return 'Queued $count songs picked for you.';
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
  String get bTasteResetDialogTitle => 'Start learning from scratch?';

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
    return '\"$title\" won\'t come up again';
  }

  @override
  String get cLike => 'Like';

  @override
  String get cUnlike => 'Unlike';

  @override
  String get cRemoveFromLiked => 'Remove from liked';

  @override
  String get cLikeSub => 'Counts right away';

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
    return 'Fetching $title for you';
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

  @override
  String addedToPlaylist(String name) {
    return 'Added to \"$name\"';
  }

  @override
  String get sndTitle => 'Sound';

  @override
  String get sndSub => 'Crossfade, equaliser, loudness, sleep timer';

  @override
  String get sndAll => 'All sound settings';

  @override
  String get sndBetween => 'Between songs';

  @override
  String get sndCrossfade => 'Crossfade';

  @override
  String get sndGapless => 'Gapless';

  @override
  String sndSeconds(int n) {
    return '$n s';
  }

  @override
  String get sndSmart => 'Smart crossfade';

  @override
  String get sndSmartSub =>
      'Albums and live sets play straight through; short songs fade quicker';

  @override
  String get sndLoudness => 'Loudness';

  @override
  String get sndNormalize => 'Even out loudness';

  @override
  String get sndNormalizeSub =>
      'Turns down songs that are mastered louder than the rest';

  @override
  String get sndQuiet => 'Quiet';

  @override
  String get sndNormal => 'Normal';

  @override
  String get sndLoud => 'Loud';

  @override
  String get sndEq => 'Equaliser';

  @override
  String get sndEqOn => 'Use the equaliser';

  @override
  String get sndEqOnlyAndroid => 'The equaliser is available on Android.';

  @override
  String get sndEqFor => 'Each output keeps its own sound';

  @override
  String get sndInUse => 'in use';

  @override
  String get sndSpeaker => 'Speaker';

  @override
  String get sndWired => 'Wired';

  @override
  String get sndBluetooth => 'Bluetooth';

  @override
  String get sndSavePreset => 'Save as preset';

  @override
  String get sndPresetName => 'Preset name';

  @override
  String get sndDeletePreset => 'Delete preset';

  @override
  String get sndCustom => 'Custom';

  @override
  String get sndBoost => 'Extra loudness';

  @override
  String get sndBoostSub =>
      'Lifts quiet phones and earbuds. Too much can distort.';

  @override
  String get sndSpeedPitch => 'Speed and pitch';

  @override
  String get sndSpeed => 'Speed';

  @override
  String get sndPitch => 'Pitch';

  @override
  String get sndReset => 'Reset';

  @override
  String get eqFlat => 'Flat';

  @override
  String get eqBass => 'Bass';

  @override
  String get eqVocal => 'Vocal';

  @override
  String get eqNight => 'Night';

  @override
  String get eqHeadphones => 'Headphones';

  @override
  String get eqCar => 'Car';

  @override
  String get eqTreble => 'Treble';

  @override
  String get sleepTitle => 'Sleep timer';

  @override
  String sleepMinutes(int n) {
    return '$n min';
  }

  @override
  String get sleepEndSong => 'End of song';

  @override
  String get sleepEndQueue => 'End of queue';

  @override
  String sleepLeft(String time) {
    return 'Stops in $time';
  }

  @override
  String get sleepAfterSong => 'Stops after this song';

  @override
  String get sleepAfterQueue => 'Stops when the queue ends';

  @override
  String get sleepShake => 'Shake the phone for 10 more minutes';

  @override
  String get sleepCancel => 'Turn off';

  @override
  String get lyrRetry => 'Try again';

  @override
  String get lyrOffline =>
      'Lyrics need a connection the first time. After that they work offline.';

  @override
  String get lyrCredit => 'Lyrics from LRCLIB, an open community database';

  @override
  String get lyrShow => 'Show lyrics';

  @override
  String get lyrShowArt => 'Show cover';

  @override
  String get rwTitle => 'Rewind';

  @override
  String get rwEntry => 'Your listening, as a story';

  @override
  String get rwWeek => 'This week';

  @override
  String get rwMonth => 'This month';

  @override
  String get rwYear => 'This year';

  @override
  String get rwAll => 'All time';

  @override
  String get rwNotYet => 'Not enough listening yet';

  @override
  String get rwNotYetBody =>
      'Play a few songs in this period and your story fills in. Try a longer period.';

  @override
  String get rwShare => 'Share this card';

  @override
  String get rwShareText =>
      'My listening, from TuneBox — https://tunebox.pages.dev';

  @override
  String rwSaved(String path) {
    return 'Saved to $path';
  }

  @override
  String get rwMinutes => 'minutes of music';

  @override
  String rwPlaysSongs(int plays, int songs) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays plays',
      one: '1 play',
    );
    String _temp1 = intl.Intl.pluralLogic(
      songs,
      locale: localeName,
      other: '$songs different songs',
      one: '1 song',
    );
    return '$_temp0 of $_temp1';
  }

  @override
  String rwPlays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count plays',
      one: '1 play',
    );
    return '$_temp0';
  }

  @override
  String rwPlaysMinutes(int plays, int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays plays',
      one: '1 play',
    );
    return '$_temp0 · $minutes min';
  }

  @override
  String get rwTopSong => 'Your song';

  @override
  String get rwTopSongs => 'On repeat';

  @override
  String get rwTopArtists => 'Your artists';

  @override
  String get rwSound => 'Your sound';

  @override
  String get rwYourHour => 'Your hour';

  @override
  String get rwStreak => 'Longest streak';

  @override
  String get rwDaysInARow => 'days in a row with music';

  @override
  String rwDiscovery(int percent) {
    return '$percent% of what you played was new to you';
  }

  @override
  String get rwUnskippable => 'Couldn\'t skip it';

  @override
  String get rwNeverSkipped => 'Played again and again, not skipped once.';

  @override
  String get rwYouAre => 'You are';

  @override
  String get rwExplorer => 'The Explorer';

  @override
  String get rwExplorerSub =>
      'Most of what you played was new. Your taste keeps moving.';

  @override
  String get rwLoyalist => 'The Loyalist';

  @override
  String get rwLoyalistSub =>
      'A few artists, played properly. You know what you love.';

  @override
  String get rwCollector => 'The Collector';

  @override
  String get rwCollectorSub => 'Dozens of artists, rarely the same song twice.';

  @override
  String get rwRepeater => 'The Repeater';

  @override
  String get rwRepeaterSub => 'When a song gets you, it really gets you.';

  @override
  String get rwAllRounder => 'The All-Rounder';

  @override
  String get rwAllRounderSub => 'A bit of everything, in good balance.';

  @override
  String get shelfYearAgo => 'A year ago';

  @override
  String get shelfMonthAgo => 'A month ago';

  @override
  String get shelfOnThisDaySub => 'What you were playing around this day';

  @override
  String get mixTitle => 'Describe a mix';

  @override
  String get mixEntry => 'Describe a mix…';

  @override
  String get mixAsk => 'What do you want to hear?';

  @override
  String get mixHint => 'rainy sunday 2000s rock, no Linkin Park';

  @override
  String get mixPrivate => 'Read on this phone. Your words never leave it.';

  @override
  String get mixMake => 'Make it';

  @override
  String get mixTry => 'Try one of these';

  @override
  String get mixEx1 => 'chill lofi to study, 1 hour';

  @override
  String get mixEx2 => 'workout hip hop, getting faster';

  @override
  String get mixEx3 => '80s synthwave like The Midnight';

  @override
  String get mixEx4 => 'party afrobeats, 20 songs';

  @override
  String get mixNothing => 'Nothing fits that yet';

  @override
  String get mixNothingBody =>
      'Try fewer conditions, or turn on YouTube suggestions in Your taste.';

  @override
  String get mixUnderstood => 'Understood as';

  @override
  String mixLike(String artist) {
    return 'like $artist';
  }

  @override
  String get mixRising => 'getting faster';

  @override
  String get mixFalling => 'winding down';

  @override
  String get mixSave => 'Save as playlist';

  @override
  String get mixSaveAs => 'Name for this playlist';

  @override
  String get mixAgain => 'Shuffle it up';

  @override
  String reasonMatches(String what) {
    return 'Fits: $what';
  }

  @override
  String get reasonNewFind => 'A new find';

  @override
  String get stTitle => 'Appearance studio';

  @override
  String get stSub => 'Themes, fonts, player styles, tabs, gestures';

  @override
  String get stThemes => 'Themes';

  @override
  String get stFollow => 'My colour';

  @override
  String get stType => 'Type and shape';

  @override
  String get stSystem => 'System';

  @override
  String get stCorners => 'Corners';

  @override
  String get stSharp => 'Sharp';

  @override
  String get stSoft => 'Soft';

  @override
  String get stRound => 'Round';

  @override
  String get stDensity => 'Spacing';

  @override
  String get stCompact => 'Compact';

  @override
  String get stComfy => 'Comfy';

  @override
  String get stPlayer => 'Player';

  @override
  String get stClassic => 'Classic';

  @override
  String get stVinyl => 'Vinyl';

  @override
  String get stFullBleed => 'Big art';

  @override
  String get stMinimal => 'Minimal';

  @override
  String get stCassette => 'Cassette';

  @override
  String get stVisualizer => 'Visualiser';

  @override
  String get stSeek => 'Seek bar';

  @override
  String get stBars => 'Bars';

  @override
  String get stWave => 'Wave';

  @override
  String get stLine => 'Line';

  @override
  String get stThick => 'Thick';

  @override
  String get stOff => 'Off';

  @override
  String get stLiving => 'Living background';

  @override
  String get stLivingSub =>
      'Colours from the cover drift slowly behind the player';

  @override
  String get stDoubleTap => 'Double-tap the cover to like';

  @override
  String get stTabs => 'Tabs';

  @override
  String get stTabsSub => 'Drag to reorder, switch off what you never use';

  @override
  String get stLabels => 'Show tab names';

  @override
  String get stGlass => 'Frosted navigation';

  @override
  String get stHome => 'Home layout';

  @override
  String get stHomeSub => 'Which shelves, in which order';

  @override
  String get stGestures => 'Gestures';

  @override
  String get stSwipeRight => 'Swipe a song right';

  @override
  String get stSwipeLeft => 'Swipe a song left';

  @override
  String get stNothing => 'Nothing';

  @override
  String get stShake => 'Shake to skip';

  @override
  String get stShakeSub => 'A firm shake of the phone plays the next song';

  @override
  String get stShareLook => 'Share your look';

  @override
  String get stCopyCode => 'Copy theme code';

  @override
  String get stCodeSub =>
      'Send it to a friend; pasting it gives them exactly this look';

  @override
  String get stPasteCode => 'Paste a theme code';

  @override
  String get stCodeCopied => 'Theme code copied';

  @override
  String get stCodeApplied => 'New look applied';

  @override
  String get stCodeBad => 'That is not a TuneBox theme code';

  @override
  String get stReset => 'Back to the default look';

  @override
  String swLiked(String title) {
    return 'Liked \"$title\"';
  }

  @override
  String swQueued(String title) {
    return '\"$title\" plays next';
  }

  @override
  String get glxTitle => 'Taste Galaxy';

  @override
  String get glxEntry => 'Your artists as a map of stars';

  @override
  String get glxHint =>
      'Big stars are played most. Neighbours sound alike. Tap a star.';

  @override
  String get glxLasso => 'Draw around a cluster';

  @override
  String get glxLassoHint =>
      'Draw a loop around some stars to play that corner of your taste';

  @override
  String get glxLassoEmpty => 'No stars inside that loop';

  @override
  String glxLassoPlaying(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Playing $count artists',
      one: 'Playing 1 artist',
    );
    return '$_temp0';
  }

  @override
  String get glxRecenter => 'Back to the whole sky';

  @override
  String glxPlay(String artist) {
    return 'Play $artist';
  }

  @override
  String get glxOpen => 'Open artist page';

  @override
  String get glxMore => 'More of this artist';

  @override
  String get glxNever => 'Never play this artist';

  @override
  String get glxEmpty => 'Your sky is still dark';

  @override
  String get glxEmptyBody =>
      'Add songs from a few different artists and the stars appear.';

  @override
  String get blendTitle => 'Blend';

  @override
  String get blendEntry => 'One queue from two tastes';

  @override
  String get blendIntro =>
      'For a party, a car or a shared speaker. TuneBox finds what you both like and takes turns fairly. The other taste is only read, never added to yours.';

  @override
  String get blendWith => 'Blend with';

  @override
  String get blendProfile => 'A profile on this device';

  @override
  String get blendPaste => 'A friend\'s taste code';

  @override
  String get blendPasteSub =>
      'Copy it first (Move your taste → As text), then tap here';

  @override
  String get blendFile => 'A taste file';

  @override
  String get blendFriend => 'Your friend';

  @override
  String get blendBad => 'That is not a TuneBox taste';

  @override
  String blendYouAnd(String name) {
    return 'You and $name';
  }

  @override
  String get blendHigh => 'Practically the same ears.';

  @override
  String get blendMid => 'Plenty in common, and some to discover.';

  @override
  String get blendLow =>
      'Very different tastes. This one will be an adventure.';

  @override
  String get blendPlay => 'Play the blend';

  @override
  String get blendOther => 'Blend with someone else';

  @override
  String get blendLearn => 'Let the blend teach TuneBox';

  @override
  String get blendLearnSub =>
      'Off: what plays in a blend does not change your taste';

  @override
  String get blendBothArtists => 'Artists you both have';

  @override
  String get blendQueue => 'The queue';

  @override
  String get blendBoth => 'you both';

  @override
  String get blendYours => 'yours';

  @override
  String get syncTitle => 'Synced devices';

  @override
  String get syncHeadline => 'One taste, on all your devices';

  @override
  String get syncIntro =>
      'Pair your phone and computer once. After that they swap what they learned by themselves, about every 45 minutes and whenever you open the app, while both are on the same Wi-Fi. No account and no server.';

  @override
  String get syncDevices => 'Paired devices';

  @override
  String get syncNow => 'Sync now';

  @override
  String get syncNone => 'Nothing paired yet';

  @override
  String get syncNoneSub =>
      'Show a code on one device and type it on the other.';

  @override
  String syncLast(String when) {
    return 'Last synced $when';
  }

  @override
  String get syncNever => 'not yet';

  @override
  String get syncJustNow => 'just now';

  @override
  String syncMinutesAgo(int n) {
    return '$n min ago';
  }

  @override
  String syncHoursAgo(int n) {
    return '$n h ago';
  }

  @override
  String get syncForget => 'Unpair';

  @override
  String syncForgetQ(String name) {
    return 'Unpair $name?';
  }

  @override
  String get syncForgetBody =>
      'Nothing is deleted. The two devices just stop swapping taste.';

  @override
  String get syncAdd => 'Add a device';

  @override
  String get syncShowCode => 'Show a pairing code';

  @override
  String get syncShowCodeSub => 'On this device';

  @override
  String get syncEnterCode => 'Type a pairing code';

  @override
  String get syncEnterCodeSub => 'Shown on your other device';

  @override
  String get syncPrivate => 'Stays on your network';

  @override
  String get syncPrivateSub =>
      'Devices talk directly and every transfer is encrypted with a key only they know.';

  @override
  String get syncTypeThis => 'Type this code on your other device';

  @override
  String get syncWaiting => 'Waiting for it… keep this open.';

  @override
  String syncAddress(String address) {
    return 'If it is not found, type this address there: $address';
  }

  @override
  String get syncCodeExpired => 'That code has expired.';

  @override
  String get syncNewCode => 'New code';

  @override
  String syncPaired(String name) {
    return 'Paired with $name';
  }

  @override
  String get syncPair => 'Pair';

  @override
  String get syncNotFound => 'Not found? Type its address';

  @override
  String get syncAddressLabel => 'Address (e.g. 192.168.1.20)';

  @override
  String syncDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Synced with $count devices',
      one: 'Synced with 1 device',
    );
    return '$_temp0';
  }

  @override
  String get syncNoneReached =>
      'Could not reach your other devices. Are they on and on the same Wi-Fi?';

  @override
  String get syncNoDevice =>
      'No device with an open code was found on this Wi-Fi';

  @override
  String get syncWrongCode => 'That code is not right';

  @override
  String get syncNotPaired => 'The other device no longer knows this one';

  @override
  String get syncUnreachable => 'Not reachable right now';

  @override
  String get syncSettingsOff =>
      'Keep your taste the same on phone and computer';

  @override
  String syncSettingsOn(String names) {
    return 'Syncing with $names';
  }

  @override
  String get stMirror => 'Mirror';

  @override
  String get stLine2 => 'Curve';

  @override
  String get stDots => 'Dots';

  @override
  String get stLive => 'Live visualiser';

  @override
  String get stLiveSub =>
      'Moves with the real music. Android asks for the microphone permission for this, but only TuneBox\'s own sound is read, never the microphone.';

  @override
  String get stLiveDenied =>
      'Without the permission the visualiser keeps its own animation.';
}
