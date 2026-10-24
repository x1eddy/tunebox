// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class LSl extends L {
  LSl([String locale = 'sl']) : super(locale);

  @override
  String get navHome => 'Domov';

  @override
  String get navExplore => 'Razišči';

  @override
  String get navLibrary => 'Knjižnica';

  @override
  String get navTaste => 'Tvoj okus';

  @override
  String get actionDone => 'Končano';

  @override
  String get actionCancel => 'Prekliči';

  @override
  String get actionCreate => 'Ustvari';

  @override
  String get actionPlay => 'Predvajaj';

  @override
  String get actionShuffle => 'Naključno';

  @override
  String get actionPlayAll => 'Predvajaj vse';

  @override
  String get actionAdd => 'Dodaj';

  @override
  String get actionRemove => 'Odstrani';

  @override
  String get actionName => 'Ime';

  @override
  String get greetingNight => 'Še buden?';

  @override
  String get greetingMorning => 'Dobro jutro';

  @override
  String get greetingAfternoon => 'Dober dan';

  @override
  String get greetingEvening => 'Dober večer';

  @override
  String get homeBuilding => 'UI sestavlja tvoje police …';

  @override
  String get homeOffline => 'Brez povezave — prikazano je, kar je v napravi';

  @override
  String get homeNothingYet => 'Še ni ničesar za prikaz';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count polic, pravkar osveženih',
      few: '$count police, pravkar osvežene',
      two: '$count polici, pravkar osveženi',
      one: '$count polica, pravkar osveženo',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Ponovno sestavi police';

  @override
  String get homeAddMusic => 'Dodaj glasbo iz te naprave';

  @override
  String get homeQuickPicks => 'Hitri izbor';

  @override
  String get homeQuickPicksSub => 'Takoj nazaj k temu, kar je igralo';

  @override
  String get homeEmptyTitle => 'Tvoja knjižnica je prazna';

  @override
  String get homeEmptyBody =>
      'Poišči kaj ali dodaj glasbo, ki je že v tej napravi. UI se začne učiti že ob tvojem prvem predvajanju.';

  @override
  String get homeAddMyMusic => 'Dodaj mojo glasbo';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTuba ni bilo mogoče doseči: $error';
  }

  @override
  String get moodFocus => 'Osredotočenost';

  @override
  String get moodWorkout => 'Vadba';

  @override
  String get moodChill => 'Sproščanje';

  @override
  String get moodCommute => 'Pot v službo';

  @override
  String get moodParty => 'Zabava';

  @override
  String moodBuilding(Object mood) {
    return 'Sestavljam mešanico $mood …';
  }

  @override
  String moodFailed(Object error) {
    return 'Ni uspelo: $error';
  }

  @override
  String get shelfRepeat => 'V ponavljanju';

  @override
  String get shelfRepeatSub => 'Tvoja zadnja dva tedna';

  @override
  String get shelfForgotten => 'Pozabljeni hiti, ki so ti bili všeč';

  @override
  String get shelfForgottenSub => 'Nekoč ljubljeni, že dolgo nedotaknjeni';

  @override
  String get shelfNew => 'Novo';

  @override
  String get shelfNewSub => 'Sveže skladbe, za katere UI misli, da so zate';

  @override
  String shelfBecause(Object artist) {
    return 'Ker si poslušal $artist';
  }

  @override
  String get shelfBecauseSub => 'Isti kotiček tvojega okusa';

  @override
  String get shelfDeep => 'Komaj dotaknjeno';

  @override
  String get shelfDeepSub => 'V tvoji knjižnici, skoraj nikoli predvajano';

  @override
  String get shelfMix => 'Tvoja mešanica';

  @override
  String get shelfMixSub => 'Ponovno sestavljena ob vsakem odprtju aplikacije';

  @override
  String get shelfAdded => 'Nedavno dodano';

  @override
  String get shelfAddedSub => 'Prenosi in uvožene datoteke';

  @override
  String get shelfStarter => 'Začni tukaj';

  @override
  String get shelfStarterSub =>
      'Predvajaj nekaj skladb in UI se takoj začne učiti';

  @override
  String reasonPlays(int count) {
    return 'Predvajanj: $count';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Všečkano, nazadnje predvajano $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Predvajanj: $count, nazadnje $when';
  }

  @override
  String get reasonTopArtist =>
      'Eden tvojih najpogosteje poslušanih izvajalcev';

  @override
  String reasonMore(Object artist) {
    return 'Več od $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Vedno se vračaš k $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Tvoj tip: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Zadnje čase veliko: $tag';
  }

  @override
  String get reasonOutThisYear => 'Izšlo letos';

  @override
  String get reasonReleasedRecently => 'Nedavno izdano';

  @override
  String get reasonClose => 'Blizu temu, kar si poslušal';

  @override
  String reasonNear(Object artist) {
    return 'Blizu izvajalca $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nikoli predvajano';

  @override
  String get reasonPlayedOnce => 'Predvajano enkrat';

  @override
  String get reasonPopular => 'Trenutno priljubljeno';

  @override
  String whenYearsAgo(int count) {
    return 'pred $count l.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'pred $count mes.';
  }

  @override
  String whenDaysAgo(int count) {
    return 'pred $count dnevi';
  }

  @override
  String get searchHint => 'Pesmi, izvajalci, albumi';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rezultatov',
      few: '$count rezultati',
      two: '$count rezultata',
      one: '$count rezultat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Nedavna iskanja';

  @override
  String get searchEmptyTitle => 'Ni zadetkov';

  @override
  String get searchEmptyBody =>
      'Poskusi z drugačnim črkovanjem ali samo z imenom izvajalca.';

  @override
  String get searchStartTitle => 'Poišči kaj za predvajanje';

  @override
  String get searchStartBody =>
      'Išči po YouTube Music — vrnejo se samo pesmi, nikoli videoposnetki o drugih stvareh.';

  @override
  String get libPlaylists => 'Seznami predvajanja';

  @override
  String get libSongs => 'Pesmi';

  @override
  String get libArtists => 'Izvajalci';

  @override
  String get libLiked => 'Všečkano';

  @override
  String get libDownloads => 'Prenosi';

  @override
  String get libImported => 'Uvoženo';

  @override
  String get libLikedSongs => 'Všečkane pesmi';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pesmi',
      few: '$count pesmi',
      two: '$count pesmi',
      one: '$count pesem',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return 'Brez povezave: $count';
  }

  @override
  String get libMyFiles => 'Moje datoteke';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count datotek',
      few: '$count datoteke',
      two: '$count datoteki',
      one: '$count datoteka',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nov seznam predvajanja';

  @override
  String get libMakeOne => 'Ustvari ga';

  @override
  String get libSortRecent => 'Nedavno dodano';

  @override
  String get libSortTitle => 'Naslov';

  @override
  String get libSortArtist => 'Izvajalec';

  @override
  String get libSortPlays => 'Najpogosteje predvajano';

  @override
  String get sheetNotForMe => 'Ni zame';

  @override
  String get sheetNotForMeSub => 'Tega nikoli več ne priporoči';

  @override
  String get sheetBlocked => 'Blokirano — tapni za ponovno dovoljenje';

  @override
  String get sheetBlockedSub => 'Znova se lahko pojavi v priporočilih';

  @override
  String get sheetPlayNext => 'Predvajaj naslednje';

  @override
  String get sheetAddToPlaylist => 'Dodaj na seznam predvajanja';

  @override
  String get sheetDownloaded => 'Preneseno';

  @override
  String get sheetRemoveFile => 'Tapni za odstranitev datoteke';

  @override
  String get sheetDownload => 'Prenesi';

  @override
  String get sheetKeepOffline => 'Shrani za brez povezave';

  @override
  String get sheetRadio => 'Zaženi radio';

  @override
  String get sheetRadioSub => 'Čakalna vrsta, zgrajena okoli te pesmi';

  @override
  String get sheetQueue => 'Čakalna vrsta';

  @override
  String get sheetSleepTimer => 'Časovnik za spanje';

  @override
  String get sheetSleepOff => 'Izklopljeno';

  @override
  String sheetSleepMinutes(int count) {
    return '$count min';
  }

  @override
  String get sheetSleepEndOfTrack => 'Konec te pesmi';

  @override
  String sheetSleepSet(int count) {
    return 'Glasba se ustavi čez $count min';
  }

  @override
  String get tasteTitle => 'Tvoj okus';

  @override
  String get tasteRetrain => 'Ponovno nauči';

  @override
  String get tasteRetraining => 'Ponovno učenje na tvoji zgodovini …';

  @override
  String get tasteRetrained => 'UI je znova zgradil svoj model.';

  @override
  String tasteConfidence(int percent) {
    return 'Zaupanje $percent %';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'Predvajanj: $plays · preskokov: $skips · všečkov: $likes';
  }

  @override
  String get tasteEmptySummary =>
      'Predvajaj nekaj pesmi in tukaj se bo nekaj pojavilo.';

  @override
  String get tasteKeepLearning => 'Uči se, medtem ko poslušam';

  @override
  String get tasteKeepLearningSub => 'Izklopi, da zamrzneš trenutni profil';

  @override
  String get tasteDownloadsTitle => 'Prenosi, ki jih ureja UI';

  @override
  String get tasteDownloadsSub =>
      'Glasba pride v napravo, ne da bi zanjo zaprosil';

  @override
  String get tasteDownloadLikes => 'Prenesi vse, kar mi je všeč';

  @override
  String get tasteDownloadLikesSub =>
      'Tapni srce in datoteka se shrani za brez povezave';

  @override
  String get tasteAiInstall => 'Dovoli UI, da namesti glasbo, ki jo izbere';

  @override
  String get tasteAiInstallSub => 'Prenesel bo skladbe, v katere je prepričan';

  @override
  String get tasteWhatItThinks => 'Kaj misli, da ti je všeč';

  @override
  String get tasteWhatItThinksSub =>
      'Naučeno iz predvajanj, preskokov, všečkov in ponovitev';

  @override
  String get tasteArtists => 'Izvajalci, na katere se opira';

  @override
  String get tasteWhenYouListen => 'Kdaj poslušaš';

  @override
  String get tasteWhenYouListenSub =>
      'Predvajanja na uro — trenutna ura ima večjo težo';

  @override
  String get tasteDecades => 'Desetletja';

  @override
  String get tasteTune => 'Uglasi priporočila';

  @override
  String get tasteTuneSub =>
      'Začne veljati ob naslednjem osveževanju domače strani';

  @override
  String get tasteDiscovery => 'Odkrivanje';

  @override
  String get tasteDiscoverySub => 'Znano ↔ stvari, ki jih še nisi slišal';

  @override
  String get tasteEnergy => 'Energija';

  @override
  String get tasteEnergySub => 'Mirno ↔ glasno';

  @override
  String get tasteRecency => 'Novost';

  @override
  String get tasteRecencySub => 'Brezčasno ↔ povsem novo';

  @override
  String get tasteNostalgia => 'Nostalgija';

  @override
  String get tasteNostalgiaSub =>
      'Kako daleč nazaj se stari favorit šteje za pozabljenega';

  @override
  String get tasteSignals => 'Signali, ki jih sme uporabljati';

  @override
  String get tasteSignalsSub => 'Vse ostane v tej napravi';

  @override
  String get tasteUseHistory => 'Kar sem predvajal';

  @override
  String get tasteUseSkips => 'Kar preskočim';

  @override
  String get tasteUseTime => 'Čas dneva';

  @override
  String get tasteUseYouTube => 'Predlogi iz YouTuba';

  @override
  String get tasteAlwaysMore => 'Vedno več';

  @override
  String get tasteNeverAgain => 'Nikoli več';

  @override
  String get tasteAddArtist => 'Dodaj izvajalca';

  @override
  String get tasteMoreOfPrompt => 'Vedno več …';

  @override
  String get tasteNeverAgainPrompt => 'Nikoli več …';

  @override
  String get tasteReset => 'Ponastavi, kar se je naučil';

  @override
  String get tasteResetSub => 'Tvoja glasba ostane; profil se začne znova';

  @override
  String get trainCard => 'Uči ga z ocenjevanjem';

  @override
  String get trainCardSub =>
      'Podrsaj skozi prave pesmi. Desno za več takšnih, levo za nikoli več. Dve minuti tukaj vredni več kot teden poslušanja.';

  @override
  String get trainStart => 'Začni krog učenja';

  @override
  String get trainTitle => 'Krog učenja';

  @override
  String get trainQuestion => 'Bi to želel na svoji domači strani?';

  @override
  String get trainMoreLikeThis => 'Več takšnih';

  @override
  String get trainNeverAgain => 'Nikoli več';

  @override
  String get trainDone => 'Krog končan';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'Obdržano: $liked · blokirano: $blocked. Zaupanje $before % → $after %';
  }

  @override
  String get trainBackToTaste => 'Nazaj na tvoj okus';

  @override
  String get trainNothingTitle => 'Še ni ničesar za oceniti';

  @override
  String get trainNothingBody =>
      'Dodaj glasbo ali pusti UI, da prenese kandidate, nato se vrni.';

  @override
  String get trainLeaveTitle => 'Zapustiti krog učenja?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Če zdaj odideš, UI zavrže vse iz tega kroga — vseh $count pesmi, ki si jih pravkar ocenil.',
      few:
          'Če zdaj odideš, UI zavrže vse iz tega kroga — vse $count pesmi, ki si jih pravkar ocenil.',
      two:
          'Če zdaj odideš, UI zavrže vse iz tega kroga — obe pesmi, ki si ju pravkar ocenil.',
      one:
          'Če zdaj odideš, UI zavrže vse iz tega kroga — $count pesem, ki si jo pravkar ocenil.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Nadaljuj z učenjem';

  @override
  String get trainDiscard => 'Zavrzi in odidi';

  @override
  String get setTitle => 'Nastavitve';

  @override
  String get setAppearance => 'Videz';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Sledi sistemu';

  @override
  String get setThemeLight => 'Svetla';

  @override
  String get setThemeDark => 'Temna';

  @override
  String get setPureBlack => 'Povsem črna';

  @override
  String get setPureBlackSub => 'Varčuje z energijo na zaslonu OLED';

  @override
  String get setAccent => 'Poudarjena barva';

  @override
  String get setAccentArtwork => 'Iz naslovnice';

  @override
  String get setAccentFixed => 'Ena barva, ki sem jo izbral';

  @override
  String get setLanguage => 'Jezik';

  @override
  String get setLanguageSystem => 'Sledi sistemu';

  @override
  String get setAccessibility => 'Dostopnost';

  @override
  String get setTextSize => 'Velikost besedila';

  @override
  String get setTextSizeSub => 'Povrh sistemske nastavitve';

  @override
  String get setReduceMotion => 'Zmanjšaj gibanje';

  @override
  String get setReduceMotionSub =>
      'Ustavi stolpce, vizualizator, elastično drsenje, prožne tape in prehode med stranmi';

  @override
  String get setHighContrast => 'Visok kontrast';

  @override
  String get setHighContrastSub => 'Močnejša ločitev in vidni obrisi';

  @override
  String get setBoldText => 'Krepko besedilo';

  @override
  String get setPlayback => 'Predvajanje';

  @override
  String get setAutoRadio => 'Naj glasba igra naprej';

  @override
  String get setAutoRadioSub =>
      'Ko se čakalna vrsta konča, nadaljuj z radiom, zgrajenim iz zadnje pesmi';

  @override
  String get setSmartShuffle => 'Pametno mešanje';

  @override
  String get setSmartShuffleSub => 'Meša po okusu namesto naključno';

  @override
  String get setResume => 'Nadaljuj, kjer sem ostal';

  @override
  String get setResumeSub =>
      'Ob odprtju aplikacije obnovi čakalno vrsto, v premoru';

  @override
  String get setDataSaver => 'Varčevanje s podatki zunaj Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Omeji pretakanje in prenose na 128 kb/s pri mobilnih podatkih';

  @override
  String get setHaptics => 'Haptični odziv';

  @override
  String get setShowReasons => 'Pokaži, zakaj je bilo nekaj priporočeno';

  @override
  String get setSkipSilence => 'Preskoči tišino';

  @override
  String get setQuality => 'Kakovost zvoka';

  @override
  String get setQualityLow => 'Nizka · 64 kb/s';

  @override
  String get setQualityNormal => 'Običajna · 128 kb/s';

  @override
  String get setQualityHigh => 'Visoka · 192 kb/s';

  @override
  String get setQualityBest => 'Najboljša razpoložljiva';

  @override
  String get setStorage => 'Prenosi in shramba';

  @override
  String get setWifiOnly => 'Prenesi samo prek Wi-Fi';

  @override
  String get setDailyLimit => 'Dnevna omejitev za UI';

  @override
  String setDailyLimitSub(int count) {
    return 'Pesmi na dan: $count';
  }

  @override
  String get setBudget => 'Shramba, ki jo sme uporabiti UI';

  @override
  String setUsed(Object size) {
    return 'Prenosi zasedajo $size';
  }

  @override
  String get setYourMusic => 'Tvoja glasba';

  @override
  String get setImport => 'Dodaj glasbo iz te naprave';

  @override
  String get setImportSub => 'Izberi mape ali posamezne datoteke';

  @override
  String get setCleanup => 'Počisti manjkajoče datoteke';

  @override
  String get setCleanupSub => 'Odstrani pesmi, katerih datoteke ni več';

  @override
  String setCleanupDone(int count) {
    return 'Odstranjenih manjkajočih datotek: $count.';
  }

  @override
  String get setExport => 'Pošlji moj okus v drugo napravo';

  @override
  String get setExportSub =>
      'Shrani datoteko z vsemi všečki, predvajanji in vsem, kar se je naučil UI';

  @override
  String get setImportTaste => 'Naloži okus iz druge naprave';

  @override
  String get setImportTasteSub =>
      'Izberi shranjeno datoteko okusa in jo združi — varno za ponavljanje';

  @override
  String get setAbout => 'O aplikaciji';

  @override
  String get setAboutBody =>
      'Glasba z YouTuba in iz tvojih datotek. UI deluje v celoti v tej napravi — nič je ne zapusti.';

  @override
  String get setSource => 'Izvorna koda';

  @override
  String get importTitle => 'Dodaj glasbo';

  @override
  String get importPickFolder => 'Izberi mapo';

  @override
  String get importPickFiles => 'Izberi datoteke';

  @override
  String importScanning(Object file) {
    return 'Pregledujem $file';
  }

  @override
  String importAdded(int count) {
    return 'Dodano: $count';
  }

  @override
  String get importDenied =>
      'Dovoljenje zavrnjeno — tvoje glasbe ni mogoče prebrati.';

  @override
  String get importWatched => 'Mape, ki jih spremlja';

  @override
  String get importIosHint =>
      'Odpri aplikacijo Datoteke, pojdi na V mojem iPhonu → TuneBox in tja spusti glasbo.';

  @override
  String get playerQueue => 'Čakalna vrsta';

  @override
  String get playerUpNext => 'Naslednje';

  @override
  String get playerLyrics => 'Besedilo';

  @override
  String get playerNoLyrics => 'Za to pesem ni besedila.';

  @override
  String get playerRepeat => 'Ponovi';

  @override
  String get playerShuffle => 'Naključno';

  @override
  String errorPlayback(Object title) {
    return 'Pesmi »$title« ni bilo mogoče predvajati';
  }

  @override
  String errorSkipping(Object title) {
    return 'Preskakujem »$title« — pretoka ni bilo mogoče odpreti.';
  }

  @override
  String get undo => 'Razveljavi';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Trenutno: $tags, vodi $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Trenutno: $tags.';
  }

  @override
  String get setColour => 'Barva';

  @override
  String get setColourSub => 'Ves program sledi tej barvi';

  @override
  String get setCoverArt => 'Naslovnica';

  @override
  String get setMyColour => 'Moja barva';

  @override
  String get setCoverArtSub =>
      'Vsaka pesem preobarva aplikacijo po svoji naslovnici.';

  @override
  String get setMyColourSub => 'Ena barva, povsod, ves čas.';

  @override
  String get setPickColour => 'Izberi poljubno barvo';

  @override
  String get setWifiOnlyTitle => 'Prenesi samo prek Wi-Fi';

  @override
  String get setDownloadLikes => 'Prenesi vse, kar mi je všeč';

  @override
  String get setDownloadLikesSub => 'Gumb s srcem shrani tudi datoteko';

  @override
  String get setAiInstall => 'Dovoli UI, da namesti glasbo, ki jo izbere';

  @override
  String get setSkipSilenceSub =>
      'Samo Android. Lahko odreže tihe uvode, pojemanja in tihe dele — pusti izklopljeno, če glasba preskakuje';

  @override
  String get setStorageUsed => 'Shramba, ki jo zasedajo prenosi';

  @override
  String get setLibrary => 'Knjižnica';

  @override
  String get setUpdates => 'Posodobitve';

  @override
  String get setAutoUpdate => 'Samodejno preveri posodobitve';

  @override
  String get setAutoUpdateSub =>
      'Vsakih nekaj ur, tiho, in prenaša prek Wi-Fi. Namestitev te še vedno vpraša.';

  @override
  String setUpdateReady(Object version) {
    return 'Posodobitev na $version je pripravljena';
  }

  @override
  String get setUpdateReadySub => 'Preneseno — tapni za namestitev';

  @override
  String get setUpdateAvailableSub =>
      'Dobiš jo na strani z izdajami — tapni za kopiranje povezave';

  @override
  String get setLinkCopied => 'Povezava kopirana';

  @override
  String get setCheckNow => 'Preveri zdaj';

  @override
  String get setUpToDate => 'TuneBox je posodobljen';

  @override
  String get setChecking => 'Iščem novejšo različico …';

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
