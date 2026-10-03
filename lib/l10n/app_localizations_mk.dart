// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class LMk extends L {
  LMk([String locale = 'mk']) : super(locale);

  @override
  String get navHome => 'Почетна';

  @override
  String get navExplore => 'Истражи';

  @override
  String get navLibrary => 'Библиотека';

  @override
  String get navTaste => 'Твојот вкус';

  @override
  String get actionDone => 'Готово';

  @override
  String get actionCancel => 'Откажи';

  @override
  String get actionCreate => 'Создај';

  @override
  String get actionPlay => 'Пушти';

  @override
  String get actionShuffle => 'Измешај';

  @override
  String get actionPlayAll => 'Пушти сè';

  @override
  String get actionAdd => 'Додај';

  @override
  String get actionRemove => 'Отстрани';

  @override
  String get actionName => 'Име';

  @override
  String get greetingNight => 'Уште си буден?';

  @override
  String get greetingMorning => 'Добро утро';

  @override
  String get greetingAfternoon => 'Добар ден';

  @override
  String get greetingEvening => 'Добра вечер';

  @override
  String get homeBuilding => 'ВИ ги гради твоите полици…';

  @override
  String get homeOffline => 'Офлајн — се прикажува она што е на уредот';

  @override
  String get homeNothingYet => 'Сè уште нема што да се прикаже';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count полици, штотуку освежени',
      one: '$count полица, штотуку освежена',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Изгради ги полиците одново';

  @override
  String get homeAddMusic => 'Додај музика од овој уред';

  @override
  String get homeQuickPicks => 'Брзи избори';

  @override
  String get homeQuickPicksSub => 'Директно назад кон она што го слушаше';

  @override
  String get homeEmptyTitle => 'Твојата библиотека е празна';

  @override
  String get homeEmptyBody =>
      'Пребарај нешто или додај ја музиката што веќе е на овој уред. ВИ почнува да учи од твоето прво пуштање.';

  @override
  String get homeAddMyMusic => 'Додај ја мојата музика';

  @override
  String homeCouldNotReach(Object error) {
    return 'Не може да се достигне YouTube: $error';
  }

  @override
  String get moodFocus => 'Фокус';

  @override
  String get moodWorkout => 'Тренинг';

  @override
  String get moodChill => 'Опуштање';

  @override
  String get moodCommute => 'Патување';

  @override
  String get moodParty => 'Забава';

  @override
  String moodBuilding(Object mood) {
    return 'Се гради микс: $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Не успеа: $error';
  }

  @override
  String get shelfRepeat => 'На повторување';

  @override
  String get shelfRepeatSub => 'Твоите последни две недели';

  @override
  String get shelfForgotten => 'Стари заборавени хитови што ти се допаѓаа';

  @override
  String get shelfForgottenSub => 'Некогаш сакани, неслушани веќе некое време';

  @override
  String get shelfNew => 'Ново';

  @override
  String get shelfNewSub => 'Свежи песни за кои ВИ мисли дека се за тебе';

  @override
  String shelfBecause(Object artist) {
    return 'Бидејќи слушаше $artist';
  }

  @override
  String get shelfBecauseSub => 'Ист агол од твојот вкус';

  @override
  String get shelfDeep => 'Едвај допрени';

  @override
  String get shelfDeepSub => 'Во твојата библиотека, речиси никогаш пуштани';

  @override
  String get shelfMix => 'Твојот микс';

  @override
  String get shelfMixSub =>
      'Се гради одново секогаш кога ќе ја отвориш апликацијата';

  @override
  String get shelfAdded => 'Неодамна додадено';

  @override
  String get shelfAddedSub => 'Преземања и датотеки што си ги увезол';

  @override
  String get shelfStarter => 'Почни тука';

  @override
  String get shelfStarterSub => 'Пушти неколку и ВИ веднаш почнува да учи';

  @override
  String reasonPlays(int count) {
    return '$count пуштања';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Допаднато, последно пуштено $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count пуштања, последно $when';
  }

  @override
  String get reasonTopArtist => 'Еден од твоите најслушани изведувачи';

  @override
  String reasonMore(Object artist) {
    return 'Повеќе од $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Постојано се враќаш на $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Твој вид $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Неодамна многу $tag';
  }

  @override
  String get reasonOutThisYear => 'Излезено оваа година';

  @override
  String get reasonReleasedRecently => 'Неодамна издадено';

  @override
  String get reasonClose => 'Блиску до она што го слушаше';

  @override
  String reasonNear(Object artist) {
    return 'Слично на $artist';
  }

  @override
  String get reasonNeverPlayed => 'Никогаш пуштано';

  @override
  String get reasonPlayedOnce => 'Пуштено еднаш';

  @override
  String get reasonPopular => 'Популарно сега';

  @override
  String whenYearsAgo(int count) {
    return 'пред $count г.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'пред $count мес.';
  }

  @override
  String whenDaysAgo(int count) {
    return 'пред $count дена';
  }

  @override
  String get searchHint => 'Песни, изведувачи, албуми';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count резултати',
      one: '$count резултат',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Неодамнешни пребарувања';

  @override
  String get searchEmptyTitle => 'Нема резултати';

  @override
  String get searchEmptyBody =>
      'Пробај друг правопис или само името на изведувачот.';

  @override
  String get searchStartTitle => 'Најди нешто за пуштање';

  @override
  String get searchStartBody =>
      'Пребарувај YouTube Music — се враќаат само песни, никогаш видеа за други работи.';

  @override
  String get libPlaylists => 'Плејлисти';

  @override
  String get libSongs => 'Песни';

  @override
  String get libArtists => 'Изведувачи';

  @override
  String get libLiked => 'Допаднато';

  @override
  String get libDownloads => 'Преземања';

  @override
  String get libImported => 'Увезено';

  @override
  String get libLikedSongs => 'Допаднати песни';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count песни',
      one: '$count песна',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count офлајн';
  }

  @override
  String get libMyFiles => 'Мои сопствени датотеки';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count датотеки',
      one: '$count датотека',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Нова плејлиста';

  @override
  String get libMakeOne => 'Направи една';

  @override
  String get libSortRecent => 'Неодамна додадено';

  @override
  String get libSortTitle => 'Наслов';

  @override
  String get libSortArtist => 'Изведувач';

  @override
  String get libSortPlays => 'Најпуштани';

  @override
  String get sheetNotForMe => 'Не е за мене';

  @override
  String get sheetNotForMeSub => 'Никогаш повеќе не го препорачувај ова';

  @override
  String get sheetBlocked => 'Блокирано — допри за повторно дозволување';

  @override
  String get sheetBlockedSub => 'Може повторно да се појави во препораките';

  @override
  String get sheetPlayNext => 'Пушти следно';

  @override
  String get sheetAddToPlaylist => 'Додај во плејлиста';

  @override
  String get sheetDownloaded => 'Преземено';

  @override
  String get sheetRemoveFile => 'Допри за да ја отстраниш датотеката';

  @override
  String get sheetDownload => 'Преземи';

  @override
  String get sheetKeepOffline => 'Чувај за офлајн';

  @override
  String get sheetRadio => 'Започни радио';

  @override
  String get sheetRadioSub => 'Редица изградена околу оваа песна';

  @override
  String get sheetQueue => 'Редица';

  @override
  String get sheetSleepTimer => 'Тајмер за спиење';

  @override
  String get sheetSleepOff => 'Исклучено';

  @override
  String sheetSleepMinutes(int count) {
    return '$count минути';
  }

  @override
  String get sheetSleepEndOfTrack => 'Крај на оваа песна';

  @override
  String sheetSleepSet(int count) {
    return 'Музиката запира за $count мин.';
  }

  @override
  String get tasteTitle => 'Твојот вкус';

  @override
  String get tasteRetrain => 'Преобучи';

  @override
  String get tasteRetraining => 'Преобучување според твојата историја…';

  @override
  String get tasteRetrained => 'ВИ го изгради својот модел одново.';

  @override
  String tasteConfidence(int percent) {
    return 'Сигурност $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays пуштања · $skips прескокнувања · $likes допаѓања';
  }

  @override
  String get tasteEmptySummary => 'Пушти неколку песни и ова ќе се пополни.';

  @override
  String get tasteKeepLearning => 'Учи додека слушам';

  @override
  String get tasteKeepLearningSub =>
      'Исклучи за да го замрзнеш тековниот профил';

  @override
  String get tasteDownloadsTitle => 'Преземања со кои управува ВИ';

  @override
  String get tasteDownloadsSub => 'Музиката стигнува на уредот без да побараш';

  @override
  String get tasteDownloadLikes => 'Преземи сè што ми се допаѓа';

  @override
  String get tasteDownloadLikesSub =>
      'Притисни на срцето и датотеката се зачувува за офлајн';

  @override
  String get tasteAiInstall => 'Дозволи ВИ да инсталира музика што ја избира';

  @override
  String get tasteAiInstallSub => 'Ќе презема песни за кои е сигурна';

  @override
  String get tasteWhatItThinks => 'Што мисли дека ти се допаѓа';

  @override
  String get tasteWhatItThinksSub =>
      'Научено од пуштања, прескокнувања, допаѓања и повторувања';

  @override
  String get tasteArtists => 'Изведувачи на кои се потпира';

  @override
  String get tasteWhenYouListen => 'Кога слушаш';

  @override
  String get tasteWhenYouListenSub =>
      'Пуштања по час — тековниот час има поголема тежина';

  @override
  String get tasteDecades => 'Децении';

  @override
  String get tasteTune => 'Подеси ги препораките';

  @override
  String get tasteTuneSub => 'Важи при следното освежување на почетната';

  @override
  String get tasteDiscovery => 'Откривање';

  @override
  String get tasteDiscoverySub =>
      'Познато ↔ работи што никогаш не си ги слушнал';

  @override
  String get tasteEnergy => 'Енергија';

  @override
  String get tasteEnergySub => 'Мирно ↔ гласно';

  @override
  String get tasteRecency => 'Новост';

  @override
  String get tasteRecencySub => 'Вечно ↔ сосема ново';

  @override
  String get tasteNostalgia => 'Носталгија';

  @override
  String get tasteNostalgiaSub =>
      'Колку назад еден стар омилен се смета за заборавен';

  @override
  String get tasteSignals => 'Сигнали што може да ги користи';

  @override
  String get tasteSignalsSub => 'Сè останува на овој уред';

  @override
  String get tasteUseHistory => 'Што сум пуштал';

  @override
  String get tasteUseSkips => 'Што прескокнувам';

  @override
  String get tasteUseTime => 'Време од денот';

  @override
  String get tasteUseYouTube => 'Предлози од YouTube';

  @override
  String get tasteAlwaysMore => 'Секогаш повеќе од';

  @override
  String get tasteNeverAgain => 'Никогаш повеќе';

  @override
  String get tasteAddArtist => 'Додај изведувач';

  @override
  String get tasteMoreOfPrompt => 'Секогаш повеќе од…';

  @override
  String get tasteNeverAgainPrompt => 'Никогаш повеќе…';

  @override
  String get tasteReset => 'Ресетирај го наученото';

  @override
  String get tasteResetSub =>
      'Твојата музика останува; профилот почнува од нула';

  @override
  String get trainCard => 'Обучи го со оценување';

  @override
  String get trainCardSub =>
      'Прелистувај вистински песни. Десно за повеќе вакви, лево за никогаш повеќе. Две минути тука вредат повеќе од недела слушање.';

  @override
  String get trainStart => 'Започни круг на обука';

  @override
  String get trainTitle => 'Круг на обука';

  @override
  String get trainQuestion => 'Дали би го сакал ова на твојата почетна?';

  @override
  String get trainMoreLikeThis => 'Повеќе вакви';

  @override
  String get trainNeverAgain => 'Никогаш повеќе';

  @override
  String get trainDone => 'Кругот е завршен';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked задржани · $blocked блокирани. Сигурност $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Назад кон твојот вкус';

  @override
  String get trainNothingTitle => 'Сè уште нема што да се оцени';

  @override
  String get trainNothingBody =>
      'Додај музика или прво дозволи му на ВИ да донесе кандидати, па врати се.';

  @override
  String get trainLeaveTitle => 'Да го напуштиш кругот на обука?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ако излезеш сега, ВИ го отфрла сето од овој круг — сите $count песни што штотуку ги оцени.',
      one:
          'Ако излезеш сега, ВИ го отфрла сето од овој круг — $count песна што штотуку ја оцени.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Продолжи со обука';

  @override
  String get trainDiscard => 'Отфрли и излези';

  @override
  String get setTitle => 'Поставки';

  @override
  String get setAppearance => 'Изглед';

  @override
  String get setTheme => 'Тема';

  @override
  String get setThemeSystem => 'Следи го системот';

  @override
  String get setThemeLight => 'Светла';

  @override
  String get setThemeDark => 'Темна';

  @override
  String get setPureBlack => 'Чисто црна';

  @override
  String get setPureBlackSub => 'Штеди енергија на OLED екран';

  @override
  String get setAccent => 'Акцентна боја';

  @override
  String get setAccentArtwork => 'Од насловната слика';

  @override
  String get setAccentFixed => 'Една боја што ја избрав';

  @override
  String get setLanguage => 'Јазик';

  @override
  String get setLanguageSystem => 'Следи го системот';

  @override
  String get setAccessibility => 'Пристапност';

  @override
  String get setTextSize => 'Големина на текст';

  @override
  String get setTextSizeSub => 'Врз твојата системска поставка';

  @override
  String get setReduceMotion => 'Намали го движењето';

  @override
  String get setReduceMotionSub =>
      'Ги запира лентите, визуелизаторот, скокачкото скролање, еластичните допири и преодите меѓу страници';

  @override
  String get setHighContrast => 'Висок контраст';

  @override
  String get setHighContrastSub => 'Појасно раздвојување и видливи контури';

  @override
  String get setBoldText => 'Задебелен текст';

  @override
  String get setPlayback => 'Пуштање';

  @override
  String get setAutoRadio => 'Продолжи ја музиката';

  @override
  String get setAutoRadioSub =>
      'Кога редицата ќе заврши, продолжува со радио изградено од последната песна';

  @override
  String get setSmartShuffle => 'Паметно мешање';

  @override
  String get setSmartShuffleSub => 'Меша според вкус наместо случајно';

  @override
  String get setResume => 'Продолжи од каде застанав';

  @override
  String get setResumeSub =>
      'Ја враќа редицата кога апликацијата ќе се отвори, паузирана';

  @override
  String get setDataSaver => 'Штедење податоци без Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Го ограничува стримот и преземањата на 128 kbps на мобилни податоци';

  @override
  String get setHaptics => 'Хаптичка повратна информација';

  @override
  String get setShowReasons => 'Прикажи зошто нешто е препорачано';

  @override
  String get setSkipSilence => 'Прескокни тишина';

  @override
  String get setQuality => 'Квалитет на звук';

  @override
  String get setQualityLow => 'Низок · 64 kbps';

  @override
  String get setQualityNormal => 'Нормален · 128 kbps';

  @override
  String get setQualityHigh => 'Висок · 192 kbps';

  @override
  String get setQualityBest => 'Најдобар достапен';

  @override
  String get setStorage => 'Преземања и меморија';

  @override
  String get setWifiOnly => 'Преземај само на Wi-Fi';

  @override
  String get setDailyLimit => 'Дневен лимит за ВИ';

  @override
  String setDailyLimitSub(int count) {
    return '$count песни дневно';
  }

  @override
  String get setBudget => 'Меморија што може да ја користи ВИ';

  @override
  String setUsed(Object size) {
    return '$size зафатено од преземања';
  }

  @override
  String get setYourMusic => 'Твојата музика';

  @override
  String get setImport => 'Додај музика од овој уред';

  @override
  String get setImportSub => 'Избери папки или поединечни датотеки';

  @override
  String get setCleanup => 'Исчисти ги недостасувачките датотеки';

  @override
  String get setCleanupSub => 'Отстрани песни чија датотека ја нема';

  @override
  String setCleanupDone(int count) {
    return 'Отстранети недостасувачки датотеки: $count.';
  }

  @override
  String get setExport => 'Испрати го мојот вкус на друг уред';

  @override
  String get setExportSub =>
      'Зачувува датотека со твоите допаѓања, пуштања и сè што ВИ го научила';

  @override
  String get setImportTaste => 'Вчитај вкус од друг уред';

  @override
  String get setImportTasteSub =>
      'Избери зачувана датотека со вкус и спој ја — безбедно е да се повтори';

  @override
  String get setAbout => 'За апликацијата';

  @override
  String get setAboutBody =>
      'Музика од YouTube и твоите сопствени датотеки. ВИ работи целосно на овој уред — ништо не го напушта.';

  @override
  String get setSource => 'Изворен код';

  @override
  String get importTitle => 'Додај музика';

  @override
  String get importPickFolder => 'Избери папка';

  @override
  String get importPickFiles => 'Избери датотеки';

  @override
  String importScanning(Object file) {
    return 'Скенирање: $file';
  }

  @override
  String importAdded(int count) {
    return 'Додадени: $count';
  }

  @override
  String get importDenied =>
      'Дозволата е одбиена — не може да се прочита твојата музика.';

  @override
  String get importWatched => 'Папки што ги следи';

  @override
  String get importIosHint =>
      'Отвори ја апликацијата Датотеки, оди на На мојот iPhone → TuneBox и префрли музика таму.';

  @override
  String get playerQueue => 'Редица';

  @override
  String get playerUpNext => 'Следно';

  @override
  String get playerLyrics => 'Текст на песната';

  @override
  String get playerNoLyrics => 'Нема текст за оваа.';

  @override
  String get playerRepeat => 'Повтори';

  @override
  String get playerShuffle => 'Измешај';

  @override
  String errorPlayback(Object title) {
    return 'Не може да се пушти „$title“';
  }

  @override
  String errorSkipping(Object title) {
    return 'Се прескокнува „$title“ — стримот не се отвори.';
  }

  @override
  String get undo => 'Врати';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Моментално: $tags, предводено од $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Моментално: $tags.';
  }

  @override
  String get setColour => 'Боја';

  @override
  String get setColourSub => 'Целата апликација ја следи оваа боја';

  @override
  String get setCoverArt => 'Насловна слика';

  @override
  String get setMyColour => 'Моја боја';

  @override
  String get setCoverArtSub =>
      'Секоја песна ја преобојува апликацијата според својата насловна.';

  @override
  String get setMyColourSub => 'Една боја, насекаде, цело време.';

  @override
  String get setPickColour => 'Избери која било боја';

  @override
  String get setWifiOnlyTitle => 'Преземај само на Wi-Fi';

  @override
  String get setDownloadLikes => 'Преземи сè што ми се допаѓа';

  @override
  String get setDownloadLikesSub => 'Копчето со срце ја зачувува и датотеката';

  @override
  String get setAiInstall => 'Дозволи ВИ да инсталира музика што ја избира';

  @override
  String get setSkipSilenceSub =>
      'Само за Android. Може да отсече тивки почетоци, затемнувања и меки делови — остави исклучено ако музиката скока';

  @override
  String get setStorageUsed => 'Меморија зафатена од преземања';

  @override
  String get setLibrary => 'Библиотека';

  @override
  String get setUpdates => 'Ажурирања';

  @override
  String get setAutoUpdate => 'Проверувај за ажурирања сама';

  @override
  String get setAutoUpdateSub =>
      'На секои неколку часа, тивко, и презема на Wi-Fi. За инсталирање сепак прашува.';

  @override
  String setUpdateReady(Object version) {
    return 'Ажурирањето на $version е подготвено';
  }

  @override
  String get setUpdateReadySub => 'Преземено — допри за да инсталираш';

  @override
  String get setUpdateAvailableSub =>
      'Земи го од страницата со изданија — допри за да ја копираш врската';

  @override
  String get setLinkCopied => 'Врската е копирана';

  @override
  String get setCheckNow => 'Провери сега';

  @override
  String get setUpToDate => 'TuneBox е ажуриран';

  @override
  String get setChecking => 'Барање понова верзија…';
}
