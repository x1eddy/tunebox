// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class LUk extends L {
  LUk([String locale = 'uk']) : super(locale);

  @override
  String get navHome => 'Головна';

  @override
  String get navExplore => 'Огляд';

  @override
  String get navLibrary => 'Бібліотека';

  @override
  String get navTaste => 'Твої смаки';

  @override
  String get actionDone => 'Готово';

  @override
  String get actionCancel => 'Скасувати';

  @override
  String get actionCreate => 'Створити';

  @override
  String get actionPlay => 'Грати';

  @override
  String get actionShuffle => 'Перемішати';

  @override
  String get actionPlayAll => 'Грати все';

  @override
  String get actionAdd => 'Додати';

  @override
  String get actionRemove => 'Вилучити';

  @override
  String get actionName => 'Назва';

  @override
  String get greetingNight => 'Ще не спиш?';

  @override
  String get greetingMorning => 'Доброго ранку';

  @override
  String get greetingAfternoon => 'Доброго дня';

  @override
  String get greetingEvening => 'Доброго вечора';

  @override
  String get homeBuilding => 'ШІ збирає твої полиці…';

  @override
  String get homeOffline => 'Офлайн — показано те, що є на пристрої';

  @override
  String get homeNothingYet => 'Поки що нічого показувати';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count полиці, щойно оновлено',
      many: '$count полиць, щойно оновлено',
      few: '$count полиці, щойно оновлено',
      one: '$count полиця, щойно оновлено',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Перебудувати полиці';

  @override
  String get homeAddMusic => 'Додати музику з цього пристрою';

  @override
  String get homeQuickPicks => 'Швидкий вибір';

  @override
  String get homeQuickPicksSub => 'Одразу назад до того, що грало';

  @override
  String get homeEmptyTitle => 'Твоя бібліотека порожня';

  @override
  String get homeEmptyBody =>
      'Знайди щось або додай музику, що вже є на цьому пристрої. ШІ починає вчитися з першого ж прослуховування.';

  @override
  String get homeAddMyMusic => 'Додати мою музику';

  @override
  String homeCouldNotReach(Object error) {
    return 'Не вдалося зв\'язатися з YouTube: $error';
  }

  @override
  String get moodFocus => 'Фокус';

  @override
  String get moodWorkout => 'Тренування';

  @override
  String get moodChill => 'Розслаблення';

  @override
  String get moodCommute => 'Дорога';

  @override
  String get moodParty => 'Вечірка';

  @override
  String moodBuilding(Object mood) {
    return 'Створюю мікс «$mood»…';
  }

  @override
  String moodFailed(Object error) {
    return 'Не вийшло: $error';
  }

  @override
  String get shelfRepeat => 'На повторі';

  @override
  String get shelfRepeatSub => 'Твої останні два тижні';

  @override
  String get shelfForgotten => 'Забуті старі хіти, які тобі подобались';

  @override
  String get shelfForgottenSub => 'Колись улюблені, давно не чіпані';

  @override
  String get shelfNew => 'Нове';

  @override
  String get shelfNewSub => 'Свіжі треки, які, на думку ШІ, тобі сподобаються';

  @override
  String shelfBecause(Object artist) {
    return 'Бо ти слухав(-ла) $artist';
  }

  @override
  String get shelfBecauseSub => 'З того ж кутка твоїх смаків';

  @override
  String get shelfDeep => 'Майже не чіпані';

  @override
  String get shelfDeepSub => 'У твоїй бібліотеці, але майже не грали';

  @override
  String get shelfMix => 'Твій мікс';

  @override
  String get shelfMixSub => 'Оновлюється щоразу, коли відкриваєш застосунок';

  @override
  String get shelfAdded => 'Нещодавно додане';

  @override
  String get shelfAddedSub => 'Завантаження та імпортовані файли';

  @override
  String get shelfStarter => 'Почни тут';

  @override
  String get shelfStarterSub =>
      'Увімкни кілька треків, і ШІ одразу почне вчитися';

  @override
  String reasonPlays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count прослуховування',
      many: '$count прослуховувань',
      few: '$count прослуховування',
      one: '$count прослуховування',
    );
    return '$_temp0';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Подобалось, востаннє грало $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Прослуховувань: $count, востаннє $when';
  }

  @override
  String get reasonTopArtist => 'Один із твоїх найпрослуховуваніших виконавців';

  @override
  String reasonMore(Object artist) {
    return 'Ще $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Ти постійно повертаєшся до $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Твій тип: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Останнім часом багато: $tag';
  }

  @override
  String get reasonOutThisYear => 'Вийшло цього року';

  @override
  String get reasonReleasedRecently => 'Нещодавній реліз';

  @override
  String get reasonClose => 'Схоже на те, що ти слухав(-ла)';

  @override
  String reasonNear(Object artist) {
    return 'Поруч з $artist';
  }

  @override
  String get reasonNeverPlayed => 'Ніколи не грало';

  @override
  String get reasonPlayedOnce => 'Грало один раз';

  @override
  String get reasonPopular => 'Зараз популярне';

  @override
  String whenYearsAgo(int count) {
    return '$count р. тому';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count міс. тому';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count дн. тому';
  }

  @override
  String get searchHint => 'Пісні, виконавці, альбоми';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count результату',
      many: '$count результатів',
      few: '$count результати',
      one: '$count результат',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Недавні пошуки';

  @override
  String get searchEmptyTitle => 'Нічого не знайдено';

  @override
  String get searchEmptyBody =>
      'Спробуй інше написання або лише ім\'я виконавця.';

  @override
  String get searchStartTitle => 'Знайди, що послухати';

  @override
  String get searchStartBody =>
      'Шукай у YouTube Music — повертаються лише пісні, ніколи відео про щось інше.';

  @override
  String get libPlaylists => 'Плейлисти';

  @override
  String get libSongs => 'Пісні';

  @override
  String get libArtists => 'Виконавці';

  @override
  String get libLiked => 'Вподобані';

  @override
  String get libDownloads => 'Завантаження';

  @override
  String get libImported => 'Імпортовані';

  @override
  String get libLikedSongs => 'Вподобані пісні';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пісні',
      many: '$count пісень',
      few: '$count пісні',
      one: '$count пісня',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return 'Офлайн: $count';
  }

  @override
  String get libMyFiles => 'Мої власні файли';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count файлу',
      many: '$count файлів',
      few: '$count файли',
      one: '$count файл',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Новий плейлист';

  @override
  String get libMakeOne => 'Створити';

  @override
  String get libSortRecent => 'Нещодавно додані';

  @override
  String get libSortTitle => 'Назва';

  @override
  String get libSortArtist => 'Виконавець';

  @override
  String get libSortPlays => 'Найпрослуховуваніші';

  @override
  String get sheetNotForMe => 'Не для мене';

  @override
  String get sheetNotForMeSub => 'Більше ніколи не рекомендувати';

  @override
  String get sheetBlocked => 'Заблоковано — торкнись, щоб дозволити знову';

  @override
  String get sheetBlockedSub => 'Воно знову може з\'являтися в рекомендаціях';

  @override
  String get sheetPlayNext => 'Грати наступним';

  @override
  String get sheetAddToPlaylist => 'Додати до плейлиста';

  @override
  String get sheetDownloaded => 'Завантажено';

  @override
  String get sheetRemoveFile => 'Торкнись, щоб видалити файл';

  @override
  String get sheetDownload => 'Завантажити';

  @override
  String get sheetKeepOffline => 'Зберегти для офлайну';

  @override
  String get sheetRadio => 'Запустити радіо';

  @override
  String get sheetRadioSub => 'Черга на основі цієї пісні';

  @override
  String get sheetQueue => 'Черга';

  @override
  String get sheetSleepTimer => 'Таймер сну';

  @override
  String get sheetSleepOff => 'Вимкнено';

  @override
  String sheetSleepMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хвилини',
      many: '$count хвилин',
      few: '$count хвилини',
      one: '$count хвилина',
    );
    return '$_temp0';
  }

  @override
  String get sheetSleepEndOfTrack => 'Кінець цієї пісні';

  @override
  String sheetSleepSet(int count) {
    return 'Музика зупиниться через $count хв';
  }

  @override
  String get tasteTitle => 'Твої смаки';

  @override
  String get tasteRetrain => 'Перенавчити';

  @override
  String get tasteRetraining => 'Перенавчання на твоїй історії…';

  @override
  String get tasteRetrained => 'ШІ перебудував свою модель.';

  @override
  String tasteConfidence(int percent) {
    return 'Упевненість $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'Прослуховувань: $plays · пропусків: $skips · вподобань: $likes';
  }

  @override
  String get tasteEmptySummary =>
      'Увімкни кілька пісень, і тут усе з\'явиться.';

  @override
  String get tasteKeepLearning => 'Вчитися, поки я слухаю';

  @override
  String get tasteKeepLearningSub => 'Вимкни, щоб заморозити поточний профіль';

  @override
  String get tasteDownloadsTitle => 'Завантаження від ШІ';

  @override
  String get tasteDownloadsSub =>
      'Музика потрапляє на пристрій без твого запиту';

  @override
  String get tasteDownloadLikes => 'Завантажувати все, що мені подобається';

  @override
  String get tasteDownloadLikesSub =>
      'Натисни серце, і файл збережеться для офлайну';

  @override
  String get tasteAiInstall => 'Дозволити ШІ встановлювати обрану музику';

  @override
  String get tasteAiInstallSub => 'Він завантажуватиме треки, у яких упевнений';

  @override
  String get tasteWhatItThinks => 'Що, на його думку, тобі подобається';

  @override
  String get tasteWhatItThinksSub =>
      'Вивчено з прослуховувань, пропусків, вподобань і повторів';

  @override
  String get tasteArtists => 'Виконавці, на яких він спирається';

  @override
  String get tasteWhenYouListen => 'Коли ти слухаєш';

  @override
  String get tasteWhenYouListenSub =>
      'Прослуховувань за годину — поточна година має більшу вагу';

  @override
  String get tasteDecades => 'Десятиліття';

  @override
  String get tasteTune => 'Налаштувати рекомендації';

  @override
  String get tasteTuneSub =>
      'Набуде чинності після наступного оновлення Головної';

  @override
  String get tasteDiscovery => 'Відкриття';

  @override
  String get tasteDiscoverySub => 'Знайоме ↔ те, чого ти ще не чув(-ла)';

  @override
  String get tasteEnergy => 'Енергія';

  @override
  String get tasteEnergySub => 'Спокійно ↔ гучно';

  @override
  String get tasteRecency => 'Новизна';

  @override
  String get tasteRecencySub => 'Позачасове ↔ зовсім нове';

  @override
  String get tasteNostalgia => 'Ностальгія';

  @override
  String get tasteNostalgiaSub =>
      'Через який час улюблене старе вважається забутим';

  @override
  String get tasteSignals => 'Сигнали, які він може використовувати';

  @override
  String get tasteSignalsSub => 'Усе залишається на цьому пристрої';

  @override
  String get tasteUseHistory => 'Що я слухав(-ла)';

  @override
  String get tasteUseSkips => 'Що я пропускаю';

  @override
  String get tasteUseTime => 'Час доби';

  @override
  String get tasteUseYouTube => 'Пропозиції від YouTube';

  @override
  String get tasteAlwaysMore => 'Завжди більше';

  @override
  String get tasteNeverAgain => 'Більше ніколи';

  @override
  String get tasteAddArtist => 'Додати виконавця';

  @override
  String get tasteMoreOfPrompt => 'Завжди більше…';

  @override
  String get tasteNeverAgainPrompt => 'Більше ніколи…';

  @override
  String get tasteReset => 'Скинути вивчене';

  @override
  String get tasteResetSub => 'Музика залишається; профіль починається з нуля';

  @override
  String get trainCard => 'Навчи його оцінками';

  @override
  String get trainCardSub =>
      'Гортай справжні пісні. Праворуч — більше такого, ліворуч — більше ніколи. Дві хвилини тут цінніші за тиждень слухання.';

  @override
  String get trainStart => 'Почати раунд навчання';

  @override
  String get trainTitle => 'Раунд навчання';

  @override
  String get trainQuestion => 'Хотів(-ла) б побачити це на Головній?';

  @override
  String get trainMoreLikeThis => 'Більше такого';

  @override
  String get trainNeverAgain => 'Більше ніколи';

  @override
  String get trainDone => 'Раунд завершено';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'Залишено: $liked · заблоковано: $blocked. Упевненість $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Назад до твоїх смаків';

  @override
  String get trainNothingTitle => 'Поки що нічого оцінювати';

  @override
  String get trainNothingBody =>
      'Спочатку додай музику або дай ШІ знайти кандидатів, а потім повертайся.';

  @override
  String get trainLeaveTitle => 'Вийти з раунду навчання?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Якщо вийдеш зараз, ШІ відкине все з цього раунду — усі $count пісні, які ти щойно оцінив(-ла).',
      many:
          'Якщо вийдеш зараз, ШІ відкине все з цього раунду — усі $count пісень, які ти щойно оцінив(-ла).',
      few:
          'Якщо вийдеш зараз, ШІ відкине все з цього раунду — усі $count пісні, які ти щойно оцінив(-ла).',
      one:
          'Якщо вийдеш зараз, ШІ відкине все з цього раунду — $count пісню, яку ти щойно оцінив(-ла).',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Продовжити навчання';

  @override
  String get trainDiscard => 'Відкинути й вийти';

  @override
  String get setTitle => 'Налаштування';

  @override
  String get setAppearance => 'Вигляд';

  @override
  String get setTheme => 'Тема';

  @override
  String get setThemeSystem => 'Як у системі';

  @override
  String get setThemeLight => 'Світла';

  @override
  String get setThemeDark => 'Темна';

  @override
  String get setPureBlack => 'Суцільний чорний';

  @override
  String get setPureBlackSub => 'Заощаджує заряд на OLED-екрані';

  @override
  String get setAccent => 'Акцентний колір';

  @override
  String get setAccentArtwork => 'З обкладинки';

  @override
  String get setAccentFixed => 'Один обраний мною колір';

  @override
  String get setLanguage => 'Мова';

  @override
  String get setLanguageSystem => 'Як у системі';

  @override
  String get setAccessibility => 'Доступність';

  @override
  String get setTextSize => 'Розмір тексту';

  @override
  String get setTextSizeSub => 'Додається до системного налаштування';

  @override
  String get setReduceMotion => 'Менше руху';

  @override
  String get setReduceMotionSub =>
      'Вимикає смужки, візуалізатор, пружну прокрутку, пружні дотики та анімацію переходів';

  @override
  String get setHighContrast => 'Високий контраст';

  @override
  String get setHighContrastSub => 'Чіткіше розмежування та помітні контури';

  @override
  String get setBoldText => 'Жирний текст';

  @override
  String get setPlayback => 'Відтворення';

  @override
  String get setAutoRadio => 'Не зупиняти музику';

  @override
  String get setAutoRadioSub =>
      'Коли черга закінчиться, продовжити радіо на основі останньої пісні';

  @override
  String get setSmartShuffle => 'Розумне перемішування';

  @override
  String get setSmartShuffleSub => 'Перемішує за смаком, а не навмання';

  @override
  String get setResume => 'Продовжити з місця зупинки';

  @override
  String get setResumeSub =>
      'Відновлює чергу під час відкриття застосунку, на паузі';

  @override
  String get setDataSaver => 'Економія трафіку поза Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Обмежує потоки й завантаження до 128 кбіт/с у мобільній мережі';

  @override
  String get setHaptics => 'Тактильний відгук';

  @override
  String get setShowReasons => 'Показувати, чому щось порекомендовано';

  @override
  String get setSkipSilence => 'Пропускати тишу';

  @override
  String get setQuality => 'Якість звуку';

  @override
  String get setQualityLow => 'Низька · 64 кбіт/с';

  @override
  String get setQualityNormal => 'Звичайна · 128 кбіт/с';

  @override
  String get setQualityHigh => 'Висока · 192 кбіт/с';

  @override
  String get setQualityBest => 'Найкраща доступна';

  @override
  String get setStorage => 'Завантаження та сховище';

  @override
  String get setWifiOnly => 'Завантажувати лише через Wi-Fi';

  @override
  String get setDailyLimit => 'Денний ліміт для ШІ';

  @override
  String setDailyLimitSub(int count) {
    return 'Пісень на день: $count';
  }

  @override
  String get setBudget => 'Сховище, яке може використовувати ШІ';

  @override
  String setUsed(Object size) {
    return 'Завантаження займають $size';
  }

  @override
  String get setYourMusic => 'Твоя музика';

  @override
  String get setImport => 'Додати музику з цього пристрою';

  @override
  String get setImportSub => 'Обери папки або окремі файли';

  @override
  String get setCleanup => 'Очистити відсутні файли';

  @override
  String get setCleanupSub => 'Прибрати пісні, файлів яких уже немає';

  @override
  String setCleanupDone(int count) {
    return 'Вилучено відсутніх файлів: $count.';
  }

  @override
  String get setExport => 'Надіслати мої смаки на інший пристрій';

  @override
  String get setExportSub =>
      'Зберігає файл з вподобаннями, прослуховуваннями та всім, що вивчив ШІ';

  @override
  String get setImportTaste => 'Завантажити смаки з іншого пристрою';

  @override
  String get setImportTasteSub =>
      'Обери збережений файл смаків і злий його — можна повторювати безпечно';

  @override
  String get setAbout => 'Про застосунок';

  @override
  String get setAboutBody =>
      'Музика з YouTube і твої власні файли. ШІ працює повністю на цьому пристрої — нічого не виходить за його межі.';

  @override
  String get setSource => 'Вихідний код';

  @override
  String get importTitle => 'Додати музику';

  @override
  String get importPickFolder => 'Обрати папку';

  @override
  String get importPickFiles => 'Обрати файли';

  @override
  String importScanning(Object file) {
    return 'Сканування: $file';
  }

  @override
  String importAdded(int count) {
    return 'Додано: $count';
  }

  @override
  String get importDenied =>
      'Доступ заборонено — неможливо прочитати твою музику.';

  @override
  String get importWatched => 'Папки, за якими він стежить';

  @override
  String get importIosHint =>
      'Відкрий застосунок «Файли», перейди до «На моєму iPhone» → TuneBox і перенеси туди музику.';

  @override
  String get playerQueue => 'Черга';

  @override
  String get playerUpNext => 'Далі';

  @override
  String get playerLyrics => 'Текст';

  @override
  String get playerNoLyrics => 'Тексту для цієї пісні немає.';

  @override
  String get playerRepeat => 'Повтор';

  @override
  String get playerShuffle => 'Перемішати';

  @override
  String errorPlayback(Object title) {
    return 'Не вдалося відтворити «$title»';
  }

  @override
  String errorSkipping(Object title) {
    return 'Пропускаю «$title» — потік не відкрився.';
  }

  @override
  String get undo => 'Скасувати';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Зараз: $tags, на чолі з $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Зараз: $tags.';
  }

  @override
  String get setColour => 'Колір';

  @override
  String get setColourSub => 'Увесь застосунок слідує цьому';

  @override
  String get setCoverArt => 'Обкладинка';

  @override
  String get setMyColour => 'Мій колір';

  @override
  String get setCoverArtSub =>
      'Кожна пісня перефарбовує застосунок за своєю обкладинкою.';

  @override
  String get setMyColourSub => 'Один колір, скрізь, завжди.';

  @override
  String get setPickColour => 'Обрати будь-який колір';

  @override
  String get setWifiOnlyTitle => 'Завантажувати лише через Wi-Fi';

  @override
  String get setDownloadLikes => 'Завантажувати все, що мені подобається';

  @override
  String get setDownloadLikesSub => 'Кнопка серця також зберігає файл';

  @override
  String get setAiInstall => 'Дозволити ШІ встановлювати обрану музику';

  @override
  String get setSkipSilenceSub =>
      'Лише Android. Може обрізати тихі вступи, затухання та м\'які фрагменти — вимкни, якщо музика збивається';

  @override
  String get setStorageUsed => 'Сховище, зайняте завантаженнями';

  @override
  String get setLibrary => 'Бібліотека';

  @override
  String get setUpdates => 'Оновлення';

  @override
  String get setAutoUpdate => 'Перевіряти оновлення самостійно';

  @override
  String get setAutoUpdateSub =>
      'Кожні кілька годин, непомітно, а завантаження — через Wi-Fi. Встановлення все одно запитує тебе.';

  @override
  String setUpdateReady(Object version) {
    return 'Оновлення до $version готове';
  }

  @override
  String get setUpdateReadySub => 'Завантажено — торкнись, щоб встановити';

  @override
  String get setUpdateAvailableSub =>
      'Отримай зі сторінки релізів — торкнись, щоб скопіювати посилання';

  @override
  String get setLinkCopied => 'Посилання скопійовано';

  @override
  String get setCheckNow => 'Перевірити зараз';

  @override
  String get setUpToDate => 'TuneBox оновлено';

  @override
  String get setChecking => 'Шукаю новішу версію…';

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
