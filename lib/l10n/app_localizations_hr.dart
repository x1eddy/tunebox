// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class LHr extends L {
  LHr([String locale = 'hr']) : super(locale);

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
  String get actionCancel => 'Odustani';

  @override
  String get actionCreate => 'Izradi';

  @override
  String get actionPlay => 'Reproduciraj';

  @override
  String get actionShuffle => 'Izmiješaj';

  @override
  String get actionPlayAll => 'Reproduciraj sve';

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
  String get greetingEvening => 'Dobra večer';

  @override
  String get homeBuilding => 'AI slaže tvoje police…';

  @override
  String get homeOffline => 'Izvan mreže — prikazuje se ono što je na uređaju';

  @override
  String get homeNothingYet => 'Još nema što prikazati';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count polica, upravo osvježeno',
      few: '$count police, upravo osvježene',
      one: '$count polica, upravo osvježena',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Ponovno složi police';

  @override
  String get homeAddMusic => 'Dodaj glazbu s ovog uređaja';

  @override
  String get homeQuickPicks => 'Brzi izbor';

  @override
  String get homeQuickPicksSub => 'Odmah natrag na ono što si slušao';

  @override
  String get homeEmptyTitle => 'Tvoja je biblioteka prazna';

  @override
  String get homeEmptyBody =>
      'Potraži nešto ili dodaj glazbu koja je već na ovom uređaju. AI počinje učiti od tvog prvog slušanja.';

  @override
  String get homeAddMyMusic => 'Dodaj moju glazbu';

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
  String get moodParty => 'Zabava';

  @override
  String moodBuilding(Object mood) {
    return 'Slažem $mood miks…';
  }

  @override
  String moodFailed(Object error) {
    return 'Nije uspjelo: $error';
  }

  @override
  String get shelfRepeat => 'U petlji';

  @override
  String get shelfRepeatSub => 'Tvoja posljednja dva tjedna';

  @override
  String get shelfForgotten => 'Stari zaboravljeni hitovi koje si volio';

  @override
  String get shelfForgottenSub => 'Nekad voljeno, već dugo netaknuto';

  @override
  String get shelfNew => 'Novo';

  @override
  String get shelfNewSub => 'Svježe pjesme za koje AI misli da su za tebe';

  @override
  String shelfBecause(Object artist) {
    return 'Jer si slušao $artist';
  }

  @override
  String get shelfBecauseSub => 'Isti kutak tvog ukusa';

  @override
  String get shelfDeep => 'Jedva načeto';

  @override
  String get shelfDeepSub => 'U tvojoj biblioteci, gotovo nikad slušano';

  @override
  String get shelfMix => 'Tvoj miks';

  @override
  String get shelfMixSub => 'Slaže se iznova svaki put kad otvoriš aplikaciju';

  @override
  String get shelfAdded => 'Nedavno dodano';

  @override
  String get shelfAddedSub => 'Preuzimanja i datoteke koje si uvezao';

  @override
  String get shelfStarter => 'Počni ovdje';

  @override
  String get shelfStarterSub =>
      'Pusti nekoliko pjesama i AI odmah počinje učiti';

  @override
  String reasonPlays(int count) {
    return '$count reprodukcija';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Sviđa ti se, zadnji put slušano $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count reprodukcija, zadnja $when';
  }

  @override
  String get reasonTopArtist => 'Jedan od tvojih najslušanijih izvođača';

  @override
  String reasonMore(Object artist) {
    return 'Još od: $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Stalno se vraćaš na: $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Tvoja vrsta: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'U zadnje vrijeme puno: $tag';
  }

  @override
  String get reasonOutThisYear => 'Izašlo ove godine';

  @override
  String get reasonReleasedRecently => 'Nedavno objavljeno';

  @override
  String get reasonClose => 'Blizu onome što si slušao';

  @override
  String reasonNear(Object artist) {
    return 'Blizu izvođača $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nikad slušano';

  @override
  String get reasonPlayedOnce => 'Slušano jednom';

  @override
  String get reasonPopular => 'Trenutno popularno';

  @override
  String whenYearsAgo(int count) {
    return 'prije $count g.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'prije $count mj.';
  }

  @override
  String whenDaysAgo(int count) {
    return 'prije $count d.';
  }

  @override
  String get searchHint => 'Pjesme, izvođači, albumi';

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
  String get searchRecent => 'Nedavna pretraživanja';

  @override
  String get searchEmptyTitle => 'Ništa nije pronađeno';

  @override
  String get searchEmptyBody =>
      'Probaj drugačiji pravopis ili samo ime izvođača.';

  @override
  String get searchStartTitle => 'Pronađi nešto za slušanje';

  @override
  String get searchStartBody =>
      'Pretraži YouTube Music — vraćaju se samo pjesme, nikad videozapisi o drugim stvarima.';

  @override
  String get libPlaylists => 'Popisi pjesama';

  @override
  String get libSongs => 'Pjesme';

  @override
  String get libArtists => 'Izvođači';

  @override
  String get libLiked => 'Sviđa mi se';

  @override
  String get libDownloads => 'Preuzimanja';

  @override
  String get libImported => 'Uvezeno';

  @override
  String get libLikedSongs => 'Pjesme koje mi se sviđaju';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pjesama',
      few: '$count pjesme',
      one: '$count pjesma',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count izvan mreže';
  }

  @override
  String get libMyFiles => 'Moje datoteke';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count datoteka',
      few: '$count datoteke',
      one: '$count datoteka',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Novi popis pjesama';

  @override
  String get libMakeOne => 'Izradi jedan';

  @override
  String get libSortRecent => 'Nedavno dodano';

  @override
  String get libSortTitle => 'Naslov';

  @override
  String get libSortArtist => 'Izvođač';

  @override
  String get libSortPlays => 'Najviše slušano';

  @override
  String get sheetNotForMe => 'Nije za mene';

  @override
  String get sheetNotForMeSub => 'Nikad više ne preporučuj ovo';

  @override
  String get sheetBlocked => 'Blokirano — dodirni za ponovno dopuštanje';

  @override
  String get sheetBlockedSub => 'Ponovno se može pojaviti u preporukama';

  @override
  String get sheetPlayNext => 'Reproduciraj sljedeće';

  @override
  String get sheetAddToPlaylist => 'Dodaj na popis pjesama';

  @override
  String get sheetDownloaded => 'Preuzeto';

  @override
  String get sheetRemoveFile => 'Dodirni za uklanjanje datoteke';

  @override
  String get sheetDownload => 'Preuzmi';

  @override
  String get sheetKeepOffline => 'Zadrži za izvanmrežno slušanje';

  @override
  String get sheetRadio => 'Pokreni radio';

  @override
  String get sheetRadioSub => 'Red čekanja izgrađen oko ove pjesme';

  @override
  String get sheetQueue => 'Red čekanja';

  @override
  String get sheetSleepTimer => 'Mjerač za spavanje';

  @override
  String get sheetSleepOff => 'Isključeno';

  @override
  String sheetSleepMinutes(int count) {
    return '$count min';
  }

  @override
  String get sheetSleepEndOfTrack => 'Kraj ove pjesme';

  @override
  String sheetSleepSet(int count) {
    return 'Glazba staje za $count min';
  }

  @override
  String get tasteTitle => 'Tvoj ukus';

  @override
  String get tasteRetrain => 'Ponovno uči';

  @override
  String get tasteRetraining => 'Ponovno učenje iz tvoje povijesti…';

  @override
  String get tasteRetrained => 'AI je ponovno izgradio svoj model.';

  @override
  String tasteConfidence(int percent) {
    return 'Pouzdanost $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays reprodukcija · $skips preskakanja · $likes sviđanja';
  }

  @override
  String get tasteEmptySummary =>
      'Pusti nekoliko pjesama i ovo će se popuniti.';

  @override
  String get tasteKeepLearning => 'Nastavi učiti dok slušam';

  @override
  String get tasteKeepLearningSub =>
      'Isključi za zamrzavanje trenutnog profila';

  @override
  String get tasteDownloadsTitle => 'Preuzimanja kojima upravlja AI';

  @override
  String get tasteDownloadsSub => 'Glazba stiže na uređaj bez tvog traženja';

  @override
  String get tasteDownloadLikes => 'Preuzmi sve što mi se sviđa';

  @override
  String get tasteDownloadLikesSub =>
      'Dodirni srce i datoteka se sprema za izvanmrežno slušanje';

  @override
  String get tasteAiInstall => 'Dopusti AI-ju da instalira glazbu koju odabere';

  @override
  String get tasteAiInstallSub => 'Dohvaćat će pjesme u koje je siguran';

  @override
  String get tasteWhatItThinks => 'Što misli da voliš';

  @override
  String get tasteWhatItThinksSub =>
      'Naučeno iz reprodukcija, preskakanja, sviđanja i ponavljanja';

  @override
  String get tasteArtists => 'Izvođači na koje se oslanja';

  @override
  String get tasteWhenYouListen => 'Kad slušaš';

  @override
  String get tasteWhenYouListenSub =>
      'Reprodukcije po satu — trenutni sat ima veću težinu';

  @override
  String get tasteDecades => 'Desetljeća';

  @override
  String get tasteTune => 'Podesi preporuke';

  @override
  String get tasteTuneSub =>
      'Stupa na snagu pri sljedećem osvježavanju početne';

  @override
  String get tasteDiscovery => 'Otkrivanje';

  @override
  String get tasteDiscoverySub => 'Poznato ↔ stvari koje nikad nisi čuo';

  @override
  String get tasteEnergy => 'Energija';

  @override
  String get tasteEnergySub => 'Mirno ↔ glasno';

  @override
  String get tasteRecency => 'Novost';

  @override
  String get tasteRecencySub => 'Vječno ↔ potpuno novo';

  @override
  String get tasteNostalgia => 'Nostalgija';

  @override
  String get tasteNostalgiaSub =>
      'Koliko davno stari favorit postaje zaboravljen';

  @override
  String get tasteSignals => 'Signali koje smije koristiti';

  @override
  String get tasteSignalsSub => 'Sve ostaje na ovom uređaju';

  @override
  String get tasteUseHistory => 'Što sam slušao';

  @override
  String get tasteUseSkips => 'Što preskačem';

  @override
  String get tasteUseTime => 'Doba dana';

  @override
  String get tasteUseYouTube => 'Prijedlozi s YouTubea';

  @override
  String get tasteAlwaysMore => 'Uvijek više od';

  @override
  String get tasteNeverAgain => 'Nikad više';

  @override
  String get tasteAddArtist => 'Dodaj izvođača';

  @override
  String get tasteMoreOfPrompt => 'Uvijek više od…';

  @override
  String get tasteNeverAgainPrompt => 'Nikad više…';

  @override
  String get tasteReset => 'Poništi što je naučio';

  @override
  String get tasteResetSub => 'Tvoja glazba ostaje; profil kreće od nule';

  @override
  String get trainCard => 'Treniraj ocjenjivanjem';

  @override
  String get trainCardSub =>
      'Listaj prave pjesme. Desno za više takvih, lijevo za nikad više. Dvije minute ovdje vrijede više od tjedna slušanja.';

  @override
  String get trainStart => 'Pokreni krug treniranja';

  @override
  String get trainTitle => 'Krug treniranja';

  @override
  String get trainQuestion => 'Želiš li ovo na svojoj početnoj?';

  @override
  String get trainMoreLikeThis => 'Više takvih';

  @override
  String get trainNeverAgain => 'Nikad više';

  @override
  String get trainDone => 'Krug je gotov';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked zadržano · $blocked blokirano. Pouzdanost $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Natrag na tvoj ukus';

  @override
  String get trainNothingTitle => 'Još nema što ocijeniti';

  @override
  String get trainNothingBody =>
      'Dodaj glazbu ili prvo pusti AI da dohvati kandidate, pa se vrati.';

  @override
  String get trainLeaveTitle => 'Napustiti krug treniranja?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ako sada odeš, AI odbacuje sve iz ovog kruga — svih $count pjesama koje si upravo ocijenio.',
      few:
          'Ako sada odeš, AI odbacuje sve iz ovog kruga — sve $count pjesme koje si upravo ocijenio.',
      one:
          'Ako sada odeš, AI odbacuje sve iz ovog kruga — $count pjesmu koju si upravo ocijenio.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Nastavi trenirati';

  @override
  String get trainDiscard => 'Odbaci i izađi';

  @override
  String get setTitle => 'Postavke';

  @override
  String get setAppearance => 'Izgled';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Prati sustav';

  @override
  String get setThemeLight => 'Svijetla';

  @override
  String get setThemeDark => 'Tamna';

  @override
  String get setPureBlack => 'Čista crna';

  @override
  String get setPureBlackSub => 'Štedi bateriju na OLED zaslonu';

  @override
  String get setAccent => 'Boja isticanja';

  @override
  String get setAccentArtwork => 'Iz omota albuma';

  @override
  String get setAccentFixed => 'Jedna boja koju sam odabrao';

  @override
  String get setLanguage => 'Jezik';

  @override
  String get setLanguageSystem => 'Prati sustav';

  @override
  String get setAccessibility => 'Pristupačnost';

  @override
  String get setTextSize => 'Veličina teksta';

  @override
  String get setTextSizeSub => 'Povrh postavke tvog sustava';

  @override
  String get setReduceMotion => 'Smanji kretanje';

  @override
  String get setReduceMotionSub =>
      'Zaustavlja trake, vizualizator, odskakujuće pomicanje, elastične dodire i prijelaze stranica';

  @override
  String get setHighContrast => 'Visok kontrast';

  @override
  String get setHighContrastSub => 'Jače odvajanje i vidljivi obrisi';

  @override
  String get setBoldText => 'Podebljani tekst';

  @override
  String get setPlayback => 'Reprodukcija';

  @override
  String get setAutoRadio => 'Nastavi glazbu';

  @override
  String get setAutoRadioSub =>
      'Kad red čekanja završi, nastavlja radiom izgrađenim iz zadnje pjesme';

  @override
  String get setSmartShuffle => 'Pametno miješanje';

  @override
  String get setSmartShuffleSub => 'Miješa prema ukusu umjesto nasumično';

  @override
  String get setResume => 'Nastavi gdje sam stao';

  @override
  String get setResumeSub =>
      'Vraća red čekanja pri otvaranju aplikacije, pauzirano';

  @override
  String get setDataSaver => 'Štednja podataka izvan Wi-Fi-ja';

  @override
  String get setDataSaverSub =>
      'Ograničava streamove i preuzimanja na 128 kbps na mobilnim podacima';

  @override
  String get setHaptics => 'Haptička povratna informacija';

  @override
  String get setShowReasons => 'Prikaži zašto je nešto preporučeno';

  @override
  String get setSkipSilence => 'Preskoči tišinu';

  @override
  String get setQuality => 'Kvaliteta zvuka';

  @override
  String get setQualityLow => 'Niska · 64 kbps';

  @override
  String get setQualityNormal => 'Normalna · 128 kbps';

  @override
  String get setQualityHigh => 'Visoka · 192 kbps';

  @override
  String get setQualityBest => 'Najbolja dostupna';

  @override
  String get setStorage => 'Preuzimanja i pohrana';

  @override
  String get setWifiOnly => 'Preuzimaj samo preko Wi-Fi-ja';

  @override
  String get setDailyLimit => 'Dnevno ograničenje za AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count pjesama dnevno';
  }

  @override
  String get setBudget => 'Pohrana koju AI smije koristiti';

  @override
  String setUsed(Object size) {
    return '$size zauzimaju preuzimanja';
  }

  @override
  String get setYourMusic => 'Tvoja glazba';

  @override
  String get setImport => 'Dodaj glazbu s ovog uređaja';

  @override
  String get setImportSub => 'Odaberi mape ili pojedinačne datoteke';

  @override
  String get setCleanup => 'Očisti nedostajuće datoteke';

  @override
  String get setCleanupSub => 'Ukloni pjesme čija je datoteka nestala';

  @override
  String setCleanupDone(int count) {
    return 'Uklonjeno nedostajućih datoteka: $count.';
  }

  @override
  String get setExport => 'Pošalji moj ukus na drugi uređaj';

  @override
  String get setExportSub =>
      'Sprema datoteku s tvojim sviđanjima, reprodukcijama i svime što je AI naučio';

  @override
  String get setImportTaste => 'Učitaj ukus s drugog uređaja';

  @override
  String get setImportTasteSub =>
      'Odaberi spremljenu datoteku ukusa i spoji je — sigurno za ponavljanje';

  @override
  String get setAbout => 'O aplikaciji';

  @override
  String get setAboutBody =>
      'Glazba s YouTubea i tvoje vlastite datoteke. AI radi u potpunosti na ovom uređaju — ništa ga ne napušta.';

  @override
  String get setSource => 'Izvorni kod';

  @override
  String get importTitle => 'Dodaj glazbu';

  @override
  String get importPickFolder => 'Odaberi mapu';

  @override
  String get importPickFiles => 'Odaberi datoteke';

  @override
  String importScanning(Object file) {
    return 'Skeniram $file';
  }

  @override
  String importAdded(int count) {
    return 'Dodano: $count';
  }

  @override
  String get importDenied =>
      'Dozvola odbijena — ne mogu pročitati tvoju glazbu.';

  @override
  String get importWatched => 'Mape koje prati';

  @override
  String get importIosHint =>
      'Otvori aplikaciju Datoteke, idi na Na mom iPhoneu → TuneBox i ubaci glazbu tamo.';

  @override
  String get playerQueue => 'Red čekanja';

  @override
  String get playerUpNext => 'Sljedeće';

  @override
  String get playerLyrics => 'Tekst pjesme';

  @override
  String get playerNoLyrics => 'Nema teksta za ovu pjesmu.';

  @override
  String get playerRepeat => 'Ponovi';

  @override
  String get playerShuffle => 'Izmiješaj';

  @override
  String errorPlayback(Object title) {
    return 'Nije moguće reproducirati „$title”';
  }

  @override
  String errorSkipping(Object title) {
    return 'Preskačem „$title” — stream se nije otvorio.';
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
  String get setColourSub => 'Cijela aplikacija prati ovo';

  @override
  String get setCoverArt => 'Omot albuma';

  @override
  String get setMyColour => 'Moja boja';

  @override
  String get setCoverArtSub =>
      'Svaka pjesma ponovno oboji aplikaciju prema svom omotu.';

  @override
  String get setMyColourSub => 'Jedna boja, posvuda, cijelo vrijeme.';

  @override
  String get setPickColour => 'Odaberi bilo koju boju';

  @override
  String get setWifiOnlyTitle => 'Preuzimaj samo preko Wi-Fi-ja';

  @override
  String get setDownloadLikes => 'Preuzmi sve što mi se sviđa';

  @override
  String get setDownloadLikesSub => 'Gumb srca također sprema datoteku';

  @override
  String get setAiInstall => 'Dopusti AI-ju da instalira glazbu koju odabere';

  @override
  String get setSkipSilenceSub =>
      'Samo Android. Može odrezati tihe uvode, utišavanja i tihe dijelove — isključi ako glazba preskače';

  @override
  String get setStorageUsed => 'Pohrana koju zauzimaju preuzimanja';

  @override
  String get setLibrary => 'Biblioteka';

  @override
  String get setUpdates => 'Ažuriranja';

  @override
  String get setAutoUpdate => 'Samostalno provjeri ažuriranja';

  @override
  String get setAutoUpdateSub =>
      'Svakih nekoliko sati, tiho, a preuzima preko Wi-Fi-ja. Instalacija i dalje traži tvoje odobrenje.';

  @override
  String setUpdateReady(Object version) {
    return 'Ažuriranje na $version je spremno';
  }

  @override
  String get setUpdateReadySub => 'Preuzeto — dodirni za instalaciju';

  @override
  String get setUpdateAvailableSub =>
      'Preuzmi sa stranice izdanja — dodirni za kopiranje poveznice';

  @override
  String get setLinkCopied => 'Poveznica kopirana';

  @override
  String get setCheckNow => 'Provjeri sada';

  @override
  String get setUpToDate => 'TuneBox je ažuran';

  @override
  String get setChecking => 'Tražim noviju verziju…';
}
