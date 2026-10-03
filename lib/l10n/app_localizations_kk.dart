// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class LKk extends L {
  LKk([String locale = 'kk']) : super(locale);

  @override
  String get navHome => 'Басты бет';

  @override
  String get navExplore => 'Шолу';

  @override
  String get navLibrary => 'Кітапхана';

  @override
  String get navTaste => 'Сенің талғамың';

  @override
  String get actionDone => 'Дайын';

  @override
  String get actionCancel => 'Бас тарту';

  @override
  String get actionCreate => 'Жасау';

  @override
  String get actionPlay => 'Ойнату';

  @override
  String get actionShuffle => 'Араластыру';

  @override
  String get actionPlayAll => 'Барлығын ойнату';

  @override
  String get actionAdd => 'Қосу';

  @override
  String get actionRemove => 'Жою';

  @override
  String get actionName => 'Аты';

  @override
  String get greetingNight => 'Әлі ұйықтамадың ба?';

  @override
  String get greetingMorning => 'Қайырлы таң';

  @override
  String get greetingAfternoon => 'Қайырлы күн';

  @override
  String get greetingEvening => 'Қайырлы кеш';

  @override
  String get homeBuilding => 'ЖИ сенің сөрелеріңді құрастыруда…';

  @override
  String get homeOffline => 'Офлайн — құрылғыдағы мазмұн көрсетілуде';

  @override
  String get homeNothingYet => 'Әзірге көрсететін ештеңе жоқ';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сөре, жаңа ғана жаңартылды',
      one: '$count сөре, жаңа ғана жаңартылды',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Сөрелерді қайта құру';

  @override
  String get homeAddMusic => 'Осы құрылғыдан музыка қосу';

  @override
  String get homeQuickPicks => 'Жылдам таңдау';

  @override
  String get homeQuickPicksSub => 'Тоқтаған жеріңе тікелей оралу';

  @override
  String get homeEmptyTitle => 'Кітапханаң бос';

  @override
  String get homeEmptyBody =>
      'Бірдеңе іздеп көр немесе осы құрылғыдағы музыканы қос. ЖИ алғашқы тыңдағаныңнан бастап үйренеді.';

  @override
  String get homeAddMyMusic => 'Музыкамды қосу';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube-ке қосыла алмадық: $error';
  }

  @override
  String get moodFocus => 'Зейін';

  @override
  String get moodWorkout => 'Жаттығу';

  @override
  String get moodChill => 'Демалыс';

  @override
  String get moodCommute => 'Жолда';

  @override
  String get moodParty => 'Кеш';

  @override
  String moodBuilding(Object mood) {
    return '$mood миксі құрастырылуда…';
  }

  @override
  String moodFailed(Object error) {
    return 'Болмады: $error';
  }

  @override
  String get shelfRepeat => 'Қайталауда';

  @override
  String get shelfRepeatSub => 'Соңғы екі аптаң';

  @override
  String get shelfForgotten => 'Ұнаған, ұмытылған хиттер';

  @override
  String get shelfForgottenSub => 'Бір кезде ұнаған, көптен бері тыңдалмаған';

  @override
  String get shelfNew => 'Жаңа';

  @override
  String get shelfNewSub => 'ЖИ саған лайық деп санайтын жаңа тректер';

  @override
  String shelfBecause(Object artist) {
    return '$artist тыңдағаның үшін';
  }

  @override
  String get shelfBecauseSub => 'Талғамыңның дәл сол бұрышы';

  @override
  String get shelfDeep => 'Әзер қозғалған';

  @override
  String get shelfDeepSub => 'Кітапханаңда бар, бірақ сирек ойналған';

  @override
  String get shelfMix => 'Сенің миксің';

  @override
  String get shelfMixSub => 'Қолданбаны ашқан сайын қайта құрылады';

  @override
  String get shelfAdded => 'Жақында қосылған';

  @override
  String get shelfAddedSub => 'Жүктелген және импортталған файлдар';

  @override
  String get shelfStarter => 'Осыдан баста';

  @override
  String get shelfStarterSub => 'Бірнешеуін ойнат, ЖИ бірден үйрене бастайды';

  @override
  String reasonPlays(int count) {
    return '$count рет ойнатылды';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Ұнаған, соңғы рет ойнатылды: $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count рет ойнатылды, соңғысы $when';
  }

  @override
  String get reasonTopArtist => 'Ең көп тыңдайтын орындаушыларыңның бірі';

  @override
  String reasonMore(Object artist) {
    return '$artist тағы да';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Сен $artist орындаушысына қайта-қайта ораласың';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Сенің үлгідегі $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Соңғы кезде $tag көп';
  }

  @override
  String get reasonOutThisYear => 'Осы жылы шықты';

  @override
  String get reasonReleasedRecently => 'Жақында шықты';

  @override
  String get reasonClose => 'Тыңдап жүргеніңе жақын';

  @override
  String reasonNear(Object artist) {
    return '$artist орындаушысына жақын';
  }

  @override
  String get reasonNeverPlayed => 'Ешқашан ойналмаған';

  @override
  String get reasonPlayedOnce => 'Бір рет ойналған';

  @override
  String get reasonPopular => 'Қазір танымал';

  @override
  String whenYearsAgo(int count) {
    return '$count жыл бұрын';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ай бұрын';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count күн бұрын';
  }

  @override
  String get searchHint => 'Әндер, орындаушылар, альбомдар';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count нәтиже',
      one: '$count нәтиже',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Соңғы іздеулер';

  @override
  String get searchEmptyTitle => 'Ештеңе табылмады';

  @override
  String get searchEmptyBody =>
      'Басқаша жазып көр немесе тек орындаушының атын жаз.';

  @override
  String get searchStartTitle => 'Ойнататын бірдеңе тап';

  @override
  String get searchStartBody =>
      'YouTube Music-тен іздеу — тек әндер шығады, басқа бейнелер емес.';

  @override
  String get libPlaylists => 'Ойнату тізімдері';

  @override
  String get libSongs => 'Әндер';

  @override
  String get libArtists => 'Орындаушылар';

  @override
  String get libLiked => 'Ұнағандар';

  @override
  String get libDownloads => 'Жүктелгендер';

  @override
  String get libImported => 'Импортталған';

  @override
  String get libLikedSongs => 'Ұнаған әндер';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ән',
      one: '$count ән',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count офлайн';
  }

  @override
  String get libMyFiles => 'Менің файлдарым';

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
  String get libNewPlaylist => 'Жаңа ойнату тізімі';

  @override
  String get libMakeOne => 'Жасау';

  @override
  String get libSortRecent => 'Жақында қосылған';

  @override
  String get libSortTitle => 'Атауы';

  @override
  String get libSortArtist => 'Орындаушы';

  @override
  String get libSortPlays => 'Ең көп ойналған';

  @override
  String get sheetNotForMe => 'Маған ұнамайды';

  @override
  String get sheetNotForMeSub => 'Мұны енді ешқашан ұсынбау';

  @override
  String get sheetBlocked => 'Бұғатталған — қайта рұқсат ету үшін түрт';

  @override
  String get sheetBlockedSub => 'Ұсыныстарда қайта пайда болуы мүмкін';

  @override
  String get sheetPlayNext => 'Келесі ойнату';

  @override
  String get sheetAddToPlaylist => 'Ойнату тізіміне қосу';

  @override
  String get sheetDownloaded => 'Жүктелді';

  @override
  String get sheetRemoveFile => 'Файлды жою үшін түрт';

  @override
  String get sheetDownload => 'Жүктеу';

  @override
  String get sheetKeepOffline => 'Офлайн үшін сақтау';

  @override
  String get sheetRadio => 'Радиоды бастау';

  @override
  String get sheetRadioSub => 'Осы әнге негізделген кезек';

  @override
  String get sheetQueue => 'Кезек';

  @override
  String get sheetSleepTimer => 'Ұйқы таймері';

  @override
  String get sheetSleepOff => 'Өшірулі';

  @override
  String sheetSleepMinutes(int count) {
    return '$count минут';
  }

  @override
  String get sheetSleepEndOfTrack => 'Осы ән аяқталғанда';

  @override
  String sheetSleepSet(int count) {
    return 'Музыка $count мин ішінде тоқтайды';
  }

  @override
  String get tasteTitle => 'Сенің талғамың';

  @override
  String get tasteRetrain => 'Қайта оқыту';

  @override
  String get tasteRetraining => 'Тарихың бойынша қайта оқытылуда…';

  @override
  String get tasteRetrained => 'ЖИ моделін қайта құрды.';

  @override
  String tasteConfidence(int percent) {
    return 'Сенімділік $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays ойнату · $skips өткізу · $likes ұнату';
  }

  @override
  String get tasteEmptySummary =>
      'Бірнеше ән ойнат, мұнда мәлімет пайда болады.';

  @override
  String get tasteKeepLearning => 'Тыңдап жатқанда үйрене беру';

  @override
  String get tasteKeepLearningSub => 'Қазіргі профильді тоқтату үшін өшір';

  @override
  String get tasteDownloadsTitle => 'ЖИ басқаратын жүктеулер';

  @override
  String get tasteDownloadsSub => 'Музыка сен сұрамай-ақ құрылғыға түседі';

  @override
  String get tasteDownloadLikes => 'Ұнағанның бәрін жүктеу';

  @override
  String get tasteDownloadLikesSub =>
      'Жүрекшені бас, файл офлайн үшін сақталады';

  @override
  String get tasteAiInstall => 'ЖИ таңдаған музыканы өзі орнатсын';

  @override
  String get tasteAiInstallSub => 'Сенімді тректерді жүктеп алады';

  @override
  String get tasteWhatItThinks => 'Ол сенің нені ұнатасың деп ойлайды';

  @override
  String get tasteWhatItThinksSub =>
      'Ойнатулардан, өткізулерден, ұнатулардан және қайталаулардан үйренген';

  @override
  String get tasteArtists => 'Сүйенетін орындаушылары';

  @override
  String get tasteWhenYouListen => 'Қашан тыңдайсың';

  @override
  String get tasteWhenYouListenSub =>
      'Сағатына ойнату саны — қазіргі сағаттың салмағы көбірек';

  @override
  String get tasteDecades => 'Онжылдықтар';

  @override
  String get tasteTune => 'Ұсыныстарды баптау';

  @override
  String get tasteTuneSub => 'Басты беттің келесі жаңартуында күшіне енеді';

  @override
  String get tasteDiscovery => 'Жаңалық ашу';

  @override
  String get tasteDiscoverySub => 'Таныс ↔ ешқашан естімеген нәрселер';

  @override
  String get tasteEnergy => 'Қуат';

  @override
  String get tasteEnergySub => 'Тыныш ↔ қатты';

  @override
  String get tasteRecency => 'Жаңалық';

  @override
  String get tasteRecencySub => 'Мәңгілік ↔ тың жаңа';

  @override
  String get tasteNostalgia => 'Сағыныш';

  @override
  String get tasteNostalgiaSub =>
      'Ескі сүйікті ән қанша уақыттан кейін ұмытылған саналады';

  @override
  String get tasteSignals => 'Қолдана алатын сигналдар';

  @override
  String get tasteSignalsSub => 'Барлығы осы құрылғыда қалады';

  @override
  String get tasteUseHistory => 'Мен ойнатқандар';

  @override
  String get tasteUseSkips => 'Мен өткізетіндер';

  @override
  String get tasteUseTime => 'Тәулік уақыты';

  @override
  String get tasteUseYouTube => 'YouTube ұсыныстары';

  @override
  String get tasteAlwaysMore => 'Әрдайым көбірек';

  @override
  String get tasteNeverAgain => 'Енді ешқашан';

  @override
  String get tasteAddArtist => 'Орындаушы қосу';

  @override
  String get tasteMoreOfPrompt => 'Әрдайым көбірек…';

  @override
  String get tasteNeverAgainPrompt => 'Енді ешқашан…';

  @override
  String get tasteReset => 'Үйренгенін тастау';

  @override
  String get tasteResetSub => 'Музыкаң қалады; профиль нөлден басталады';

  @override
  String get trainCard => 'Бағалау арқылы оқыту';

  @override
  String get trainCardSub =>
      'Нақты әндерді сырғыт. Оңға — осындай көбірек, солға — енді ешқашан. Мұндағы екі минут бір апта тыңдаудан артық.';

  @override
  String get trainStart => 'Оқыту раундын бастау';

  @override
  String get trainTitle => 'Оқыту раунды';

  @override
  String get trainQuestion => 'Мұны Басты бетте көргің келе ме?';

  @override
  String get trainMoreLikeThis => 'Осындай көбірек';

  @override
  String get trainNeverAgain => 'Енді ешқашан';

  @override
  String get trainDone => 'Раунд аяқталды';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked қалды · $blocked бұғатталды. Сенімділік $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Талғамыма оралу';

  @override
  String get trainNothingTitle => 'Бағалайтын ештеңе жоқ';

  @override
  String get trainNothingBody =>
      'Музыка қос немесе алдымен ЖИ-ге үміткерлерді жүктет, содан кейін қайта кел.';

  @override
  String get trainLeaveTitle => 'Оқыту раундынан шығасың ба?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Қазір шықсаң, ЖИ осы раундтағы барлығын тастайды — жаңа ғана бағалаған барлық $count әніңді.',
      one:
          'Қазір шықсаң, ЖИ осы раундтағы барлығын тастайды — жаңа ғана бағалаған $count әніңді.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Оқытуды жалғастыру';

  @override
  String get trainDiscard => 'Тастап шығу';

  @override
  String get setTitle => 'Параметрлер';

  @override
  String get setAppearance => 'Сыртқы түрі';

  @override
  String get setTheme => 'Тақырып';

  @override
  String get setThemeSystem => 'Жүйеге сәйкес';

  @override
  String get setThemeLight => 'Жарық';

  @override
  String get setThemeDark => 'Қараңғы';

  @override
  String get setPureBlack => 'Таза қара';

  @override
  String get setPureBlackSub => 'OLED экранда қуатты үнемдейді';

  @override
  String get setAccent => 'Екпін түсі';

  @override
  String get setAccentArtwork => 'Мұқабадан';

  @override
  String get setAccentFixed => 'Мен таңдаған бір түс';

  @override
  String get setLanguage => 'Тіл';

  @override
  String get setLanguageSystem => 'Жүйеге сәйкес';

  @override
  String get setAccessibility => 'Қолжетімділік';

  @override
  String get setTextSize => 'Мәтін өлшемі';

  @override
  String get setTextSizeSub => 'Жүйе параметрінің үстіне';

  @override
  String get setReduceMotion => 'Қозғалысты азайту';

  @override
  String get setReduceMotionSub =>
      'Жолақтарды, визуализаторды, секіретін айналдыруды, серіппелі түртулерді және бет ауыстыруларды тоқтатады';

  @override
  String get setHighContrast => 'Жоғары контраст';

  @override
  String get setHighContrastSub => 'Анығырақ бөліну және көрінетін контурлар';

  @override
  String get setBoldText => 'Қалың мәтін';

  @override
  String get setPlayback => 'Ойнату';

  @override
  String get setAutoRadio => 'Музыка тоқтамасын';

  @override
  String get setAutoRadioSub =>
      'Кезек біткенде соңғы әннен құрылған радио жалғасады';

  @override
  String get setSmartShuffle => 'Ақылды араластыру';

  @override
  String get setSmartShuffleSub =>
      'Кездейсоқ емес, талғам бойынша араластырады';

  @override
  String get setResume => 'Тоқтаған жерден жалғастыру';

  @override
  String get setResumeSub =>
      'Қолданба ашылғанда кезекті үзіліспен қалпына келтіреді';

  @override
  String get setDataSaver => 'Wi-Fi жоқта трафикті үнемдеу';

  @override
  String get setDataSaverSub =>
      'Мобильді интернетте ағынды және жүктеулерді 128 кбит/с-пен шектейді';

  @override
  String get setHaptics => 'Тактильді жауап';

  @override
  String get setShowReasons => 'Неге ұсынылғанын көрсету';

  @override
  String get setSkipSilence => 'Тыныштықты өткізу';

  @override
  String get setQuality => 'Дыбыс сапасы';

  @override
  String get setQualityLow => 'Төмен · 64 кбит/с';

  @override
  String get setQualityNormal => 'Қалыпты · 128 кбит/с';

  @override
  String get setQualityHigh => 'Жоғары · 192 кбит/с';

  @override
  String get setQualityBest => 'Қолжетімді ең жақсысы';

  @override
  String get setStorage => 'Жүктеулер және жад';

  @override
  String get setWifiOnly => 'Тек Wi-Fi арқылы жүктеу';

  @override
  String get setDailyLimit => 'ЖИ үшін күндік лимит';

  @override
  String setDailyLimitSub(int count) {
    return 'Күніне $count ән';
  }

  @override
  String get setBudget => 'ЖИ пайдалана алатын жад';

  @override
  String setUsed(Object size) {
    return 'Жүктеулер $size алып тұр';
  }

  @override
  String get setYourMusic => 'Сенің музыкаң';

  @override
  String get setImport => 'Осы құрылғыдан музыка қосу';

  @override
  String get setImportSub => 'Қалталарды немесе жеке файлдарды таңда';

  @override
  String get setCleanup => 'Жоғалған файлдарды тазалау';

  @override
  String get setCleanupSub => 'Файлы жоқ әндерді жою';

  @override
  String setCleanupDone(int count) {
    return '$count жоғалған файл жойылды.';
  }

  @override
  String get setExport => 'Талғамымды басқа құрылғыға жіберу';

  @override
  String get setExportSub =>
      'Ұнатуларың, ойнатуларың және ЖИ үйренгеннің бәрі бар файлды сақтайды';

  @override
  String get setImportTaste => 'Басқа құрылғыдан талғамды жүктеу';

  @override
  String get setImportTasteSub =>
      'Сақталған талғам файлын таңдап, біріктір — қайталау қауіпсіз';

  @override
  String get setAbout => 'Қолданба туралы';

  @override
  String get setAboutBody =>
      'YouTube-тегі және өз файлдарыңдағы музыка. ЖИ толығымен осы құрылғыда жұмыс істейді — ештеңе сыртқа шықпайды.';

  @override
  String get setSource => 'Бастапқы код';

  @override
  String get importTitle => 'Музыка қосу';

  @override
  String get importPickFolder => 'Қалта таңдау';

  @override
  String get importPickFiles => 'Файлдар таңдау';

  @override
  String importScanning(Object file) {
    return '$file сканерленуде';
  }

  @override
  String importAdded(int count) {
    return '$count қосылды';
  }

  @override
  String get importDenied => 'Рұқсат жоқ — музыкаңды оқу мүмкін емес.';

  @override
  String get importWatched => 'Бақыланатын қалталар';

  @override
  String get importIosHint =>
      'Файлдар қолданбасын аш, «iPhone-да» → TuneBox бөліміне өтіп, музыканы сонда сал.';

  @override
  String get playerQueue => 'Кезек';

  @override
  String get playerUpNext => 'Келесі';

  @override
  String get playerLyrics => 'Сөзі';

  @override
  String get playerNoLyrics => 'Бұл әннің сөзі жоқ.';

  @override
  String get playerRepeat => 'Қайталау';

  @override
  String get playerShuffle => 'Араластыру';

  @override
  String errorPlayback(Object title) {
    return '«$title» ойнатылмады';
  }

  @override
  String errorSkipping(Object title) {
    return '«$title» өткізілуде — ағын ашылмады.';
  }

  @override
  String get undo => 'Болдырмау';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Қазір: $tags, жетекші — $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Қазір: $tags.';
  }

  @override
  String get setColour => 'Түс';

  @override
  String get setColourSub => 'Бүкіл қолданба осыған сәйкес болады';

  @override
  String get setCoverArt => 'Мұқаба';

  @override
  String get setMyColour => 'Менің түсім';

  @override
  String get setCoverArtSub =>
      'Әр ән қолданбаны мұқабасына қарай қайта бояйды.';

  @override
  String get setMyColourSub => 'Бір түс, барлық жерде, әрдайым.';

  @override
  String get setPickColour => 'Кез келген түсті таңда';

  @override
  String get setWifiOnlyTitle => 'Тек Wi-Fi арқылы жүктеу';

  @override
  String get setDownloadLikes => 'Ұнағанның бәрін жүктеу';

  @override
  String get setDownloadLikesSub => 'Жүрекше түймесі файлды да сақтайды';

  @override
  String get setAiInstall => 'ЖИ таңдаған музыканы өзі орнатсын';

  @override
  String get setSkipSilenceSub =>
      'Тек Android үшін. Тыныш кіріспелерді, баяулауды және жұмсақ бөліктерді қиып тастауы мүмкін — музыка секірсе, өшіріп қой';

  @override
  String get setStorageUsed => 'Жүктеулер алған жад';

  @override
  String get setLibrary => 'Кітапхана';

  @override
  String get setUpdates => 'Жаңартулар';

  @override
  String get setAutoUpdate => 'Жаңартуларды өздігінен тексеру';

  @override
  String get setAutoUpdateSub =>
      'Бірнеше сағат сайын, үнсіз және Wi-Fi арқылы жүктейді. Орнату алдында сұрайды.';

  @override
  String setUpdateReady(Object version) {
    return '$version нұсқасына жаңарту дайын';
  }

  @override
  String get setUpdateReadySub => 'Жүктелді — орнату үшін түрт';

  @override
  String get setUpdateAvailableSub =>
      'Шығарылымдар бетінен ал — сілтемені көшіру үшін түрт';

  @override
  String get setLinkCopied => 'Сілтеме көшірілді';

  @override
  String get setCheckNow => 'Қазір тексеру';

  @override
  String get setUpToDate => 'TuneBox соңғы нұсқада';

  @override
  String get setChecking => 'Жаңа нұсқа іздеуде…';
}
