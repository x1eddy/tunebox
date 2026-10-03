// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class LDa extends L {
  LDa([String locale = 'da']) : super(locale);

  @override
  String get navHome => 'Hjem';

  @override
  String get navExplore => 'Udforsk';

  @override
  String get navLibrary => 'Bibliotek';

  @override
  String get navTaste => 'Din smag';

  @override
  String get actionDone => 'Færdig';

  @override
  String get actionCancel => 'Annuller';

  @override
  String get actionCreate => 'Opret';

  @override
  String get actionPlay => 'Afspil';

  @override
  String get actionShuffle => 'Bland';

  @override
  String get actionPlayAll => 'Afspil alle';

  @override
  String get actionAdd => 'Tilføj';

  @override
  String get actionRemove => 'Fjern';

  @override
  String get actionName => 'Navn';

  @override
  String get greetingNight => 'Stadig oppe?';

  @override
  String get greetingMorning => 'God morgen';

  @override
  String get greetingAfternoon => 'God eftermiddag';

  @override
  String get greetingEvening => 'God aften';

  @override
  String get homeBuilding => 'AI\'en bygger dine hylder…';

  @override
  String get homeOffline => 'Offline – viser det, der er på enheden';

  @override
  String get homeNothingYet => 'Intet at vise endnu';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hylder, lige opdateret',
      one: '1 hylde, lige opdateret',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Genopbyg hylder';

  @override
  String get homeAddMusic => 'Tilføj musik fra denne enhed';

  @override
  String get homeQuickPicks => 'Hurtige valg';

  @override
  String get homeQuickPicksSub => 'Direkte tilbage til det, du lyttede til';

  @override
  String get homeEmptyTitle => 'Dit bibliotek er tomt';

  @override
  String get homeEmptyBody =>
      'Søg efter noget, eller tilføj den musik, der allerede er på denne enhed. AI\'en begynder at lære fra dit allerførste afspil.';

  @override
  String get homeAddMyMusic => 'Tilføj min musik';

  @override
  String homeCouldNotReach(Object error) {
    return 'Kunne ikke nå YouTube: $error';
  }

  @override
  String get moodFocus => 'Fokus';

  @override
  String get moodWorkout => 'Træning';

  @override
  String get moodChill => 'Chill';

  @override
  String get moodCommute => 'Pendling';

  @override
  String get moodParty => 'Fest';

  @override
  String moodBuilding(Object mood) {
    return 'Bygger en $mood-mix…';
  }

  @override
  String moodFailed(Object error) {
    return 'Ingen held: $error';
  }

  @override
  String get shelfRepeat => 'Gentagelse';

  @override
  String get shelfRepeatSub => 'Dine seneste to uger';

  @override
  String get shelfForgotten => 'Glemte hits, du kunne lide';

  @override
  String get shelfForgottenSub => 'Elsket engang, urørt et stykke tid';

  @override
  String get shelfNew => 'Nyt';

  @override
  String get shelfNewSub => 'Friske numre, som AI\'en tror er noget for dig';

  @override
  String shelfBecause(Object artist) {
    return 'Fordi du hørte $artist';
  }

  @override
  String get shelfBecauseSub => 'Samme hjørne af din smag';

  @override
  String get shelfDeep => 'Næsten urørt';

  @override
  String get shelfDeepSub => 'I dit bibliotek, men næsten aldrig afspillet';

  @override
  String get shelfMix => 'Din mix';

  @override
  String get shelfMixSub => 'Genopbygges hver gang du åbner appen';

  @override
  String get shelfAdded => 'Tilføjet for nylig';

  @override
  String get shelfAddedSub => 'Downloads og filer, du har importeret';

  @override
  String get shelfStarter => 'Start her';

  @override
  String get shelfStarterSub =>
      'Afspil et par stykker, så begynder AI\'en straks at lære';

  @override
  String reasonPlays(int count) {
    return '$count afspilninger';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Synes godt om, sidst afspillet $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count afspilninger, sidst $when';
  }

  @override
  String get reasonTopArtist => 'En af dine mest afspillede kunstnere';

  @override
  String reasonMore(Object artist) {
    return 'Mere $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Du bliver ved med at vende tilbage til $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Din slags $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Meget $tag på det seneste';
  }

  @override
  String get reasonOutThisYear => 'Udkommet i år';

  @override
  String get reasonReleasedRecently => 'Udgivet for nylig';

  @override
  String get reasonClose => 'Tæt på det, du har lyttet til';

  @override
  String reasonNear(Object artist) {
    return 'Ligger tæt på $artist';
  }

  @override
  String get reasonNeverPlayed => 'Aldrig afspillet';

  @override
  String get reasonPlayedOnce => 'Afspillet én gang';

  @override
  String get reasonPopular => 'Populært lige nu';

  @override
  String whenYearsAgo(int count) {
    return '$count år siden';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count måneder siden';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count dage siden';
  }

  @override
  String get searchHint => 'Sange, kunstnere, albums';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultater',
      one: '1 resultat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Seneste søgninger';

  @override
  String get searchEmptyTitle => 'Intet fundet';

  @override
  String get searchEmptyBody =>
      'Prøv en anden stavemåde, eller kunstnerens navn alene.';

  @override
  String get searchStartTitle => 'Find noget at spille';

  @override
  String get searchStartBody =>
      'Søg i YouTube Music – kun sange kommer tilbage, aldrig videoer om andet.';

  @override
  String get libPlaylists => 'Spillelister';

  @override
  String get libSongs => 'Sange';

  @override
  String get libArtists => 'Kunstnere';

  @override
  String get libLiked => 'Synes godt om';

  @override
  String get libDownloads => 'Downloads';

  @override
  String get libImported => 'Importeret';

  @override
  String get libLikedSongs => 'Sange, du kan lide';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sange',
      one: '1 sang',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'Mine egne filer';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count filer',
      one: '1 fil',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Ny spilleliste';

  @override
  String get libMakeOne => 'Opret en';

  @override
  String get libSortRecent => 'Tilføjet for nylig';

  @override
  String get libSortTitle => 'Titel';

  @override
  String get libSortArtist => 'Kunstner';

  @override
  String get libSortPlays => 'Mest afspillet';

  @override
  String get sheetNotForMe => 'Ikke noget for mig';

  @override
  String get sheetNotForMeSub => 'Anbefal aldrig dette igen';

  @override
  String get sheetBlocked => 'Blokeret – tryk for at tillade igen';

  @override
  String get sheetBlockedSub => 'Den kan dukke op i anbefalinger igen';

  @override
  String get sheetPlayNext => 'Afspil næste';

  @override
  String get sheetAddToPlaylist => 'Føj til spilleliste';

  @override
  String get sheetDownloaded => 'Downloadet';

  @override
  String get sheetRemoveFile => 'Tryk for at fjerne filen';

  @override
  String get sheetDownload => 'Download';

  @override
  String get sheetKeepOffline => 'Gem til offline';

  @override
  String get sheetRadio => 'Start radio';

  @override
  String get sheetRadioSub => 'En kø bygget omkring denne sang';

  @override
  String get sheetQueue => 'Kø';

  @override
  String get sheetSleepTimer => 'Sove-timer';

  @override
  String get sheetSleepOff => 'Fra';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minutter';
  }

  @override
  String get sheetSleepEndOfTrack => 'Slutningen af denne sang';

  @override
  String sheetSleepSet(int count) {
    return 'Musikken stopper om $count min.';
  }

  @override
  String get tasteTitle => 'Din smag';

  @override
  String get tasteRetrain => 'Træn igen';

  @override
  String get tasteRetraining => 'Træner igen på din historik…';

  @override
  String get tasteRetrained => 'AI\'en har genopbygget sin model.';

  @override
  String tasteConfidence(int percent) {
    return 'Sikkerhed $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays afspilninger · $skips sprunget over · $likes likes';
  }

  @override
  String get tasteEmptySummary => 'Afspil et par sange, så udfyldes dette.';

  @override
  String get tasteKeepLearning => 'Bliv ved med at lære, mens jeg lytter';

  @override
  String get tasteKeepLearningSub =>
      'Slå fra for at fryse den nuværende profil';

  @override
  String get tasteDownloadsTitle => 'Downloads, AI\'en styrer';

  @override
  String get tasteDownloadsSub =>
      'Musik havner på enheden, uden at du beder om det';

  @override
  String get tasteDownloadLikes => 'Download alt, hvad jeg kan lide';

  @override
  String get tasteDownloadLikesSub =>
      'Tryk på hjertet, og filen gemmes til offline';

  @override
  String get tasteAiInstall => 'Lad AI\'en installere musik, den vælger';

  @override
  String get tasteAiInstallSub => 'Den henter numre, den er sikker på';

  @override
  String get tasteWhatItThinks => 'Hvad den tror, du kan lide';

  @override
  String get tasteWhatItThinksSub =>
      'Lært fra afspilninger, spring, likes og gentagelser';

  @override
  String get tasteArtists => 'Kunstnere, den læner sig op ad';

  @override
  String get tasteWhenYouListen => 'Når du lytter';

  @override
  String get tasteWhenYouListenSub =>
      'Afspilninger pr. time – den nuværende time vægtes';

  @override
  String get tasteDecades => 'Årtier';

  @override
  String get tasteTune => 'Finjuster anbefalingerne';

  @override
  String get tasteTuneSub => 'Træder i kraft ved næste opdatering af Hjem';

  @override
  String get tasteDiscovery => 'Opdagelse';

  @override
  String get tasteDiscoverySub => 'Velkendt ↔ ting, du aldrig har hørt';

  @override
  String get tasteEnergy => 'Energi';

  @override
  String get tasteEnergySub => 'Rolig ↔ høj';

  @override
  String get tasteRecency => 'Nyhed';

  @override
  String get tasteRecencySub => 'Tidløs ↔ splinterny';

  @override
  String get tasteNostalgia => 'Nostalgi';

  @override
  String get tasteNostalgiaSub =>
      'Hvor langt tilbage en gammel favorit tæller som glemt';

  @override
  String get tasteSignals => 'Signaler, den må bruge';

  @override
  String get tasteSignalsSub => 'Alt bliver på denne enhed';

  @override
  String get tasteUseHistory => 'Det, jeg har afspillet';

  @override
  String get tasteUseSkips => 'Det, jeg springer over';

  @override
  String get tasteUseTime => 'Tid på dagen';

  @override
  String get tasteUseYouTube => 'Forslag fra YouTube';

  @override
  String get tasteAlwaysMore => 'Altid mere af';

  @override
  String get tasteNeverAgain => 'Aldrig igen';

  @override
  String get tasteAddArtist => 'Tilføj en kunstner';

  @override
  String get tasteMoreOfPrompt => 'Altid mere af…';

  @override
  String get tasteNeverAgainPrompt => 'Aldrig igen…';

  @override
  String get tasteReset => 'Nulstil det, den har lært';

  @override
  String get tasteResetSub => 'Din musik bliver; profilen starter forfra';

  @override
  String get trainCard => 'Træn den ved at vurdere';

  @override
  String get trainCardSub =>
      'Stryg gennem rigtige sange. Til højre for mere af det samme, til venstre for aldrig igen. To minutter her slår en uges lytning.';

  @override
  String get trainStart => 'Start en træningsrunde';

  @override
  String get trainTitle => 'Træningsrunde';

  @override
  String get trainQuestion => 'Vil du have dette på dit Hjem?';

  @override
  String get trainMoreLikeThis => 'Mere som dette';

  @override
  String get trainNeverAgain => 'Aldrig igen';

  @override
  String get trainDone => 'Runden er færdig';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked beholdt · $blocked blokeret. Sikkerhed $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Tilbage til din smag';

  @override
  String get trainNothingTitle => 'Intet at vurdere endnu';

  @override
  String get trainNothingBody =>
      'Tilføj noget musik, eller lad AI\'en hente kandidater først, og kom så tilbage.';

  @override
  String get trainLeaveTitle => 'Forlad træningsrunden?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Hvis du forlader den nu, kasserer AI\'en alt fra denne runde – alle $count sange, du lige har vurderet.',
      one:
          'Hvis du forlader den nu, kasserer AI\'en alt fra denne runde – den ene sang, du lige har vurderet.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Fortsæt træning';

  @override
  String get trainDiscard => 'Kassér og forlad';

  @override
  String get setTitle => 'Indstillinger';

  @override
  String get setAppearance => 'Udseende';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Følg systemet';

  @override
  String get setThemeLight => 'Lyst';

  @override
  String get setThemeDark => 'Mørkt';

  @override
  String get setPureBlack => 'Ren sort';

  @override
  String get setPureBlackSub => 'Sparer strøm på en OLED-skærm';

  @override
  String get setAccent => 'Accentfarve';

  @override
  String get setAccentArtwork => 'Fra coveret';

  @override
  String get setAccentFixed => 'Én farve, jeg har valgt';

  @override
  String get setLanguage => 'Sprog';

  @override
  String get setLanguageSystem => 'Følg systemet';

  @override
  String get setAccessibility => 'Tilgængelighed';

  @override
  String get setTextSize => 'Tekststørrelse';

  @override
  String get setTextSizeSub => 'Oven i din systemindstilling';

  @override
  String get setReduceMotion => 'Reducer bevægelse';

  @override
  String get setReduceMotionSub =>
      'Stopper bjælkerne, visualiseringen, hoppende scrolling, fjedrende tryk og sideovergange';

  @override
  String get setHighContrast => 'Høj kontrast';

  @override
  String get setHighContrastSub => 'Stærkere adskillelse og synlige omrids';

  @override
  String get setBoldText => 'Fed tekst';

  @override
  String get setPlayback => 'Afspilning';

  @override
  String get setAutoRadio => 'Hold musikken i gang';

  @override
  String get setAutoRadioSub =>
      'Når køen slutter, fortsætter en radio bygget ud fra den sidste sang';

  @override
  String get setSmartShuffle => 'Smart blanding';

  @override
  String get setSmartShuffleSub => 'Blander efter smag i stedet for tilfældigt';

  @override
  String get setResume => 'Fortsæt, hvor jeg slap';

  @override
  String get setResumeSub => 'Gendanner køen, når appen åbnes, på pause';

  @override
  String get setDataSaver => 'Datasparer uden for Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Begrænser streams og downloads til 128 kbps på mobildata';

  @override
  String get setHaptics => 'Haptisk feedback';

  @override
  String get setShowReasons => 'Vis, hvorfor noget blev anbefalet';

  @override
  String get setSkipSilence => 'Spring stilhed over';

  @override
  String get setQuality => 'Lydkvalitet';

  @override
  String get setQualityLow => 'Lav · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Høj · 192 kbps';

  @override
  String get setQualityBest => 'Bedst tilgængelige';

  @override
  String get setStorage => 'Downloads og lager';

  @override
  String get setWifiOnly => 'Download kun på Wi-Fi';

  @override
  String get setDailyLimit => 'Daglig grænse for AI\'en';

  @override
  String setDailyLimitSub(int count) {
    return '$count sange om dagen';
  }

  @override
  String get setBudget => 'Lager, AI\'en må bruge';

  @override
  String setUsed(Object size) {
    return '$size brugt af downloads';
  }

  @override
  String get setYourMusic => 'Din musik';

  @override
  String get setImport => 'Tilføj musik fra denne enhed';

  @override
  String get setImportSub => 'Vælg mapper eller enkelte filer';

  @override
  String get setCleanup => 'Ryd op i manglende filer';

  @override
  String get setCleanupSub => 'Fjern sange, hvis fil er væk';

  @override
  String setCleanupDone(int count) {
    return 'Fjernede $count manglende filer.';
  }

  @override
  String get setExport => 'Send min smag til en anden enhed';

  @override
  String get setExportSub =>
      'Gemmer en fil med dine likes, afspilninger og alt, AI\'en har lært';

  @override
  String get setImportTaste => 'Indlæs smag fra en anden enhed';

  @override
  String get setImportTasteSub =>
      'Vælg en gemt smagsfil og flet den ind – sikkert at gentage';

  @override
  String get setAbout => 'Om';

  @override
  String get setAboutBody =>
      'Musik fra YouTube og dine egne filer. AI\'en kører helt på denne enhed – intet forlader den.';

  @override
  String get setSource => 'Kildekode';

  @override
  String get importTitle => 'Tilføj musik';

  @override
  String get importPickFolder => 'Vælg en mappe';

  @override
  String get importPickFiles => 'Vælg filer';

  @override
  String importScanning(Object file) {
    return 'Scanner $file';
  }

  @override
  String importAdded(int count) {
    return '$count tilføjet';
  }

  @override
  String get importDenied => 'Tilladelse nægtet – kan ikke læse din musik.';

  @override
  String get importWatched => 'Mapper, den overvåger';

  @override
  String get importIosHint =>
      'Åbn appen Filer, gå til På min iPhone → TuneBox, og læg musik derind.';

  @override
  String get playerQueue => 'Kø';

  @override
  String get playerUpNext => 'Næste';

  @override
  String get playerLyrics => 'Sangtekster';

  @override
  String get playerNoLyrics => 'Ingen sangtekst til denne.';

  @override
  String get playerRepeat => 'Gentag';

  @override
  String get playerShuffle => 'Bland';

  @override
  String errorPlayback(Object title) {
    return 'Kunne ikke afspille \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Springer \"$title\" over – streamen ville ikke åbne.';
  }

  @override
  String get undo => 'Fortryd';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Lige nu: $tags, anført af $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Lige nu: $tags.';
  }

  @override
  String get setColour => 'Farve';

  @override
  String get setColourSub => 'Hele appen følger denne';

  @override
  String get setCoverArt => 'Cover';

  @override
  String get setMyColour => 'Min farve';

  @override
  String get setCoverArtSub => 'Hver sang giver appen ny farve fra sit cover.';

  @override
  String get setMyColourSub => 'Én farve, overalt, hele tiden.';

  @override
  String get setPickColour => 'Vælg en hvilken som helst farve';

  @override
  String get setWifiOnlyTitle => 'Download kun på Wi-Fi';

  @override
  String get setDownloadLikes => 'Download alt, hvad jeg kan lide';

  @override
  String get setDownloadLikesSub => 'Hjerteknappen gemmer også filen';

  @override
  String get setAiInstall => 'Lad AI\'en installere musik, den vælger';

  @override
  String get setSkipSilenceSub =>
      'Kun Android. Kan klippe stille intro, udtoninger og bløde passager – lad være slået fra, hvis musikken hopper';

  @override
  String get setStorageUsed => 'Lager brugt af downloads';

  @override
  String get setLibrary => 'Bibliotek';

  @override
  String get setUpdates => 'Opdateringer';

  @override
  String get setAutoUpdate => 'Søg selv efter opdateringer';

  @override
  String get setAutoUpdateSub =>
      'Hver få timer, i stilhed, og downloader på Wi-Fi. Installation spørger dig stadig.';

  @override
  String setUpdateReady(Object version) {
    return 'Opdatering til $version er klar';
  }

  @override
  String get setUpdateReadySub => 'Downloadet – tryk for at installere';

  @override
  String get setUpdateAvailableSub =>
      'Hent den fra udgivelsessiden – tryk for at kopiere linket';

  @override
  String get setLinkCopied => 'Link kopieret';

  @override
  String get setCheckNow => 'Søg nu';

  @override
  String get setUpToDate => 'TuneBox er opdateret';

  @override
  String get setChecking => 'Leder efter en nyere version…';
}
