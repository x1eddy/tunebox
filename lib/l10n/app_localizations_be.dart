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
}
