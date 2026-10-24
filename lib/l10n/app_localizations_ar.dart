// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class LAr extends L {
  LAr([String locale = 'ar']) : super(locale);

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navExplore => 'استكشاف';

  @override
  String get navLibrary => 'المكتبة';

  @override
  String get navTaste => 'ذوقك';

  @override
  String get actionDone => 'تم';

  @override
  String get actionCancel => 'إلغاء';

  @override
  String get actionCreate => 'إنشاء';

  @override
  String get actionPlay => 'تشغيل';

  @override
  String get actionShuffle => 'عشوائي';

  @override
  String get actionPlayAll => 'تشغيل الكل';

  @override
  String get actionAdd => 'إضافة';

  @override
  String get actionRemove => 'إزالة';

  @override
  String get actionName => 'الاسم';

  @override
  String get greetingNight => 'ما زلت مستيقظًا؟';

  @override
  String get greetingMorning => 'صباح الخير';

  @override
  String get greetingAfternoon => 'طاب يومك';

  @override
  String get greetingEvening => 'مساء الخير';

  @override
  String get homeBuilding => 'الذكاء الاصطناعي يبني رفوفك…';

  @override
  String get homeOffline => 'بلا اتصال — يتم عرض ما على الجهاز';

  @override
  String get homeNothingYet => 'لا شيء لعرضه بعد';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count رف، حُدّثت للتو',
      many: '$count رفًّا، حُدّثت للتو',
      few: '$count رفوف، حُدّثت للتو',
      two: 'رفّان، حُدّثا للتو',
      one: 'رف واحد، حُدّث للتو',
      zero: 'لا رفوف، حُدّثت للتو',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'إعادة بناء الرفوف';

  @override
  String get homeAddMusic => 'أضف موسيقى من هذا الجهاز';

  @override
  String get homeQuickPicks => 'اختيارات سريعة';

  @override
  String get homeQuickPicksSub => 'عد مباشرة إلى ما كنت تستمع إليه';

  @override
  String get homeEmptyTitle => 'مكتبتك فارغة';

  @override
  String get homeEmptyBody =>
      'ابحث عن شيء ما، أو أضف الموسيقى الموجودة على هذا الجهاز. يبدأ الذكاء الاصطناعي بالتعلّم من أول تشغيل لك.';

  @override
  String get homeAddMyMusic => 'أضف موسيقاي';

  @override
  String homeCouldNotReach(Object error) {
    return 'تعذّر الوصول إلى YouTube: $error';
  }

  @override
  String get moodFocus => 'تركيز';

  @override
  String get moodWorkout => 'تمرين';

  @override
  String get moodChill => 'استرخاء';

  @override
  String get moodCommute => 'تنقّل';

  @override
  String get moodParty => 'حفلة';

  @override
  String moodBuilding(Object mood) {
    return 'جارٍ إنشاء مزيج $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'لم ينجح الأمر: $error';
  }

  @override
  String get shelfRepeat => 'قيد التكرار';

  @override
  String get shelfRepeatSub => 'آخر أسبوعين لك';

  @override
  String get shelfForgotten => 'أغانٍ قديمة منسية أعجبتك';

  @override
  String get shelfForgottenSub => 'أحببتها يومًا، ولم تلمسها منذ فترة';

  @override
  String get shelfNew => 'جديد';

  @override
  String get shelfNewSub => 'مقطوعات جديدة يظن الذكاء الاصطناعي أنها لك';

  @override
  String shelfBecause(Object artist) {
    return 'لأنك استمعت إلى $artist';
  }

  @override
  String get shelfBecauseSub => 'من الزاوية نفسها في ذوقك';

  @override
  String get shelfDeep => 'نادرًا ما لُمست';

  @override
  String get shelfDeepSub => 'في مكتبتك، بالكاد شُغّلت';

  @override
  String get shelfMix => 'مزيجك';

  @override
  String get shelfMixSub => 'يُعاد بناؤه كلما فتحت التطبيق';

  @override
  String get shelfAdded => 'أُضيفت مؤخرًا';

  @override
  String get shelfAddedSub => 'التنزيلات والملفات التي استوردتها';

  @override
  String get shelfStarter => 'ابدأ من هنا';

  @override
  String get shelfStarterSub =>
      'شغّل بعضها ويبدأ الذكاء الاصطناعي بالتعلّم فورًا';

  @override
  String reasonPlays(int count) {
    return '$count تشغيل';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'أعجبتك، آخر تشغيل $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count تشغيل، آخرها $when';
  }

  @override
  String get reasonTopArtist => 'أحد أكثر الفنانين تشغيلًا لديك';

  @override
  String reasonMore(Object artist) {
    return 'المزيد من $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'تعود دائمًا إلى $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'نوعك المفضل من $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'كثير من $tag مؤخرًا';
  }

  @override
  String get reasonOutThisYear => 'صدرت هذا العام';

  @override
  String get reasonReleasedRecently => 'صدرت مؤخرًا';

  @override
  String get reasonClose => 'قريبة مما كنت تشغّله';

  @override
  String reasonNear(Object artist) {
    return 'قريبة من $artist';
  }

  @override
  String get reasonNeverPlayed => 'لم تُشغَّل أبدًا';

  @override
  String get reasonPlayedOnce => 'شُغّلت مرة واحدة';

  @override
  String get reasonPopular => 'رائجة الآن';

  @override
  String whenYearsAgo(int count) {
    return 'منذ $count سنة';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'منذ $count شهرًا';
  }

  @override
  String whenDaysAgo(int count) {
    return 'منذ $count يومًا';
  }

  @override
  String get searchHint => 'أغانٍ، فنانون، ألبومات';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نتيجة',
      many: '$count نتيجة',
      few: '$count نتائج',
      two: 'نتيجتان',
      one: 'نتيجة واحدة',
      zero: 'لا نتائج',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'عمليات البحث الأخيرة';

  @override
  String get searchEmptyTitle => 'لم يُعثر على شيء';

  @override
  String get searchEmptyBody => 'جرّب تهجئة أخرى، أو اسم الفنان وحده.';

  @override
  String get searchStartTitle => 'اعثر على شيء لتشغيله';

  @override
  String get searchStartBody =>
      'ابحث في YouTube Music — تظهر الأغاني فقط، وليس مقاطع فيديو لأشياء أخرى.';

  @override
  String get libPlaylists => 'قوائم التشغيل';

  @override
  String get libSongs => 'الأغاني';

  @override
  String get libArtists => 'الفنانون';

  @override
  String get libLiked => 'المفضلة';

  @override
  String get libDownloads => 'التنزيلات';

  @override
  String get libImported => 'المستوردة';

  @override
  String get libLikedSongs => 'الأغاني المفضلة';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أغنية',
      many: '$count أغنية',
      few: '$count أغانٍ',
      two: 'أغنيتان',
      one: 'أغنية واحدة',
      zero: 'لا أغاني',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count بلا اتصال';
  }

  @override
  String get libMyFiles => 'ملفاتي الخاصة';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ملف',
      many: '$count ملفًا',
      few: '$count ملفات',
      two: 'ملفان',
      one: 'ملف واحد',
      zero: 'لا ملفات',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'قائمة تشغيل جديدة';

  @override
  String get libMakeOne => 'أنشئ واحدة';

  @override
  String get libSortRecent => 'أُضيفت مؤخرًا';

  @override
  String get libSortTitle => 'العنوان';

  @override
  String get libSortArtist => 'الفنان';

  @override
  String get libSortPlays => 'الأكثر تشغيلًا';

  @override
  String get sheetNotForMe => 'ليس لي';

  @override
  String get sheetNotForMeSub => 'لا توصِ بهذا مرة أخرى';

  @override
  String get sheetBlocked => 'محظورة — اضغط للسماح مجددًا';

  @override
  String get sheetBlockedSub => 'يمكن أن تظهر في التوصيات مرة أخرى';

  @override
  String get sheetPlayNext => 'تشغيل التالي';

  @override
  String get sheetAddToPlaylist => 'إضافة إلى قائمة تشغيل';

  @override
  String get sheetDownloaded => 'تم التنزيل';

  @override
  String get sheetRemoveFile => 'اضغط لإزالة الملف';

  @override
  String get sheetDownload => 'تنزيل';

  @override
  String get sheetKeepOffline => 'احتفظ بها للاستخدام بلا اتصال';

  @override
  String get sheetRadio => 'بدء راديو';

  @override
  String get sheetRadioSub => 'قائمة انتظار مبنية حول هذه الأغنية';

  @override
  String get sheetQueue => 'قائمة الانتظار';

  @override
  String get sheetSleepTimer => 'مؤقت النوم';

  @override
  String get sheetSleepOff => 'متوقف';

  @override
  String sheetSleepMinutes(int count) {
    return '$count دقيقة';
  }

  @override
  String get sheetSleepEndOfTrack => 'نهاية هذه الأغنية';

  @override
  String sheetSleepSet(int count) {
    return 'تتوقف الموسيقى بعد $count دقيقة';
  }

  @override
  String get tasteTitle => 'ذوقك';

  @override
  String get tasteRetrain => 'إعادة التدريب';

  @override
  String get tasteRetraining => 'جارٍ إعادة التدريب على سجلّك…';

  @override
  String get tasteRetrained => 'أعاد الذكاء الاصطناعي بناء نموذجه.';

  @override
  String tasteConfidence(int percent) {
    return 'الثقة $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays تشغيل · $skips تخطٍّ · $likes إعجاب';
  }

  @override
  String get tasteEmptySummary => 'شغّل بضع أغانٍ وسيمتلئ هذا.';

  @override
  String get tasteKeepLearning => 'واصل التعلّم أثناء استماعي';

  @override
  String get tasteKeepLearningSub => 'أوقفه لتجميد الملف الحالي';

  @override
  String get tasteDownloadsTitle => 'التنزيلات التي يتولاها الذكاء الاصطناعي';

  @override
  String get tasteDownloadsSub => 'تصل الموسيقى إلى الجهاز دون أن تطلب';

  @override
  String get tasteDownloadLikes => 'نزّل كل ما يعجبني';

  @override
  String get tasteDownloadLikesSub =>
      'اضغط على القلب ويُحفظ الملف للاستخدام بلا اتصال';

  @override
  String get tasteAiInstall =>
      'دع الذكاء الاصطناعي يثبّت الموسيقى التي يختارها';

  @override
  String get tasteAiInstallSub => 'سيجلب المقطوعات التي يثق بها';

  @override
  String get tasteWhatItThinks => 'ما يظن أنه يعجبك';

  @override
  String get tasteWhatItThinksSub =>
      'مستفاد من التشغيل والتخطي والإعجاب والتكرار';

  @override
  String get tasteArtists => 'الفنانون الذين يعتمد عليهم';

  @override
  String get tasteWhenYouListen => 'وقت استماعك';

  @override
  String get tasteWhenYouListenSub =>
      'التشغيلات في كل ساعة — الساعة الحالية لها وزن أكبر';

  @override
  String get tasteDecades => 'العقود';

  @override
  String get tasteTune => 'اضبط التوصيات';

  @override
  String get tasteTuneSub => 'يسري مع التحديث التالي للرئيسية';

  @override
  String get tasteDiscovery => 'الاكتشاف';

  @override
  String get tasteDiscoverySub => 'مألوف ↔ أشياء لم تسمعها من قبل';

  @override
  String get tasteEnergy => 'الطاقة';

  @override
  String get tasteEnergySub => 'هادئ ↔ صاخب';

  @override
  String get tasteRecency => 'الحداثة';

  @override
  String get tasteRecencySub => 'خالد ↔ جديد تمامًا';

  @override
  String get tasteNostalgia => 'الحنين';

  @override
  String get tasteNostalgiaSub => 'إلى أي مدى يُعتبر المفضّل القديم منسيًا';

  @override
  String get tasteSignals => 'الإشارات التي قد يستخدمها';

  @override
  String get tasteSignalsSub => 'كل شيء يبقى على هذا الجهاز';

  @override
  String get tasteUseHistory => 'ما شغّلته';

  @override
  String get tasteUseSkips => 'ما أتخطاه';

  @override
  String get tasteUseTime => 'وقت اليوم';

  @override
  String get tasteUseYouTube => 'اقتراحات من YouTube';

  @override
  String get tasteAlwaysMore => 'المزيد دائمًا من';

  @override
  String get tasteNeverAgain => 'لا مرة أخرى';

  @override
  String get tasteAddArtist => 'أضف فنانًا';

  @override
  String get tasteMoreOfPrompt => 'المزيد دائمًا من…';

  @override
  String get tasteNeverAgainPrompt => 'لا مرة أخرى…';

  @override
  String get tasteReset => 'إعادة ضبط ما تعلّمه';

  @override
  String get tasteResetSub => 'تبقى موسيقاك؛ ويبدأ الملف من الصفر';

  @override
  String get trainCard => 'درّبه بالتقييم';

  @override
  String get trainCardSub =>
      'مرّر عبر أغانٍ حقيقية. يمينًا للمزيد من هذا النوع، ويسارًا لعدم تكراره أبدًا. دقيقتان هنا تفوقان أسبوعًا من الاستماع.';

  @override
  String get trainStart => 'ابدأ جولة تدريب';

  @override
  String get trainTitle => 'جولة تدريب';

  @override
  String get trainQuestion => 'هل تريد هذا في الرئيسية؟';

  @override
  String get trainMoreLikeThis => 'المزيد مثل هذا';

  @override
  String get trainNeverAgain => 'لا مرة أخرى';

  @override
  String get trainDone => 'اكتملت الجولة';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked محفوظة · $blocked محظورة. الثقة $before% ← $after%';
  }

  @override
  String get trainBackToTaste => 'العودة إلى ذوقك';

  @override
  String get trainNothingTitle => 'لا شيء لتقييمه بعد';

  @override
  String get trainNothingBody =>
      'أضف بعض الموسيقى أو دع الذكاء الاصطناعي يجلب مرشحات أولًا، ثم عد.';

  @override
  String get trainLeaveTitle => 'مغادرة جولة التدريب؟';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'إذا غادرت الآن، سيتجاهل الذكاء الاصطناعي كل ما في هذه الجولة — الأغاني الـ$count التي قيّمتها للتو.',
      many:
          'إذا غادرت الآن، سيتجاهل الذكاء الاصطناعي كل ما في هذه الجولة — الأغاني الـ$count التي قيّمتها للتو.',
      few:
          'إذا غادرت الآن، سيتجاهل الذكاء الاصطناعي كل ما في هذه الجولة — الأغاني الـ$count التي قيّمتها للتو.',
      two:
          'إذا غادرت الآن، سيتجاهل الذكاء الاصطناعي كل ما في هذه الجولة — الأغنيتين اللتين قيّمتهما للتو.',
      one:
          'إذا غادرت الآن، سيتجاهل الذكاء الاصطناعي كل ما في هذه الجولة — الأغنية الواحدة التي قيّمتها للتو.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'متابعة التدريب';

  @override
  String get trainDiscard => 'تجاهل ومغادرة';

  @override
  String get setTitle => 'الإعدادات';

  @override
  String get setAppearance => 'المظهر';

  @override
  String get setTheme => 'السمة';

  @override
  String get setThemeSystem => 'اتباع النظام';

  @override
  String get setThemeLight => 'فاتح';

  @override
  String get setThemeDark => 'داكن';

  @override
  String get setPureBlack => 'أسود خالص';

  @override
  String get setPureBlackSub => 'يوفّر الطاقة على شاشات OLED';

  @override
  String get setAccent => 'لون التمييز';

  @override
  String get setAccentArtwork => 'من غلاف الألبوم';

  @override
  String get setAccentFixed => 'لون واحد اخترته';

  @override
  String get setLanguage => 'اللغة';

  @override
  String get setLanguageSystem => 'اتباع النظام';

  @override
  String get setAccessibility => 'إمكانية الوصول';

  @override
  String get setTextSize => 'حجم النص';

  @override
  String get setTextSizeSub => 'فوق إعدادات النظام لديك';

  @override
  String get setReduceMotion => 'تقليل الحركة';

  @override
  String get setReduceMotionSub =>
      'يوقف الأشرطة والمرئيات والتمرير المرتد والنقرات النابضة وانتقالات الصفحات';

  @override
  String get setHighContrast => 'تباين عالٍ';

  @override
  String get setHighContrastSub => 'فصل أقوى وحدود ظاهرة';

  @override
  String get setBoldText => 'نص غامق';

  @override
  String get setPlayback => 'التشغيل';

  @override
  String get setAutoRadio => 'أبقِ الموسيقى مستمرة';

  @override
  String get setAutoRadioSub =>
      'عند انتهاء قائمة الانتظار، تابع براديو مبني من الأغنية الأخيرة';

  @override
  String get setSmartShuffle => 'خلط ذكي';

  @override
  String get setSmartShuffleSub => 'يخلط بحسب الذوق بدلًا من العشوائية';

  @override
  String get setResume => 'المتابعة من حيث توقفت';

  @override
  String get setResumeSub =>
      'يستعيد قائمة الانتظار عند فتح التطبيق، متوقفة مؤقتًا';

  @override
  String get setDataSaver => 'توفير البيانات خارج Wi-Fi';

  @override
  String get setDataSaverSub =>
      'يحدّ البث والتنزيلات بـ 128 كيلوبت/ث على بيانات الجوال';

  @override
  String get setHaptics => 'الاستجابة اللمسية';

  @override
  String get setShowReasons => 'إظهار سبب التوصية';

  @override
  String get setSkipSilence => 'تخطي الصمت';

  @override
  String get setQuality => 'جودة الصوت';

  @override
  String get setQualityLow => 'منخفضة · 64 كيلوبت/ث';

  @override
  String get setQualityNormal => 'عادية · 128 كيلوبت/ث';

  @override
  String get setQualityHigh => 'عالية · 192 كيلوبت/ث';

  @override
  String get setQualityBest => 'الأفضل المتاح';

  @override
  String get setStorage => 'التنزيلات والتخزين';

  @override
  String get setWifiOnly => 'التنزيل عبر Wi-Fi فقط';

  @override
  String get setDailyLimit => 'الحد اليومي للذكاء الاصطناعي';

  @override
  String setDailyLimitSub(int count) {
    return '$count أغنية في اليوم';
  }

  @override
  String get setBudget => 'المساحة التي قد يستخدمها الذكاء الاصطناعي';

  @override
  String setUsed(Object size) {
    return '$size مستخدمة للتنزيلات';
  }

  @override
  String get setYourMusic => 'موسيقاك';

  @override
  String get setImport => 'أضف موسيقى من هذا الجهاز';

  @override
  String get setImportSub => 'اختر مجلدات أو ملفات فردية';

  @override
  String get setCleanup => 'تنظيف الملفات المفقودة';

  @override
  String get setCleanupSub => 'إزالة الأغاني التي فُقد ملفها';

  @override
  String setCleanupDone(int count) {
    return 'تمت إزالة $count من الملفات المفقودة.';
  }

  @override
  String get setExport => 'أرسل ذوقي إلى جهاز آخر';

  @override
  String get setExportSub =>
      'يحفظ ملفًا يضم إعجاباتك وتشغيلاتك وكل ما تعلّمه الذكاء الاصطناعي';

  @override
  String get setImportTaste => 'حمّل الذوق من جهاز آخر';

  @override
  String get setImportTasteSub => 'اختر ملف ذوق محفوظًا وادمجه — آمن للتكرار';

  @override
  String get setAbout => 'حول';

  @override
  String get setAboutBody =>
      'موسيقى من YouTube وملفاتك الخاصة. يعمل الذكاء الاصطناعي بالكامل على هذا الجهاز — لا شيء يغادره.';

  @override
  String get setSource => 'الشيفرة المصدرية';

  @override
  String get importTitle => 'إضافة موسيقى';

  @override
  String get importPickFolder => 'اختر مجلدًا';

  @override
  String get importPickFiles => 'اختر ملفات';

  @override
  String importScanning(Object file) {
    return 'جارٍ فحص $file';
  }

  @override
  String importAdded(int count) {
    return 'أُضيف $count';
  }

  @override
  String get importDenied => 'تم رفض الإذن — تعذّرت قراءة موسيقاك.';

  @override
  String get importWatched => 'المجلدات التي يراقبها';

  @override
  String get importIosHint =>
      'افتح تطبيق الملفات، وانتقل إلى على iPhone ← TuneBox، وضع الموسيقى هناك.';

  @override
  String get playerQueue => 'قائمة الانتظار';

  @override
  String get playerUpNext => 'التالي';

  @override
  String get playerLyrics => 'الكلمات';

  @override
  String get playerNoLyrics => 'لا توجد كلمات لهذه الأغنية.';

  @override
  String get playerRepeat => 'تكرار';

  @override
  String get playerShuffle => 'عشوائي';

  @override
  String errorPlayback(Object title) {
    return 'تعذّر تشغيل \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'يتم تخطي \"$title\" — تعذّر فتح البث.';
  }

  @override
  String get undo => 'تراجع';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'الآن: $tags، بقيادة $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'الآن: $tags.';
  }

  @override
  String get setColour => 'اللون';

  @override
  String get setColourSub => 'يتبع التطبيق كله هذا اللون';

  @override
  String get setCoverArt => 'غلاف الألبوم';

  @override
  String get setMyColour => 'لوني';

  @override
  String get setCoverArtSub => 'كل أغنية تعيد تلوين التطبيق من غلافها.';

  @override
  String get setMyColourSub => 'لون واحد، في كل مكان، طوال الوقت.';

  @override
  String get setPickColour => 'اختر أي لون';

  @override
  String get setWifiOnlyTitle => 'التنزيل عبر Wi-Fi فقط';

  @override
  String get setDownloadLikes => 'نزّل كل ما يعجبني';

  @override
  String get setDownloadLikesSub => 'زر القلب يحفظ الملف أيضًا';

  @override
  String get setAiInstall => 'دع الذكاء الاصطناعي يثبّت الموسيقى التي يختارها';

  @override
  String get setSkipSilenceSub =>
      'لأندرويد فقط. قد يقطع المقدمات الهادئة والتلاشي والأجزاء الخافتة — أبقه متوقفًا إذا كانت الموسيقى تتقطع';

  @override
  String get setStorageUsed => 'المساحة المستخدمة للتنزيلات';

  @override
  String get setLibrary => 'المكتبة';

  @override
  String get setUpdates => 'التحديثات';

  @override
  String get setAutoUpdate => 'التحقق من التحديثات تلقائيًا';

  @override
  String get setAutoUpdateSub =>
      'كل بضع ساعات، بهدوء، ويُنزَّل عبر Wi-Fi. التثبيت يطلب موافقتك دائمًا.';

  @override
  String setUpdateReady(Object version) {
    return 'التحديث إلى $version جاهز';
  }

  @override
  String get setUpdateReadySub => 'تم التنزيل — اضغط للتثبيت';

  @override
  String get setUpdateAvailableSub =>
      'احصل عليه من صفحة الإصدارات — اضغط لنسخ الرابط';

  @override
  String get setLinkCopied => 'تم نسخ الرابط';

  @override
  String get setCheckNow => 'تحقق الآن';

  @override
  String get setUpToDate => 'TuneBox محدَّث';

  @override
  String get setChecking => 'جارٍ البحث عن إصدار أحدث…';

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
