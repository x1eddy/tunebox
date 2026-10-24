// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class LSr extends L {
  LSr([String locale = 'sr']) : super(locale);

  @override
  String get navHome => 'Почетна';

  @override
  String get navExplore => 'Истражи';

  @override
  String get navLibrary => 'Библиотека';

  @override
  String get navTaste => 'Твој укус';

  @override
  String get actionDone => 'Готово';

  @override
  String get actionCancel => 'Откажи';

  @override
  String get actionCreate => 'Направи';

  @override
  String get actionPlay => 'Пусти';

  @override
  String get actionShuffle => 'Помешај';

  @override
  String get actionPlayAll => 'Пусти све';

  @override
  String get actionAdd => 'Додај';

  @override
  String get actionRemove => 'Уклони';

  @override
  String get actionName => 'Име';

  @override
  String get greetingNight => 'Још си будан?';

  @override
  String get greetingMorning => 'Добро јутро';

  @override
  String get greetingAfternoon => 'Добар дан';

  @override
  String get greetingEvening => 'Добро вече';

  @override
  String get homeBuilding => 'Вештачка интелигенција слаже твоје полице…';

  @override
  String get homeOffline => 'Ван мреже — приказује се оно што је на уређају';

  @override
  String get homeNothingYet => 'Још нема шта да се прикаже';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count полица, управо освежених',
      few: '$count полице, управо освежене',
      one: '$count полица, управо освежена',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Поново сложи полице';

  @override
  String get homeAddMusic => 'Додај музику са овог уређаја';

  @override
  String get homeQuickPicks => 'Брзи избор';

  @override
  String get homeQuickPicksSub => 'Одмах назад на оно што си слушао';

  @override
  String get homeEmptyTitle => 'Твоја библиотека је празна';

  @override
  String get homeEmptyBody =>
      'Потражи нешто или додај музику која већ постоји на овом уређају. Вештачка интелигенција почиње да учи већ од твог првог пуштања.';

  @override
  String get homeAddMyMusic => 'Додај моју музику';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube није доступан: $error';
  }

  @override
  String get moodFocus => 'Фокус';

  @override
  String get moodWorkout => 'Тренинг';

  @override
  String get moodChill => 'Опуштено';

  @override
  String get moodCommute => 'Путовање';

  @override
  String get moodParty => 'Журка';

  @override
  String moodBuilding(Object mood) {
    return 'Прави се $mood микс…';
  }

  @override
  String moodFailed(Object error) {
    return 'Није успело: $error';
  }

  @override
  String get shelfRepeat => 'У понављању';

  @override
  String get shelfRepeatSub => 'Твоје последње две недеље';

  @override
  String get shelfForgotten => 'Стари заборављени хитови који су ти се свидели';

  @override
  String get shelfForgottenSub => 'Некад омиљени, већ дуго нетакнути';

  @override
  String get shelfNew => 'Ново';

  @override
  String get shelfNewSub =>
      'Свежи нумере за које вештачка интелигенција мисли да су за тебе';

  @override
  String shelfBecause(Object artist) {
    return 'Зато што си слушао $artist';
  }

  @override
  String get shelfBecauseSub => 'Исти кутак твог укуса';

  @override
  String get shelfDeep => 'Једва дирнуто';

  @override
  String get shelfDeepSub => 'У твојој библиотеци, готово никад пуштено';

  @override
  String get shelfMix => 'Твој микс';

  @override
  String get shelfMixSub => 'Изнова се прави сваки пут кад отвориш апликацију';

  @override
  String get shelfAdded => 'Недавно додато';

  @override
  String get shelfAddedSub => 'Преузимања и датотеке које си увезао';

  @override
  String get shelfStarter => 'Почни овде';

  @override
  String get shelfStarterSub =>
      'Пусти неколико и вештачка интелигенција одмах почиње да учи';

  @override
  String reasonPlays(int count) {
    return '$count пуштања';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Свиђа ти се, последњи пут пуштено $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count пуштања, последњи пут $when';
  }

  @override
  String get reasonTopArtist => 'Један од твојих најслушаних извођача';

  @override
  String reasonMore(Object artist) {
    return 'Више од $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Стално се враћаш на $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Твоја врста: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Последње време доста $tag';
  }

  @override
  String get reasonOutThisYear => 'Изашло ове године';

  @override
  String get reasonReleasedRecently => 'Недавно објављено';

  @override
  String get reasonClose => 'Близу онога што си слушао';

  @override
  String reasonNear(Object artist) {
    return 'Налази се уз $artist';
  }

  @override
  String get reasonNeverPlayed => 'Никад пуштено';

  @override
  String get reasonPlayedOnce => 'Пуштено једном';

  @override
  String get reasonPopular => 'Тренутно популарно';

  @override
  String whenYearsAgo(int count) {
    return 'пре $count г.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'пре $count мес.';
  }

  @override
  String whenDaysAgo(int count) {
    return 'пре $count дана';
  }

  @override
  String get searchHint => 'Песме, извођачи, албуми';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count резултата',
      few: '$count резултата',
      one: '$count резултат',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Недавне претраге';

  @override
  String get searchEmptyTitle => 'Ништа није пронађено';

  @override
  String get searchEmptyBody =>
      'Пробај другачији правопис или само име извођача.';

  @override
  String get searchStartTitle => 'Пронађи нешто за слушање';

  @override
  String get searchStartBody =>
      'Претражи YouTube Music — враћају се само песме, никад видео снимци других ствари.';

  @override
  String get libPlaylists => 'Плејлисте';

  @override
  String get libSongs => 'Песме';

  @override
  String get libArtists => 'Извођачи';

  @override
  String get libLiked => 'Омиљено';

  @override
  String get libDownloads => 'Преузимања';

  @override
  String get libImported => 'Увезено';

  @override
  String get libLikedSongs => 'Омиљене песме';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count песама',
      few: '$count песме',
      one: '$count песма',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ван мреже';
  }

  @override
  String get libMyFiles => 'Моје датотеке';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count датотека',
      few: '$count датотеке',
      one: '$count датотека',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Нова плејлиста';

  @override
  String get libMakeOne => 'Направи једну';

  @override
  String get libSortRecent => 'Недавно додато';

  @override
  String get libSortTitle => 'Наслов';

  @override
  String get libSortArtist => 'Извођач';

  @override
  String get libSortPlays => 'Најслушаније';

  @override
  String get sheetNotForMe => 'Није за мене';

  @override
  String get sheetNotForMeSub => 'Никад више не препоручуј ово';

  @override
  String get sheetBlocked => 'Блокирано — додирни да поново дозволиш';

  @override
  String get sheetBlockedSub => 'Може се поново појавити у препорукама';

  @override
  String get sheetPlayNext => 'Пусти следеће';

  @override
  String get sheetAddToPlaylist => 'Додај на плејлисту';

  @override
  String get sheetDownloaded => 'Преузето';

  @override
  String get sheetRemoveFile => 'Додирни да уклониш датотеку';

  @override
  String get sheetDownload => 'Преузми';

  @override
  String get sheetKeepOffline => 'Задржи за слушање ван мреже';

  @override
  String get sheetRadio => 'Покрени радио';

  @override
  String get sheetRadioSub => 'Ред састављен око ове песме';

  @override
  String get sheetQueue => 'Ред';

  @override
  String get sheetSleepTimer => 'Тајмер за спавање';

  @override
  String get sheetSleepOff => 'Искључено';

  @override
  String sheetSleepMinutes(int count) {
    return '$count минута';
  }

  @override
  String get sheetSleepEndOfTrack => 'Крај ове песме';

  @override
  String sheetSleepSet(int count) {
    return 'Музика се зауставља за $count мин';
  }

  @override
  String get tasteTitle => 'Твој укус';

  @override
  String get tasteRetrain => 'Поново увежбај';

  @override
  String get tasteRetraining => 'Поновно учење на основу твоје историје…';

  @override
  String get tasteRetrained => 'Вештачка интелигенција је обновила свој модел.';

  @override
  String tasteConfidence(int percent) {
    return 'Поузданост $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays пуштања · $skips прескока · $likes свиђања';
  }

  @override
  String get tasteEmptySummary => 'Пусти неколико песама и ово ће се попунити.';

  @override
  String get tasteKeepLearning => 'Настави да учиш док слушам';

  @override
  String get tasteKeepLearningSub => 'Искључи да замрзнеш тренутни профил';

  @override
  String get tasteDownloadsTitle =>
      'Преузимања којима управља вештачка интелигенција';

  @override
  String get tasteDownloadsSub => 'Музика стиже на уређај без твог захтева';

  @override
  String get tasteDownloadLikes => 'Преузми све што ми се свиђа';

  @override
  String get tasteDownloadLikesSub =>
      'Додирни срце и датотека се чува за слушање ван мреже';

  @override
  String get tasteAiInstall =>
      'Дозволи вештачкој интелигенцији да инсталира музику коју изабере';

  @override
  String get tasteAiInstallSub => 'Преузимаће нумере у које је сигурна';

  @override
  String get tasteWhatItThinks => 'Шта мисли да волиш';

  @override
  String get tasteWhatItThinksSub =>
      'Научено из пуштања, прескакања, свиђања и понављања';

  @override
  String get tasteArtists => 'Извођачи на које се ослања';

  @override
  String get tasteWhenYouListen => 'Када слушаш';

  @override
  String get tasteWhenYouListenSub =>
      'Пуштања по сату — тренутни сат има већу тежину';

  @override
  String get tasteDecades => 'Деценије';

  @override
  String get tasteTune => 'Подеси препоруке';

  @override
  String get tasteTuneSub => 'Ступа на снагу при следећем освежавању почетне';

  @override
  String get tasteDiscovery => 'Откривање';

  @override
  String get tasteDiscoverySub => 'Познато ↔ ствари које никад ниси чуо';

  @override
  String get tasteEnergy => 'Енергија';

  @override
  String get tasteEnergySub => 'Мирно ↔ гласно';

  @override
  String get tasteRecency => 'Новина';

  @override
  String get tasteRecencySub => 'Вечно ↔ сасвим ново';

  @override
  String get tasteNostalgia => 'Носталгија';

  @override
  String get tasteNostalgiaSub =>
      'Колико уназад се стари омиљени хит сматра заборављеним';

  @override
  String get tasteSignals => 'Сигнали које сме да користи';

  @override
  String get tasteSignalsSub => 'Све остаје на овом уређају';

  @override
  String get tasteUseHistory => 'Шта сам слушао';

  @override
  String get tasteUseSkips => 'Шта прескачем';

  @override
  String get tasteUseTime => 'Доба дана';

  @override
  String get tasteUseYouTube => 'Предлози са YouTube-а';

  @override
  String get tasteAlwaysMore => 'Увек више од';

  @override
  String get tasteNeverAgain => 'Никад више';

  @override
  String get tasteAddArtist => 'Додај извођача';

  @override
  String get tasteMoreOfPrompt => 'Увек више од…';

  @override
  String get tasteNeverAgainPrompt => 'Никад више…';

  @override
  String get tasteReset => 'Обриши оно што је научила';

  @override
  String get tasteResetSub => 'Твоја музика остаје; профил почиње од нуле';

  @override
  String get trainCard => 'Увежбај оцењивањем';

  @override
  String get trainCardSub =>
      'Листај праве песме. Удесно за више оваквих, улево за никад више. Два минута овде вреде више од недељу слушања.';

  @override
  String get trainStart => 'Покрени круг вежбања';

  @override
  String get trainTitle => 'Круг вежбања';

  @override
  String get trainQuestion => 'Да ли би желео ово на својој почетној?';

  @override
  String get trainMoreLikeThis => 'Више оваквих';

  @override
  String get trainNeverAgain => 'Никад више';

  @override
  String get trainDone => 'Круг је завршен';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked задржано · $blocked блокирано. Поузданост $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Назад на твој укус';

  @override
  String get trainNothingTitle => 'Још нема шта да се оцени';

  @override
  String get trainNothingBody =>
      'Додај мало музике или нека вештачка интелигенција прво набави кандидате, па се врати.';

  @override
  String get trainLeaveTitle => 'Напустити круг вежбања?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ако сада изађеш, вештачка интелигенција одбацује све из овог круга — свих $count песама које си управо оценио.',
      few:
          'Ако сада изађеш, вештачка интелигенција одбацује све из овог круга — све $count песме које си управо оценио.',
      one:
          'Ако сада изађеш, вештачка интелигенција одбацује све из овог круга — $count песму коју си управо оценио.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Настави вежбање';

  @override
  String get trainDiscard => 'Одбаци и изађи';

  @override
  String get setTitle => 'Подешавања';

  @override
  String get setAppearance => 'Изглед';

  @override
  String get setTheme => 'Тема';

  @override
  String get setThemeSystem => 'Прати систем';

  @override
  String get setThemeLight => 'Светла';

  @override
  String get setThemeDark => 'Тамна';

  @override
  String get setPureBlack => 'Чисто црна';

  @override
  String get setPureBlackSub => 'Штеди енергију на OLED екрану';

  @override
  String get setAccent => 'Боја нагласка';

  @override
  String get setAccentArtwork => 'Са омота';

  @override
  String get setAccentFixed => 'Једна боја коју сам изабрао';

  @override
  String get setLanguage => 'Језик';

  @override
  String get setLanguageSystem => 'Прати систем';

  @override
  String get setAccessibility => 'Приступачност';

  @override
  String get setTextSize => 'Величина текста';

  @override
  String get setTextSizeSub => 'Povrh системског подешавања';

  @override
  String get setReduceMotion => 'Смањи кретање';

  @override
  String get setReduceMotionSub =>
      'Зауставља траке, визуелизатор, поскакујуће померање, еластичне додире и прелазе између страница';

  @override
  String get setHighContrast => 'Висок контраст';

  @override
  String get setHighContrastSub => 'Јаче раздвајање и видљиви обриси';

  @override
  String get setBoldText => 'Подебљан текст';

  @override
  String get setPlayback => 'Пуштање';

  @override
  String get setAutoRadio => 'Нека музика траје';

  @override
  String get setAutoRadioSub =>
      'Када се ред заврши, наставља радио направљен од последње песме';

  @override
  String get setSmartShuffle => 'Паметно мешање';

  @override
  String get setSmartShuffleSub => 'Меша по укусу уместо насумично';

  @override
  String get setResume => 'Настави одакле сам стао';

  @override
  String get setResumeSub => 'Враћа ред при отварању апликације, паузирано';

  @override
  String get setDataSaver => 'Уштеда података ван Wi-Fi-ја';

  @override
  String get setDataSaverSub =>
      'Ограничава стримове и преузимања на 128 kbps на мобилним подацима';

  @override
  String get setHaptics => 'Хаптичка повратна информација';

  @override
  String get setShowReasons => 'Прикажи зашто је нешто препоручено';

  @override
  String get setSkipSilence => 'Прескочи тишину';

  @override
  String get setQuality => 'Квалитет звука';

  @override
  String get setQualityLow => 'Низак · 64 kbps';

  @override
  String get setQualityNormal => 'Нормалан · 128 kbps';

  @override
  String get setQualityHigh => 'Висок · 192 kbps';

  @override
  String get setQualityBest => 'Најбољи доступан';

  @override
  String get setStorage => 'Преузимања и складиште';

  @override
  String get setWifiOnly => 'Преузимај само преко Wi-Fi-ја';

  @override
  String get setDailyLimit => 'Дневно ограничење за вештачку интелигенцију';

  @override
  String setDailyLimitSub(int count) {
    return '$count песама дневно';
  }

  @override
  String get setBudget => 'Простор који вештачка интелигенција сме да користи';

  @override
  String setUsed(Object size) {
    return '$size заузимају преузимања';
  }

  @override
  String get setYourMusic => 'Твоја музика';

  @override
  String get setImport => 'Додај музику са овог уређаја';

  @override
  String get setImportSub => 'Изабери фасцикле или појединачне датотеке';

  @override
  String get setCleanup => 'Очисти датотеке које недостају';

  @override
  String get setCleanupSub => 'Уклони песме чија датотека више не постоји';

  @override
  String setCleanupDone(int count) {
    return 'Уклоњено датотека које недостају: $count.';
  }

  @override
  String get setExport => 'Пошаљи мој укус на други уређај';

  @override
  String get setExportSub =>
      'Чува датотеку са твојим свиђањима, пуштањима и свиме што је вештачка интелигенција научила';

  @override
  String get setImportTaste => 'Учитај укус са другог уређаја';

  @override
  String get setImportTasteSub =>
      'Изабери сачувану датотеку укуса и споји је — безбедно је поновити';

  @override
  String get setAbout => 'О апликацији';

  @override
  String get setAboutBody =>
      'Музика са YouTube-а и твоје сопствене датотеке. Вештачка интелигенција ради у потпуности на овом уређају — ништа га не напушта.';

  @override
  String get setSource => 'Изворни кôд';

  @override
  String get importTitle => 'Додај музику';

  @override
  String get importPickFolder => 'Изабери фасциклу';

  @override
  String get importPickFiles => 'Изабери датотеке';

  @override
  String importScanning(Object file) {
    return 'Скенирање: $file';
  }

  @override
  String importAdded(int count) {
    return 'Додато: $count';
  }

  @override
  String get importDenied =>
      'Дозвола одбијена — не могу да прочитам твоју музику.';

  @override
  String get importWatched => 'Фасцикле које прати';

  @override
  String get importIosHint =>
      'Отвори апликацију Files, иди на On My iPhone → TuneBox и убаци музику тамо.';

  @override
  String get playerQueue => 'Ред';

  @override
  String get playerUpNext => 'Следеће';

  @override
  String get playerLyrics => 'Текст песме';

  @override
  String get playerNoLyrics => 'Нема текста за ову песму.';

  @override
  String get playerRepeat => 'Понови';

  @override
  String get playerShuffle => 'Помешај';

  @override
  String errorPlayback(Object title) {
    return 'Није могуће пустити „$title“';
  }

  @override
  String errorSkipping(Object title) {
    return 'Прескаче се „$title“ — стрим се није отворио.';
  }

  @override
  String get undo => 'Опозови';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Тренутно: $tags, предводи $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Тренутно: $tags.';
  }

  @override
  String get setColour => 'Боја';

  @override
  String get setColourSub => 'Цела апликација прати ово';

  @override
  String get setCoverArt => 'Омот албума';

  @override
  String get setMyColour => 'Моја боја';

  @override
  String get setCoverArtSub =>
      'Свака песма изнова боји апликацију према свом омоту.';

  @override
  String get setMyColourSub => 'Једна боја, свуда, све време.';

  @override
  String get setPickColour => 'Изабери било коју боју';

  @override
  String get setWifiOnlyTitle => 'Преузимај само преко Wi-Fi-ја';

  @override
  String get setDownloadLikes => 'Преузми све што ми се свиђа';

  @override
  String get setDownloadLikesSub => 'Дугме са срцем чува и датотеку';

  @override
  String get setAiInstall =>
      'Дозволи вештачкој интелигенцији да инсталира музику коју изабере';

  @override
  String get setSkipSilenceSub =>
      'Само за Android. Може да одсече тихе уводе, утапања и меке делове — остави искључено ако музика прескаче';

  @override
  String get setStorageUsed => 'Простор који заузимају преузимања';

  @override
  String get setLibrary => 'Библиотека';

  @override
  String get setUpdates => 'Ажурирања';

  @override
  String get setAutoUpdate => 'Сам проверавај ажурирања';

  @override
  String get setAutoUpdateSub =>
      'На неколико сати, тихо, а преузима преко Wi-Fi-ја. Инсталација те и даље пита.';

  @override
  String setUpdateReady(Object version) {
    return 'Ажурирање на $version је спремно';
  }

  @override
  String get setUpdateReadySub => 'Преузето — додирни да инсталираш';

  @override
  String get setUpdateAvailableSub =>
      'Узми га са странице за издања — додирни да копираш везу';

  @override
  String get setLinkCopied => 'Веза је копирана';

  @override
  String get setCheckNow => 'Провери сада';

  @override
  String get setUpToDate => 'TuneBox је ажуран';

  @override
  String get setChecking => 'Тражи се новија верзија…';

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

