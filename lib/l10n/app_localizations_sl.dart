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
}
