// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class LFa extends L {
  LFa([String locale = 'fa']) : super(locale);

  @override
  String get navHome => 'خانه';

  @override
  String get navExplore => 'کاوش';

  @override
  String get navLibrary => 'کتابخانه';

  @override
  String get navTaste => 'سلیقه شما';

  @override
  String get actionDone => 'تمام';

  @override
  String get actionCancel => 'لغو';

  @override
  String get actionCreate => 'ایجاد';

  @override
  String get actionPlay => 'پخش';

  @override
  String get actionShuffle => 'تصادفی';

  @override
  String get actionPlayAll => 'پخش همه';

  @override
  String get actionAdd => 'افزودن';

  @override
  String get actionRemove => 'حذف';

  @override
  String get actionName => 'نام';

  @override
  String get greetingNight => 'هنوز بیداری؟';

  @override
  String get greetingMorning => 'صبح بخیر';

  @override
  String get greetingAfternoon => 'ظهر بخیر';

  @override
  String get greetingEvening => 'عصر بخیر';

  @override
  String get homeBuilding => 'هوش مصنوعی در حال چیدن قفسه‌های شماست…';

  @override
  String get homeOffline => 'آفلاین — آنچه روی دستگاه است نمایش داده می‌شود';

  @override
  String get homeNothingYet => 'هنوز چیزی برای نمایش نیست';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قفسه، همین حالا به‌روز شد',
      one: '۱ قفسه، همین حالا به‌روز شد',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'چیدن دوباره قفسه‌ها';

  @override
  String get homeAddMusic => 'افزودن موسیقی از این دستگاه';

  @override
  String get homeQuickPicks => 'انتخاب‌های سریع';

  @override
  String get homeQuickPicksSub => 'مستقیم برگردید به همان جایی که بودید';

  @override
  String get homeEmptyTitle => 'کتابخانه شما خالی است';

  @override
  String get homeEmptyBody =>
      'چیزی جست‌وجو کنید یا موسیقی‌ای را که از قبل روی این دستگاه است اضافه کنید. هوش مصنوعی از همان اولین پخش شما یاد گرفتن را شروع می‌کند.';

  @override
  String get homeAddMyMusic => 'افزودن موسیقی من';

  @override
  String homeCouldNotReach(Object error) {
    return 'اتصال به یوتیوب ممکن نشد: $error';
  }

  @override
  String get moodFocus => 'تمرکز';

  @override
  String get moodWorkout => 'ورزش';

  @override
  String get moodChill => 'آرامش';

  @override
  String get moodCommute => 'مسیر رفت‌وآمد';

  @override
  String get moodParty => 'مهمانی';

  @override
  String moodBuilding(Object mood) {
    return 'در حال ساخت میکس $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'نشد: $error';
  }

  @override
  String get shelfRepeat => 'تکرار شده';

  @override
  String get shelfRepeatSub => 'دو هفته اخیر شما';

  @override
  String get shelfForgotten => 'آهنگ‌های قدیمی فراموش‌شده‌ای که دوست داشتید';

  @override
  String get shelfForgottenSub => 'روزی محبوب بودند، مدتی است دست‌نخورده‌اند';

  @override
  String get shelfNew => 'جدید';

  @override
  String get shelfNewSub =>
      'آهنگ‌های تازه‌ای که هوش مصنوعی فکر می‌کند برای شماست';

  @override
  String shelfBecause(Object artist) {
    return 'چون $artist را گوش دادید';
  }

  @override
  String get shelfBecauseSub => 'از همان گوشه سلیقه شما';

  @override
  String get shelfDeep => 'تقریباً دست‌نخورده';

  @override
  String get shelfDeepSub => 'در کتابخانه شما هست، اما به‌ندرت پخش شده';

  @override
  String get shelfMix => 'میکس شما';

  @override
  String get shelfMixSub =>
      'هر بار که برنامه را باز می‌کنید دوباره ساخته می‌شود';

  @override
  String get shelfAdded => 'تازه اضافه‌شده';

  @override
  String get shelfAddedSub => 'دانلودها و فایل‌هایی که وارد کردید';

  @override
  String get shelfStarter => 'از اینجا شروع کنید';

  @override
  String get shelfStarterSub =>
      'چند تا پخش کنید تا هوش مصنوعی فوراً شروع به یادگیری کند';

  @override
  String reasonPlays(int count) {
    return '$count بار پخش';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'پسندیده‌اید، آخرین پخش $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count بار پخش، آخرین بار $when';
  }

  @override
  String get reasonTopArtist => 'یکی از پرپخش‌ترین هنرمندان شما';

  @override
  String reasonMore(Object artist) {
    return 'بیشتر از $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'مدام به $artist برمی‌گردید';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'از نوع مورد علاقه شما: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'اخیراً زیاد $tag';
  }

  @override
  String get reasonOutThisYear => 'منتشرشده در امسال';

  @override
  String get reasonReleasedRecently => 'اخیراً منتشر شده';

  @override
  String get reasonClose => 'نزدیک به آنچه گوش می‌دادید';

  @override
  String reasonNear(Object artist) {
    return 'نزدیک به $artist';
  }

  @override
  String get reasonNeverPlayed => 'هرگز پخش نشده';

  @override
  String get reasonPlayedOnce => 'یک بار پخش شده';

  @override
  String get reasonPopular => 'همین حالا محبوب';

  @override
  String whenYearsAgo(int count) {
    return '$count سال پیش';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ماه پیش';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count روز پیش';
  }

  @override
  String get searchHint => 'آهنگ، هنرمند، آلبوم';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نتیجه',
      one: '۱ نتیجه',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'جست‌وجوهای اخیر';

  @override
  String get searchEmptyTitle => 'چیزی پیدا نشد';

  @override
  String get searchEmptyBody =>
      'املای دیگری را امتحان کنید، یا فقط نام هنرمند را بنویسید.';

  @override
  String get searchStartTitle => 'چیزی برای پخش پیدا کنید';

  @override
  String get searchStartBody =>
      'در یوتیوب موزیک جست‌وجو کنید — فقط آهنگ نمایش داده می‌شود، نه ویدیوهای دیگر.';

  @override
  String get libPlaylists => 'فهرست‌های پخش';

  @override
  String get libSongs => 'آهنگ‌ها';

  @override
  String get libArtists => 'هنرمندان';

  @override
  String get libLiked => 'پسندیده‌ها';

  @override
  String get libDownloads => 'دانلودها';

  @override
  String get libImported => 'واردشده';

  @override
  String get libLikedSongs => 'آهنگ‌های پسندیده';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آهنگ',
      one: '۱ آهنگ',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count آفلاین';
  }

  @override
  String get libMyFiles => 'فایل‌های خودم';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count فایل',
      one: '۱ فایل',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'فهرست پخش جدید';

  @override
  String get libMakeOne => 'یکی بسازید';

  @override
  String get libSortRecent => 'تازه اضافه‌شده';

  @override
  String get libSortTitle => 'عنوان';

  @override
  String get libSortArtist => 'هنرمند';

  @override
  String get libSortPlays => 'پرپخش‌ترین';

  @override
  String get sheetNotForMe => 'به درد من نمی‌خورد';

  @override
  String get sheetNotForMeSub => 'دیگر هرگز این را پیشنهاد نده';

  @override
  String get sheetBlocked => 'مسدود شده — برای اجازه دوباره بزنید';

  @override
  String get sheetBlockedSub => 'دوباره می‌تواند در پیشنهادها دیده شود';

  @override
  String get sheetPlayNext => 'پخش بعدی';

  @override
  String get sheetAddToPlaylist => 'افزودن به فهرست پخش';

  @override
  String get sheetDownloaded => 'دانلود شد';

  @override
  String get sheetRemoveFile => 'برای حذف فایل بزنید';

  @override
  String get sheetDownload => 'دانلود';

  @override
  String get sheetKeepOffline => 'نگه‌داری برای حالت آفلاین';

  @override
  String get sheetRadio => 'شروع رادیو';

  @override
  String get sheetRadioSub => 'صفی که حول این آهنگ ساخته می‌شود';

  @override
  String get sheetQueue => 'صف پخش';

  @override
  String get sheetSleepTimer => 'زمان‌سنج خواب';

  @override
  String get sheetSleepOff => 'خاموش';

  @override
  String sheetSleepMinutes(int count) {
    return '$count دقیقه';
  }

  @override
  String get sheetSleepEndOfTrack => 'پایان این آهنگ';

  @override
  String sheetSleepSet(int count) {
    return 'موسیقی تا $count دقیقه دیگر متوقف می‌شود';
  }

  @override
  String get tasteTitle => 'سلیقه شما';

  @override
  String get tasteRetrain => 'آموزش دوباره';

  @override
  String get tasteRetraining => 'در حال آموزش دوباره بر پایه تاریخچه شما…';

  @override
  String get tasteRetrained => 'هوش مصنوعی مدلش را دوباره ساخت.';

  @override
  String tasteConfidence(int percent) {
    return 'اطمینان $percent٪';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays پخش · $skips رد کردن · $likes پسند';
  }

  @override
  String get tasteEmptySummary => 'چند آهنگ پخش کنید تا اینجا پر شود.';

  @override
  String get tasteKeepLearning => 'هنگام گوش دادن یاد بگیر';

  @override
  String get tasteKeepLearningSub =>
      'برای ثابت نگه داشتن نمایه فعلی خاموش کنید';

  @override
  String get tasteDownloadsTitle => 'دانلودهایی که هوش مصنوعی انجام می‌دهد';

  @override
  String get tasteDownloadsSub => 'موسیقی بدون درخواست شما روی دستگاه می‌نشیند';

  @override
  String get tasteDownloadLikes => 'هر چه می‌پسندم دانلود کن';

  @override
  String get tasteDownloadLikesSub =>
      'قلب را بزنید تا فایل برای حالت آفلاین ذخیره شود';

  @override
  String get tasteAiInstall => 'بگذار هوش مصنوعی موسیقی انتخابی‌اش را نصب کند';

  @override
  String get tasteAiInstallSub =>
      'آهنگ‌هایی را که از آن‌ها مطمئن است دریافت می‌کند';

  @override
  String get tasteWhatItThinks => 'چه چیزی را دوست دارید به نظر او';

  @override
  String get tasteWhatItThinksSub =>
      'آموخته‌شده از پخش‌ها، ردکردن‌ها، پسندها و تکرارها';

  @override
  String get tasteArtists => 'هنرمندانی که به آن‌ها تکیه می‌کند';

  @override
  String get tasteWhenYouListen => 'چه زمانی گوش می‌دهید';

  @override
  String get tasteWhenYouListenSub =>
      'پخش در هر ساعت — ساعت فعلی وزن بیشتری می‌گیرد';

  @override
  String get tasteDecades => 'دهه‌ها';

  @override
  String get tasteTune => 'تنظیم پیشنهادها';

  @override
  String get tasteTuneSub => 'از به‌روزرسانی بعدی خانه اعمال می‌شود';

  @override
  String get tasteDiscovery => 'کشف';

  @override
  String get tasteDiscoverySub => 'آشنا ↔ چیزهایی که هرگز نشنیده‌اید';

  @override
  String get tasteEnergy => 'انرژی';

  @override
  String get tasteEnergySub => 'آرام ↔ بلند';

  @override
  String get tasteRecency => 'تازگی';

  @override
  String get tasteRecencySub => 'همیشگی ↔ کاملاً نو';

  @override
  String get tasteNostalgia => 'نوستالژی';

  @override
  String get tasteNostalgiaSub =>
      'یک آهنگ محبوب قدیمی از چه زمانی فراموش‌شده حساب شود';

  @override
  String get tasteSignals => 'سیگنال‌هایی که می‌تواند استفاده کند';

  @override
  String get tasteSignalsSub => 'همه‌چیز روی همین دستگاه می‌ماند';

  @override
  String get tasteUseHistory => 'آنچه پخش کرده‌ام';

  @override
  String get tasteUseSkips => 'آنچه رد می‌کنم';

  @override
  String get tasteUseTime => 'ساعت روز';

  @override
  String get tasteUseYouTube => 'پیشنهادهای یوتیوب';

  @override
  String get tasteAlwaysMore => 'همیشه بیشتر از';

  @override
  String get tasteNeverAgain => 'دیگر هرگز';

  @override
  String get tasteAddArtist => 'افزودن هنرمند';

  @override
  String get tasteMoreOfPrompt => 'همیشه بیشتر از…';

  @override
  String get tasteNeverAgainPrompt => 'دیگر هرگز…';

  @override
  String get tasteReset => 'پاک کردن آموخته‌ها';

  @override
  String get tasteResetSub => 'موسیقی شما می‌ماند؛ نمایه از صفر شروع می‌شود';

  @override
  String get trainCard => 'با امتیاز دادن آموزش دهید';

  @override
  String get trainCardSub =>
      'آهنگ‌های واقعی را ورق بزنید. راست برای بیشتر از این، چپ برای دیگر هرگز. دو دقیقه اینجا از یک هفته گوش دادن بهتر است.';

  @override
  String get trainStart => 'شروع دور آموزشی';

  @override
  String get trainTitle => 'دور آموزشی';

  @override
  String get trainQuestion => 'می‌خواهید این در خانه‌تان باشد؟';

  @override
  String get trainMoreLikeThis => 'بیشتر از این';

  @override
  String get trainNeverAgain => 'دیگر هرگز';

  @override
  String get trainDone => 'دور تمام شد';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked نگه داشته شد · $blocked مسدود شد. اطمینان $before٪ ← $after٪';
  }

  @override
  String get trainBackToTaste => 'بازگشت به سلیقه شما';

  @override
  String get trainNothingTitle => 'هنوز چیزی برای امتیاز دادن نیست';

  @override
  String get trainNothingBody =>
      'ابتدا موسیقی اضافه کنید یا بگذارید هوش مصنوعی گزینه‌هایی بیاورد، بعد برگردید.';

  @override
  String get trainLeaveTitle => 'از دور آموزشی خارج می‌شوید؟';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'اگر الان بروید، هوش مصنوعی همه‌چیز این دور را کنار می‌گذارد — هر $count آهنگی که امتیاز دادید.',
      one:
          'اگر الان بروید، هوش مصنوعی همه‌چیز این دور را کنار می‌گذارد — همان ۱ آهنگی که امتیاز دادید.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'ادامه آموزش';

  @override
  String get trainDiscard => 'دور بینداز و خارج شو';

  @override
  String get setTitle => 'تنظیمات';

  @override
  String get setAppearance => 'ظاهر';

  @override
  String get setTheme => 'زمینه';

  @override
  String get setThemeSystem => 'پیروی از سیستم';

  @override
  String get setThemeLight => 'روشن';

  @override
  String get setThemeDark => 'تیره';

  @override
  String get setPureBlack => 'مشکی خالص';

  @override
  String get setPureBlackSub => 'در صفحه OLED مصرف برق را کم می‌کند';

  @override
  String get setAccent => 'رنگ تأکید';

  @override
  String get setAccentArtwork => 'از روی جلد';

  @override
  String get setAccentFixed => 'یک رنگ که خودم انتخاب کردم';

  @override
  String get setLanguage => 'زبان';

  @override
  String get setLanguageSystem => 'پیروی از سیستم';

  @override
  String get setAccessibility => 'دسترس‌پذیری';

  @override
  String get setTextSize => 'اندازه متن';

  @override
  String get setTextSizeSub => 'علاوه بر تنظیم سیستم شما';

  @override
  String get setReduceMotion => 'کاهش حرکت';

  @override
  String get setReduceMotionSub =>
      'میله‌ها، نمایشگر موج، اسکرول فنری، ضربه‌های فنری و انتقال صفحه‌ها را متوقف می‌کند';

  @override
  String get setHighContrast => 'کنتراست بالا';

  @override
  String get setHighContrastSub => 'تفکیک قوی‌تر و حاشیه‌های مرئی';

  @override
  String get setBoldText => 'متن درشت';

  @override
  String get setPlayback => 'پخش';

  @override
  String get setAutoRadio => 'موسیقی را ادامه بده';

  @override
  String get setAutoRadioSub =>
      'وقتی صف تمام شد، با رادیویی که از آخرین آهنگ ساخته می‌شود ادامه بده';

  @override
  String get setSmartShuffle => 'پخش تصادفی هوشمند';

  @override
  String get setSmartShuffleSub => 'به‌جای تصادفی، بر اساس سلیقه پخش می‌کند';

  @override
  String get setResume => 'از جایی که ماندم ادامه بده';

  @override
  String get setResumeSub =>
      'هنگام باز شدن برنامه صف را به‌صورت متوقف‌شده بازیابی می‌کند';

  @override
  String get setDataSaver => 'صرفه‌جویی داده خارج از وای‌فای';

  @override
  String get setDataSaverSub =>
      'پخش و دانلود را روی اینترنت همراه به ۱۲۸ کیلوبیت بر ثانیه محدود می‌کند';

  @override
  String get setHaptics => 'بازخورد لمسی';

  @override
  String get setShowReasons => 'نمایش دلیل پیشنهاد شدن';

  @override
  String get setSkipSilence => 'رد کردن سکوت';

  @override
  String get setQuality => 'کیفیت صدا';

  @override
  String get setQualityLow => 'پایین · ۶۴ کیلوبیت بر ثانیه';

  @override
  String get setQualityNormal => 'معمولی · ۱۲۸ کیلوبیت بر ثانیه';

  @override
  String get setQualityHigh => 'بالا · ۱۹۲ کیلوبیت بر ثانیه';

  @override
  String get setQualityBest => 'بهترین موجود';

  @override
  String get setStorage => 'دانلودها و فضای ذخیره‌سازی';

  @override
  String get setWifiOnly => 'فقط با وای‌فای دانلود کن';

  @override
  String get setDailyLimit => 'سقف روزانه برای هوش مصنوعی';

  @override
  String setDailyLimitSub(int count) {
    return '$count آهنگ در روز';
  }

  @override
  String get setBudget => 'فضایی که هوش مصنوعی می‌تواند استفاده کند';

  @override
  String setUsed(Object size) {
    return '$size توسط دانلودها استفاده شده';
  }

  @override
  String get setYourMusic => 'موسیقی شما';

  @override
  String get setImport => 'افزودن موسیقی از این دستگاه';

  @override
  String get setImportSub => 'پوشه یا فایل‌های تکی را انتخاب کنید';

  @override
  String get setCleanup => 'پاکسازی فایل‌های گم‌شده';

  @override
  String get setCleanupSub => 'آهنگ‌هایی که فایلشان نیست حذف شوند';

  @override
  String setCleanupDone(int count) {
    return '$count فایل گم‌شده حذف شد.';
  }

  @override
  String get setExport => 'ارسال سلیقه من به دستگاه دیگر';

  @override
  String get setExportSub =>
      'فایلی با پسندها، پخش‌ها و هر چه هوش مصنوعی آموخته ذخیره می‌کند';

  @override
  String get setImportTaste => 'بارگذاری سلیقه از دستگاه دیگر';

  @override
  String get setImportTasteSub =>
      'یک فایل سلیقه ذخیره‌شده را انتخاب و ادغام کنید — تکرارش بی‌خطر است';

  @override
  String get setAbout => 'درباره';

  @override
  String get setAboutBody =>
      'موسیقی از یوتیوب و فایل‌های خودتان. هوش مصنوعی کاملاً روی همین دستگاه اجرا می‌شود — هیچ‌چیز از آن بیرون نمی‌رود.';

  @override
  String get setSource => 'کد منبع';

  @override
  String get importTitle => 'افزودن موسیقی';

  @override
  String get importPickFolder => 'انتخاب پوشه';

  @override
  String get importPickFiles => 'انتخاب فایل‌ها';

  @override
  String importScanning(Object file) {
    return 'در حال اسکن $file';
  }

  @override
  String importAdded(int count) {
    return '$count اضافه شد';
  }

  @override
  String get importDenied => 'دسترسی رد شد — خواندن موسیقی شما ممکن نیست.';

  @override
  String get importWatched => 'پوشه‌هایی که زیر نظر دارد';

  @override
  String get importIosHint =>
      'برنامه Files را باز کنید، به On My iPhone ← TuneBox بروید و موسیقی را همان‌جا بیندازید.';

  @override
  String get playerQueue => 'صف پخش';

  @override
  String get playerUpNext => 'بعدی';

  @override
  String get playerLyrics => 'متن آهنگ';

  @override
  String get playerNoLyrics => 'برای این آهنگ متنی نیست.';

  @override
  String get playerRepeat => 'تکرار';

  @override
  String get playerShuffle => 'تصادفی';

  @override
  String errorPlayback(Object title) {
    return '«$title» پخش نشد';
  }

  @override
  String errorSkipping(Object title) {
    return '«$title» رد شد — جریان باز نشد.';
  }

  @override
  String get undo => 'واگرد';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'همین حالا: $tags، با پیشتازی $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'همین حالا: $tags.';
  }

  @override
  String get setColour => 'رنگ';

  @override
  String get setColourSub => 'کل برنامه از این پیروی می‌کند';

  @override
  String get setCoverArt => 'تصویر جلد';

  @override
  String get setMyColour => 'رنگ من';

  @override
  String get setCoverArtSub => 'هر آهنگ برنامه را با رنگ جلدش تغییر می‌دهد.';

  @override
  String get setMyColourSub => 'یک رنگ، همه‌جا، همیشه.';

  @override
  String get setPickColour => 'هر رنگی را انتخاب کنید';

  @override
  String get setWifiOnlyTitle => 'فقط با وای‌فای دانلود کن';

  @override
  String get setDownloadLikes => 'هر چه می‌پسندم دانلود کن';

  @override
  String get setDownloadLikesSub => 'دکمه قلب فایل را هم ذخیره می‌کند';

  @override
  String get setAiInstall => 'بگذار هوش مصنوعی موسیقی انتخابی‌اش را نصب کند';

  @override
  String get setSkipSilenceSub =>
      'فقط اندروید. ممکن است مقدمه‌های آرام، محو شدن‌ها و بخش‌های ملایم را ببُرد — اگر موسیقی می‌پرد خاموش بگذارید';

  @override
  String get setStorageUsed => 'فضای استفاده‌شده توسط دانلودها';

  @override
  String get setLibrary => 'کتابخانه';

  @override
  String get setUpdates => 'به‌روزرسانی‌ها';

  @override
  String get setAutoUpdate => 'خودکار به‌روزرسانی را بررسی کن';

  @override
  String get setAutoUpdateSub =>
      'هر چند ساعت یک‌بار، بی‌صدا، و با وای‌فای دانلود می‌کند. نصب همچنان از شما می‌پرسد.';

  @override
  String setUpdateReady(Object version) {
    return 'به‌روزرسانی به $version آماده است';
  }

  @override
  String get setUpdateReadySub => 'دانلود شد — برای نصب بزنید';

  @override
  String get setUpdateAvailableSub =>
      'از صفحه نسخه‌ها بگیرید — برای کپی پیوند بزنید';

  @override
  String get setLinkCopied => 'پیوند کپی شد';

  @override
  String get setCheckNow => 'بررسی کن';

  @override
  String get setUpToDate => 'TuneBox به‌روز است';

  @override
  String get setChecking => 'در حال جست‌وجوی نسخه جدیدتر…';

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
