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
}
