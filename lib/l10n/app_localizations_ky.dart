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
