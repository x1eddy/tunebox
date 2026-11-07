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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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
}
