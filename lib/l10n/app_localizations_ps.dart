// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class LPs extends L {
  LPs([String locale = 'ps']) : super(locale);

  @override
  String get navHome => 'کور';

  @override
  String get navExplore => 'کشف';

  @override
  String get navLibrary => 'کتابتون';

  @override
  String get navTaste => 'ستاسو ذوق';

  @override
  String get actionDone => 'بشپړ';

  @override
  String get actionCancel => 'لغوه';

  @override
  String get actionCreate => 'جوړول';

  @override
  String get actionPlay => 'غږول';

  @override
  String get actionShuffle => 'ګډوډول';

  @override
  String get actionPlayAll => 'ټول غږول';

  @override
  String get actionAdd => 'اضافه کول';

  @override
  String get actionRemove => 'لرې کول';

  @override
  String get actionName => 'نوم';

  @override
  String get greetingNight => 'لا ویښ یاست؟';

  @override
  String get greetingMorning => 'سهار مو پخیر';

  @override
  String get greetingAfternoon => 'ماسپښین مو پخیر';

  @override
  String get greetingEvening => 'ماښام مو پخیر';

  @override
  String get homeBuilding => 'AI ستاسو المارۍ جوړوي…';

  @override
  String get homeOffline => 'آفلاین — هغه څه ښکاره کیږي چې په وسیله کې دي';

  @override
  String get homeNothingYet => 'تر اوسه د ښودلو څه نشته';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count المارۍ، همدا اوس تازه شوې',
      one: '1 المارۍ، همدا اوس تازه شوه',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'المارۍ بیا جوړول';

  @override
  String get homeAddMusic => 'له دې وسیلې موسیقي اضافه کړئ';

  @override
  String get homeQuickPicks => 'ګړندي انتخابونه';

  @override
  String get homeQuickPicksSub => 'هماغه ځای ته بیرته چې وئ';

  @override
  String get homeEmptyTitle => 'ستاسو کتابتون خالي دی';

  @override
  String get homeEmptyBody =>
      'یو څه ولټوئ، یا هغه موسیقي اضافه کړئ چې دې وسیله کې شته. AI له ستاسو له لومړي غږیدلي سندرې زده کړه پیلوي.';

  @override
  String get homeAddMyMusic => 'زما موسیقي اضافه کړئ';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube ته لاسرسی ونه شو: $error';
  }

  @override
  String get moodFocus => 'تمرکز';

  @override
  String get moodWorkout => 'تمرین';

  @override
  String get moodChill => 'آرام';

  @override
  String get moodCommute => 'سفر';

  @override
  String get moodParty => 'محفل';

  @override
  String moodBuilding(Object mood) {
    return 'د $mood ترکیب جوړیږي…';
  }

  @override
  String moodFailed(Object error) {
    return 'بریالی نشو: $error';
  }

  @override
  String get shelfRepeat => 'تکرار';

  @override
  String get shelfRepeatSub => 'ستاسو تیرې دوه اونۍ';

  @override
  String get shelfForgotten => 'هېرې شوې زړې خوښې سندرې';

  @override
  String get shelfForgottenSub => 'یو وخت خوښې وې، یو وخت یې نه ده اوریدل شوې';

  @override
  String get shelfNew => 'نوي';

  @override
  String get shelfNewSub => 'تازه سندرې چې AI فکر کوي ستاسو لپاره دي';

  @override
  String shelfBecause(Object artist) {
    return 'ځکه چې تاسو $artist واورېد';
  }

  @override
  String get shelfBecauseSub => 'ستاسو د ذوق هماغه کنج';

  @override
  String get shelfDeep => 'لږ اوریدل شوې';

  @override
  String get shelfDeepSub => 'ستاسو په کتابتون کې، خو ډېر لږ غږول شوې';

  @override
  String get shelfMix => 'ستاسو ترکیب';

  @override
  String get shelfMixSub => 'هر ځل چې اپ پرانیزئ بیا جوړیږي';

  @override
  String get shelfAdded => 'وروستی اضافه شوي';

  @override
  String get shelfAddedSub => 'ډاونلوډ شوې او وارد شوې فایلونه';

  @override
  String get shelfStarter => 'له دې ځایه پیل کړئ';

  @override
  String get shelfStarterSub => 'څو سندرې وغږوئ او AI سمدلاسه زده کړه پیلوي';

  @override
  String reasonPlays(int count) {
    return '$count ځله غږول شوې';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'خوښه شوې، وروستی ځل $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count ځله غږول شوې، وروستی ځل $when';
  }

  @override
  String get reasonTopArtist => 'ستاسو له ډېر اوریدل شویو هنرمندانو څخه یو';

  @override
  String reasonMore(Object artist) {
    return 'نور $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'تاسو بیا بیا $artist ته ورګرځئ';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'ستاسو ډول $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'پدې وروستیو کې ډېر $tag';
  }

  @override
  String get reasonOutThisYear => 'پدې کال کې خپره شوې';

  @override
  String get reasonReleasedRecently => 'پدې وروستیو کې خپره شوې';

  @override
  String get reasonClose => 'هغه ته نژدې چې تاسو اورېدلي';

  @override
  String reasonNear(Object artist) {
    return 'له $artist سره نژدې';
  }

  @override
  String get reasonNeverPlayed => 'هېڅکله نه ده غږول شوې';

  @override
  String get reasonPlayedOnce => 'یو ځل غږول شوې';

  @override
  String get reasonPopular => 'همدا اوس مشهوره';

  @override
  String whenYearsAgo(int count) {
    return '$count کاله مخکې';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count میاشتې مخکې';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count ورځې مخکې';
  }

  @override
  String get searchHint => 'سندرې، هنرمندان، البومونه';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count پایلې',
      one: '1 پایله',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'وروستي لټونونه';

  @override
  String get searchEmptyTitle => 'هېڅ نه وموندل شول';

  @override
  String get searchEmptyBody =>
      'بل املا ځرمه کړئ، یا یوازې د هنرمند نوم ولیکئ.';

  @override
  String get searchStartTitle => 'د غږولو لپاره یو څه ومومئ';

  @override
  String get searchStartBody =>
      'په YouTube Music کې ولټوئ — یوازې سندرې راځي، د نورو شیانو ویډیوګانې هېڅکله.';

  @override
  String get libPlaylists => 'پلې لیستونه';

  @override
  String get libSongs => 'سندرې';

  @override
  String get libArtists => 'هنرمندان';

  @override
  String get libLiked => 'خوښې';

  @override
  String get libDownloads => 'ډاونلوډونه';

  @override
  String get libImported => 'وارد شوي';

  @override
  String get libLikedSongs => 'خوښې سندرې';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سندرې',
      one: '1 سندره',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count آفلاین';
  }

  @override
  String get libMyFiles => 'زما خپلې فایلونه';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count فایلونه',
      one: '1 فایل',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'نوی پلې لیست';

  @override
  String get libMakeOne => 'یو جوړ کړئ';

  @override
  String get libSortRecent => 'وروستی اضافه شوي';

  @override
  String get libSortTitle => 'سرلیک';

  @override
  String get libSortArtist => 'هنرمند';

  @override
  String get libSortPlays => 'ډېر غږول شوي';

  @override
  String get sheetNotForMe => 'زما لپاره نه';

  @override
  String get sheetNotForMeSub => 'دا بیا هېڅکله مه وړاندیز کوئ';

  @override
  String get sheetBlocked => 'بنده — د بیا اجازې لپاره ټیپ کړئ';

  @override
  String get sheetBlockedSub => 'دا بیا په وړاندیزونو کې راتلای شي';

  @override
  String get sheetPlayNext => 'بل غږول';

  @override
  String get sheetAddToPlaylist => 'پلې لیست ته اضافه کول';

  @override
  String get sheetDownloaded => 'ډاونلوډ شو';

  @override
  String get sheetRemoveFile => 'د فایل لرې کولو لپاره ټیپ کړئ';

  @override
  String get sheetDownload => 'ډاونلوډ';

  @override
  String get sheetKeepOffline => 'د آفلاین لپاره یې وساتئ';

  @override
  String get sheetRadio => 'راډیو پیل کړئ';

  @override
  String get sheetRadioSub => 'د دې سندرې شاوخوا جوړه شوې کتار';

  @override
  String get sheetQueue => 'کتار';

  @override
  String get sheetSleepTimer => 'د خوب ټایمر';

  @override
  String get sheetSleepOff => 'بند';

  @override
  String sheetSleepMinutes(int count) {
    return '$count دقیقې';
  }

  @override
  String get sheetSleepEndOfTrack => 'د دې سندرې په پای کې';

  @override
  String sheetSleepSet(int count) {
    return 'موسیقي په $count دقیقو کې ودریږي';
  }

  @override
  String get tasteTitle => 'ستاسو ذوق';

  @override
  String get tasteRetrain => 'بیا روزنه';

  @override
  String get tasteRetraining => 'ستاسو په تاریخچه بیا روزنه کیږي…';

  @override
  String get tasteRetrained => 'AI خپل ماډل بیا جوړ کړ.';

  @override
  String tasteConfidence(int percent) {
    return 'باور $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays غږونه · $skips تېرول · $likes خوښې';
  }

  @override
  String get tasteEmptySummary => 'څو سندرې وغږوئ نو دا ډکیږي.';

  @override
  String get tasteKeepLearning => 'د اوریدو پر مهال زده کړه ادامه ورکړئ';

  @override
  String get tasteKeepLearningSub => 'د اوسني پروفایل د ګنډلو لپاره یې بند کړئ';

  @override
  String get tasteDownloadsTitle => 'هغه ډاونلوډونه چې AI یې سمبالوي';

  @override
  String get tasteDownloadsSub => 'موسیقي ستاسو له غوښتنې پرته وسیلې ته راځي';

  @override
  String get tasteDownloadLikes => 'هر هغه څه ډاونلوډ کړئ چې خوښ مې دي';

  @override
  String get tasteDownloadLikesSub =>
      'زړه ته کلیک وکړئ او فایل د آفلاین لپاره خوندي کیږي';

  @override
  String get tasteAiInstall => 'AI ته اجازه ورکړئ خپله ټاکلې موسیقي نصب کړي';

  @override
  String get tasteAiInstallSub => 'هغه سندرې به راوړي چې پرې ډاډه دی';

  @override
  String get tasteWhatItThinks => 'هغه څه چې فکر کوي تاسو یې خوښوئ';

  @override
  String get tasteWhatItThinksSub =>
      'له غږونو، تېرولو، خوښو او تکرارونو زده شوي';

  @override
  String get tasteArtists => 'هنرمندان چې پرې تکیه کوي';

  @override
  String get tasteWhenYouListen => 'کله چې اورئ';

  @override
  String get tasteWhenYouListenSub =>
      'په هر ساعت کې غږونه — اوسنی ساعت ډېر وزن لري';

  @override
  String get tasteDecades => 'لسیزې';

  @override
  String get tasteTune => 'وړاندیزونه برابر کړئ';

  @override
  String get tasteTuneSub => 'په راتلونکي کور تازه کولو کې اغېز کوي';

  @override
  String get tasteDiscovery => 'کشف';

  @override
  String get tasteDiscoverySub => 'پېژندل شوي ↔ هغه چې هېڅکله مو نه دي اورېدلي';

  @override
  String get tasteEnergy => 'انرژي';

  @override
  String get tasteEnergySub => 'آرام ↔ لوړ غږ';

  @override
  String get tasteRecency => 'تازګي';

  @override
  String get tasteRecencySub => 'تل پاتې ↔ بالکل نوی';

  @override
  String get tasteNostalgia => 'نوستالژي';

  @override
  String get tasteNostalgiaSub =>
      'یوه زړه خوښه سندره څومره زړه شي چې هېره شوې وګڼل شي';

  @override
  String get tasteSignals => 'هغه سیګنالونه چې کارولی شي';

  @override
  String get tasteSignalsSub => 'هر څه په همدې وسیله کې پاتې کیږي';

  @override
  String get tasteUseHistory => 'هغه څه چې ما غږولي';

  @override
  String get tasteUseSkips => 'هغه څه چې زه یې تېروم';

  @override
  String get tasteUseTime => 'د ورځې وخت';

  @override
  String get tasteUseYouTube => 'د YouTube وړاندیزونه';

  @override
  String get tasteAlwaysMore => 'تل نور';

  @override
  String get tasteNeverAgain => 'بیا هېڅکله';

  @override
  String get tasteAddArtist => 'هنرمند اضافه کړئ';

  @override
  String get tasteMoreOfPrompt => 'تل نور…';

  @override
  String get tasteNeverAgainPrompt => 'بیا هېڅکله…';

  @override
  String get tasteReset => 'هغه څه بیا تنظیم کړئ چې زده کړي یې';

  @override
  String get tasteResetSub => 'ستاسو موسیقي پاتې کیږي؛ پروفایل له صفره پیلیږي';

  @override
  String get trainCard => 'د درجې ورکولو له لارې یې وروزئ';

  @override
  String get trainCardSub =>
      'پر ریښتینو سندرو سوایپ کړئ. ښي لور ته د دې په څېر نورو لپاره، چپ لور ته د بیا هېڅکله لپاره. دلته دوه دقیقې د یوې اونۍ اوریدو څخه غوره دي.';

  @override
  String get trainStart => 'د روزنې پړاو پیل کړئ';

  @override
  String get trainTitle => 'د روزنې پړاو';

  @override
  String get trainQuestion => 'ایا غواړئ دا ستاسو په کور کې وي؟';

  @override
  String get trainMoreLikeThis => 'د دې په څېر نور';

  @override
  String get trainNeverAgain => 'بیا هېڅکله';

  @override
  String get trainDone => 'پړاو بشپړ شو';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked وساتل شول · $blocked بند شول. باور $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'ستاسو ذوق ته بیرته';

  @override
  String get trainNothingTitle => 'تر اوسه د درجې ورکولو څه نشته';

  @override
  String get trainNothingBody =>
      'لومړی یو څه موسیقي اضافه کړئ یا AI ته اجازه ورکړئ نوماندان راوړي، بیا بیرته راشئ.';

  @override
  String get trainLeaveTitle => 'د روزنې پړاو پریږدئ؟';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'که همدا اوس ووځئ، AI د دې پړاو ټول څه لغوه کوي — ټولې $count سندرې چې تاسو یې اوس درجه کړې.',
      one:
          'که همدا اوس ووځئ، AI د دې پړاو ټول څه لغوه کوي — هغه 1 سندره چې تاسو یې اوس درجه کړه.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'روزنه ادامه ورکړئ';

  @override
  String get trainDiscard => 'لغوه کړئ او ووځئ';

  @override
  String get setTitle => 'تنظیمات';

  @override
  String get setAppearance => 'بڼه';

  @override
  String get setTheme => 'تیم';

  @override
  String get setThemeSystem => 'د سیسټم پیروي';

  @override
  String get setThemeLight => 'روښانه';

  @override
  String get setThemeDark => 'تیاره';

  @override
  String get setPureBlack => 'خالص تور';

  @override
  String get setPureBlackSub => 'په OLED پرده بریښنا سپموي';

  @override
  String get setAccent => 'ټاکلی رنګ';

  @override
  String get setAccentArtwork => 'د پوښ انځور څخه';

  @override
  String get setAccentFixed => 'یو رنګ چې ما غوره کړ';

  @override
  String get setLanguage => 'ژبه';

  @override
  String get setLanguageSystem => 'د سیسټم پیروي';

  @override
  String get setAccessibility => 'لاسرسوی';

  @override
  String get setTextSize => 'د متن اندازه';

  @override
  String get setTextSizeSub => 'ستاسو د سیسټم تنظیم سربېره';

  @override
  String get setReduceMotion => 'حرکت کمول';

  @override
  String get setReduceMotionSub =>
      'بارونه، ویژولایزر، توپنده سکرول، لچکدار ټیپونه او د پاڼو لېږد بندوي';

  @override
  String get setHighContrast => 'لوړ کنټراست';

  @override
  String get setHighContrastSub => 'پیاوړی جلاوالی او لیدل کیدونکي څنډې';

  @override
  String get setBoldText => 'پروند متن';

  @override
  String get setPlayback => 'غږول';

  @override
  String get setAutoRadio => 'موسیقي روانه وساتئ';

  @override
  String get setAutoRadioSub =>
      'کله چې کتار پای ته ورسیږي، د وروستۍ سندرې پر بنسټ جوړې راډیو سره دوام ورکړئ';

  @override
  String get setSmartShuffle => 'هوښیار ګډوډول';

  @override
  String get setSmartShuffleSub => 'د تصادف پر ځای د ذوق له مخې ګډوډوي';

  @override
  String get setResume => 'هلته پیل کړئ چېرته چې پاتې وم';

  @override
  String get setResumeSub =>
      'کله چې اپ پرانیستل شي کتار په ځنډول شوې حالت کې بیرته راولي';

  @override
  String get setDataSaver => 'پر Wi-Fi پرته د ډیټا سپما';

  @override
  String get setDataSaverSub =>
      'په موبایل ډیټا کې سټریمونه او ډاونلوډونه تر 128 kbps پورې محدودوي';

  @override
  String get setHaptics => 'لمسي غبرګون';

  @override
  String get setShowReasons => 'وښایاست چې ولې یو څه وړاندیز شوي';

  @override
  String get setSkipSilence => 'چوپتیا تېره کړئ';

  @override
  String get setQuality => 'د غږ کیفیت';

  @override
  String get setQualityLow => 'ټیټ · 64 kbps';

  @override
  String get setQualityNormal => 'عادي · 128 kbps';

  @override
  String get setQualityHigh => 'لوړ · 192 kbps';

  @override
  String get setQualityBest => 'غوره شته';

  @override
  String get setStorage => 'ډاونلوډونه او ذخیره';

  @override
  String get setWifiOnly => 'یوازې پر Wi-Fi ډاونلوډ';

  @override
  String get setDailyLimit => 'د AI ورځنۍ بریده';

  @override
  String setDailyLimitSub(int count) {
    return 'په ورځ کې $count سندرې';
  }

  @override
  String get setBudget => 'هغه ذخیره چې AI یې کارولی شي';

  @override
  String setUsed(Object size) {
    return '$size د ډاونلوډونو لخوا کارول شوې';
  }

  @override
  String get setYourMusic => 'ستاسو موسیقي';

  @override
  String get setImport => 'له دې وسیلې موسیقي اضافه کړئ';

  @override
  String get setImportSub => 'فولډرونه یا یوازې فایلونه وټاکئ';

  @override
  String get setCleanup => 'ورکې فایلونه پاکول';

  @override
  String get setCleanupSub => 'هغه سندرې لرې کړئ چې فایل یې نشته';

  @override
  String setCleanupDone(int count) {
    return '$count ورکې فایلونه لرې شول.';
  }

  @override
  String get setExport => 'خپل ذوق بلې وسیلې ته ولېږئ';

  @override
  String get setExportSub =>
      'یو فایل خوندي کوي چې ستاسو خوښې، غږونه او هر هغه څه لري چې AI زده کړي';

  @override
  String get setImportTaste => 'له بلې وسیلې ذوق پورته کړئ';

  @override
  String get setImportTasteSub =>
      'یو خوندي شوی ذوق فایل وټاکئ او یوځای یې کړئ — تکرار یې خوندي دی';

  @override
  String get setAbout => 'په اړه';

  @override
  String get setAboutBody =>
      'له YouTube او ستاسو له خپلو فایلونو موسیقي. AI بشپړ په همدې وسیله کې چلیږي — هېڅ شی نه وځي.';

  @override
  String get setSource => 'سرچینه کوډ';

  @override
  String get importTitle => 'موسیقي اضافه کړئ';

  @override
  String get importPickFolder => 'فولډر وټاکئ';

  @override
  String get importPickFiles => 'فایلونه وټاکئ';

  @override
  String importScanning(Object file) {
    return '$file سکین کیږي';
  }

  @override
  String importAdded(int count) {
    return '$count اضافه شول';
  }

  @override
  String get importDenied => 'اجازه رد شوه — ستاسو موسیقي نه لوستل کیږي.';

  @override
  String get importWatched => 'هغه فولډرونه چې څاري';

  @override
  String get importIosHint =>
      'د Files اپ پرانیزئ، On My iPhone → TuneBox ته لاړ شئ، او موسیقي هلته واچوئ.';

  @override
  String get playerQueue => 'کتار';

  @override
  String get playerUpNext => 'راتلونکې';

  @override
  String get playerLyrics => 'شعر';

  @override
  String get playerNoLyrics => 'د دې لپاره شعر نشته.';

  @override
  String get playerRepeat => 'تکرار';

  @override
  String get playerShuffle => 'ګډوډول';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" ونه غږېد';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" تېریږي — سټریم ونه پرانیستل شو.';
  }

  @override
  String get undo => 'بیرته';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'همدا اوس: $tags، د $artist په مشرۍ.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'همدا اوس: $tags.';
  }

  @override
  String get setColour => 'رنګ';

  @override
  String get setColourSub => 'ټوله اپ د دې پیروي کوي';

  @override
  String get setCoverArt => 'د پوښ انځور';

  @override
  String get setMyColour => 'زما رنګ';

  @override
  String get setCoverArtSub => 'هره سندره اپ د خپل پوښ له مخې بیا رنګوي.';

  @override
  String get setMyColourSub => 'یو رنګ، هر ځای، تل.';

  @override
  String get setPickColour => 'هر رنګ وټاکئ';

  @override
  String get setWifiOnlyTitle => 'یوازې پر Wi-Fi ډاونلوډ';

  @override
  String get setDownloadLikes => 'هر هغه څه ډاونلوډ کړئ چې خوښ مې دي';

  @override
  String get setDownloadLikesSub => 'د زړه تڼۍ فایل هم خوندي کوي';

  @override
  String get setAiInstall => 'AI ته اجازه ورکړئ خپله ټاکلې موسیقي نصب کړي';

  @override
  String get setSkipSilenceSub =>
      'یوازې اندرويد. کولی شي چوپ پیلونه، فیډونه او نرمې برخې پرې کړي — که موسیقي ټوټې کیږي بند یې وساتئ';

  @override
  String get setStorageUsed => 'د ډاونلوډونو لخوا کارول شوې ذخیره';

  @override
  String get setLibrary => 'کتابتون';

  @override
  String get setUpdates => 'تازه کولو';

  @override
  String get setAutoUpdate => 'پخپله د تازه کولو لټون وکړئ';

  @override
  String get setAutoUpdateSub =>
      'هر څو ساعته وروسته، چوپ، او په Wi-Fi ډاونلوډ. نصب بیا هم له تاسو پوښتي.';

  @override
  String setUpdateReady(Object version) {
    return '$version ته تازه کول چمتو دي';
  }

  @override
  String get setUpdateReadySub => 'ډاونلوډ شو — د نصبولو لپاره ټیپ کړئ';

  @override
  String get setUpdateAvailableSub =>
      'له خپرونو پاڼې یې ترلاسه کړئ — د لینک کاپي کولو لپاره ټیپ کړئ';

  @override
  String get setLinkCopied => 'لینک کاپي شو';

  @override
  String get setCheckNow => 'اوس وګورئ';

  @override
  String get setUpToDate => 'TuneBox تازه دی';

  @override
  String get setChecking => 'نوې بڼه لټول کیږي…';

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
}
