// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class LHu extends L {
  LHu([String locale = 'hu']) : super(locale);

  @override
  String get navHome => 'Kezdőlap';

  @override
  String get navExplore => 'Felfedezés';

  @override
  String get navLibrary => 'Könyvtár';

  @override
  String get navTaste => 'Az ízlésed';

  @override
  String get actionDone => 'Kész';

  @override
  String get actionCancel => 'Mégse';

  @override
  String get actionCreate => 'Létrehozás';

  @override
  String get actionPlay => 'Lejátszás';

  @override
  String get actionShuffle => 'Keverés';

  @override
  String get actionPlayAll => 'Összes lejátszása';

  @override
  String get actionAdd => 'Hozzáadás';

  @override
  String get actionRemove => 'Eltávolítás';

  @override
  String get actionName => 'Név';

  @override
  String get greetingNight => 'Még fent vagy?';

  @override
  String get greetingMorning => 'Jó reggelt';

  @override
  String get greetingAfternoon => 'Jó napot';

  @override
  String get greetingEvening => 'Jó estét';

  @override
  String get homeBuilding => 'Az MI építi a polcaidat…';

  @override
  String get homeOffline => 'Offline — az eszközön lévők láthatók';

  @override
  String get homeNothingYet => 'Még nincs mit mutatni';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count polc, épp most frissítve',
      one: '1 polc, épp most frissítve',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Polcok újraépítése';

  @override
  String get homeAddMusic => 'Zene hozzáadása erről az eszközről';

  @override
  String get homeQuickPicks => 'Gyors választék';

  @override
  String get homeQuickPicksSub => 'Vissza egyenesen ahhoz, amit hallgattál';

  @override
  String get homeEmptyTitle => 'A könyvtárad üres';

  @override
  String get homeEmptyBody =>
      'Keress valamit, vagy add hozzá az eszközön már meglévő zenét. Az MI az első lejátszástól tanulni kezd.';

  @override
  String get homeAddMyMusic => 'Zenéim hozzáadása';

  @override
  String homeCouldNotReach(Object error) {
    return 'A YouTube nem érhető el: $error';
  }

  @override
  String get moodFocus => 'Fókusz';

  @override
  String get moodWorkout => 'Edzés';

  @override
  String get moodChill => 'Pihenés';

  @override
  String get moodCommute => 'Ingázás';

  @override
  String get moodParty => 'Buli';

  @override
  String moodBuilding(Object mood) {
    return '$mood mix összeállítása…';
  }

  @override
  String moodFailed(Object error) {
    return 'Nem sikerült: $error';
  }

  @override
  String get shelfRepeat => 'Ismétlésben';

  @override
  String get shelfRepeatSub => 'Az elmúlt két hét';

  @override
  String get shelfForgotten => 'Régi, elfeledett slágerek, amiket szerettél';

  @override
  String get shelfForgottenSub => 'Egykor kedvelt, de régóta nem hallgatott';

  @override
  String get shelfNew => 'Új';

  @override
  String get shelfNewSub =>
      'Friss számok, amelyekről az MI úgy gondolja, hogy neked valók';

  @override
  String shelfBecause(Object artist) {
    return 'Mert hallgattad: $artist';
  }

  @override
  String get shelfBecauseSub => 'Az ízlésed ugyanazon sarka';

  @override
  String get shelfDeep => 'Alig érintett';

  @override
  String get shelfDeepSub => 'A könyvtáradban, de szinte soha nem játszott';

  @override
  String get shelfMix => 'A te mixed';

  @override
  String get shelfMixSub =>
      'Minden alkalommal újraépül, amikor megnyitod az appot';

  @override
  String get shelfAdded => 'Nemrég hozzáadott';

  @override
  String get shelfAddedSub => 'Letöltések és importált fájlok';

  @override
  String get shelfStarter => 'Kezdd itt';

  @override
  String get shelfStarterSub =>
      'Játssz le párat, és az MI azonnal tanulni kezd';

  @override
  String reasonPlays(int count) {
    return '$count lejátszás';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Kedvelt, utoljára játszva: $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count lejátszás, utoljára $when';
  }

  @override
  String get reasonTopArtist => 'Az egyik legtöbbet hallgatott előadód';

  @override
  String reasonMore(Object artist) {
    return 'Több tőle: $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Mindig visszatérsz hozzá: $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'A te műfajod: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Mostanában sok $tag';
  }

  @override
  String get reasonOutThisYear => 'Idén jelent meg';

  @override
  String get reasonReleasedRecently => 'Nemrég jelent meg';

  @override
  String get reasonClose => 'Közel ahhoz, amit hallgattál';

  @override
  String reasonNear(Object artist) {
    return '$artist közelében';
  }

  @override
  String get reasonNeverPlayed => 'Még sosem játszott';

  @override
  String get reasonPlayedOnce => 'Egyszer játszott';

  @override
  String get reasonPopular => 'Most népszerű';

  @override
  String whenYearsAgo(int count) {
    return '$count éve';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count hónapja';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count napja';
  }

  @override
  String get searchHint => 'Dalok, előadók, albumok';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count találat',
      one: '1 találat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Legutóbbi keresések';

  @override
  String get searchEmptyTitle => 'Nincs találat';

  @override
  String get searchEmptyBody =>
      'Próbálj más írásmódot, vagy csak az előadó nevét.';

  @override
  String get searchStartTitle => 'Találj valamit lejátszani';

  @override
  String get searchStartBody =>
      'Keress a YouTube Music-on — csak dalok jönnek vissza, soha nem más videók.';

  @override
  String get libPlaylists => 'Lejátszási listák';

  @override
  String get libSongs => 'Dalok';

  @override
  String get libArtists => 'Előadók';

  @override
  String get libLiked => 'Kedvelt';

  @override
  String get libDownloads => 'Letöltések';

  @override
  String get libImported => 'Importált';

  @override
  String get libLikedSongs => 'Kedvelt dalok';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dal',
      one: '1 dal',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'Saját fájlok';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fájl',
      one: '1 fájl',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Új lejátszási lista';

  @override
  String get libMakeOne => 'Készíts egyet';

  @override
  String get libSortRecent => 'Nemrég hozzáadott';

  @override
  String get libSortTitle => 'Cím';

  @override
  String get libSortArtist => 'Előadó';

  @override
  String get libSortPlays => 'Legtöbbet játszott';

  @override
  String get sheetNotForMe => 'Nem nekem való';

  @override
  String get sheetNotForMeSub => 'Soha többé ne ajánld ezt';

  @override
  String get sheetBlocked => 'Letiltva — koppints az újbóli engedélyezéshez';

  @override
  String get sheetBlockedSub => 'Újra megjelenhet az ajánlásokban';

  @override
  String get sheetPlayNext => 'Lejátszás következőként';

  @override
  String get sheetAddToPlaylist => 'Hozzáadás lejátszási listához';

  @override
  String get sheetDownloaded => 'Letöltve';

  @override
  String get sheetRemoveFile => 'Koppints a fájl eltávolításához';

  @override
  String get sheetDownload => 'Letöltés';

  @override
  String get sheetKeepOffline => 'Megtartás offline használatra';

  @override
  String get sheetRadio => 'Rádió indítása';

  @override
  String get sheetRadioSub => 'Egy ezen dal köré épített sor';

  @override
  String get sheetQueue => 'Várólista';

  @override
  String get sheetSleepTimer => 'Elalvás időzítő';

  @override
  String get sheetSleepOff => 'Ki';

  @override
  String sheetSleepMinutes(int count) {
    return '$count perc';
  }

  @override
  String get sheetSleepEndOfTrack => 'E dal vége';

  @override
  String sheetSleepSet(int count) {
    return 'A zene $count perc múlva leáll';
  }

  @override
  String get tasteTitle => 'Az ízlésed';

  @override
  String get tasteRetrain => 'Újratanítás';

  @override
  String get tasteRetraining => 'Újratanítás az előzményeid alapján…';

  @override
  String get tasteRetrained => 'Az MI újraépítette a modelljét.';

  @override
  String tasteConfidence(int percent) {
    return 'Megbízhatóság: $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays lejátszás · $skips átugrás · $likes kedvelés';
  }

  @override
  String get tasteEmptySummary => 'Játssz le néhány dalt, és ez megtelik.';

  @override
  String get tasteKeepLearning => 'Tanuljon tovább, amíg hallgatok';

  @override
  String get tasteKeepLearningSub =>
      'Kapcsold ki a jelenlegi profil befagyasztásához';

  @override
  String get tasteDownloadsTitle => 'Az MI által kezelt letöltések';

  @override
  String get tasteDownloadsSub => 'A zene kérés nélkül kerül az eszközre';

  @override
  String get tasteDownloadLikes => 'Minden kedvelt letöltése';

  @override
  String get tasteDownloadLikesSub =>
      'Nyomd meg a szívet, és a fájl offline mentésre kerül';

  @override
  String get tasteAiInstall => 'Az MI telepíthesse az általa választott zenét';

  @override
  String get tasteAiInstallSub =>
      'Azokat a számokat tölti le, amelyekben biztos';

  @override
  String get tasteWhatItThinks => 'Mit gondol, mit szeretsz';

  @override
  String get tasteWhatItThinksSub =>
      'Lejátszásokból, átugrásokból, kedvelésekből és ismétlésekből tanulva';

  @override
  String get tasteArtists => 'Előadók, akikre támaszkodik';

  @override
  String get tasteWhenYouListen => 'Mikor hallgatsz';

  @override
  String get tasteWhenYouListenSub =>
      'Lejátszások óránként — az aktuális óra nagyobb súlyt kap';

  @override
  String get tasteDecades => 'Évtizedek';

  @override
  String get tasteTune => 'Ajánlások hangolása';

  @override
  String get tasteTuneSub => 'A Kezdőlap következő frissítésekor lép életbe';

  @override
  String get tasteDiscovery => 'Felfedezés';

  @override
  String get tasteDiscoverySub => 'Ismerős ↔ amit még sosem hallottál';

  @override
  String get tasteEnergy => 'Energia';

  @override
  String get tasteEnergySub => 'Nyugodt ↔ hangos';

  @override
  String get tasteRecency => 'Újdonság';

  @override
  String get tasteRecencySub => 'Időtlen ↔ vadonatúj';

  @override
  String get tasteNostalgia => 'Nosztalgia';

  @override
  String get tasteNostalgiaSub =>
      'Mennyi idő után számít egy régi kedvenc elfeledettnek';

  @override
  String get tasteSignals => 'Felhasználható jelek';

  @override
  String get tasteSignalsSub => 'Minden ezen az eszközön marad';

  @override
  String get tasteUseHistory => 'Amit lejátszottam';

  @override
  String get tasteUseSkips => 'Amit átugrok';

  @override
  String get tasteUseTime => 'A napszak';

  @override
  String get tasteUseYouTube => 'YouTube-javaslatok';

  @override
  String get tasteAlwaysMore => 'Mindig többet ebből';

  @override
  String get tasteNeverAgain => 'Soha többé';

  @override
  String get tasteAddArtist => 'Előadó hozzáadása';

  @override
  String get tasteMoreOfPrompt => 'Mindig többet ebből…';

  @override
  String get tasteNeverAgainPrompt => 'Soha többé…';

  @override
  String get tasteReset => 'A tanultak törlése';

  @override
  String get tasteResetSub => 'A zenéd megmarad; a profil nulláról indul';

  @override
  String get trainCard => 'Taníts értékeléssel';

  @override
  String get trainCardSub =>
      'Húzogass valódi dalok között. Jobbra többet ilyenből, balra soha többé. Két perc itt többet ér egy hétnyi hallgatásnál.';

  @override
  String get trainStart => 'Tanítási kör indítása';

  @override
  String get trainTitle => 'Tanítási kör';

  @override
  String get trainQuestion => 'Szeretnéd ezt a Kezdőlapodon?';

  @override
  String get trainMoreLikeThis => 'Többet ilyenből';

  @override
  String get trainNeverAgain => 'Soha többé';

  @override
  String get trainDone => 'A kör kész';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked megtartva · $blocked letiltva. Megbízhatóság $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Vissza az ízlésedhez';

  @override
  String get trainNothingTitle => 'Még nincs mit értékelni';

  @override
  String get trainNothingBody =>
      'Adj hozzá zenét, vagy hagyd, hogy az MI először jelölteket gyűjtsön, aztán gyere vissza.';

  @override
  String get trainLeaveTitle => 'Kilépsz a tanítási körből?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ha most kilépsz, az MI elveti a kör összes eredményét — mind a(z) $count most értékelt dalt.',
      one:
          'Ha most kilépsz, az MI elveti a kör összes eredményét — az 1 most értékelt dalt.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Tanítás folytatása';

  @override
  String get trainDiscard => 'Elvetés és kilépés';

  @override
  String get setTitle => 'Beállítások';

  @override
  String get setAppearance => 'Megjelenés';

  @override
  String get setTheme => 'Téma';

  @override
  String get setThemeSystem => 'Rendszerbeállítás követése';

  @override
  String get setThemeLight => 'Világos';

  @override
  String get setThemeDark => 'Sötét';

  @override
  String get setPureBlack => 'Tiszta fekete';

  @override
  String get setPureBlackSub => 'Energiát takarít meg OLED kijelzőn';

  @override
  String get setAccent => 'Kiemelőszín';

  @override
  String get setAccentArtwork => 'A borítóképből';

  @override
  String get setAccentFixed => 'Egy általam választott szín';

  @override
  String get setLanguage => 'Nyelv';

  @override
  String get setLanguageSystem => 'Rendszerbeállítás követése';

  @override
  String get setAccessibility => 'Kisegítő lehetőségek';

  @override
  String get setTextSize => 'Szövegméret';

  @override
  String get setTextSizeSub => 'A rendszerbeállításodon felül';

  @override
  String get setReduceMotion => 'Mozgás csökkentése';

  @override
  String get setReduceMotionSub =>
      'Leállítja a sávokat, a vizualizálót, a pattogó görgetést, a rugós koppintásokat és az oldalátmeneteket';

  @override
  String get setHighContrast => 'Magas kontraszt';

  @override
  String get setHighContrastSub => 'Erősebb elkülönítés és látható körvonalak';

  @override
  String get setBoldText => 'Félkövér szöveg';

  @override
  String get setPlayback => 'Lejátszás';

  @override
  String get setAutoRadio => 'Szóljon tovább a zene';

  @override
  String get setAutoRadioSub =>
      'A sor végén az utolsó dalból épített rádióval folytatja';

  @override
  String get setSmartShuffle => 'Okos keverés';

  @override
  String get setSmartShuffleSub => 'Ízlés szerint kever véletlenszerű helyett';

  @override
  String get setResume => 'Folytatás ott, ahol abbahagytam';

  @override
  String get setResumeSub =>
      'Az app megnyitásakor visszaállítja a sort, szüneteltetve';

  @override
  String get setDataSaver => 'Adatspórolás Wi-Fi nélkül';

  @override
  String get setDataSaverSub =>
      'Mobilnet esetén 128 kbps-re korlátozza a streameket és letöltéseket';

  @override
  String get setHaptics => 'Haptikus visszajelzés';

  @override
  String get setShowReasons => 'Mutassa meg, miért ajánlott valami';

  @override
  String get setSkipSilence => 'Csend átugrása';

  @override
  String get setQuality => 'Hangminőség';

  @override
  String get setQualityLow => 'Alacsony · 64 kbps';

  @override
  String get setQualityNormal => 'Normál · 128 kbps';

  @override
  String get setQualityHigh => 'Magas · 192 kbps';

  @override
  String get setQualityBest => 'Elérhető legjobb';

  @override
  String get setStorage => 'Letöltések és tárhely';

  @override
  String get setWifiOnly => 'Letöltés csak Wi-Fin';

  @override
  String get setDailyLimit => 'Napi korlát az MI-nek';

  @override
  String setDailyLimitSub(int count) {
    return 'Napi $count dal';
  }

  @override
  String get setBudget => 'Az MI által használható tárhely';

  @override
  String setUsed(Object size) {
    return '$size foglalt a letöltésektől';
  }

  @override
  String get setYourMusic => 'A zenéd';

  @override
  String get setImport => 'Zene hozzáadása erről az eszközről';

  @override
  String get setImportSub => 'Válassz mappákat vagy egyedi fájlokat';

  @override
  String get setCleanup => 'Hiányzó fájlok takarítása';

  @override
  String get setCleanupSub => 'Az eltűnt fájlú dalok törlése';

  @override
  String setCleanupDone(int count) {
    return '$count hiányzó fájl eltávolítva.';
  }

  @override
  String get setExport => 'Ízlésem küldése másik eszközre';

  @override
  String get setExportSub =>
      'Fájlba menti a kedvelésidet, lejátszásaidat és mindent, amit az MI megtanult';

  @override
  String get setImportTaste => 'Ízlés betöltése másik eszközről';

  @override
  String get setImportTasteSub =>
      'Válassz egy mentett ízlésfájlt, és olvaszd be — biztonságosan megismételhető';

  @override
  String get setAbout => 'Névjegy';

  @override
  String get setAboutBody =>
      'Zene a YouTube-ról és a saját fájljaidból. Az MI teljes egészében ezen az eszközön fut — semmi nem hagyja el.';

  @override
  String get setSource => 'Forráskód';

  @override
  String get importTitle => 'Zene hozzáadása';

  @override
  String get importPickFolder => 'Mappa választása';

  @override
  String get importPickFiles => 'Fájlok választása';

  @override
  String importScanning(Object file) {
    return 'Vizsgálat: $file';
  }

  @override
  String importAdded(int count) {
    return '$count hozzáadva';
  }

  @override
  String get importDenied => 'Engedély megtagadva — nem olvasható a zenéd.';

  @override
  String get importWatched => 'Figyelt mappák';

  @override
  String get importIosHint =>
      'Nyisd meg a Fájlok appot, menj az iPhone-omon → TuneBox helyre, és húzd oda a zenét.';

  @override
  String get playerQueue => 'Várólista';

  @override
  String get playerUpNext => 'Következik';

  @override
  String get playerLyrics => 'Dalszöveg';

  @override
  String get playerNoLyrics => 'Ehhez nincs dalszöveg.';

  @override
  String get playerRepeat => 'Ismétlés';

  @override
  String get playerShuffle => 'Keverés';

  @override
  String errorPlayback(Object title) {
    return 'Nem játszható le: „$title”';
  }

  @override
  String errorSkipping(Object title) {
    return '„$title” átugrása — a stream nem nyílt meg.';
  }

  @override
  String get undo => 'Visszavonás';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Jelenleg: $tags, élen: $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Jelenleg: $tags.';
  }

  @override
  String get setColour => 'Szín';

  @override
  String get setColourSub => 'Az egész app ezt követi';

  @override
  String get setCoverArt => 'Borítókép';

  @override
  String get setMyColour => 'Saját szín';

  @override
  String get setCoverArtSub =>
      'Minden dal a borítója alapján színezi át az appot.';

  @override
  String get setMyColourSub => 'Egy szín, mindenhol, mindig.';

  @override
  String get setPickColour => 'Bármely szín választása';

  @override
  String get setWifiOnlyTitle => 'Letöltés csak Wi-Fin';

  @override
  String get setDownloadLikes => 'Minden kedvelt letöltése';

  @override
  String get setDownloadLikesSub => 'A szív gomb a fájlt is menti';

  @override
  String get setAiInstall => 'Az MI telepíthesse az általa választott zenét';

  @override
  String get setSkipSilenceSub =>
      'Csak Androidon. Levághatja a csendes bevezetőket, kihangosításokat és halk részeket — kapcsold ki, ha a zene akadozik';

  @override
  String get setStorageUsed => 'A letöltések által használt tárhely';

  @override
  String get setLibrary => 'Könyvtár';

  @override
  String get setUpdates => 'Frissítések';

  @override
  String get setAutoUpdate => 'Frissítések automatikus keresése';

  @override
  String get setAutoUpdateSub =>
      'Néhány óránként, csendben, és Wi-Fin tölt le. A telepítés előtt továbbra is rákérdez.';

  @override
  String setUpdateReady(Object version) {
    return 'A(z) $version frissítés kész';
  }

  @override
  String get setUpdateReadySub => 'Letöltve — koppints a telepítéshez';

  @override
  String get setUpdateAvailableSub =>
      'Töltsd le a kiadások oldaláról — koppints a hivatkozás másolásához';

  @override
  String get setLinkCopied => 'Hivatkozás másolva';

  @override
  String get setCheckNow => 'Keresés most';

  @override
  String get setUpToDate => 'A TuneBox naprakész';

  @override
  String get setChecking => 'Újabb verzió keresése…';
}
