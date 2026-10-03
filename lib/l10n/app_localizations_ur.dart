// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class LUr extends L {
  LUr([String locale = 'ur']) : super(locale);

  @override
  String get navHome => 'ہوم';

  @override
  String get navExplore => 'دریافت';

  @override
  String get navLibrary => 'لائبریری';

  @override
  String get navTaste => 'آپ کی پسند';

  @override
  String get actionDone => 'مکمل';

  @override
  String get actionCancel => 'منسوخ کریں';

  @override
  String get actionCreate => 'بنائیں';

  @override
  String get actionPlay => 'چلائیں';

  @override
  String get actionShuffle => 'شفل';

  @override
  String get actionPlayAll => 'سب چلائیں';

  @override
  String get actionAdd => 'شامل کریں';

  @override
  String get actionRemove => 'ہٹائیں';

  @override
  String get actionName => 'نام';

  @override
  String get greetingNight => 'ابھی تک جاگ رہے ہیں؟';

  @override
  String get greetingMorning => 'صبح بخیر';

  @override
  String get greetingAfternoon => 'دوپہر بخیر';

  @override
  String get greetingEvening => 'شام بخیر';

  @override
  String get homeBuilding => 'AI آپ کے شیلف بنا رہا ہے…';

  @override
  String get homeOffline => 'آف لائن — ڈیوائس پر موجود چیزیں دکھائی جا رہی ہیں';

  @override
  String get homeNothingYet => 'ابھی دکھانے کو کچھ نہیں';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شیلف، ابھی تازہ کیے گئے',
      one: '1 شیلف، ابھی تازہ کیا گیا',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'شیلف دوبارہ بنائیں';

  @override
  String get homeAddMusic => 'اس ڈیوائس سے موسیقی شامل کریں';

  @override
  String get homeQuickPicks => 'فوری انتخاب';

  @override
  String get homeQuickPicksSub => 'جہاں تھے وہیں واپس';

  @override
  String get homeEmptyTitle => 'آپ کی لائبریری خالی ہے';

  @override
  String get homeEmptyBody =>
      'کچھ تلاش کریں، یا اس ڈیوائس پر موجود موسیقی شامل کریں۔ AI آپ کے پہلے ہی گانے سے سیکھنا شروع کر دیتا ہے۔';

  @override
  String get homeAddMyMusic => 'میری موسیقی شامل کریں';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube تک رسائی نہیں ہو سکی: $error';
  }

  @override
  String get moodFocus => 'توجہ';

  @override
  String get moodWorkout => 'ورزش';

  @override
  String get moodChill => 'سکون';

  @override
  String get moodCommute => 'سفر';

  @override
  String get moodParty => 'پارٹی';

  @override
  String moodBuilding(Object mood) {
    return '$mood مکس بنایا جا رہا ہے…';
  }

  @override
  String moodFailed(Object error) {
    return 'کامیابی نہیں ہوئی: $error';
  }

  @override
  String get shelfRepeat => 'بار بار';

  @override
  String get shelfRepeatSub => 'آپ کے پچھلے دو ہفتے';

  @override
  String get shelfForgotten => 'بھولے ہوئے پرانے پسندیدہ گانے';

  @override
  String get shelfForgottenSub => 'کبھی پسند تھے، کچھ عرصے سے نہیں سنے';

  @override
  String get shelfNew => 'نیا';

  @override
  String get shelfNewSub => 'تازہ ٹریکس جو AI کے خیال میں آپ کے لیے ہیں';

  @override
  String shelfBecause(Object artist) {
    return 'کیونکہ آپ نے $artist سنا';
  }

  @override
  String get shelfBecauseSub => 'آپ کی پسند کا وہی گوشہ';

  @override
  String get shelfDeep => 'شاذ و نادر سنے';

  @override
  String get shelfDeepSub => 'آپ کی لائبریری میں، مگر بمشکل چلائے';

  @override
  String get shelfMix => 'آپ کا مکس';

  @override
  String get shelfMixSub => 'ایپ کھولنے پر ہر بار نیا بنتا ہے';

  @override
  String get shelfAdded => 'حال ہی میں شامل';

  @override
  String get shelfAddedSub => 'ڈاؤن لوڈ اور درآمد کی گئی فائلیں';

  @override
  String get shelfStarter => 'یہاں سے شروع کریں';

  @override
  String get shelfStarterSub =>
      'چند گانے چلائیں، AI فوراً سیکھنا شروع کر دے گا';

  @override
  String reasonPlays(int count) {
    return '$count بار چلایا';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'پسند کیا، آخری بار $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count بار چلایا، آخری بار $when';
  }

  @override
  String get reasonTopArtist => 'آپ کے سب سے زیادہ سنے گئے فنکاروں میں سے ایک';

  @override
  String reasonMore(Object artist) {
    return 'مزید $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'آپ بار بار $artist کی طرف لوٹتے ہیں';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'آپ کی پسند کا $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'حال ہی میں $tag زیادہ';
  }

  @override
  String get reasonOutThisYear => 'اسی سال ریلیز';

  @override
  String get reasonReleasedRecently => 'حال ہی میں ریلیز';

  @override
  String get reasonClose => 'آپ کے حالیہ سنے گئے کے قریب';

  @override
  String reasonNear(Object artist) {
    return '$artist کے قریب';
  }

  @override
  String get reasonNeverPlayed => 'کبھی نہیں چلایا';

  @override
  String get reasonPlayedOnce => 'ایک بار چلایا';

  @override
  String get reasonPopular => 'ابھی مقبول';

  @override
  String whenYearsAgo(int count) {
    return '$count سال پہلے';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ماہ پہلے';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count دن پہلے';
  }

  @override
  String get searchHint => 'گانے، فنکار، البم';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نتائج',
      one: '1 نتیجہ',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'حالیہ تلاشیں';

  @override
  String get searchEmptyTitle => 'کچھ نہیں ملا';

  @override
  String get searchEmptyBody =>
      'کوئی اور ہجے آزمائیں، یا صرف فنکار کا نام لکھیں۔';

  @override
  String get searchStartTitle => 'چلانے کے لیے کچھ ڈھونڈیں';

  @override
  String get searchStartBody =>
      'YouTube Music میں تلاش کریں — صرف گانے آتے ہیں، دوسری چیزوں کی ویڈیوز کبھی نہیں۔';

  @override
  String get libPlaylists => 'پلے لسٹس';

  @override
  String get libSongs => 'گانے';

  @override
  String get libArtists => 'فنکار';

  @override
  String get libLiked => 'پسندیدہ';

  @override
  String get libDownloads => 'ڈاؤن لوڈز';

  @override
  String get libImported => 'درآمد شدہ';

  @override
  String get libLikedSongs => 'پسندیدہ گانے';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count گانے',
      one: '1 گانا',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count آف لائن';
  }

  @override
  String get libMyFiles => 'میری اپنی فائلیں';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count فائلیں',
      one: '1 فائل',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'نئی پلے لسٹ';

  @override
  String get libMakeOne => 'ایک بنائیں';

  @override
  String get libSortRecent => 'حال ہی میں شامل';

  @override
  String get libSortTitle => 'عنوان';

  @override
  String get libSortArtist => 'فنکار';

  @override
  String get libSortPlays => 'سب سے زیادہ سنا گیا';

  @override
  String get sheetNotForMe => 'میرے لیے نہیں';

  @override
  String get sheetNotForMeSub => 'اسے دوبارہ کبھی تجویز نہ کریں';

  @override
  String get sheetBlocked => 'بلاک — دوبارہ اجازت کے لیے ٹیپ کریں';

  @override
  String get sheetBlockedSub => 'یہ دوبارہ تجاویز میں آ سکتا ہے';

  @override
  String get sheetPlayNext => 'اگلا چلائیں';

  @override
  String get sheetAddToPlaylist => 'پلے لسٹ میں شامل کریں';

  @override
  String get sheetDownloaded => 'ڈاؤن لوڈ ہو گیا';

  @override
  String get sheetRemoveFile => 'فائل ہٹانے کے لیے ٹیپ کریں';

  @override
  String get sheetDownload => 'ڈاؤن لوڈ';

  @override
  String get sheetKeepOffline => 'آف لائن کے لیے رکھیں';

  @override
  String get sheetRadio => 'ریڈیو شروع کریں';

  @override
  String get sheetRadioSub => 'اس گانے کے گرد بنی قطار';

  @override
  String get sheetQueue => 'قطار';

  @override
  String get sheetSleepTimer => 'سلیپ ٹائمر';

  @override
  String get sheetSleepOff => 'بند';

  @override
  String sheetSleepMinutes(int count) {
    return '$count منٹ';
  }

  @override
  String get sheetSleepEndOfTrack => 'اس گانے کے اختتام پر';

  @override
  String sheetSleepSet(int count) {
    return 'موسیقی $count منٹ میں رک جائے گی';
  }

  @override
  String get tasteTitle => 'آپ کی پسند';

  @override
  String get tasteRetrain => 'دوبارہ تربیت';

  @override
  String get tasteRetraining => 'آپ کی ہسٹری پر دوبارہ تربیت ہو رہی ہے…';

  @override
  String get tasteRetrained => 'AI نے اپنا ماڈل دوبارہ بنا لیا۔';

  @override
  String tasteConfidence(int percent) {
    return 'اعتماد $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays بار چلایا · $skips اسکپ · $likes پسند';
  }

  @override
  String get tasteEmptySummary => 'چند گانے چلائیں تو یہ بھر جائے گا۔';

  @override
  String get tasteKeepLearning => 'سنتے وقت سیکھتا رہے';

  @override
  String get tasteKeepLearningSub =>
      'موجودہ پروفائل منجمد کرنے کے لیے بند کریں';

  @override
  String get tasteDownloadsTitle => 'AI کے سنبھالے ڈاؤن لوڈز';

  @override
  String get tasteDownloadsSub => 'آپ کے کہے بغیر موسیقی ڈیوائس پر آ جاتی ہے';

  @override
  String get tasteDownloadLikes => 'جو پسند ہو سب ڈاؤن لوڈ کریں';

  @override
  String get tasteDownloadLikesSub =>
      'دل دبائیں اور فائل آف لائن کے لیے محفوظ ہو جائے';

  @override
  String get tasteAiInstall => 'AI اپنی چنی موسیقی انسٹال کرے';

  @override
  String get tasteAiInstallSub => 'جن ٹریکس پر اسے یقین ہو وہ لے آئے گا';

  @override
  String get tasteWhatItThinks => 'اس کے خیال میں آپ کو کیا پسند ہے';

  @override
  String get tasteWhatItThinksSub => 'پلے، اسکپ، لائک اور ریپیٹ سے سیکھا';

  @override
  String get tasteArtists => 'جن فنکاروں پر انحصار ہے';

  @override
  String get tasteWhenYouListen => 'آپ کب سنتے ہیں';

  @override
  String get tasteWhenYouListenSub =>
      'فی گھنٹہ پلے — موجودہ گھنٹے کو زیادہ وزن ملتا ہے';

  @override
  String get tasteDecades => 'دہائیاں';

  @override
  String get tasteTune => 'تجاویز ایڈجسٹ کریں';

  @override
  String get tasteTuneSub => 'اگلے ہوم ریفریش پر لاگو ہوگا';

  @override
  String get tasteDiscovery => 'دریافت';

  @override
  String get tasteDiscoverySub => 'جانا پہچانا ↔ جو کبھی نہیں سنا';

  @override
  String get tasteEnergy => 'توانائی';

  @override
  String get tasteEnergySub => 'پرسکون ↔ تیز';

  @override
  String get tasteRecency => 'تازگی';

  @override
  String get tasteRecencySub => 'ہمیشہ کے لیے ↔ بالکل نیا';

  @override
  String get tasteNostalgia => 'پرانی یادیں';

  @override
  String get tasteNostalgiaSub =>
      'پرانا پسندیدہ کتنا پرانا ہو تو بھولا ہوا شمار ہو';

  @override
  String get tasteSignals => 'جو اشارے یہ استعمال کر سکتا ہے';

  @override
  String get tasteSignalsSub => 'سب کچھ اسی ڈیوائس پر رہتا ہے';

  @override
  String get tasteUseHistory => 'جو میں نے سنا';

  @override
  String get tasteUseSkips => 'جو میں اسکپ کرتا ہوں';

  @override
  String get tasteUseTime => 'دن کا وقت';

  @override
  String get tasteUseYouTube => 'YouTube کی تجاویز';

  @override
  String get tasteAlwaysMore => 'ہمیشہ مزید';

  @override
  String get tasteNeverAgain => 'دوبارہ کبھی نہیں';

  @override
  String get tasteAddArtist => 'فنکار شامل کریں';

  @override
  String get tasteMoreOfPrompt => 'ہمیشہ مزید…';

  @override
  String get tasteNeverAgainPrompt => 'دوبارہ کبھی نہیں…';

  @override
  String get tasteReset => 'جو سیکھا اسے ری سیٹ کریں';

  @override
  String get tasteResetSub => 'آپ کی موسیقی رہے گی؛ پروفائل صفر سے شروع ہوگا';

  @override
  String get trainCard => 'ریٹنگ سے تربیت دیں';

  @override
  String get trainCardSub =>
      'اصل گانوں پر سوائپ کریں۔ دائیں مزید ایسے کے لیے، بائیں دوبارہ کبھی نہیں کے لیے۔ یہاں دو منٹ ایک ہفتے کے سننے سے بہتر ہیں۔';

  @override
  String get trainStart => 'تربیتی راؤنڈ شروع کریں';

  @override
  String get trainTitle => 'تربیتی راؤنڈ';

  @override
  String get trainQuestion => 'کیا آپ اسے اپنے ہوم پر چاہیں گے؟';

  @override
  String get trainMoreLikeThis => 'مزید ایسا';

  @override
  String get trainNeverAgain => 'دوبارہ کبھی نہیں';

  @override
  String get trainDone => 'راؤنڈ مکمل';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked رکھے · $blocked بلاک۔ اعتماد $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'اپنی پسند پر واپس';

  @override
  String get trainNothingTitle => 'ابھی ریٹ کرنے کو کچھ نہیں';

  @override
  String get trainNothingBody =>
      'پہلے کچھ موسیقی شامل کریں یا AI کو امیدوار لانے دیں، پھر واپس آئیں۔';

  @override
  String get trainLeaveTitle => 'تربیتی راؤنڈ چھوڑیں؟';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'اب چھوڑیں گے تو AI اس راؤنڈ کی ہر چیز رد کر دے گا — وہ تمام $count گانے جو آپ نے ابھی ریٹ کیے۔',
      one:
          'اب چھوڑیں گے تو AI اس راؤنڈ کی ہر چیز رد کر دے گا — وہ 1 گانا جو آپ نے ابھی ریٹ کیا۔',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'تربیت جاری رکھیں';

  @override
  String get trainDiscard => 'رد کریں اور چھوڑیں';

  @override
  String get setTitle => 'سیٹنگز';

  @override
  String get setAppearance => 'ظاہری شکل';

  @override
  String get setTheme => 'تھیم';

  @override
  String get setThemeSystem => 'سسٹم کے مطابق';

  @override
  String get setThemeLight => 'روشن';

  @override
  String get setThemeDark => 'تاریک';

  @override
  String get setPureBlack => 'خالص سیاہ';

  @override
  String get setPureBlackSub => 'OLED اسکرین پر بجلی بچاتا ہے';

  @override
  String get setAccent => 'نمایاں رنگ';

  @override
  String get setAccentArtwork => 'کور آرٹ سے';

  @override
  String get setAccentFixed => 'میرا چنا ہوا ایک رنگ';

  @override
  String get setLanguage => 'زبان';

  @override
  String get setLanguageSystem => 'سسٹم کے مطابق';

  @override
  String get setAccessibility => 'رسائی';

  @override
  String get setTextSize => 'متن کا سائز';

  @override
  String get setTextSizeSub => 'آپ کی سسٹم سیٹنگ کے علاوہ';

  @override
  String get setReduceMotion => 'حرکت کم کریں';

  @override
  String get setReduceMotionSub =>
      'بارز، ویژولائزر، اچھلتی اسکرولنگ، لچکدار ٹیپس اور صفحے کی منتقلی بند کرتا ہے';

  @override
  String get setHighContrast => 'ہائی کنٹراسٹ';

  @override
  String get setHighContrastSub => 'زیادہ واضح علیحدگی اور نظر آنے والے خاکے';

  @override
  String get setBoldText => 'موٹا متن';

  @override
  String get setPlayback => 'پلے بیک';

  @override
  String get setAutoRadio => 'موسیقی چلتی رہے';

  @override
  String get setAutoRadioSub =>
      'قطار ختم ہونے پر آخری گانے سے بنے ریڈیو کے ساتھ جاری رکھیں';

  @override
  String get setSmartShuffle => 'اسمارٹ شفل';

  @override
  String get setSmartShuffleSub => 'اتفاقی کے بجائے پسند کے مطابق شفل کرتا ہے';

  @override
  String get setResume => 'جہاں چھوڑا تھا وہیں سے';

  @override
  String get setResumeSub =>
      'ایپ کھلنے پر قطار بحال کرتا ہے، رکی ہوئی حالت میں';

  @override
  String get setDataSaver => 'وائی فائی کے بغیر ڈیٹا سیور';

  @override
  String get setDataSaverSub =>
      'موبائل ڈیٹا پر اسٹریمز اور ڈاؤن لوڈز 128 kbps تک محدود';

  @override
  String get setHaptics => 'ہیپٹک فیڈ بیک';

  @override
  String get setShowReasons => 'تجویز کی وجہ دکھائیں';

  @override
  String get setSkipSilence => 'خاموشی چھوڑیں';

  @override
  String get setQuality => 'آڈیو کوالٹی';

  @override
  String get setQualityLow => 'کم · 64 kbps';

  @override
  String get setQualityNormal => 'عام · 128 kbps';

  @override
  String get setQualityHigh => 'اعلیٰ · 192 kbps';

  @override
  String get setQualityBest => 'بہترین دستیاب';

  @override
  String get setStorage => 'ڈاؤن لوڈز اور اسٹوریج';

  @override
  String get setWifiOnly => 'صرف وائی فائی پر ڈاؤن لوڈ';

  @override
  String get setDailyLimit => 'AI کے لیے روزانہ حد';

  @override
  String setDailyLimitSub(int count) {
    return 'روزانہ $count گانے';
  }

  @override
  String get setBudget => 'AI کے استعمال کی اسٹوریج';

  @override
  String setUsed(Object size) {
    return 'ڈاؤن لوڈز نے $size استعمال کیا';
  }

  @override
  String get setYourMusic => 'آپ کی موسیقی';

  @override
  String get setImport => 'اس ڈیوائس سے موسیقی شامل کریں';

  @override
  String get setImportSub => 'فولڈر یا انفرادی فائلیں چنیں';

  @override
  String get setCleanup => 'غائب فائلیں صاف کریں';

  @override
  String get setCleanupSub => 'جن گانوں کی فائل نہیں رہی انہیں ہٹائیں';

  @override
  String setCleanupDone(int count) {
    return '$count غائب فائلیں ہٹا دی گئیں۔';
  }

  @override
  String get setExport => 'اپنی پسند دوسری ڈیوائس پر بھیجیں';

  @override
  String get setExportSub =>
      'آپ کے لائکس، پلے اور AI کے سیکھے ہوئے سب کی فائل محفوظ کرتا ہے';

  @override
  String get setImportTaste => 'دوسری ڈیوائس سے پسند لوڈ کریں';

  @override
  String get setImportTasteSub =>
      'محفوظ کردہ پسند کی فائل چنیں اور ضم کریں — بار بار کرنا محفوظ ہے';

  @override
  String get setAbout => 'کے بارے میں';

  @override
  String get setAboutBody =>
      'YouTube اور آپ کی اپنی فائلوں سے موسیقی۔ AI مکمل طور پر اسی ڈیوائس پر چلتا ہے — کچھ باہر نہیں جاتا۔';

  @override
  String get setSource => 'سورس کوڈ';

  @override
  String get importTitle => 'موسیقی شامل کریں';

  @override
  String get importPickFolder => 'فولڈر چنیں';

  @override
  String get importPickFiles => 'فائلیں چنیں';

  @override
  String importScanning(Object file) {
    return '$file اسکین ہو رہی ہے';
  }

  @override
  String importAdded(int count) {
    return '$count شامل ہوئے';
  }

  @override
  String get importDenied => 'اجازت نہیں ملی — آپ کی موسیقی پڑھی نہیں جا سکتی۔';

  @override
  String get importWatched => 'نگرانی میں فولڈرز';

  @override
  String get importIosHint =>
      'فائلز ایپ کھولیں، On My iPhone → TuneBox میں جائیں، اور موسیقی وہاں ڈالیں۔';

  @override
  String get playerQueue => 'قطار';

  @override
  String get playerUpNext => 'اگلا';

  @override
  String get playerLyrics => 'بول';

  @override
  String get playerNoLyrics => 'اس کے بول موجود نہیں۔';

  @override
  String get playerRepeat => 'دہرائیں';

  @override
  String get playerShuffle => 'شفل';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" نہیں چلایا جا سکا';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" چھوڑا جا رہا ہے — اسٹریم نہیں کھلی۔';
  }

  @override
  String get undo => 'واپس';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'اس وقت: $tags، جس میں $artist نمایاں ہیں۔';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'اس وقت: $tags۔';
  }

  @override
  String get setColour => 'رنگ';

  @override
  String get setColourSub => 'پوری ایپ اسی کی پیروی کرتی ہے';

  @override
  String get setCoverArt => 'کور آرٹ';

  @override
  String get setMyColour => 'میرا رنگ';

  @override
  String get setCoverArtSub => 'ہر گانا اپنے کور سے ایپ کا رنگ بدلتا ہے۔';

  @override
  String get setMyColourSub => 'ایک رنگ، ہر جگہ، ہر وقت۔';

  @override
  String get setPickColour => 'کوئی بھی رنگ چنیں';

  @override
  String get setWifiOnlyTitle => 'صرف وائی فائی پر ڈاؤن لوڈ';

  @override
  String get setDownloadLikes => 'جو پسند ہو سب ڈاؤن لوڈ کریں';

  @override
  String get setDownloadLikesSub => 'دل کا بٹن فائل بھی محفوظ کرتا ہے';

  @override
  String get setAiInstall => 'AI اپنی چنی موسیقی انسٹال کرے';

  @override
  String get setSkipSilenceSub =>
      'صرف اینڈرائیڈ۔ خاموش ابتدائیے، فیڈ اور مدھم حصے کاٹ سکتا ہے — موسیقی رکے تو بند رکھیں';

  @override
  String get setStorageUsed => 'ڈاؤن لوڈز کی استعمال شدہ اسٹوریج';

  @override
  String get setLibrary => 'لائبریری';

  @override
  String get setUpdates => 'اپ ڈیٹس';

  @override
  String get setAutoUpdate => 'خود بخود اپ ڈیٹ چیک کریں';

  @override
  String get setAutoUpdateSub =>
      'ہر چند گھنٹے بعد، خاموشی سے، اور وائی فائی پر ڈاؤن لوڈ۔ انسٹال کرنے سے پہلے پھر بھی پوچھتا ہے۔';

  @override
  String setUpdateReady(Object version) {
    return '$version کی اپ ڈیٹ تیار ہے';
  }

  @override
  String get setUpdateReadySub => 'ڈاؤن لوڈ ہو گئی — انسٹال کے لیے ٹیپ کریں';

  @override
  String get setUpdateAvailableSub =>
      'ریلیز پیج سے حاصل کریں — لنک کاپی کرنے کے لیے ٹیپ کریں';

  @override
  String get setLinkCopied => 'لنک کاپی ہو گیا';

  @override
  String get setCheckNow => 'ابھی چیک کریں';

  @override
  String get setUpToDate => 'TuneBox تازہ ترین ہے';

  @override
  String get setChecking => 'نیا ورژن تلاش کیا جا رہا ہے…';
}
