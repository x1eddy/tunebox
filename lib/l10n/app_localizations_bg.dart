// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class LBg extends L {
  LBg([String locale = 'bg']) : super(locale);

  @override
  String get navHome => 'Начало';

  @override
  String get navExplore => 'Разгледай';

  @override
  String get navLibrary => 'Библиотека';

  @override
  String get navTaste => 'Твоят вкус';

  @override
  String get actionDone => 'Готово';

  @override
  String get actionCancel => 'Отказ';

  @override
  String get actionCreate => 'Създай';

  @override
  String get actionPlay => 'Пусни';

  @override
  String get actionShuffle => 'Разбъркай';

  @override
  String get actionPlayAll => 'Пусни всички';

  @override
  String get actionAdd => 'Добави';

  @override
  String get actionRemove => 'Премахни';

  @override
  String get actionName => 'Име';

  @override
  String get greetingNight => 'Още ли си буден?';

  @override
  String get greetingMorning => 'Добро утро';

  @override
  String get greetingAfternoon => 'Добър ден';

  @override
  String get greetingEvening => 'Добър вечер';

  @override
  String get homeBuilding => 'ИИ подрежда рафтовете ти…';

  @override
  String get homeOffline => 'Офлайн — показва се каквото има на устройството';

  @override
  String get homeNothingYet => 'Още няма какво да се покаже';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count рафта, току-що обновени',
      one: '1 рафт, току-що обновен',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Изгради рафтовете отново';

  @override
  String get homeAddMusic => 'Добави музика от това устройство';

  @override
  String get homeQuickPicks => 'Бърз избор';

  @override
  String get homeQuickPicksSub => 'Директно обратно към това, което слушаше';

  @override
  String get homeEmptyTitle => 'Библиотеката ти е празна';

  @override
  String get homeEmptyBody =>
      'Потърси нещо или добави музиката, която вече е на това устройство. ИИ започва да се учи от първото ти пускане.';

  @override
  String get homeAddMyMusic => 'Добави моята музика';

  @override
  String homeCouldNotReach(Object error) {
    return 'Няма връзка с YouTube: $error';
  }

  @override
  String get moodFocus => 'Фокус';

  @override
  String get moodWorkout => 'Тренировка';

  @override
  String get moodChill => 'Релакс';

  @override
  String get moodCommute => 'Пътуване';

  @override
  String get moodParty => 'Парти';

  @override
  String moodBuilding(Object mood) {
    return 'Създава се микс „$mood“…';
  }

  @override
  String moodFailed(Object error) {
    return 'Не се получи: $error';
  }

  @override
  String get shelfRepeat => 'На повторение';

  @override
  String get shelfRepeatSub => 'Последните ти две седмици';

  @override
  String get shelfForgotten => 'Стари забравени хитове, които ти харесаха';

  @override
  String get shelfForgottenSub =>
      'Някога обичани, от известно време недокосвани';

  @override
  String get shelfNew => 'Ново';

  @override
  String get shelfNewSub => 'Свежи парчета, които ИИ мисли, че са за теб';

  @override
  String shelfBecause(Object artist) {
    return 'Защото слуша $artist';
  }

  @override
  String get shelfBecauseSub => 'Същото кътче от вкуса ти';

  @override
  String get shelfDeep => 'Почти недокосвани';

  @override
  String get shelfDeepSub => 'В библиотеката ти, но едва пускани';

  @override
  String get shelfMix => 'Твоят микс';

  @override
  String get shelfMixSub =>
      'Изгражда се отново при всяко отваряне на приложението';

  @override
  String get shelfAdded => 'Наскоро добавени';

  @override
  String get shelfAddedSub => 'Изтеглени и импортирани от теб файлове';

  @override
  String get shelfStarter => 'Започни оттук';

  @override
  String get shelfStarterSub => 'Пусни няколко и ИИ започва да се учи веднага';

  @override
  String reasonPlays(int count) {
    return '$count пускания';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Харесано, последно пуснато $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count пускания, последно $when';
  }

  @override
  String get reasonTopArtist => 'Един от най-слушаните ти изпълнители';

  @override
  String reasonMore(Object artist) {
    return 'Още от $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Все се връщаш към $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Твоят тип $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Напоследък много $tag';
  }

  @override
  String get reasonOutThisYear => 'Излязло тази година';

  @override
  String get reasonReleasedRecently => 'Излязло наскоро';

  @override
  String get reasonClose => 'Близо до това, което слушаш';

  @override
  String reasonNear(Object artist) {
    return 'Близо до $artist';
  }

  @override
  String get reasonNeverPlayed => 'Никога непускано';

  @override
  String get reasonPlayedOnce => 'Пуснато веднъж';

  @override
  String get reasonPopular => 'Популярно сега';

  @override
  String whenYearsAgo(int count) {
    return 'преди $count г.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'преди $count мес.';
  }

  @override
  String whenDaysAgo(int count) {
    return 'преди $count дни';
  }

  @override
  String get searchHint => 'Песни, изпълнители, албуми';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count резултата',
      one: '1 резултат',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Скорошни търсения';

  @override
  String get searchEmptyTitle => 'Няма намерено нищо';

  @override
  String get searchEmptyBody =>
      'Опитай с друго изписване или само с името на изпълнителя.';

  @override
  String get searchStartTitle => 'Намери нещо за пускане';

  @override
  String get searchStartBody =>
      'Търси в YouTube Music — връщат се само песни, никога видеа за други неща.';

  @override
  String get libPlaylists => 'Плейлисти';

  @override
  String get libSongs => 'Песни';

  @override
  String get libArtists => 'Изпълнители';

  @override
  String get libLiked => 'Харесани';

  @override
  String get libDownloads => 'Изтеглени';

  @override
  String get libImported => 'Импортирани';

  @override
  String get libLikedSongs => 'Харесани песни';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count песни',
      one: '1 песен',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count офлайн';
  }

  @override
  String get libMyFiles => 'Моите собствени файлове';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count файла',
      one: '1 файл',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Нов плейлист';

  @override
  String get libMakeOne => 'Създай един';

  @override
  String get libSortRecent => 'Наскоро добавени';

  @override
  String get libSortTitle => 'Заглавие';

  @override
  String get libSortArtist => 'Изпълнител';

  @override
  String get libSortPlays => 'Най-слушани';

  @override
  String get sheetNotForMe => 'Не е за мен';

  @override
  String get sheetNotForMeSub => 'Никога повече не препоръчвай това';

  @override
  String get sheetBlocked => 'Блокирано — докосни, за да разрешиш отново';

  @override
  String get sheetBlockedSub => 'Може отново да се появи в препоръките';

  @override
  String get sheetPlayNext => 'Пусни следваща';

  @override
  String get sheetAddToPlaylist => 'Добави в плейлист';

  @override
  String get sheetDownloaded => 'Изтеглено';

  @override
  String get sheetRemoveFile => 'Докосни, за да премахнеш файла';

  @override
  String get sheetDownload => 'Изтегли';

  @override
  String get sheetKeepOffline => 'Запази за офлайн';

  @override
  String get sheetRadio => 'Стартирай радио';

  @override
  String get sheetRadioSub => 'Опашка, изградена около тази песен';

  @override
  String get sheetQueue => 'Опашка';

  @override
  String get sheetSleepTimer => 'Таймер за заспиване';

  @override
  String get sheetSleepOff => 'Изкл.';

  @override
  String sheetSleepMinutes(int count) {
    return '$count минути';
  }

  @override
  String get sheetSleepEndOfTrack => 'Края на тази песен';

  @override
  String sheetSleepSet(int count) {
    return 'Музиката спира след $count мин';
  }

  @override
  String get tasteTitle => 'Твоят вкус';

  @override
  String get tasteRetrain => 'Обучи отново';

  @override
  String get tasteRetraining => 'Преобучение върху историята ти…';

  @override
  String get tasteRetrained => 'ИИ изгради отново своя модел.';

  @override
  String tasteConfidence(int percent) {
    return 'Увереност $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays пускания · $skips пропускания · $likes харесвания';
  }

  @override
  String get tasteEmptySummary =>
      'Пусни няколко песни и тук ще се появят данни.';

  @override
  String get tasteKeepLearning => 'Продължавай да се учиш, докато слушам';

  @override
  String get tasteKeepLearningSub => 'Изключи, за да замразиш текущия профил';

  @override
  String get tasteDownloadsTitle => 'Изтегляния, които ИИ управлява';

  @override
  String get tasteDownloadsSub => 'Музиката стига до устройството без да питаш';

  @override
  String get tasteDownloadLikes => 'Изтегляй всичко, което харесвам';

  @override
  String get tasteDownloadLikesSub =>
      'Натисни сърцето и файлът се запазва за офлайн';

  @override
  String get tasteAiInstall =>
      'Позволи на ИИ да инсталира музика, която избира';

  @override
  String get tasteAiInstallSub => 'Ще извлича парчета, в които е сигурен';

  @override
  String get tasteWhatItThinks => 'Какво мисли, че харесваш';

  @override
  String get tasteWhatItThinksSub =>
      'Научено от пускания, пропускания, харесвания и повторения';

  @override
  String get tasteArtists => 'Изпълнители, на които се опира';

  @override
  String get tasteWhenYouListen => 'Кога слушаш';

  @override
  String get tasteWhenYouListenSub =>
      'Пускания на час — текущият час има по-голяма тежест';

  @override
  String get tasteDecades => 'Десетилетия';

  @override
  String get tasteTune => 'Настрой препоръките';

  @override
  String get tasteTuneSub => 'Влиза в сила при следващото обновяване на Начало';

  @override
  String get tasteDiscovery => 'Откривания';

  @override
  String get tasteDiscoverySub => 'Познато ↔ неща, които никога не си чувал';

  @override
  String get tasteEnergy => 'Енергия';

  @override
  String get tasteEnergySub => 'Спокойно ↔ силно';

  @override
  String get tasteRecency => 'Новост';

  @override
  String get tasteRecencySub => 'Вечно ↔ чисто ново';

  @override
  String get tasteNostalgia => 'Носталгия';

  @override
  String get tasteNostalgiaSub =>
      'Колко назад във времето един стар фаворит се смята за забравен';

  @override
  String get tasteSignals => 'Сигнали, които може да използва';

  @override
  String get tasteSignalsSub => 'Всичко остава на това устройство';

  @override
  String get tasteUseHistory => 'Какво съм слушал';

  @override
  String get tasteUseSkips => 'Какво пропускам';

  @override
  String get tasteUseTime => 'Час от деня';

  @override
  String get tasteUseYouTube => 'Предложения от YouTube';

  @override
  String get tasteAlwaysMore => 'Винаги повече от';

  @override
  String get tasteNeverAgain => 'Никога повече';

  @override
  String get tasteAddArtist => 'Добави изпълнител';

  @override
  String get tasteMoreOfPrompt => 'Винаги повече от…';

  @override
  String get tasteNeverAgainPrompt => 'Никога повече…';

  @override
  String get tasteReset => 'Нулирай наученото';

  @override
  String get tasteResetSub => 'Музиката ти остава; профилът започва от нула';

  @override
  String get trainCard => 'Обучи го с оценки';

  @override
  String get trainCardSub =>
      'Плъзгай през истински песни. Надясно за още такива, наляво за никога повече. Две минути тук струват колкото седмица слушане.';

  @override
  String get trainStart => 'Започни кръг на обучение';

  @override
  String get trainTitle => 'Кръг на обучение';

  @override
  String get trainQuestion => 'Би ли искал това в Начало?';

  @override
  String get trainMoreLikeThis => 'Още такива';

  @override
  String get trainNeverAgain => 'Никога повече';

  @override
  String get trainDone => 'Кръгът е завършен';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked запазени · $blocked блокирани. Увереност $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Обратно към твоя вкус';

  @override
  String get trainNothingTitle => 'Още няма какво да се оцени';

  @override
  String get trainNothingBody =>
      'Добави музика или първо остави ИИ да извлече кандидати, после се върни.';

  @override
  String get trainLeaveTitle => 'Да напуснеш ли кръга на обучение?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ако излезеш сега, ИИ ще изхвърли всичко от този кръг — всичките $count песни, които току-що оцени.',
      one:
          'Ако излезеш сега, ИИ ще изхвърли всичко от този кръг — 1-та песен, която току-що оцени.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Продължи обучението';

  @override
  String get trainDiscard => 'Изхвърли и излез';

  @override
  String get setTitle => 'Настройки';

  @override
  String get setAppearance => 'Външен вид';

  @override
  String get setTheme => 'Тема';

  @override
  String get setThemeSystem => 'Следвай системата';

  @override
  String get setThemeLight => 'Светла';

  @override
  String get setThemeDark => 'Тъмна';

  @override
  String get setPureBlack => 'Чисто черно';

  @override
  String get setPureBlackSub => 'Пести батерия на OLED екран';

  @override
  String get setAccent => 'Акцентен цвят';

  @override
  String get setAccentArtwork => 'От обложката';

  @override
  String get setAccentFixed => 'Един цвят, който избрах';

  @override
  String get setLanguage => 'Език';

  @override
  String get setLanguageSystem => 'Следвай системата';

  @override
  String get setAccessibility => 'Достъпност';

  @override
  String get setTextSize => 'Размер на текста';

  @override
  String get setTextSizeSub => 'Върху системната ти настройка';

  @override
  String get setReduceMotion => 'Намали движението';

  @override
  String get setReduceMotionSub =>
      'Спира лентите, визуализатора, подскачащото превъртане, пружиниращите докосвания и преходите между страници';

  @override
  String get setHighContrast => 'Висок контраст';

  @override
  String get setHighContrastSub => 'По-силно разделяне и видими контури';

  @override
  String get setBoldText => 'Удебелен текст';

  @override
  String get setPlayback => 'Възпроизвеждане';

  @override
  String get setAutoRadio => 'Продължавай музиката';

  @override
  String get setAutoRadioSub =>
      'Когато опашката свърши, продължи с радио, изградено от последната песен';

  @override
  String get setSmartShuffle => 'Интелигентно разбъркване';

  @override
  String get setSmartShuffleSub => 'Разбърква по вкус, а не на случаен принцип';

  @override
  String get setResume => 'Продължи оттам, докъдето стигнах';

  @override
  String get setResumeSub =>
      'Възстановява опашката при отваряне на приложението, на пауза';

  @override
  String get setDataSaver => 'Икономия на данни извън Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Ограничава стрийминга и изтеглянията до 128 kbps на мобилни данни';

  @override
  String get setHaptics => 'Хаптична обратна връзка';

  @override
  String get setShowReasons => 'Показвай защо нещо е препоръчано';

  @override
  String get setSkipSilence => 'Пропускай тишината';

  @override
  String get setQuality => 'Качество на звука';

  @override
  String get setQualityLow => 'Ниско · 64 kbps';

  @override
  String get setQualityNormal => 'Нормално · 128 kbps';

  @override
  String get setQualityHigh => 'Високо · 192 kbps';

  @override
  String get setQualityBest => 'Най-доброто налично';

  @override
  String get setStorage => 'Изтегляния и хранилище';

  @override
  String get setWifiOnly => 'Изтегляй само през Wi-Fi';

  @override
  String get setDailyLimit => 'Дневен лимит за ИИ';

  @override
  String setDailyLimitSub(int count) {
    return '$count песни на ден';
  }

  @override
  String get setBudget => 'Хранилище, което ИИ може да използва';

  @override
  String setUsed(Object size) {
    return '$size заети от изтегляния';
  }

  @override
  String get setYourMusic => 'Твоята музика';

  @override
  String get setImport => 'Добави музика от това устройство';

  @override
  String get setImportSub => 'Избери папки или отделни файлове';

  @override
  String get setCleanup => 'Почисти липсващите файлове';

  @override
  String get setCleanupSub => 'Премахни песни, чийто файл липсва';

  @override
  String setCleanupDone(int count) {
    return 'Премахнати са $count липсващи файла.';
  }

  @override
  String get setExport => 'Изпрати вкуса ми на друго устройство';

  @override
  String get setExportSub =>
      'Запазва файл с харесванията ти, пусканията и всичко, което ИИ е научил';

  @override
  String get setImportTaste => 'Зареди вкус от друго устройство';

  @override
  String get setImportTasteSub =>
      'Избери запазен файл с вкус и го слей — безопасно е да се повтаря';

  @override
  String get setAbout => 'Относно';

  @override
  String get setAboutBody =>
      'Музика от YouTube и твои собствени файлове. ИИ работи изцяло на това устройство — нищо не го напуска.';

  @override
  String get setSource => 'Изходен код';

  @override
  String get importTitle => 'Добави музика';

  @override
  String get importPickFolder => 'Избери папка';

  @override
  String get importPickFiles => 'Избери файлове';

  @override
  String importScanning(Object file) {
    return 'Сканиране на $file';
  }

  @override
  String importAdded(int count) {
    return '$count добавени';
  }

  @override
  String get importDenied =>
      'Достъпът е отказан — музиката ти не може да бъде прочетена.';

  @override
  String get importWatched => 'Папки, които следи';

  @override
  String get importIosHint =>
      'Отвори приложението Файлове, отиди в На моя iPhone → TuneBox и пусни музиката там.';

  @override
  String get playerQueue => 'Опашка';

  @override
  String get playerUpNext => 'Следва';

  @override
  String get playerLyrics => 'Текст';

  @override
  String get playerNoLyrics => 'Няма текст за тази песен.';

  @override
  String get playerRepeat => 'Повтаряне';

  @override
  String get playerShuffle => 'Разбъркване';

  @override
  String errorPlayback(Object title) {
    return '„$title“ не може да се пусне';
  }

  @override
  String errorSkipping(Object title) {
    return 'Пропускане на „$title“ — стриймът не се отвори.';
  }

  @override
  String get undo => 'Отмени';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'В момента: $tags, начело с $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'В момента: $tags.';
  }

  @override
  String get setColour => 'Цвят';

  @override
  String get setColourSub => 'Цялото приложение го следва';

  @override
  String get setCoverArt => 'Обложка';

  @override
  String get setMyColour => 'Моят цвят';

  @override
  String get setCoverArtSub =>
      'Всяка песен преоцветява приложението според обложката си.';

  @override
  String get setMyColourSub => 'Един цвят, навсякъде, винаги.';

  @override
  String get setPickColour => 'Избери всеки цвят';

  @override
  String get setWifiOnlyTitle => 'Изтегляй само през Wi-Fi';

  @override
  String get setDownloadLikes => 'Изтегляй всичко, което харесвам';

  @override
  String get setDownloadLikesSub => 'Бутонът със сърце запазва и файла';

  @override
  String get setAiInstall => 'Позволи на ИИ да инсталира музика, която избира';

  @override
  String get setSkipSilenceSub =>
      'Само за Android. Може да отреже тихи интрота, затихвания и меки части — остави изключено, ако музиката прескача';

  @override
  String get setStorageUsed => 'Хранилище, заето от изтегляния';

  @override
  String get setLibrary => 'Библиотека';

  @override
  String get setUpdates => 'Актуализации';

  @override
  String get setAutoUpdate => 'Проверявай за актуализации сам';

  @override
  String get setAutoUpdateSub =>
      'На няколко часа, тихо, и изтегля през Wi-Fi. Инсталирането пак пита теб.';

  @override
  String setUpdateReady(Object version) {
    return 'Актуализацията до $version е готова';
  }

  @override
  String get setUpdateReadySub => 'Изтеглена — докосни, за да инсталираш';

  @override
  String get setUpdateAvailableSub =>
      'Вземи я от страницата с версиите — докосни, за да копираш връзката';

  @override
  String get setLinkCopied => 'Връзката е копирана';

  @override
  String get setCheckNow => 'Провери сега';

  @override
  String get setUpToDate => 'TuneBox е актуален';

  @override
  String get setChecking => 'Търсене на по-нова версия…';
}
