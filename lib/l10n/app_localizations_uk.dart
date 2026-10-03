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
}
