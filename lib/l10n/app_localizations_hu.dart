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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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

  @override
  String get glxTitle => 'Taste Galaxy';

  @override
  String get glxEntry => 'Your artists as a map of stars';

  @override
  String get glxHint =>
      'Big stars are played most. Neighbours sound alike. Tap a star.';

  @override
  String get glxLasso => 'Draw around a cluster';

  @override
  String get glxLassoHint =>
      'Draw a loop around some stars to play that corner of your taste';

  @override
  String get glxLassoEmpty => 'No stars inside that loop';

  @override
  String glxLassoPlaying(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Playing $count artists',
      one: 'Playing 1 artist',
    );
    return '$_temp0';
  }

  @override
  String get glxRecenter => 'Back to the whole sky';

  @override
  String glxPlay(String artist) {
    return 'Play $artist';
  }

  @override
  String get glxOpen => 'Open artist page';

  @override
  String get glxMore => 'More of this artist';

  @override
  String get glxNever => 'Never play this artist';

  @override
  String get glxEmpty => 'Your sky is still dark';

  @override
  String get glxEmptyBody =>
      'Add songs from a few different artists and the stars appear.';
}
