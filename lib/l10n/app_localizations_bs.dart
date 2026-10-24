// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class LBs extends L {
  LBs([String locale = 'bs']) : super(locale);

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
  String get actionPlay => 'Reproduciraj';

  @override
  String get actionShuffle => 'Nasumično';

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
  String get greetingEvening => 'Dobro veče';

  @override
  String get homeBuilding => 'AI slaže tvoje police…';

  @override
  String get homeOffline => 'Van mreže – prikazuje se sadržaj uređaja';

  @override
  String get homeNothingYet => 'Još nema šta prikazati';

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
  String get homeRebuild => 'Ponovo složi police';

  @override
  String get homeAddMusic => 'Dodaj muziku s ovog uređaja';

  @override
  String get homeQuickPicks => 'Brzi izbor';

  @override
  String get homeQuickPicksSub => 'Odmah nazad na ono što si slušao';

  @override
  String get homeEmptyTitle => 'Tvoja biblioteka je prazna';

  @override
  String get homeEmptyBody =>
      'Potraži nešto ili dodaj muziku koja je već na ovom uređaju. AI počinje učiti od tvog prvog puštanja.';

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
    return 'Slažem miks: $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Nije uspjelo: $error';
  }

  @override
  String get shelfRepeat => 'Stalno na repeatu';

  @override
  String get shelfRepeatSub => 'Tvoje posljednje dvije sedmice';

  @override
  String get shelfForgotten => 'Zaboravljeni hitovi koje si voljeo';

  @override
  String get shelfForgottenSub => 'Nekad omiljeno, dugo netaknuto';

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
  String get shelfDeep => 'Jedva taknuto';

  @override
  String get shelfDeepSub => 'U tvojoj biblioteci, skoro nikad puštano';

  @override
  String get shelfMix => 'Tvoj miks';

  @override
  String get shelfMixSub => 'Ponovo se slaže svaki put kad otvoriš aplikaciju';

  @override
  String get shelfAdded => 'Nedavno dodano';

  @override
  String get shelfAddedSub => 'Preuzimanja i fajlovi koje si uvezao';

  @override
  String get shelfStarter => 'Počni ovdje';

  @override
  String get shelfStarterSub =>
      'Pusti nekoliko pjesama i AI odmah počinje učiti';

  @override
  String reasonPlays(int count) {
    return 'Puštanja: $count';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Sviđa ti se, zadnji put puštano $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Puštanja: $count, zadnji put $when';
  }

  @override
  String get reasonTopArtist => 'Jedan od tvojih najslušanijih izvođača';

  @override
  String reasonMore(Object artist) {
    return 'Više izvođača $artist';
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
    return 'U posljednje vrijeme dosta: $tag';
  }

  @override
  String get reasonOutThisYear => 'Izašlo ove godine';

  @override
  String get reasonReleasedRecently => 'Nedavno objavljeno';

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
  String get reasonPopular => 'Popularno trenutno';

  @override
  String whenYearsAgo(int count) {
    return 'prije $count god.';
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
  String get searchRecent => 'Nedavne pretrage';

  @override
  String get searchEmptyTitle => 'Ništa nije pronađeno';

  @override
  String get searchEmptyBody =>
      'Probaj drugačiji pravopis ili samo ime izvođača.';

  @override
  String get searchStartTitle => 'Pronađi nešto za slušanje';

  @override
  String get searchStartBody =>
      'Pretraži YouTube Music – vraćaju se samo pjesme, nikad videi o drugim stvarima.';

  @override
  String get libPlaylists => 'Plejliste';

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
    return '$count van mreže';
  }

  @override
  String get libMyFiles => 'Moji vlastiti fajlovi';

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
  String get libMakeOne => 'Napravi je';

  @override
  String get libSortRecent => 'Nedavno dodano';

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
  String get sheetBlocked => 'Blokirano – dodirni da ponovo dozvoliš';

  @override
  String get sheetBlockedSub => 'Može se ponovo pojaviti u preporukama';

  @override
  String get sheetPlayNext => 'Pusti sljedeće';

  @override
  String get sheetAddToPlaylist => 'Dodaj na plejlistu';

  @override
  String get sheetDownloaded => 'Preuzeto';

  @override
  String get sheetRemoveFile => 'Dodirni da ukloniš fajl';

  @override
  String get sheetDownload => 'Preuzmi';

  @override
  String get sheetKeepOffline => 'Sačuvaj za rad van mreže';

  @override
  String get sheetRadio => 'Pokreni radio';

  @override
  String get sheetRadioSub => 'Red slušanja sastavljen oko ove pjesme';

  @override
  String get sheetQueue => 'Red slušanja';

  @override
  String get sheetSleepTimer => 'Tajmer za spavanje';

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
    return 'Muzika staje za $count min';
  }

  @override
  String get tasteTitle => 'Tvoj ukus';

  @override
  String get tasteRetrain => 'Ponovo istreniraj';

  @override
  String get tasteRetraining => 'Ponovno treniranje na tvojoj historiji…';

  @override
  String get tasteRetrained => 'AI je ponovo izgradio svoj model.';

  @override
  String tasteConfidence(int percent) {
    return 'Pouzdanost $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays puštanja · $skips preskakanja · $likes sviđanja';
  }

  @override
  String get tasteEmptySummary =>
      'Pusti nekoliko pjesama i ovo će se popuniti.';

  @override
  String get tasteKeepLearning => 'Uči dok slušam';

  @override
  String get tasteKeepLearningSub => 'Isključi da zamrzneš trenutni profil';

  @override
  String get tasteDownloadsTitle => 'Preuzimanja kojima upravlja AI';

  @override
  String get tasteDownloadsSub => 'Muzika stiže na uređaj a da ti ne tražiš';

  @override
  String get tasteDownloadLikes => 'Preuzmi sve što mi se sviđa';

  @override
  String get tasteDownloadLikesSub =>
      'Dodirni srce i fajl se sprema za rad van mreže';

  @override
  String get tasteAiInstall => 'Dopusti AI-ju da instalira muziku koju odabere';

  @override
  String get tasteAiInstallSub => 'Preuzet će pjesme u koje je siguran';

  @override
  String get tasteWhatItThinks => 'Šta misli da voliš';

  @override
  String get tasteWhatItThinksSub =>
      'Nauči iz puštanja, preskakanja, sviđanja i ponavljanja';

  @override
  String get tasteArtists => 'Izvođači na koje se oslanja';

  @override
  String get tasteWhenYouListen => 'Kada slušaš';

  @override
  String get tasteWhenYouListenSub =>
      'Puštanja po satu – trenutni sat ima veću težinu';

  @override
  String get tasteDecades => 'Decenije';

  @override
  String get tasteTune => 'Podesi preporuke';

  @override
  String get tasteTuneSub =>
      'Stupa na snagu pri sljedećem osvježavanju Početne';

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
  String get tasteRecencySub => 'Vanvremensko ↔ potpuno novo';

  @override
  String get tasteNostalgia => 'Nostalgija';

  @override
  String get tasteNostalgiaSub =>
      'Koliko unazad stari favorit važi kao zaboravljen';

  @override
  String get tasteSignals => 'Signali koje smije koristiti';

  @override
  String get tasteSignalsSub => 'Sve ostaje na ovom uređaju';

  @override
  String get tasteUseHistory => 'Šta sam puštao';

  @override
  String get tasteUseSkips => 'Šta preskačem';

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
  String get tasteReset => 'Poništi ono što je naučio';

  @override
  String get tasteResetSub => 'Tvoja muzika ostaje; profil počinje od nule';

  @override
  String get trainCard => 'Treniraj ga ocjenjivanjem';

  @override
  String get trainCardSub =>
      'Prelistaj prave pjesme. Desno za više ovakvih, lijevo za nikad više. Dvije minute ovdje vrijede više od sedmice slušanja.';

  @override
  String get trainStart => 'Započni krug treniranja';

  @override
  String get trainTitle => 'Krug treniranja';

  @override
  String get trainQuestion => 'Želiš li ovo na Početnoj?';

  @override
  String get trainMoreLikeThis => 'Više ovakvih';

  @override
  String get trainNeverAgain => 'Nikad više';

  @override
  String get trainDone => 'Krug završen';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked zadržano · $blocked blokirano. Pouzdanost $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Nazad na tvoj ukus';

  @override
  String get trainNothingTitle => 'Još nema šta ocijeniti';

  @override
  String get trainNothingBody =>
      'Dodaj muziku ili prvo pusti AI da preuzme kandidate, pa se vrati.';

  @override
  String get trainLeaveTitle => 'Napustiti krug treniranja?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ako sada izađeš, AI odbacuje sve iz ovog kruga – svih $count pjesama koje si upravo ocijenio.',
      few:
          'Ako sada izađeš, AI odbacuje sve iz ovog kruga – sve $count pjesme koje si upravo ocijenio.',
      one:
          'Ako sada izađeš, AI odbacuje sve iz ovog kruga – $count pjesmu koju si upravo ocijenio.',
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
  String get setThemeSystem => 'Prati sistem';

  @override
  String get setThemeLight => 'Svijetla';

  @override
  String get setThemeDark => 'Tamna';

  @override
  String get setPureBlack => 'Čista crna';

  @override
  String get setPureBlackSub => 'Štedi energiju na OLED ekranu';

  @override
  String get setAccent => 'Boja naglaska';

  @override
  String get setAccentArtwork => 'Iz omota albuma';

  @override
  String get setAccentFixed => 'Jedna boja koju sam odabrao';

  @override
  String get setLanguage => 'Jezik';

  @override
  String get setLanguageSystem => 'Prati sistem';

  @override
  String get setAccessibility => 'Pristupačnost';

  @override
  String get setTextSize => 'Veličina teksta';

  @override
  String get setTextSizeSub => 'Povrh postavke sistema';

  @override
  String get setReduceMotion => 'Smanji kretanje';

  @override
  String get setReduceMotionSub =>
      'Zaustavlja trake, vizualizator, elastično listanje, elastične dodire i prelaze između stranica';

  @override
  String get setHighContrast => 'Visok kontrast';

  @override
  String get setHighContrastSub => 'Jače razdvajanje i vidljivi obrisi';

  @override
  String get setBoldText => 'Podebljan tekst';

  @override
  String get setPlayback => 'Reprodukcija';

  @override
  String get setAutoRadio => 'Neka muzika svira dalje';

  @override
  String get setAutoRadioSub =>
      'Kad se red slušanja završi, nastavlja radio sastavljen prema posljednjoj pjesmi';

  @override
  String get setSmartShuffle => 'Pametno miješanje';

  @override
  String get setSmartShuffleSub => 'Miješa prema ukusu umjesto nasumično';

  @override
  String get setResume => 'Nastavi gdje sam stao';

  @override
  String get setResumeSub =>
      'Vraća red slušanja pri otvaranju aplikacije, pauzirano';

  @override
  String get setDataSaver => 'Ušteda podataka van Wi-Fi mreže';

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
  String get setStorage => 'Preuzimanja i pohrana';

  @override
  String get setWifiOnly => 'Preuzimaj samo preko Wi-Fi mreže';

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
  String get setYourMusic => 'Tvoja muzika';

  @override
  String get setImport => 'Dodaj muziku s ovog uređaja';

  @override
  String get setImportSub => 'Odaberi foldere ili pojedinačne fajlove';

  @override
  String get setCleanup => 'Očisti fajlove koji nedostaju';

  @override
  String get setCleanupSub => 'Ukloni pjesme čiji je fajl nestao';

  @override
  String setCleanupDone(int count) {
    return 'Uklonjeno fajlova koji nedostaju: $count.';
  }

  @override
  String get setExport => 'Pošalji moj ukus na drugi uređaj';

  @override
  String get setExportSub =>
      'Sprema fajl s tvojim sviđanjima, puštanjima i svim što je AI naučio';

  @override
  String get setImportTaste => 'Učitaj ukus s drugog uređaja';

  @override
  String get setImportTasteSub =>
      'Odaberi sačuvani fajl ukusa i spoji ga – sigurno za ponavljanje';

  @override
  String get setAbout => 'O aplikaciji';

  @override
  String get setAboutBody =>
      'Muzika s YouTubea i tvojih fajlova. AI radi u potpunosti na ovom uređaju – ništa ga ne napušta.';

  @override
  String get setSource => 'Izvorni kod';

  @override
  String get importTitle => 'Dodaj muziku';

  @override
  String get importPickFolder => 'Odaberi folder';

  @override
  String get importPickFiles => 'Odaberi fajlove';

  @override
  String importScanning(Object file) {
    return 'Skeniranje: $file';
  }

  @override
  String importAdded(int count) {
    return 'Dodano: $count';
  }

  @override
  String get importDenied =>
      'Dozvola odbijena – nije moguće čitati tvoju muziku.';

  @override
  String get importWatched => 'Folderi koje prati';

  @override
  String get importIosHint =>
      'Otvori aplikaciju Files, idi na On My iPhone → TuneBox i tamo ubaci muziku.';

  @override
  String get playerQueue => 'Red slušanja';

  @override
  String get playerUpNext => 'Sljedeće';

  @override
  String get playerLyrics => 'Tekst pjesme';

  @override
  String get playerNoLyrics => 'Nema teksta za ovu pjesmu.';

  @override
  String get playerRepeat => 'Ponavljanje';

  @override
  String get playerShuffle => 'Nasumično';

  @override
  String errorPlayback(Object title) {
    return 'Nije moguće reproducirati \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Preskačem \"$title\" – stream se nije htio otvoriti.';
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
      'Svaka pjesma preboji aplikaciju prema svom omotu.';

  @override
  String get setMyColourSub => 'Jedna boja, svugdje, stalno.';

  @override
  String get setPickColour => 'Odaberi bilo koju boju';

  @override
  String get setWifiOnlyTitle => 'Preuzimaj samo preko Wi-Fi mreže';

  @override
  String get setDownloadLikes => 'Preuzmi sve što mi se sviđa';

  @override
  String get setDownloadLikesSub => 'Dugme srca također sprema fajl';

  @override
  String get setAiInstall => 'Dopusti AI-ju da instalira muziku koju odabere';

  @override
  String get setSkipSilenceSub =>
      'Samo Android. Može odsjeći tihe uvode, utišavanja i nježne dijelove – isključi ako muzika preskače';

  @override
  String get setStorageUsed => 'Pohrana koju zauzimaju preuzimanja';

  @override
  String get setLibrary => 'Biblioteka';

  @override
  String get setUpdates => 'Ažuriranja';

  @override
  String get setAutoUpdate => 'Sam provjeravaj ažuriranja';

  @override
  String get setAutoUpdateSub =>
      'Svakih nekoliko sati, neprimjetno, a preuzima preko Wi-Fi mreže. Instalacija te i dalje pita.';

  @override
  String setUpdateReady(Object version) {
    return 'Ažuriranje na $version je spremno';
  }

  @override
  String get setUpdateReadySub => 'Preuzeto – dodirni za instalaciju';

  @override
  String get setUpdateAvailableSub =>
      'Preuzmi ga sa stranice izdanja – dodirni da kopiraš link';

  @override
  String get setLinkCopied => 'Link kopiran';

  @override
  String get setCheckNow => 'Provjeri sada';

  @override
  String get setUpToDate => 'TuneBox je ažuran';

  @override
  String get setChecking => 'Traži se novija verzija…';

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
}
