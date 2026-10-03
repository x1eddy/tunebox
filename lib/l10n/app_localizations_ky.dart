// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class LKy extends L {
  LKy([String locale = 'ky']) : super(locale);

  @override
  String get navHome => 'Башкы бет';

  @override
  String get navExplore => 'Изилдөө';

  @override
  String get navLibrary => 'Китепкана';

  @override
  String get navTaste => 'Сенин табитиң';

  @override
  String get actionDone => 'Даяр';

  @override
  String get actionCancel => 'Жокко чыгаруу';

  @override
  String get actionCreate => 'Түзүү';

  @override
  String get actionPlay => 'Ойнотуу';

  @override
  String get actionShuffle => 'Аралаштыруу';

  @override
  String get actionPlayAll => 'Баарын ойнотуу';

  @override
  String get actionAdd => 'Кошуу';

  @override
  String get actionRemove => 'Өчүрүү';

  @override
  String get actionName => 'Аталышы';

  @override
  String get greetingNight => 'Дагы уктай элексизби?';

  @override
  String get greetingMorning => 'Кутмандуу таң';

  @override
  String get greetingAfternoon => 'Кутмандуу күн';

  @override
  String get greetingEvening => 'Кутмандуу кеч';

  @override
  String get homeBuilding => 'ЖИ текчелериңизди түзүп жатат…';

  @override
  String get homeOffline => 'Оффлайн — түзмөктөгү нерселер көрсөтүлүүдө';

  @override
  String get homeNothingYet => 'Азырынча көрсөтө турган эч нерсе жок';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count текче, жаңы эле жаңыртылды',
      one: '$count текче, жаңы эле жаңыртылды',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Текчелерди кайра түзүү';

  @override
  String get homeAddMusic => 'Бул түзмөктөн музыка кошуу';

  @override
  String get homeQuickPicks => 'Тез тандоо';

  @override
  String get homeQuickPicksSub => 'Уккан музыкаңызга түз кайтыңыз';

  @override
  String get homeEmptyTitle => 'Китепканаңыз бош';

  @override
  String get homeEmptyBody =>
      'Бир нерсе издеңиз же бул түзмөктө бар музыканы кошуңуз. ЖИ эң биринчи ойнотуудан тартып үйрөнө баштайт.';

  @override
  String get homeAddMyMusic => 'Музыкамды кошуу';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube менен байланышуу мүмкүн болгон жок: $error';
  }

  @override
  String get moodFocus => 'Топтолуу';

  @override
  String get moodWorkout => 'Көнүгүү';

  @override
  String get moodChill => 'Эс алуу';

  @override
  String get moodCommute => 'Жолдо';

  @override
  String get moodParty => 'Кече';

  @override
  String moodBuilding(Object mood) {
    return '$mood миксин түзүп жатат…';
  }

  @override
  String moodFailed(Object error) {
    return 'Болбой калды: $error';
  }

  @override
  String get shelfRepeat => 'Кайра-кайра';

  @override
  String get shelfRepeatSub => 'Акыркы эки жумаңыз';

  @override
  String get shelfForgotten => 'Жактырып, унутуп калган эски хиттер';

  @override
  String get shelfForgottenSub =>
      'Бир кезде жакчу, бир топ убакыттан бери уккан жоксуз';

  @override
  String get shelfNew => 'Жаңы';

  @override
  String get shelfNewSub => 'ЖИ сизге жагат деп ойлогон жаңы ырлар';

  @override
  String shelfBecause(Object artist) {
    return '$artist уккандыктан';
  }

  @override
  String get shelfBecauseSub => 'Табитиңиздин ушул эле бурчунан';

  @override
  String get shelfDeep => 'Дээрлик уккан жоксуз';

  @override
  String get shelfDeepSub =>
      'Китепканаңызда бар, бирок дээрлик ойнотулган эмес';

  @override
  String get shelfMix => 'Сиздин микс';

  @override
  String get shelfMixSub => 'Колдонмону ачкан сайын кайра түзүлөт';

  @override
  String get shelfAdded => 'Жакында кошулган';

  @override
  String get shelfAddedSub => 'Жүктөлүп алынгандар жана импорттолгон файлдар';

  @override
  String get shelfStarter => 'Ушул жерден баштаңыз';

  @override
  String get shelfStarterSub =>
      'Бир нече ыр ойнотсоңуз, ЖИ дароо үйрөнө баштайт';

  @override
  String reasonPlays(int count) {
    return '$count жолу ойнотулду';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Жактырылган, акыркы жолу $when ойнотулган';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count жолу ойнотулган, акыркысы $when';
  }

  @override
  String get reasonTopArtist => 'Эң көп уккан аткаруучуларыңыздын бири';

  @override
  String reasonMore(Object artist) {
    return '$artist дагы';
  }

  @override
  String reasonComeBack(Object artist) {
    return '$artist угуп кайра-кайра кайтасыз';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Сиздин жанрыңыз: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Акыркы убакта $tag көп угасыз';
  }

  @override
  String get reasonOutThisYear => 'Ушул жылы чыккан';

  @override
  String get reasonReleasedRecently => 'Жакында чыккан';

  @override
  String get reasonClose => 'Акыркы убакта уккан музыкаңызга жакын';

  @override
  String reasonNear(Object artist) {
    return '$artist менен окшош';
  }

  @override
  String get reasonNeverPlayed => 'Эч качан ойнотулган эмес';

  @override
  String get reasonPlayedOnce => 'Бир жолу ойнотулган';

  @override
  String get reasonPopular => 'Азыр популярдуу';

  @override
  String whenYearsAgo(int count) {
    return '$count жыл мурун';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ай мурун';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count күн мурун';
  }

  @override
  String get searchHint => 'Ырлар, аткаруучулар, альбомдор';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count жыйынтык',
      one: '$count жыйынтык',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Акыркы изденүүлөр';

  @override
  String get searchEmptyTitle => 'Эч нерсе табылган жок';

  @override
  String get searchEmptyBody =>
      'Башка жазылышын же аткаруучунун атын жалгыз өзүн жазып көрүңүз.';

  @override
  String get searchStartTitle => 'Ойнотууга бир нерсе табыңыз';

  @override
  String get searchStartBody =>
      'YouTube Music ичинен издөө — ырлар гана чыгат, башка видеолор чыкпайт.';

  @override
  String get libPlaylists => 'Ойнотмо тизмелер';

  @override
  String get libSongs => 'Ырлар';

  @override
  String get libArtists => 'Аткаруучулар';

  @override
  String get libLiked => 'Жактырылган';

  @override
  String get libDownloads => 'Жүктөлгөндөр';

  @override
  String get libImported => 'Импорттолгон';

  @override
  String get libLikedSongs => 'Жактырылган ырлар';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ыр',
      one: '$count ыр',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count оффлайн';
  }

  @override
  String get libMyFiles => 'Өз файлдарым';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count файл',
      one: '$count файл',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Жаңы ойнотмо тизме';

  @override
  String get libMakeOne => 'Түзүү';

  @override
  String get libSortRecent => 'Жакында кошулган';

  @override
  String get libSortTitle => 'Аталышы';

  @override
  String get libSortArtist => 'Аткаруучу';

  @override
  String get libSortPlays => 'Эң көп ойнотулган';

  @override
  String get sheetNotForMe => 'Мага жакпайт';

  @override
  String get sheetNotForMeSub => 'Муну экинчи сунуштабоо';

  @override
  String get sheetBlocked => 'Бөгөттөлгөн — кайра уруксат берүү үчүн таптаңыз';

  @override
  String get sheetBlockedSub => 'Сунуштарда кайра чыгышы мүмкүн';

  @override
  String get sheetPlayNext => 'Кийинки ойнотуу';

  @override
  String get sheetAddToPlaylist => 'Ойнотмо тизмеге кошуу';

  @override
  String get sheetDownloaded => 'Жүктөлүп алынды';

  @override
  String get sheetRemoveFile => 'Файлды өчүрүү үчүн таптаңыз';

  @override
  String get sheetDownload => 'Жүктөп алуу';

  @override
  String get sheetKeepOffline => 'Оффлайн үчүн сактоо';

  @override
  String get sheetRadio => 'Радио баштоо';

  @override
  String get sheetRadioSub => 'Ушул ырдын тегерегинде түзүлгөн кезек';

  @override
  String get sheetQueue => 'Кезек';

  @override
  String get sheetSleepTimer => 'Уйку таймери';

  @override
  String get sheetSleepOff => 'Өчүк';

  @override
  String sheetSleepMinutes(int count) {
    return '$count мүнөт';
  }

  @override
  String get sheetSleepEndOfTrack => 'Бул ыр бүткөндө';

  @override
  String sheetSleepSet(int count) {
    return 'Музыка $count мүнөттөн кийин токтойт';
  }

  @override
  String get tasteTitle => 'Сенин табитиң';

  @override
  String get tasteRetrain => 'Кайра үйрөтүү';

  @override
  String get tasteRetraining => 'Тарыхыңыз боюнча кайра үйрөнүп жатат…';

  @override
  String get tasteRetrained => 'ЖИ моделин кайра түздү.';

  @override
  String tasteConfidence(int percent) {
    return 'Ишеним $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays ойнотуу · $skips өткөрүү · $likes жактыруу';
  }

  @override
  String get tasteEmptySummary => 'Бир нече ыр ойнотсоңуз, бул жер толот.';

  @override
  String get tasteKeepLearning => 'Укканымда үйрөнө берсин';

  @override
  String get tasteKeepLearningSub => 'Азыркы профилди токтотуу үчүн өчүрүңүз';

  @override
  String get tasteDownloadsTitle => 'ЖИ башкарган жүктөөлөр';

  @override
  String get tasteDownloadsSub => 'Музыка сиз сурабай эле түзмөккө түшөт';

  @override
  String get tasteDownloadLikes => 'Жактырганымдын баарын жүктөө';

  @override
  String get tasteDownloadLikesSub =>
      'Жүрөкчөнү басыңыз, файл оффлайн үчүн сакталат';

  @override
  String get tasteAiInstall => 'ЖИ тандаган музыканы орнотсун';

  @override
  String get tasteAiInstallSub => 'Ишенимдүү болгон ырларды өзү алып келет';

  @override
  String get tasteWhatItThinks => 'Ал эмнени жактырарыңызды ойлойт';

  @override
  String get tasteWhatItThinksSub =>
      'Ойнотуулардан, өткөрүүлөрдөн, жактыруулардан жана кайталоолордон үйрөнгөн';

  @override
  String get tasteArtists => 'Ал таянган аткаруучулар';

  @override
  String get tasteWhenYouListen => 'Качан угасыз';

  @override
  String get tasteWhenYouListenSub =>
      'Саат боюнча ойнотуулар — учурдагы саат маанилүүрөөк эсептелет';

  @override
  String get tasteDecades => 'Он жылдыктар';

  @override
  String get tasteTune => 'Сунуштарды ыңгайлаштыруу';

  @override
  String get tasteTuneSub =>
      'Башкы беттин кийинки жаңыртылышынан тартып күчүнө кирет';

  @override
  String get tasteDiscovery => 'Жаңылыктарды ачуу';

  @override
  String get tasteDiscoverySub => 'Тааныш ↔ эч качан укпаган нерселер';

  @override
  String get tasteEnergy => 'Энергия';

  @override
  String get tasteEnergySub => 'Тынч ↔ катуу';

  @override
  String get tasteRecency => 'Жаңылык';

  @override
  String get tasteRecencySub => 'Убакыттан тышкаркы ↔ такыр жаңы';

  @override
  String get tasteNostalgia => 'Сагыныч';

  @override
  String get tasteNostalgiaSub =>
      'Эски сүйүктүү ыр канча убакыттан кийин унутулган деп эсептелет';

  @override
  String get tasteSignals => 'Колдоно турган сигналдар';

  @override
  String get tasteSignalsSub => 'Баары ушул түзмөктө гана калат';

  @override
  String get tasteUseHistory => 'Мен ойногондор';

  @override
  String get tasteUseSkips => 'Мен өткөргөндөр';

  @override
  String get tasteUseTime => 'Суткалык убакыт';

  @override
  String get tasteUseYouTube => 'YouTube сунуштары';

  @override
  String get tasteAlwaysMore => 'Дайыма көбүрөөк';

  @override
  String get tasteNeverAgain => 'Экинчи эч качан';

  @override
  String get tasteAddArtist => 'Аткаруучу кошуу';

  @override
  String get tasteMoreOfPrompt => 'Дайыма көбүрөөк…';

  @override
  String get tasteNeverAgainPrompt => 'Экинчи эч качан…';

  @override
  String get tasteReset => 'Үйрөнгөнүн тазалоо';

  @override
  String get tasteResetSub => 'Музыкаңыз калат; профиль нөлдөн башталат';

  @override
  String get trainCard => 'Баалоо аркылуу үйрөтүү';

  @override
  String get trainCardSub =>
      'Чыныгы ырларды сүрүп көрүңүз. Оңго — мындай ырлар көбүрөөк, солго — экинчи эч качан. Бул жерде эки мүнөт бир жуманын угуусунан артык.';

  @override
  String get trainStart => 'Үйрөтүү раундун баштоо';

  @override
  String get trainTitle => 'Үйрөтүү раунду';

  @override
  String get trainQuestion => 'Муну башкы бетте көргүңүз келеби?';

  @override
  String get trainMoreLikeThis => 'Мындайлар көбүрөөк';

  @override
  String get trainNeverAgain => 'Экинчи эч качан';

  @override
  String get trainDone => 'Раунд аяктады';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked калтырылды · $blocked бөгөттөлдү. Ишеним $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Табитиме кайтуу';

  @override
  String get trainNothingTitle => 'Баалоого азырынча эч нерсе жок';

  @override
  String get trainNothingBody =>
      'Алгач музыка кошуңуз же ЖИ талапкерлерди алып келсин, анан кайтып келиңиз.';

  @override
  String get trainLeaveTitle => 'Үйрөтүү раундунан чыгасызбы?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Азыр чыксаңыз, ЖИ бул раунддагы бардык нерсени — жаңы эле баалаган $count ырдын баарын — жокко чыгарат.',
      one:
          'Азыр чыксаңыз, ЖИ бул раунддагы бардык нерсени — жаңы эле баалаган $count ырды — жокко чыгарат.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Үйрөтүүнү улантуу';

  @override
  String get trainDiscard => 'Жокко чыгарып чыгуу';

  @override
  String get setTitle => 'Жөндөөлөр';

  @override
  String get setAppearance => 'Сырткы көрүнүш';

  @override
  String get setTheme => 'Тема';

  @override
  String get setThemeSystem => 'Системага ылайык';

  @override
  String get setThemeLight => 'Жарык';

  @override
  String get setThemeDark => 'Караңгы';

  @override
  String get setPureBlack => 'Таза кара';

  @override
  String get setPureBlackSub => 'OLED экранда энергияны үнөмдөйт';

  @override
  String get setAccent => 'Акцент түсү';

  @override
  String get setAccentArtwork => 'Мукабадан';

  @override
  String get setAccentFixed => 'Мен тандаган бир түс';

  @override
  String get setLanguage => 'Тил';

  @override
  String get setLanguageSystem => 'Системага ылайык';

  @override
  String get setAccessibility => 'Атайын мүмкүнчүлүктөр';

  @override
  String get setTextSize => 'Текст өлчөмү';

  @override
  String get setTextSizeSub => 'Системанын жөндөөсүнүн үстүнөн';

  @override
  String get setReduceMotion => 'Кыймылды азайтуу';

  @override
  String get setReduceMotionSub =>
      'Тилкелерди, визуализаторду, серпилүүчү жылдырууну, серпилүүчү таптоолорду жана барак өтүүлөрүн токтотот';

  @override
  String get setHighContrast => 'Жогорку контраст';

  @override
  String get setHighContrastSub => 'Даана бөлүнүү жана көрүнүүчү четтер';

  @override
  String get setBoldText => 'Жоон текст';

  @override
  String get setPlayback => 'Ойнотуу';

  @override
  String get setAutoRadio => 'Музыка токтобосун';

  @override
  String get setAutoRadioSub =>
      'Кезек бүткөндө акыркы ырдан түзүлгөн радио менен уланат';

  @override
  String get setSmartShuffle => 'Акылдуу аралаштыруу';

  @override
  String get setSmartShuffleSub =>
      'Кокустуктун ордуна табитиңизге жараша аралаштырат';

  @override
  String get setResume => 'Токтогон жерден улантуу';

  @override
  String get setResumeSub =>
      'Колдонмо ачылганда кезекти токтотулган абалда калыбына келтирет';

  @override
  String get setDataSaver => 'Wi-Fi\'сыз трафикти үнөмдөө';

  @override
  String get setDataSaverSub =>
      'Мобилдик интернетте агымды жана жүктөөлөрдү 128 кбит/сек менен чектейт';

  @override
  String get setHaptics => 'Титирөө жообу';

  @override
  String get setShowReasons => 'Эмне үчүн сунушталганын көрсөтүү';

  @override
  String get setSkipSilence => 'Тынчтыкты өткөрүү';

  @override
  String get setQuality => 'Аудио сапаты';

  @override
  String get setQualityLow => 'Төмөн · 64 кбит/сек';

  @override
  String get setQualityNormal => 'Орточо · 128 кбит/сек';

  @override
  String get setQualityHigh => 'Жогору · 192 кбит/сек';

  @override
  String get setQualityBest => 'Мүмкүн болгон эң жакшысы';

  @override
  String get setStorage => 'Жүктөөлөр жана сактагыч';

  @override
  String get setWifiOnly => 'Wi-Fi аркылуу гана жүктөө';

  @override
  String get setDailyLimit => 'ЖИ үчүн күндүк чек';

  @override
  String setDailyLimitSub(int count) {
    return 'Күнүнө $count ыр';
  }

  @override
  String get setBudget => 'ЖИ колдоно турган сактагыч';

  @override
  String setUsed(Object size) {
    return 'Жүктөөлөр $size ээлеп турат';
  }

  @override
  String get setYourMusic => 'Сиздин музыкаңыз';

  @override
  String get setImport => 'Бул түзмөктөн музыка кошуу';

  @override
  String get setImportSub => 'Папкаларды же жеке файлдарды тандаңыз';

  @override
  String get setCleanup => 'Жок файлдарды тазалоо';

  @override
  String get setCleanupSub => 'Файлы жок ырларды алып салуу';

  @override
  String setCleanupDone(int count) {
    return '$count жок файл өчүрүлдү.';
  }

  @override
  String get setExport => 'Табитимди башка түзмөккө жөнөтүү';

  @override
  String get setExportSub =>
      'Жактырууларыңызды, ойнотууларыңызды жана ЖИ үйрөнгөндүн баарын файлга сактайт';

  @override
  String get setImportTaste => 'Башка түзмөктөн табитти жүктөө';

  @override
  String get setImportTasteSub =>
      'Сакталган табит файлын тандап, кошуп коюңуз — кайталаса да коопсуз';

  @override
  String get setAbout => 'Жөнүндө';

  @override
  String get setAboutBody =>
      'YouTube\'дан жана өз файлдарыңыздан музыка. ЖИ толугу менен ушул түзмөктө иштейт — эч нерсе сыртка чыкпайт.';

  @override
  String get setSource => 'Булак коду';

  @override
  String get importTitle => 'Музыка кошуу';

  @override
  String get importPickFolder => 'Папка тандоо';

  @override
  String get importPickFiles => 'Файлдарды тандоо';

  @override
  String importScanning(Object file) {
    return '$file сканерделүүдө';
  }

  @override
  String importAdded(int count) {
    return '$count кошулду';
  }

  @override
  String get importDenied =>
      'Уруксат берилген жок — музыкаңызды окуу мүмкүн эмес.';

  @override
  String get importWatched => 'Ал көзөмөлдөгөн папкалар';

  @override
  String get importIosHint =>
      'Файлдар колдонмосун ачып, On My iPhone → TuneBox бөлүмүнө өтүп, музыканы ошол жерге таштаңыз.';

  @override
  String get playerQueue => 'Кезек';

  @override
  String get playerUpNext => 'Кийинки';

  @override
  String get playerLyrics => 'Ыр тексти';

  @override
  String get playerNoLyrics => 'Бул ырдын тексти жок.';

  @override
  String get playerRepeat => 'Кайталоо';

  @override
  String get playerShuffle => 'Аралаштыруу';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" ойнотулган жок';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" өткөрүлүп жатат — агым ачылган жок.';
  }

  @override
  String get undo => 'Кайтаруу';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Азыр: $tags, алдыда $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Азыр: $tags.';
  }

  @override
  String get setColour => 'Түс';

  @override
  String get setColourSub => 'Бүтүндөй колдонмо ушуга ылайык өзгөрөт';

  @override
  String get setCoverArt => 'Мукаба';

  @override
  String get setMyColour => 'Менин түсүм';

  @override
  String get setCoverArtSub =>
      'Ар бир ыр колдонмонун түсүн мукабасына жараша өзгөртөт.';

  @override
  String get setMyColourSub => 'Бир түс, бардык жерде, дайыма.';

  @override
  String get setPickColour => 'Каалаган түстү тандаңыз';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi аркылуу гана жүктөө';

  @override
  String get setDownloadLikes => 'Жактырганымдын баарын жүктөө';

  @override
  String get setDownloadLikesSub => 'Жүрөкчө баскычы файлды да сактайт';

  @override
  String get setAiInstall => 'ЖИ тандаган музыканы орнотсун';

  @override
  String get setSkipSilenceSub =>
      'Android үчүн гана. Тынч интроларды, акырындап өчүүнү жана жумшак бөлүктөрдү кесип салышы мүмкүн — музыка секирсе, өчүрүп коюңуз';

  @override
  String get setStorageUsed => 'Жүктөөлөр ээлеген сактагыч';

  @override
  String get setLibrary => 'Китепкана';

  @override
  String get setUpdates => 'Жаңыртуулар';

  @override
  String get setAutoUpdate => 'Жаңыртууларды өзү текшерсин';

  @override
  String get setAutoUpdateSub =>
      'Бир нече сааттын ичинде, байкалбай жана Wi-Fi аркылуу жүктөйт. Орнотуу алдында дагы сурайт.';

  @override
  String setUpdateReady(Object version) {
    return '$version версиясына жаңыртуу даяр';
  }

  @override
  String get setUpdateReadySub => 'Жүктөлдү — орнотуу үчүн таптаңыз';

  @override
  String get setUpdateAvailableSub =>
      'Релиздер барагынан алыңыз — шилтемени көчүрүү үчүн таптаңыз';

  @override
  String get setLinkCopied => 'Шилтеме көчүрүлдү';

  @override
  String get setCheckNow => 'Азыр текшерүү';

  @override
  String get setUpToDate => 'TuneBox акыркы нускада';

  @override
  String get setChecking => 'Жаңыраак нуска изделүүдө…';
}
