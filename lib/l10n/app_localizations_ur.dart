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

  @override
  String addedToPlaylist(String name) {
    return 'Added to \"$name\"';
  }
}
