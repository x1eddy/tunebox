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
}
