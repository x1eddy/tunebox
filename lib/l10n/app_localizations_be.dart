// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class LBe extends L {
  LBe([String locale = 'be']) : super(locale);

  @override
  String get navHome => 'Галоўная';

  @override
  String get navExplore => 'Агляд';

  @override
  String get navLibrary => 'Бібліятэка';

  @override
  String get navTaste => 'Твой густ';

  @override
  String get actionDone => 'Гатова';

  @override
  String get actionCancel => 'Скасаваць';

  @override
  String get actionCreate => 'Стварыць';

  @override
  String get actionPlay => 'Прайграць';

  @override
  String get actionShuffle => 'Перамяшаць';

  @override
  String get actionPlayAll => 'Прайграць усё';

  @override
  String get actionAdd => 'Дадаць';

  @override
  String get actionRemove => 'Выдаліць';

  @override
  String get actionName => 'Назва';

  @override
  String get greetingNight => 'Яшчэ не спіш?';

  @override
  String get greetingMorning => 'Добрай раніцы';

  @override
  String get greetingAfternoon => 'Добры дзень';

  @override
  String get greetingEvening => 'Добры вечар';

  @override
  String get homeBuilding => 'ШІ будуе твае паліцы…';

  @override
  String get homeOffline => 'Па-за сеткай — паказана тое, што ёсць на прыладзе';

  @override
  String get homeNothingYet => 'Пакуль няма чаго паказваць';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count паліцы, толькі што абноўлены',
      many: '$count палік, толькі што абноўлены',
      few: '$count паліцы, толькі што абноўлены',
      one: '1 паліца, толькі што абноўлена',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Перабудаваць паліцы';

  @override
  String get homeAddMusic => 'Дадаць музыку з гэтай прылады';

  @override
  String get homeQuickPicks => 'Хуткі выбар';

  @override
  String get homeQuickPicksSub => 'Адразу назад да таго, што ты слухаў';

  @override
  String get homeEmptyTitle => 'Твая бібліятэка пустая';

  @override
  String get homeEmptyBody =>
      'Пашукай што-небудзь або дадай музыку, якая ўжо ёсць на гэтай прыладзе. ШІ пачынае вучыцца з твайго самага першага праслухоўвання.';

  @override
  String get homeAddMyMusic => 'Дадаць маю музыку';

  @override
  String homeCouldNotReach(Object error) {
    return 'Не ўдалося злучыцца з YouTube: $error';
  }

  @override
  String get moodFocus => 'Засяроджанасць';

  @override
  String get moodWorkout => 'Трэніроўка';

  @override
  String get moodChill => 'Адпачынак';

  @override
  String get moodCommute => 'Дарога';

  @override
  String get moodParty => 'Вечарынка';

  @override
  String moodBuilding(Object mood) {
    return 'Складаецца мікс «$mood»…';
  }

  @override
  String moodFailed(Object error) {
    return 'Не атрымалася: $error';
  }

  @override
  String get shelfRepeat => 'На паўторы';

  @override
  String get shelfRepeatSub => 'Твае апошнія два тыдні';

  @override
  String get shelfForgotten => 'Старыя забытыя хіты, якія табе падабаліся';

  @override
  String get shelfForgottenSub => 'Калісьці любімыя, даўно не чапаныя';

  @override
  String get shelfNew => 'Новае';

  @override
  String get shelfNewSub => 'Свежыя трэкі, якія, на думку ШІ, табе спадабаюцца';

  @override
  String shelfBecause(Object artist) {
    return 'Бо ты слухаў $artist';
  }

  @override
  String get shelfBecauseSub => 'Той самы куточак твайго густу';

  @override
  String get shelfDeep => 'Амаль не чапаныя';

  @override
  String get shelfDeepSub => 'Ёсць у бібліятэцы, але амаль не гучалі';

  @override
  String get shelfMix => 'Твой мікс';

  @override
  String get shelfMixSub =>
      'Перабудоўваецца кожны раз, калі адкрываеш праграму';

  @override
  String get shelfAdded => 'Нядаўна дададзеныя';

  @override
  String get shelfAddedSub => 'Загрузкі і файлы, якія ты імпартаваў';

  @override
  String get shelfStarter => 'Пачні адсюль';

  @override
  String get shelfStarterSub =>
      'Прайгравай колькі трэкаў, і ШІ адразу пачне вучыцца';

  @override
  String reasonPlays(int count) {
    return 'Прайграванняў: $count';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Спадабалася, апошні раз гучала $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Прайграванняў: $count, апошні раз $when';
  }

  @override
  String get reasonTopArtist => 'Адзін з выканаўцаў, якіх ты слухаеш найчасцей';

  @override
  String reasonMore(Object artist) {
    return 'Яшчэ $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Ты вяртаешся да $artist зноў і зноў';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Твой фармат: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Апошнім часам шмат $tag';
  }

  @override
  String get reasonOutThisYear => 'Выйшла ў гэтым годзе';

  @override
  String get reasonReleasedRecently => 'Выйшла нядаўна';

  @override
  String get reasonClose => 'Блізка да таго, што ты слухаў';

  @override
  String reasonNear(Object artist) {
    return 'Побач з $artist';
  }

  @override
  String get reasonNeverPlayed => 'Ніколі не гучала';

  @override
  String get reasonPlayedOnce => 'Гучала адзін раз';

  @override
  String get reasonPopular => 'Папулярна цяпер';

  @override
  String whenYearsAgo(int count) {
    return '$count г. таму';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count мес. таму';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count дн. таму';
  }

  @override
  String get searchHint => 'Песні, выканаўцы, альбомы';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count выніку',
      many: '$count вынікаў',
      few: '$count вынікі',
      one: '1 вынік',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Нядаўнія пошукі';

  @override
  String get searchEmptyTitle => 'Нічога не знойдзена';

  @override
  String get searchEmptyBody =>
      'Паспрабуй іншае напісанне або толькі імя выканаўцы.';

  @override
  String get searchStartTitle => 'Знайдзі, што паслухаць';

  @override
  String get searchStartBody =>
      'Шукай у YouTube Music — вяртаюцца толькі песні, ніколі відэа пра іншае.';

  @override
  String get libPlaylists => 'Плэйлісты';

  @override
  String get libSongs => 'Песні';

  @override
  String get libArtists => 'Выканаўцы';

  @override
  String get libLiked => 'Упадабаныя';

  @override
  String get libDownloads => 'Загрузкі';

  @override
  String get libImported => 'Імпартаваныя';

  @override
  String get libLikedSongs => 'Упадабаныя песні';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count песні',
      many: '$count песень',
      few: '$count песні',
      one: '1 песня',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count па-за сеткай';
  }

  @override
  String get libMyFiles => 'Мае ўласныя файлы';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count файла',
      many: '$count файлаў',
      few: '$count файлы',
      one: '1 файл',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Новы плэйліст';

  @override
  String get libMakeOne => 'Стварыць';

  @override
  String get libSortRecent => 'Нядаўна дададзеныя';

  @override
  String get libSortTitle => 'Назва';

  @override
  String get libSortArtist => 'Выканаўца';

  @override
  String get libSortPlays => 'Найчасцей слуханыя';

  @override
  String get sheetNotForMe => 'Не для мяне';

  @override
  String get sheetNotForMeSub => 'Больш ніколі гэта не рэкамендаваць';

  @override
  String get sheetBlocked => 'Заблакіравана — націсні, каб дазволіць зноў';

  @override
  String get sheetBlockedSub => 'Яно зноў можа з\'явіцца ў рэкамендацыях';

  @override
  String get sheetPlayNext => 'Прайграць наступным';

  @override
  String get sheetAddToPlaylist => 'Дадаць у плэйліст';

  @override
  String get sheetDownloaded => 'Загружана';

  @override
  String get sheetRemoveFile => 'Націсні, каб выдаліць файл';

  @override
  String get sheetDownload => 'Загрузіць';

  @override
  String get sheetKeepOffline => 'Захаваць для праслухоўвання па-за сеткай';

  @override
  String get sheetRadio => 'Запусціць радыё';

  @override
  String get sheetRadioSub => 'Чарга, пабудаваная вакол гэтай песні';

  @override
  String get sheetQueue => 'Чарга';

  @override
  String get sheetSleepTimer => 'Таймер сну';

  @override
  String get sheetSleepOff => 'Выкл.';

  @override
  String sheetSleepMinutes(int count) {
    return '$count хв';
  }

  @override
  String get sheetSleepEndOfTrack => 'Канец гэтай песні';

  @override
  String sheetSleepSet(int count) {
    return 'Музыка спыніцца праз $count хв';
  }

  @override
  String get tasteTitle => 'Твой густ';

  @override
  String get tasteRetrain => 'Перанавучыць';

  @override
  String get tasteRetraining => 'Перанавучанне на тваёй гісторыі…';

  @override
  String get tasteRetrained => 'ШІ перабудаваў сваю мадэль.';

  @override
  String tasteConfidence(int percent) {
    return 'Упэўненасць $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'Праслухоўванняў: $plays · прапускаў: $skips · падабайкаў: $likes';
  }

  @override
  String get tasteEmptySummary =>
      'Прайграй некалькі песень, і тут з\'явяцца дадзеныя.';

  @override
  String get tasteKeepLearning => 'Працягваць вучыцца, пакуль я слухаю';

  @override
  String get tasteKeepLearningSub => 'Выключы, каб замарозіць бягучы профіль';

  @override
  String get tasteDownloadsTitle => 'Загрузкі, якімі кіруе ШІ';

  @override
  String get tasteDownloadsSub => 'Музыка трапляе на прыладу без твайго запыту';

  @override
  String get tasteDownloadLikes => 'Загружаць усё, што мне падабаецца';

  @override
  String get tasteDownloadLikesSub =>
      'Націсні на сэрца, і файл захаваецца для праслухоўвання па-за сеткай';

  @override
  String get tasteAiInstall => 'Дазволіць ШІ ўсталёўваць абраную ім музыку';

  @override
  String get tasteAiInstallSub => 'Ён будзе браць трэкі, у якіх упэўнены';

  @override
  String get tasteWhatItThinks => 'Што, на яго думку, табе падабаецца';

  @override
  String get tasteWhatItThinksSub =>
      'Вывучана з праслухоўванняў, прапускаў, падабайкаў і паўтораў';

  @override
  String get tasteArtists => 'Выканаўцы, на якіх ён абапіраецца';

  @override
  String get tasteWhenYouListen => 'Калі ты слухаеш';

  @override
  String get tasteWhenYouListenSub =>
      'Праслухоўванні па гадзінах — бягучая гадзіна мае большую вагу';

  @override
  String get tasteDecades => 'Дзесяцігоддзі';

  @override
  String get tasteTune => 'Наладзіць рэкамендацыі';

  @override
  String get tasteTuneSub =>
      'Уступіць у сілу пры наступным абнаўленні Галоўнай';

  @override
  String get tasteDiscovery => 'Адкрыцці';

  @override
  String get tasteDiscoverySub => 'Знаёмае ↔ тое, чаго ты ніколі не чуў';

  @override
  String get tasteEnergy => 'Энергія';

  @override
  String get tasteEnergySub => 'Спакойна ↔ гучна';

  @override
  String get tasteRecency => 'Навізна';

  @override
  String get tasteRecencySub => 'Вечнае ↔ зусім новае';

  @override
  String get tasteNostalgia => 'Настальгія';

  @override
  String get tasteNostalgiaSub =>
      'Як даўно павінна быць старая ўлюбёнае, каб лічыцца забытым';

  @override
  String get tasteSignals => 'Сігналы, якія ён можа выкарыстоўваць';

  @override
  String get tasteSignalsSub => 'Усё застаецца на гэтай прыладзе';

  @override
  String get tasteUseHistory => 'Тое, што я слухаў';

  @override
  String get tasteUseSkips => 'Тое, што я прапускаю';

  @override
  String get tasteUseTime => 'Час сутак';

  @override
  String get tasteUseYouTube => 'Прапановы з YouTube';

  @override
  String get tasteAlwaysMore => 'Заўсёды больш';

  @override
  String get tasteNeverAgain => 'Больш ніколі';

  @override
  String get tasteAddArtist => 'Дадаць выканаўцу';

  @override
  String get tasteMoreOfPrompt => 'Заўсёды больш…';

  @override
  String get tasteNeverAgainPrompt => 'Больш ніколі…';

  @override
  String get tasteReset => 'Скінуць тое, чаму ён навучыўся';

  @override
  String get tasteResetSub =>
      'Твая музыка застаецца; профіль пачынаецца з нуля';

  @override
  String get trainCard => 'Навучы яго ацэнкамі';

  @override
  String get trainCardSub =>
      'Правядзі па рэальных песнях. Управа — больш падобнага, улева — больш ніколі. Дзве хвіліны тут вартыя тыдня слухання.';

  @override
  String get trainStart => 'Пачаць раунд навучання';

  @override
  String get trainTitle => 'Раунд навучання';

  @override
  String get trainQuestion => 'Ці хацеў бы ты бачыць гэта на Галоўнай?';

  @override
  String get trainMoreLikeThis => 'Больш падобнага';

  @override
  String get trainNeverAgain => 'Больш ніколі';

  @override
  String get trainDone => 'Раунд завершаны';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'Захавана: $liked · заблакіравана: $blocked. Упэўненасць $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Назад да твайго густу';

  @override
  String get trainNothingTitle => 'Пакуль няма чаго ацэньваць';

  @override
  String get trainNothingBody =>
      'Дадай музыку або дазволь ШІ спачатку падабраць кандыдатаў, а потым вяртайся.';

  @override
  String get trainLeaveTitle => 'Выйсці з раунда навучання?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Калі выйдзеш цяпер, ШІ адкіне ўсё з гэтага раунда — усе $count песні, якія ты толькі што ацаніў.',
      many:
          'Калі выйдзеш цяпер, ШІ адкіне ўсё з гэтага раунда — усе $count песень, якія ты толькі што ацаніў.',
      few:
          'Калі выйдзеш цяпер, ШІ адкіне ўсё з гэтага раунда — усе $count песні, якія ты толькі што ацаніў.',
      one:
          'Калі выйдзеш цяпер, ШІ адкіне ўсё з гэтага раунда — 1 песню, якую ты толькі што ацаніў.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Працягнуць навучанне';

  @override
  String get trainDiscard => 'Адкінуць і выйсці';

  @override
  String get setTitle => 'Налады';

  @override
  String get setAppearance => 'Знешні выгляд';

  @override
  String get setTheme => 'Тэма';

  @override
  String get setThemeSystem => 'Як у сістэме';

  @override
  String get setThemeLight => 'Светлая';

  @override
  String get setThemeDark => 'Цёмная';

  @override
  String get setPureBlack => 'Чысты чорны';

  @override
  String get setPureBlackSub => 'Эканоміць зарад на OLED-экране';

  @override
  String get setAccent => 'Акцэнтны колер';

  @override
  String get setAccentArtwork => 'З вокладкі';

  @override
  String get setAccentFixed => 'Адзін абраны мной колер';

  @override
  String get setLanguage => 'Мова';

  @override
  String get setLanguageSystem => 'Як у сістэме';

  @override
  String get setAccessibility => 'Спецыяльныя магчымасці';

  @override
  String get setTextSize => 'Памер тэксту';

  @override
  String get setTextSizeSub => 'Дадаткова да сістэмнай налады';

  @override
  String get setReduceMotion => 'Паменшыць рух';

  @override
  String get setReduceMotionSub =>
      'Спыняе паласкі, візуалізатар, пругкую пракрутку, пругкія націскі і пераходы паміж старонкамі';

  @override
  String get setHighContrast => 'Высокая кантрастнасць';

  @override
  String get setHighContrastSub => 'Больш выразнае падзяленне і бачныя контуры';

  @override
  String get setBoldText => 'Тоўсты тэкст';

  @override
  String get setPlayback => 'Прайграванне';

  @override
  String get setAutoRadio => 'Каб музыка не змаўкала';

  @override
  String get setAutoRadioSub =>
      'Калі чарга скончыцца, працягнуць радыё, пабудаваным з апошняй песні';

  @override
  String get setSmartShuffle => 'Разумнае перамешванне';

  @override
  String get setSmartShuffleSub => 'Мяшае паводле густу, а не выпадкова';

  @override
  String get setResume => 'Працягнуць з таго месца, дзе спыніўся';

  @override
  String get setResumeSub => 'Аднаўляе чаргу пры адкрыцці праграмы ў паўзе';

  @override
  String get setDataSaver => 'Эканомія трафіку па-за Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Абмяжоўвае струменевае прайграванне і загрузкі да 128 кбіт/с у мабільнай сетцы';

  @override
  String get setHaptics => 'Вібрааддача';

  @override
  String get setShowReasons => 'Паказваць, чаму нешта парэкамендавана';

  @override
  String get setSkipSilence => 'Прапускаць цішыню';

  @override
  String get setQuality => 'Якасць гуку';

  @override
  String get setQualityLow => 'Нізкая · 64 кбіт/с';

  @override
  String get setQualityNormal => 'Звычайная · 128 кбіт/с';

  @override
  String get setQualityHigh => 'Высокая · 192 кбіт/с';

  @override
  String get setQualityBest => 'Найлепшая даступная';

  @override
  String get setStorage => 'Загрузкі і сховішча';

  @override
  String get setWifiOnly => 'Загружаць толькі праз Wi-Fi';

  @override
  String get setDailyLimit => 'Сутачны ліміт для ШІ';

  @override
  String setDailyLimitSub(int count) {
    return 'Песень у дзень: $count';
  }

  @override
  String get setBudget => 'Сховішча, якое можа выкарыстоўваць ШІ';

  @override
  String setUsed(Object size) {
    return 'Загрузкі займаюць $size';
  }

  @override
  String get setYourMusic => 'Твая музыка';

  @override
  String get setImport => 'Дадаць музыку з гэтай прылады';

  @override
  String get setImportSub => 'Абяры папкі або асобныя файлы';

  @override
  String get setCleanup => 'Ачысціць адсутныя файлы';

  @override
  String get setCleanupSub => 'Выдаліць песні, файла якіх больш няма';

  @override
  String setCleanupDone(int count) {
    return 'Выдалена адсутных файлаў: $count.';
  }

  @override
  String get setExport => 'Адправіць мой густ на іншую прыладу';

  @override
  String get setExportSub =>
      'Захоўвае файл з тваімі падабайкамі, праслухоўваннямі і ўсім, чаму навучыўся ШІ';

  @override
  String get setImportTaste => 'Загрузіць густ з іншай прылады';

  @override
  String get setImportTasteSub =>
      'Абяры захаваны файл густу і аб\'яднай — бяспечна паўтараць';

  @override
  String get setAbout => 'Пра праграму';

  @override
  String get setAboutBody =>
      'Музыка з YouTube і твае ўласныя файлы. ШІ працуе цалкам на гэтай прыладзе — нічога не пакідае яе.';

  @override
  String get setSource => 'Зыходны код';

  @override
  String get importTitle => 'Дадаць музыку';

  @override
  String get importPickFolder => 'Абраць папку';

  @override
  String get importPickFiles => 'Абраць файлы';

  @override
  String importScanning(Object file) {
    return 'Сканіраванне: $file';
  }

  @override
  String importAdded(int count) {
    return 'Дададзена: $count';
  }

  @override
  String get importDenied =>
      'Дазвол не дадзены — немагчыма прачытаць тваю музыку.';

  @override
  String get importWatched => 'Папкі пад назіраннем';

  @override
  String get importIosHint =>
      'Адкрый праграму «Файлы», перайдзі ў «На iPhone» → TuneBox і кінь музыку туды.';

  @override
  String get playerQueue => 'Чарга';

  @override
  String get playerUpNext => 'Далей';

  @override
  String get playerLyrics => 'Тэкст песні';

  @override
  String get playerNoLyrics => 'Для гэтай песні няма тэксту.';

  @override
  String get playerRepeat => 'Паўтор';

  @override
  String get playerShuffle => 'Перамяшаць';

  @override
  String errorPlayback(Object title) {
    return 'Не ўдалося прайграць «$title»';
  }

  @override
  String errorSkipping(Object title) {
    return 'Прапускаецца «$title» — струмень не адкрыўся.';
  }

  @override
  String get undo => 'Адрабіць';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Цяпер: $tags, на чале з $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Цяпер: $tags.';
  }

  @override
  String get setColour => 'Колер';

  @override
  String get setColourSub => 'Уся праграма будзе ў гэтым колеры';

  @override
  String get setCoverArt => 'Вокладка';

  @override
  String get setMyColour => 'Мой колер';

  @override
  String get setCoverArtSub =>
      'Кожная песня перафарбоўвае праграму паводле сваёй вокладкі.';

  @override
  String get setMyColourSub => 'Адзін колер, усюды і заўсёды.';

  @override
  String get setPickColour => 'Абраць любы колер';

  @override
  String get setWifiOnlyTitle => 'Загружаць толькі праз Wi-Fi';

  @override
  String get setDownloadLikes => 'Загружаць усё, што мне падабаецца';

  @override
  String get setDownloadLikesSub => 'Кнопка з сэрцам таксама захоўвае файл';

  @override
  String get setAiInstall => 'Дазволіць ШІ ўсталёўваць абраную ім музыку';

  @override
  String get setSkipSilenceSub =>
      'Толькі Android. Можа абрэзаць ціхія ўступы, зацуханні і мяккія часткі — выключы, калі музыка перарываецца';

  @override
  String get setStorageUsed => 'Сховішча, занятае загрузкамі';

  @override
  String get setLibrary => 'Бібліятэка';

  @override
  String get setUpdates => 'Абнаўленні';

  @override
  String get setAutoUpdate => 'Правяраць абнаўленні самастойна';

  @override
  String get setAutoUpdateSub =>
      'Кожныя некалькі гадзін, ціха, і загружае праз Wi-Fi. Усталёўка па-ранейшаму пытае цябе.';

  @override
  String setUpdateReady(Object version) {
    return 'Абнаўленне да $version гатова';
  }

  @override
  String get setUpdateReadySub => 'Загружана — націсні, каб усталяваць';

  @override
  String get setUpdateAvailableSub =>
      'Бяры са старонкі выпускаў — націсні, каб скапіяваць спасылку';

  @override
  String get setLinkCopied => 'Спасылка скапіявана';

  @override
  String get setCheckNow => 'Праверыць цяпер';

  @override
  String get setUpToDate => 'TuneBox апошняй версіі';

  @override
  String get setChecking => 'Пошук навейшай версіі…';

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