/// The translations for Serbian, using the Latin script (`sr_Latn`).
class LSrLatn extends LSr {
  LSrLatn() : super('sr_Latn');

  @override
  String get navHome => 'Početna';

  @override
  String get navExplore => 'Istraži';

  @override
  String get navLibrary => 'Biblioteka';

  @override
  String get navTaste => 'Tvoj ukus';

  @override
  String get actionDone => 'Gotovo';

  @override
  String get actionCancel => 'Otkaži';

  @override
  String get actionCreate => 'Napravi';

  @override
  String get actionPlay => 'Pusti';

  @override
  String get actionShuffle => 'Nasumično';

  @override
  String get actionPlayAll => 'Pusti sve';

  @override
  String get actionAdd => 'Dodaj';

  @override
  String get actionRemove => 'Ukloni';

  @override
  String get actionName => 'Naziv';

  @override
  String get greetingNight => 'Još si budan?';

  @override
  String get greetingMorning => 'Dobro jutro';

  @override
  String get greetingAfternoon => 'Dobar dan';

  @override
  String get greetingEvening => 'Dobro veče';

  @override
  String get homeBuilding => 'VI slaže tvoje police…';

  @override
  String get homeOffline => 'Oflajn — prikazuje se ono što je na uređaju';

  @override
  String get homeNothingYet => 'Još nema šta da se prikaže';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count polica, upravo osvežene',
      few: '$count police, upravo osvežene',
      one: '$count polica, upravo osvežena',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Ponovo složi police';

