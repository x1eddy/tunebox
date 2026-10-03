// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class LMn extends L {
  LMn([String locale = 'mn']) : super(locale);

  @override
  String get navHome => 'Нүүр';

  @override
  String get navExplore => 'Судлах';

  @override
  String get navLibrary => 'Номын сан';

  @override
  String get navTaste => 'Таны сонирхол';

  @override
  String get actionDone => 'Болсон';

  @override
  String get actionCancel => 'Цуцлах';

  @override
  String get actionCreate => 'Үүсгэх';

  @override
  String get actionPlay => 'Тоглуулах';

  @override
  String get actionShuffle => 'Холих';

  @override
  String get actionPlayAll => 'Бүгдийг тоглуулах';

  @override
  String get actionAdd => 'Нэмэх';

  @override
  String get actionRemove => 'Хасах';

  @override
  String get actionName => 'Нэр';

  @override
  String get greetingNight => 'Дахиад сэрүүн үү?';

  @override
  String get greetingMorning => 'Өглөөний мэнд';

  @override
  String get greetingAfternoon => 'Өдрийн мэнд';

  @override
  String get greetingEvening => 'Оройн мэнд';

  @override
  String get homeBuilding => 'ХА таны тавиурыг бүрдүүлж байна…';

  @override
  String get homeOffline => 'Офлайн — төхөөрөмж дээрх зүйлсийг харуулж байна';

  @override
  String get homeNothingYet => 'Харуулах зүйл одоохондоо алга';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тавиур, дөнгөж шинэчлэгдсэн',
      one: '1 тавиур, дөнгөж шинэчлэгдсэн',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Тавиурыг дахин бүрдүүлэх';

  @override
  String get homeAddMusic => 'Энэ төхөөрөмжөөс хөгжим нэмэх';

  @override
  String get homeQuickPicks => 'Түргэн сонголт';

  @override
  String get homeQuickPicksSub => 'Сонсож байсан зүйлдээ шууд буцах';

  @override
  String get homeEmptyTitle => 'Таны номын сан хоосон байна';

  @override
  String get homeEmptyBody =>
      'Юм хайх эсвэл энэ төхөөрөмж дээрх хөгжмөө нэмээрэй. ХА таны анхны тоглуулалтаас эхлэн суралцана.';

  @override
  String get homeAddMyMusic => 'Миний хөгжмийг нэмэх';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube-д холбогдож чадсангүй: $error';
  }

  @override
  String get moodFocus => 'Төвлөрөл';

  @override
  String get moodWorkout => 'Дасгал';

  @override
  String get moodChill => 'Тайвшрал';

  @override
  String get moodCommute => 'Зам';

  @override
  String get moodParty => 'Үдэшлэг';

  @override
  String moodBuilding(Object mood) {
    return '$mood цуглуулга бүрдүүлж байна…';
  }

  @override
  String moodFailed(Object error) {
    return 'Бүтсэнгүй: $error';
  }

  @override
  String get shelfRepeat => 'Давтан сонсож буй';

  @override
  String get shelfRepeatSub => 'Таны сүүлийн хоёр долоо хоног';

  @override
  String get shelfForgotten => 'Таны дурласан, мартагдсан хуучин хитүүд';

  @override
  String get shelfForgottenSub =>
      'Нэгэн цагт дурласан ч хэсэг хугацаанд сонсоогүй';

  @override
  String get shelfNew => 'Шинэ';

  @override
  String get shelfNewSub => 'ХА таньд тохирно гэж үзсэн шинэхэн дуунууд';

  @override
  String shelfBecause(Object artist) {
    return 'Та $artist-г сонссон учир';
  }

  @override
  String get shelfBecauseSub => 'Таны сонирхлын ойролцоох хэсэг';

  @override
  String get shelfDeep => 'Бараг сонсоогүй';

  @override
  String get shelfDeepSub => 'Номын санд байгаа ч бараг тоглуулаагүй';

  @override
  String get shelfMix => 'Таны цуглуулга';

  @override
  String get shelfMixSub => 'Апп нээх бүрд шинэчлэгдэнэ';

  @override
  String get shelfAdded => 'Саяхан нэмсэн';

  @override
  String get shelfAddedSub => 'Татаж авсан болон импортолсон файлууд';

  @override
  String get shelfStarter => 'Эндээс эхлээрэй';

  @override
  String get shelfStarterSub => 'Хэдэн дуу тоглуулахад ХА шууд суралцаж эхэлнэ';

  @override
  String reasonPlays(int count) {
    return '$count удаа тоглуулсан';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Таалагдсан, сүүлд $when тоглуулсан';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count удаа тоглуулсан, сүүлд $when';
  }

  @override
  String get reasonTopArtist => 'Таны хамгийн их сонссон уран бүтээлчдийн нэг';

  @override
  String reasonMore(Object artist) {
    return '$artist-н өөр дуу';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Та $artist руу байнга эргэн ирдэг';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Таны сонирхсон $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Сүүлийн үед $tag их сонсож байна';
  }

  @override
  String get reasonOutThisYear => 'Энэ жил гарсан';

  @override
  String get reasonReleasedRecently => 'Саяхан гарсан';

  @override
  String get reasonClose => 'Сүүлийн үед сонссон зүйлтэй ойр';

  @override
  String reasonNear(Object artist) {
    return '$artist-тай ойр';
  }

  @override
  String get reasonNeverPlayed => 'Хэзээ ч тоглуулаагүй';

  @override
  String get reasonPlayedOnce => 'Нэг удаа тоглуулсан';

  @override
  String get reasonPopular => 'Одоо түгээмэл';

  @override
  String whenYearsAgo(int count) {
    return '$count жилийн өмнө';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count сарын өмнө';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count хоногийн өмнө';
  }

  @override
  String get searchHint => 'Дуу, уран бүтээлч, цомог';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count үр дүн',
      one: '1 үр дүн',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Сүүлийн хайлтууд';

  @override
  String get searchEmptyTitle => 'Юу ч олдсонгүй';

  @override
  String get searchEmptyBody =>
      'Өөр үсэглэлээр эсвэл зөвхөн уран бүтээлчийн нэрээр хайж үзээрэй.';

  @override
  String get searchStartTitle => 'Тоглуулах зүйл олоорой';

  @override
  String get searchStartBody =>
      'YouTube Music-ээс хайна — зөвхөн дуу гарна, өөр зүйлийн бичлэг гарахгүй.';

  @override
  String get libPlaylists => 'Playlist-үүд';

  @override
  String get libSongs => 'Дуунууд';

  @override
  String get libArtists => 'Уран бүтээлчид';

  @override
  String get libLiked => 'Таалагдсан';

  @override
  String get libDownloads => 'Татсан';

  @override
  String get libImported => 'Импортолсон';

  @override
  String get libLikedSongs => 'Таалагдсан дуунууд';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дуу',
      one: '1 дуу',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count офлайн';
  }

  @override
  String get libMyFiles => 'Миний өөрийн файлууд';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count файл',
      one: '1 файл',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Шинэ playlist';

  @override
  String get libMakeOne => 'Үүсгэх';

  @override
  String get libSortRecent => 'Саяхан нэмсэн';

  @override
  String get libSortTitle => 'Гарчиг';

  @override
  String get libSortArtist => 'Уран бүтээлч';

  @override
  String get libSortPlays => 'Хамгийн их сонссон';

  @override
  String get sheetNotForMe => 'Надад тохирохгүй';

  @override
  String get sheetNotForMeSub => 'Үүнийг дахин хэзээ ч санал болгохгүй';

  @override
  String get sheetBlocked => 'Хаагдсан — дахин зөвшөөрөхийн тулд товшино уу';

  @override
  String get sheetBlockedSub => 'Дахин санал болгогдож болно';

  @override
  String get sheetPlayNext => 'Дараа нь тоглуулах';

  @override
  String get sheetAddToPlaylist => 'Playlist-д нэмэх';

  @override
  String get sheetDownloaded => 'Татсан';

  @override
  String get sheetRemoveFile => 'Файлыг устгахын тулд товшино уу';

  @override
  String get sheetDownload => 'Татах';

  @override
  String get sheetKeepOffline => 'Офлайнаар хадгалах';

  @override
  String get sheetRadio => 'Радио эхлүүлэх';

  @override
  String get sheetRadioSub => 'Энэ дууны эргэн тойронд бүрдсэн дараалал';

  @override
  String get sheetQueue => 'Дараалал';

  @override
  String get sheetSleepTimer => 'Унтах таймер';

  @override
  String get sheetSleepOff => 'Унтраасан';

  @override
  String sheetSleepMinutes(int count) {
    return '$count минут';
  }

  @override
  String get sheetSleepEndOfTrack => 'Энэ дууны төгсгөл';

  @override
  String sheetSleepSet(int count) {
    return 'Хөгжим $count минутын дараа зогсоно';
  }

  @override
  String get tasteTitle => 'Таны сонирхол';

  @override
  String get tasteRetrain => 'Дахин сургах';

  @override
  String get tasteRetraining => 'Таны түүхээс дахин суралцаж байна…';

  @override
  String get tasteRetrained => 'ХА загвараа дахин бүрдүүллээ.';

  @override
  String tasteConfidence(int percent) {
    return 'Итгэлцэл $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays тоглуулалт · $skips алгассан · $likes таалагдсан';
  }

  @override
  String get tasteEmptySummary => 'Хэдэн дуу тоглуулахад энэ хэсэг дүүрнэ.';

  @override
  String get tasteKeepLearning => 'Сонсох зуур суралцсаар байх';

  @override
  String get tasteKeepLearningSub =>
      'Одоогийн профайлыг царцаахын тулд унтраана уу';

  @override
  String get tasteDownloadsTitle => 'ХА-ийн татдаг зүйлс';

  @override
  String get tasteDownloadsSub => 'Хөгжим таны хүсэлтгүйгээр төхөөрөмжид орно';

  @override
  String get tasteDownloadLikes => 'Надад таалагдсан бүгдийг татах';

  @override
  String get tasteDownloadLikesSub =>
      'Зүрх дарахад файл офлайнаар хадгалагдана';

  @override
  String get tasteAiInstall => 'ХА сонгосон хөгжмөө суулгаг';

  @override
  String get tasteAiInstallSub => 'Итгэлтэй байгаа дуунуудаа татаж авна';

  @override
  String get tasteWhatItThinks => 'Таньд юу таалагддаг гэж үздэг вэ';

  @override
  String get tasteWhatItThinksSub =>
      'Тоглуулалт, алгасалт, таалагдсан болон давталтаас суралцсан';

  @override
  String get tasteArtists => 'Түшиглэдэг уран бүтээлчид';

  @override
  String get tasteWhenYouListen => 'Та хэзээ сонсдог вэ';

  @override
  String get tasteWhenYouListenSub =>
      'Цаг тутмын тоглуулалт — одоогийн цаг илүү чухалд тооцогдоно';

  @override
  String get tasteDecades => 'Арван жилүүд';

  @override
  String get tasteTune => 'Санал болгоход тохируулга хийх';

  @override
  String get tasteTuneSub => 'Нүүрийг дараагийн удаа шинэчлэхэд хүчинтэй болно';

  @override
  String get tasteDiscovery => 'Нээлт';

  @override
  String get tasteDiscoverySub => 'Танил ↔ хэзээ ч сонсоогүй зүйлс';

  @override
  String get tasteEnergy => 'Эрч хүч';

  @override
  String get tasteEnergySub => 'Тайван ↔ чанга';

  @override
  String get tasteRecency => 'Шинэлэг байдал';

  @override
  String get tasteRecencySub => 'Цаг үл хамаарах ↔ цоо шинэ';

  @override
  String get tasteNostalgia => 'Дурсамж';

  @override
  String get tasteNostalgiaSub =>
      'Хуучин дуртай дуу хэр удаан сонсоогүй бол мартагдсанд тооцогдох вэ';

  @override
  String get tasteSignals => 'Ашиглаж болох дохионууд';

  @override
  String get tasteSignalsSub => 'Бүх зүйл энэ төхөөрөмж дээр үлдэнэ';

  @override
  String get tasteUseHistory => 'Миний тоглуулсан зүйлс';

  @override
  String get tasteUseSkips => 'Миний алгассан зүйлс';

  @override
  String get tasteUseTime => 'Өдрийн цаг';

  @override
  String get tasteUseYouTube => 'YouTube-ийн санал болгосон зүйлс';

  @override
  String get tasteAlwaysMore => 'Үргэлж илүү';

  @override
  String get tasteNeverAgain => 'Дахин хэзээ ч үгүй';

  @override
  String get tasteAddArtist => 'Уран бүтээлч нэмэх';

  @override
  String get tasteMoreOfPrompt => 'Үргэлж илүү…';

  @override
  String get tasteNeverAgainPrompt => 'Дахин хэзээ ч үгүй…';

  @override
  String get tasteReset => 'Сурсан зүйлийг цэвэрлэх';

  @override
  String get tasteResetSub => 'Таны хөгжим үлдэнэ; профайл тэгээс эхэлнэ';

  @override
  String get trainCard => 'Үнэлгээгээр сургах';

  @override
  String get trainCardSub =>
      'Жинхэнэ дуунуудыг шударна уу. Баруун тийш — үүнтэй адил илүү, зүүн тийш — дахин хэзээ ч үгүй. Энд өнгөрүүлсэн хоёр минут долоо хоногийн сонсолтоос дээр.';

  @override
  String get trainStart => 'Сургалтын шат эхлүүлэх';

  @override
  String get trainTitle => 'Сургалтын шат';

  @override
  String get trainQuestion => 'Үүнийг нүүр хуудсандаа харахыг хүсэж байна уу?';

  @override
  String get trainMoreLikeThis => 'Үүнтэй адил илүү';

  @override
  String get trainNeverAgain => 'Дахин хэзээ ч үгүй';

  @override
  String get trainDone => 'Шат дууслаа';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked хадгалсан · $blocked хаасан. Итгэлцэл $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Таны сонирхол руу буцах';

  @override
  String get trainNothingTitle => 'Үнэлэх зүйл одоохондоо алга';

  @override
  String get trainNothingBody =>
      'Хөгжим нэмэх эсвэл ХА-д нэр дэвшигч татуулаад дараа эргэн ирээрэй.';

  @override
  String get trainLeaveTitle => 'Сургалтын шатнаас гарах уу?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Одоо гарвал ХА энэ шатны бүх зүйлийг устгана — таны дөнгөж үнэлсэн бүх $count дуу.',
      one:
          'Одоо гарвал ХА энэ шатны бүх зүйлийг устгана — таны дөнгөж үнэлсэн 1 дуу.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Үргэлжлүүлэн сургах';

  @override
  String get trainDiscard => 'Устгаж гарах';

  @override
  String get setTitle => 'Тохиргоо';

  @override
  String get setAppearance => 'Харагдах байдал';

  @override
  String get setTheme => 'Загвар';

  @override
  String get setThemeSystem => 'Системийг дагах';

  @override
  String get setThemeLight => 'Цайвар';

  @override
  String get setThemeDark => 'Бараан';

  @override
  String get setPureBlack => 'Цэвэр хар';

  @override
  String get setPureBlackSub => 'OLED дэлгэц дээр цэнэг хэмнэнэ';

  @override
  String get setAccent => 'Өнгөний өргөлт';

  @override
  String get setAccentArtwork => 'Хавтасны зургаас';

  @override
  String get setAccentFixed => 'Миний сонгосон нэг өнгө';

  @override
  String get setLanguage => 'Хэл';

  @override
  String get setLanguageSystem => 'Системийг дагах';

  @override
  String get setAccessibility => 'Хүртээмж';

  @override
  String get setTextSize => 'Текстийн хэмжээ';

  @override
  String get setTextSizeSub => 'Системийн тохиргооны дээр нэмэгдэнэ';

  @override
  String get setReduceMotion => 'Хөдөлгөөнийг багасгах';

  @override
  String get setReduceMotionSub =>
      'Баар, визуалайзер, үсэрдэг гүйлгэлт, пүрштэй товшилт болон хуудас шилжилтийг зогсооно';

  @override
  String get setHighContrast => 'Өндөр тодрол';

  @override
  String get setHighContrastSub => 'Илүү тод ялгаа ба харагдах хүрээ';

  @override
  String get setBoldText => 'Тод текст';

  @override
  String get setPlayback => 'Тоглуулалт';

  @override
  String get setAutoRadio => 'Хөгжмийг үргэлжлүүлэх';

  @override
  String get setAutoRadioSub =>
      'Дараалал дуусахад сүүлийн дуугаар бүрдүүлсэн радиогоор үргэлжлүүлнэ';

  @override
  String get setSmartShuffle => 'Ухаалаг холих';

  @override
  String get setSmartShuffleSub =>
      'Санамсаргүй бус, сонирхолд тулгуурлан холино';

  @override
  String get setResume => 'Орхисон газраасаа үргэлжлүүлэх';

  @override
  String get setResumeSub =>
      'Апп нээгдэхэд дарааллыг түр зогссон төлөвтэй сэргээнэ';

  @override
  String get setDataSaver => 'Wi-Fi-гүй үед дата хэмнэх';

  @override
  String get setDataSaverSub =>
      'Мобайл датаар дамжуулалт ба таталтыг 128 kbps-ээр хязгаарлана';

  @override
  String get setHaptics => 'Хүрэлтийн хариу';

  @override
  String get setShowReasons => 'Яагаад санал болгосныг харуулах';

  @override
  String get setSkipSilence => 'Чимээгүй хэсгийг алгасах';

  @override
  String get setQuality => 'Аудио чанар';

  @override
  String get setQualityLow => 'Бага · 64 kbps';

  @override
  String get setQualityNormal => 'Хэвийн · 128 kbps';

  @override
  String get setQualityHigh => 'Өндөр · 192 kbps';

  @override
  String get setQualityBest => 'Боломжит хамгийн сайн';

  @override
  String get setStorage => 'Татсан зүйлс ба хадгалалт';

  @override
  String get setWifiOnly => 'Зөвхөн Wi-Fi-аар татах';

  @override
  String get setDailyLimit => 'ХА-ийн өдрийн хязгаар';

  @override
  String setDailyLimitSub(int count) {
    return 'Өдөрт $count дуу';
  }

  @override
  String get setBudget => 'ХА-ийн ашиглаж болох хадгалалт';

  @override
  String setUsed(Object size) {
    return 'Татсан зүйлсэд $size ашиглагдсан';
  }

  @override
  String get setYourMusic => 'Таны хөгжим';

  @override
  String get setImport => 'Энэ төхөөрөмжөөс хөгжим нэмэх';

  @override
  String get setImportSub => 'Хавтас эсвэл ганц файл сонгох';

  @override
  String get setCleanup => 'Алга болсон файлыг цэвэрлэх';

  @override
  String get setCleanupSub => 'Файл нь устсан дууг хасах';

  @override
  String setCleanupDone(int count) {
    return '$count алга болсон файлыг хаслаа.';
  }

  @override
  String get setExport => 'Миний сонирхлыг өөр төхөөрөмж рүү илгээх';

  @override
  String get setExportSub =>
      'Таалагдсан, тоглуулсан болон ХА-ийн сурсан бүхнийг файлд хадгална';

  @override
  String get setImportTaste => 'Өөр төхөөрөмжөөс сонирхол ачаалах';

  @override
  String get setImportTasteSub =>
      'Хадгалсан сонирхлын файлыг сонгож нэгтгэнэ — давтахад аюулгүй';

  @override
  String get setAbout => 'Тухай';

  @override
  String get setAboutBody =>
      'YouTube болон таны өөрийн файлуудын хөгжим. ХА бүхэлдээ энэ төхөөрөмж дээр ажилладаг — юу ч гадагш гарахгүй.';

  @override
  String get setSource => 'Эх код';

  @override
  String get importTitle => 'Хөгжим нэмэх';

  @override
  String get importPickFolder => 'Хавтас сонгох';

  @override
  String get importPickFiles => 'Файл сонгох';

  @override
  String importScanning(Object file) {
    return '$file-г шалгаж байна';
  }

  @override
  String importAdded(int count) {
    return '$count нэмсэн';
  }

  @override
  String get importDenied =>
      'Зөвшөөрөл татгалзсан — хөгжмийг чинь уншиж чадахгүй.';

  @override
  String get importWatched => 'Хянадаг хавтаснууд';

  @override
  String get importIosHint =>
      'Files аппыг нээгээд On My iPhone → TuneBox руу орж, хөгжмөө тэнд хийнэ үү.';

  @override
  String get playerQueue => 'Дараалал';

  @override
  String get playerUpNext => 'Дараагийн';

  @override
  String get playerLyrics => 'Дууны үг';

  @override
  String get playerNoLyrics => 'Энэ дууны үг алга.';

  @override
  String get playerRepeat => 'Давтах';

  @override
  String get playerShuffle => 'Холих';

  @override
  String errorPlayback(Object title) {
    return '\"$title\"-г тоглуулж чадсангүй';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\"-г алгасаж байна — урсгал нээгдсэнгүй.';
  }

  @override
  String get undo => 'Буцаах';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Яг одоо: $tags, тэргүүлэгч нь $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Яг одоо: $tags.';
  }

  @override
  String get setColour => 'Өнгө';

  @override
  String get setColourSub => 'Бүх апп үүнийг дагана';

  @override
  String get setCoverArt => 'Хавтасны зураг';

  @override
  String get setMyColour => 'Миний өнгө';

  @override
  String get setCoverArtSub => 'Дуу бүр апп-ыг хавтасныхаа өнгөөр сольно.';

  @override
  String get setMyColourSub => 'Нэг өнгө, хаа сайгүй, үргэлж.';

  @override
  String get setPickColour => 'Дурын өнгө сонгох';

  @override
  String get setWifiOnlyTitle => 'Зөвхөн Wi-Fi-аар татах';

  @override
  String get setDownloadLikes => 'Надад таалагдсан бүгдийг татах';

  @override
  String get setDownloadLikesSub => 'Зүрхний товч файлыг бас хадгална';

  @override
  String get setAiInstall => 'ХА сонгосон хөгжмөө суулгаг';

  @override
  String get setSkipSilenceSub =>
      'Зөвхөн Android. Чимээгүй оршил, бүдгэрэлт ба сул хэсгийг тайраж болзошгүй — хөгжим тасалдвал унтраана уу';

  @override
  String get setStorageUsed => 'Татсан зүйлсэд ашигласан хадгалалт';

  @override
  String get setLibrary => 'Номын сан';

  @override
  String get setUpdates => 'Шинэчлэлт';

  @override
  String get setAutoUpdate => 'Шинэчлэлтийг өөрөө шалгах';

  @override
  String get setAutoUpdateSub =>
      'Хэдэн цаг тутам чимээгүйхэн шалгаж, Wi-Fi дээр татна. Суулгахдаа таноос асууна.';

  @override
  String setUpdateReady(Object version) {
    return '$version хувилбарын шинэчлэлт бэлэн боллоо';
  }

  @override
  String get setUpdateReadySub => 'Татсан — суулгахын тулд товшино уу';

  @override
  String get setUpdateAvailableSub =>
      'Хувилбарын хуудаснаас аваарай — холбоосыг хуулахын тулд товшино уу';

  @override
  String get setLinkCopied => 'Холбоос хуулагдлаа';

  @override
  String get setCheckNow => 'Одоо шалгах';

  @override
  String get setUpToDate => 'TuneBox хамгийн сүүлийн хувилбар дээр байна';

  @override
  String get setChecking => 'Шинэ хувилбар хайж байна…';
}