  @override
  String get homeAddMusic => 'Dodaj muziku sa ovog uređaja';

  @override
  String get homeQuickPicks => 'Brzi izbor';

  @override
  String get homeQuickPicksSub => 'Pravo nazad na ono što si slušao';

  @override
  String get homeEmptyTitle => 'Tvoja biblioteka je prazna';

  @override
  String get homeEmptyBody =>
      'Pretraži nešto ili dodaj muziku koja je već na ovom uređaju. VI počinje da uči od tvog prvog puštanja.';

  @override
  String get homeAddMyMusic => 'Dodaj moju muziku';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube nije dostupan: $error';
  }

  @override
  String get moodFocus => 'Fokus';

  @override
  String get moodWorkout => 'Trening';

  @override
  String get moodChill => 'Opuštanje';

  @override
  String get moodCommute => 'Putovanje';

  @override
  String get moodParty => 'Žurka';

  @override
  String moodBuilding(Object mood) {
    return 'Pravim miks: $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Nije uspelo: $error';
  }

  @override
  String get shelfRepeat => 'Na ponavljanju';

  @override
  String get shelfRepeatSub => 'Tvoje poslednje dve nedelje';

  @override
  String get shelfForgotten => 'Stari zaboravljeni hitovi koje si voleo';

  @override
  String get shelfForgottenSub => 'Nekad omiljeno, dugo nedirnuto';

  @override
  String get shelfNew => 'Novo';

  @override
  String get shelfNewSub => 'Sveže pesme za koje VI misli da su za tebe';

  @override
  String shelfBecause(Object artist) {
    return 'Zato što si slušao: $artist';
  }

  @override
  String get shelfBecauseSub => 'Isti kutak tvog ukusa';

  @override
  String get shelfDeep => 'Jedva načeto';

  @override
  String get shelfDeepSub => 'U tvojoj biblioteci, skoro nikad puštano';

  @override
  String get shelfMix => 'Tvoj miks';

  @override
  String get shelfMixSub => 'Pravi se iznova svaki put kad otvoriš aplikaciju';

  @override
  String get shelfAdded => 'Nedavno dodato';

  @override
  String get shelfAddedSub => 'Preuzimanja i fajlovi koje si uvezao';

  @override
  String get shelfStarter => 'Počni ovde';

  @override
  String get shelfStarterSub =>
      'Pusti nekoliko pesama i VI odmah počinje da uči';

  @override
  String reasonPlays(int count) {
    return 'Puštano $count puta';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Sviđa ti se, poslednji put puštano $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Puštano $count puta, poslednji put $when';
  }

  @override
  String get reasonTopArtist => 'Jedan od tvojih najslušanijih izvođača';

  @override
  String reasonMore(Object artist) {
    return 'Još od: $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Stalno se vraćaš izvođaču $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Tvoja vrsta: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'U poslednje vreme dosta: $tag';
  }

  @override
  String get reasonOutThisYear => 'Izašlo ove godine';

  @override
  String get reasonReleasedRecently => 'Nedavno izdato';

  @override
  String get reasonClose => 'Blizu onoga što si slušao';

  @override
  String reasonNear(Object artist) {
    return 'Blizu izvođača $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nikad puštano';

  @override
  String get reasonPlayedOnce => 'Puštano jednom';

  @override
  String get reasonPopular => 'Trenutno popularno';

  @override
  String whenYearsAgo(int count) {
    return 'pre $count god.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'pre $count mes.';
  }

  @override
  String whenDaysAgo(int count) {
    return 'pre $count d.';
  }

  @override
  String get searchHint => 'Pesme, izvođači, albumi';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rezultata',
      few: '$count rezultata',
      one: '$count rezultat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Nedavne pretrage';

  @override
  String get searchEmptyTitle => 'Ništa nije pronađeno';

  @override
  String get searchEmptyBody =>
      'Probaj drugačije pisanje ili samo ime izvođača.';

  @override
  String get searchStartTitle => 'Pronađi nešto za slušanje';

  @override
  String get searchStartBody =>
      'Pretraži YouTube Music — vraćaju se samo pesme, nikad snimci drugih stvari.';

  @override
  String get libPlaylists => 'Plejliste';

  @override
  String get libSongs => 'Pesme';

  @override
  String get libArtists => 'Izvođači';

  @override
  String get libLiked => 'Omiljeno';

  @override
  String get libDownloads => 'Preuzimanja';

  @override
  String get libImported => 'Uvezeno';

  @override
  String get libLikedSongs => 'Omiljene pesme';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pesama',
      few: '$count pesme',
      one: '$count pesma',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count oflajn';
  }

  @override
  String get libMyFiles => 'Moji fajlovi';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fajlova',
      few: '$count fajla',
      one: '$count fajl',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nova plejlista';

  @override
  String get libMakeOne => 'Napravi jednu';

  @override
  String get libSortRecent => 'Nedavno dodato';

  @override
  String get libSortTitle => 'Naslov';

  @override
  String get libSortArtist => 'Izvođač';

  @override
  String get libSortPlays => 'Najviše puštano';

  @override
  String get sheetNotForMe => 'Nije za mene';

  @override
  String get sheetNotForMeSub => 'Nikad više ne preporučuj ovo';

  @override
  String get sheetBlocked => 'Blokirano — dodirni da ponovo dozvoliš';

  @override
  String get sheetBlockedSub => 'Može ponovo da se pojavi u preporukama';

  @override
  String get sheetPlayNext => 'Pusti sledeće';

  @override
  String get sheetAddToPlaylist => 'Dodaj na plejlistu';

  @override
  String get sheetDownloaded => 'Preuzeto';

  @override
  String get sheetRemoveFile => 'Dodirni da ukloniš fajl';

  @override
  String get sheetDownload => 'Preuzmi';

  @override
  String get sheetKeepOffline => 'Sačuvaj za oflajn';

  @override
  String get sheetRadio => 'Pokreni radio';

  @override
  String get sheetRadioSub => 'Red za slušanje izgrađen oko ove pesme';

  @override
  String get sheetQueue => 'Red za slušanje';

  @override
  String get sheetSleepTimer => 'Tajmer za spavanje';

  @override
  String get sheetSleepOff => 'Isključeno';

  @override
  String sheetSleepMinutes(int count) {
    return '$count min';
  }

  @override
  String get sheetSleepEndOfTrack => 'Kraj ove pesme';

  @override
  String sheetSleepSet(int count) {
    return 'Muzika staje za $count min';
  }

  @override
  String get tasteTitle => 'Tvoj ukus';

  @override
  String get tasteRetrain => 'Ponovo obuči';

  @override
  String get tasteRetraining => 'Ponovo se obučava na tvojoj istoriji…';

  @override
  String get tasteRetrained => 'VI je ponovo izgradio svoj model.';

  @override
  String tasteConfidence(int percent) {
    return 'Pouzdanost $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays puštanja · $skips preskakanja · $likes sviđanja';
  }

  @override
  String get tasteEmptySummary => 'Pusti nekoliko pesama i ovo će se popuniti.';

  @override
  String get tasteKeepLearning => 'Nastavi da uči dok slušam';

  @override
  String get tasteKeepLearningSub => 'Isključi da zamrzneš trenutni profil';

  @override
  String get tasteDownloadsTitle => 'Preuzimanja koja VI obavlja';

  @override
  String get tasteDownloadsSub => 'Muzika stiže na uređaj a da ništa ne tražiš';

  @override
  String get tasteDownloadLikes => 'Preuzmi sve što mi se sviđa';

  @override
  String get tasteDownloadLikesSub => 'Dodirni srce i fajl se čuva za oflajn';

  @override
  String get tasteAiInstall => 'Neka VI instalira muziku koju izabere';

  @override
  String get tasteAiInstallSub => 'Preuzimaće pesme u koje je siguran';

  @override
  String get tasteWhatItThinks => 'Šta misli da voliš';

  @override
  String get tasteWhatItThinksSub =>
      'Nauči se iz puštanja, preskakanja, sviđanja i ponavljanja';

  @override
  String get tasteArtists => 'Izvođači na koje se oslanja';

  @override
  String get tasteWhenYouListen => 'Kad slušaš';

  @override
  String get tasteWhenYouListenSub =>
      'Puštanja po satu — trenutni sat ima veću težinu';

  @override
  String get tasteDecades => 'Decenije';

  @override
  String get tasteTune => 'Podesi preporuke';

  @override
  String get tasteTuneSub => 'Stupa na snagu pri sledećem osvežavanju početne';

  @override
  String get tasteDiscovery => 'Otkrivanje';

  @override
  String get tasteDiscoverySub => 'Poznato ↔ stvari koje nikad nisi čuo';

  @override
  String get tasteEnergy => 'Energija';

  @override
  String get tasteEnergySub => 'Mirno ↔ glasno';

  @override
  String get tasteRecency => 'Novina';

  @override
  String get tasteRecencySub => 'Bezvremeno ↔ potpuno novo';

  @override
  String get tasteNostalgia => 'Nostalgija';

  @override
  String get tasteNostalgiaSub =>
      'Koliko unazad se stari favorit smatra zaboravljenim';

  @override
  String get tasteSignals => 'Signali koje sme da koristi';

  @override
  String get tasteSignalsSub => 'Sve ostaje na ovom uređaju';

  @override
  String get tasteUseHistory => 'Šta sam puštao';

  @override
  String get tasteUseSkips => 'Šta preskačem';

  @override
  String get tasteUseTime => 'Doba dana';

  @override
  String get tasteUseYouTube => 'Predlozi sa YouTube-a';

  @override
  String get tasteAlwaysMore => 'Uvek više';

  @override
  String get tasteNeverAgain => 'Nikad više';

  @override
  String get tasteAddArtist => 'Dodaj izvođača';

  @override
  String get tasteMoreOfPrompt => 'Uvek više…';

  @override
  String get tasteNeverAgainPrompt => 'Nikad više…';

  @override
  String get tasteReset => 'Resetuj ono što je naučio';

  @override
  String get tasteResetSub => 'Tvoja muzika ostaje; profil kreće od nule';

  @override
  String get trainCard => 'Obuči ga ocenjivanjem';

  @override
  String get trainCardSub =>
      'Prelistaj prave pesme. Desno za više takvih, levo za nikad više. Dva minuta ovde vrede više od nedelju slušanja.';

  @override
  String get trainStart => 'Započni rundu obuke';

  @override
  String get trainTitle => 'Runda obuke';

  @override
  String get trainQuestion => 'Želiš li ovo na svojoj početnoj?';

  @override
  String get trainMoreLikeThis => 'Više ovakvih';

  @override
  String get trainNeverAgain => 'Nikad više';

  @override
  String get trainDone => 'Runda završena';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked zadržano · $blocked blokirano. Pouzdanost $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Nazad na tvoj ukus';

  @override
  String get trainNothingTitle => 'Još nema šta da se oceni';

  @override
  String get trainNothingBody =>
      'Prvo dodaj nešto muzike ili pusti VI da pronađe kandidate, pa se vrati.';

  @override
  String get trainLeaveTitle => 'Napustiti rundu obuke?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ako sada izađeš, VI odbacuje sve iz ove runde — svih $count pesama koje si upravo ocenio.',
      few:
          'Ako sada izađeš, VI odbacuje sve iz ove runde — sve $count pesme koje si upravo ocenio.',
      one:
          'Ako sada izađeš, VI odbacuje sve iz ove runde — $count pesmu koju si upravo ocenio.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Nastavi obuku';

  @override
  String get trainDiscard => 'Odbaci i izađi';

  @override
  String get setTitle => 'Podešavanja';

  @override
  String get setAppearance => 'Izgled';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Prati sistem';

  @override
  String get setThemeLight => 'Svetla';

  @override
  String get setThemeDark => 'Tamna';

  @override
  String get setPureBlack => 'Čisto crna';

  @override
  String get setPureBlackSub => 'Štedi energiju na OLED ekranu';

  @override
  String get setAccent => 'Boja akcenta';

  @override
  String get setAccentArtwork => 'Sa omota';

  @override
  String get setAccentFixed => 'Jedna boja koju sam izabrao';

  @override
  String get setLanguage => 'Jezik';

  @override
  String get setLanguageSystem => 'Prati sistem';

  @override
  String get setAccessibility => 'Pristupačnost';

  @override
  String get setTextSize => 'Veličina teksta';

  @override
  String get setTextSizeSub => 'Povrh podešavanja sistema';

  @override
  String get setReduceMotion => 'Smanji kretanje';

  @override
  String get setReduceMotionSub =>
      'Zaustavlja trake, vizuelizator, elastično skrolovanje, odskakanje pri dodiru i prelaze između stranica';

  @override
  String get setHighContrast => 'Visok kontrast';

  @override
  String get setHighContrastSub => 'Jače razdvajanje i vidljive ivice';

  @override
  String get setBoldText => 'Podebljan tekst';

  @override
  String get setPlayback => 'Reprodukcija';

  @override
  String get setAutoRadio => 'Nastavi muziku';

  @override
  String get setAutoRadioSub =>
      'Kad se red završi, nastavi radiom izgrađenim oko poslednje pesme';

  @override
  String get setSmartShuffle => 'Pametno mešanje';

  @override
  String get setSmartShuffleSub => 'Meša prema ukusu umesto nasumično';

  @override
  String get setResume => 'Nastavi gde sam stao';

  @override
  String get setResumeSub => 'Vraća red pri otvaranju aplikacije, pauzirano';

  @override
  String get setDataSaver => 'Štednja podataka van Wi-Fi-ja';

  @override
  String get setDataSaverSub =>
      'Ograničava striming i preuzimanja na 128 kbps na mobilnim podacima';

  @override
  String get setHaptics => 'Haptički odziv';

  @override
  String get setShowReasons => 'Prikaži zašto je nešto preporučeno';

  @override
  String get setSkipSilence => 'Preskoči tišinu';

  @override
  String get setQuality => 'Kvalitet zvuka';

  @override
  String get setQualityLow => 'Nizak · 64 kbps';

  @override
  String get setQualityNormal => 'Normalan · 128 kbps';

  @override
  String get setQualityHigh => 'Visok · 192 kbps';

  @override
  String get setQualityBest => 'Najbolji dostupan';

  @override
  String get setStorage => 'Preuzimanja i prostor';

  @override
  String get setWifiOnly => 'Preuzimaj samo preko Wi-Fi-ja';

  @override
  String get setDailyLimit => 'Dnevni limit za VI';

  @override
  String setDailyLimitSub(int count) {
    return '$count pesama dnevno';
  }

  @override
  String get setBudget => 'Prostor koji VI sme da koristi';

  @override
  String setUsed(Object size) {
    return '$size zauzimaju preuzimanja';
  }

  @override
  String get setYourMusic => 'Tvoja muzika';

  @override
  String get setImport => 'Dodaj muziku sa ovog uređaja';

  @override
  String get setImportSub => 'Izaberi fascikle ili pojedinačne fajlove';

  @override
  String get setCleanup => 'Očisti nedostajuće fajlove';

  @override
  String get setCleanupSub => 'Ukloni pesme čiji fajl više ne postoji';

  @override
  String setCleanupDone(int count) {
    return 'Uklonjeno nedostajućih fajlova: $count.';
  }

  @override
  String get setExport => 'Pošalji moj ukus na drugi uređaj';

  @override
  String get setExportSub =>
      'Čuva fajl sa tvojim sviđanjima, puštanjima i svim što je VI naučio';

  @override
  String get setImportTaste => 'Učitaj ukus sa drugog uređaja';

  @override
  String get setImportTasteSub =>
      'Izaberi sačuvani fajl ukusa i spoji ga — bezbedno je ponavljati';

  @override
  String get setAbout => 'O aplikaciji';

  @override
  String get setAboutBody =>
      'Muzika sa YouTube-a i tvojih fajlova. VI radi u potpunosti na ovom uređaju — ništa ga ne napušta.';

  @override
  String get setSource => 'Izvorni kod';

  @override
  String get importTitle => 'Dodaj muziku';

  @override
  String get importPickFolder => 'Izaberi fasciklu';

  @override
  String get importPickFiles => 'Izaberi fajlove';

  @override
  String importScanning(Object file) {
    return 'Skeniranje: $file';
  }

  @override
  String importAdded(int count) {
    return 'Dodato: $count';
  }

  @override
  String get importDenied =>
      'Dozvola odbijena — nije moguće pročitati tvoju muziku.';

  @override
  String get importWatched => 'Fascikle koje prati';

  @override
  String get importIosHint =>
      'Otvori aplikaciju Files, idi na On My iPhone → TuneBox i tamo ubaci muziku.';

  @override
  String get playerQueue => 'Red za slušanje';

  @override
  String get playerUpNext => 'Sledeće';

  @override
  String get playerLyrics => 'Tekst pesme';

  @override
  String get playerNoLyrics => 'Nema teksta za ovu pesmu.';

  @override
  String get playerRepeat => 'Ponovi';

  @override
  String get playerShuffle => 'Nasumično';

  @override
  String errorPlayback(Object title) {
    return 'Nije moguće pustiti „$title“';
  }

  @override
  String errorSkipping(Object title) {
    return 'Preskače se „$title“ — strim se nije otvorio.';
  }

  @override
  String get undo => 'Poništi';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Trenutno: $tags, predvodi $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Trenutno: $tags.';
  }

  @override
  String get setColour => 'Boja';

  @override
  String get setColourSub => 'Cela aplikacija se povodi za ovim';

  @override
  String get setCoverArt => 'Omot albuma';

  @override
  String get setMyColour => 'Moja boja';

  @override
  String get setCoverArtSub =>
      'Svaka pesma ponovo boji aplikaciju prema svom omotu.';

  @override
  String get setMyColourSub => 'Jedna boja, svuda, uvek.';

  @override
  String get setPickColour => 'Izaberi bilo koju boju';

  @override
  String get setWifiOnlyTitle => 'Preuzimaj samo preko Wi-Fi-ja';

  @override
  String get setDownloadLikes => 'Preuzmi sve što mi se sviđa';

  @override
  String get setDownloadLikesSub => 'Dugme srca čuva i fajl';

  @override
  String get setAiInstall => 'Neka VI instalira muziku koju izabere';

  @override
  String get setSkipSilenceSub =>
      'Samo Android. Može da preseče tihe uvode, utišavanja i nežne delove — ostavi isključeno ako muzika preskače';

  @override
  String get setStorageUsed => 'Prostor koji zauzimaju preuzimanja';

  @override
  String get setLibrary => 'Biblioteka';

  @override
  String get setUpdates => 'Ažuriranja';

  @override
  String get setAutoUpdate => 'Sam proveravaj ažuriranja';

  @override
  String get setAutoUpdateSub =>
      'Na nekoliko sati, tiho, a preuzima preko Wi-Fi-ja. Instalacija i dalje traži tvoju potvrdu.';

  @override
  String setUpdateReady(Object version) {
    return 'Ažuriranje na $version je spremno';
  }

  @override
  String get setUpdateReadySub => 'Preuzeto — dodirni da instaliraš';

  @override
  String get setUpdateAvailableSub =>
      'Preuzmi sa stranice izdanja — dodirni da kopiraš link';

  @override
  String get setLinkCopied => 'Link kopiran';

  @override
  String get setCheckNow => 'Proveri sada';

  @override
  String get setUpToDate => 'TuneBox je ažuran';

  @override
  String get setChecking => 'Traži se novija verzija…';
}
