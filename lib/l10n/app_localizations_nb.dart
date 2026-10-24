// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class LNb extends L {
  LNb([String locale = 'nb']) : super(locale);

  @override
  String get navHome => 'Hjem';

  @override
  String get navExplore => 'Utforsk';

  @override
  String get navLibrary => 'Bibliotek';

  @override
  String get navTaste => 'Din smak';

  @override
  String get actionDone => 'Ferdig';

  @override
  String get actionCancel => 'Avbryt';

  @override
  String get actionCreate => 'Opprett';

  @override
  String get actionPlay => 'Spill av';

  @override
  String get actionShuffle => 'Bland';

  @override
  String get actionPlayAll => 'Spill av alle';

  @override
  String get actionAdd => 'Legg til';

  @override
  String get actionRemove => 'Fjern';

  @override
  String get actionName => 'Navn';

  @override
  String get greetingNight => 'Fortsatt våken?';

  @override
  String get greetingMorning => 'God morgen';

  @override
  String get greetingAfternoon => 'God ettermiddag';

  @override
  String get greetingEvening => 'God kveld';

  @override
  String get homeBuilding => 'KI-en bygger hyllene dine…';

  @override
  String get homeOffline => 'Frakoblet — viser det som ligger på enheten';

  @override
  String get homeNothingYet => 'Ingenting å vise ennå';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hyller, oppdatert nå nettopp',
      one: '1 hylle, oppdatert nå nettopp',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Bygg hyllene på nytt';

  @override
  String get homeAddMusic => 'Legg til musikk fra denne enheten';

  @override
  String get homeQuickPicks => 'Hurtigvalg';

  @override
  String get homeQuickPicksSub => 'Rett tilbake til det du holdt på med';

  @override
  String get homeEmptyTitle => 'Biblioteket ditt er tomt';

  @override
  String get homeEmptyBody =>
      'Søk etter noe, eller legg til musikken som allerede ligger på denne enheten. KI-en begynner å lære fra den aller første avspillingen.';

  @override
  String get homeAddMyMusic => 'Legg til musikken min';

  @override
  String homeCouldNotReach(Object error) {
    return 'Kunne ikke nå YouTube: $error';
  }

  @override
  String get moodFocus => 'Fokus';

  @override
  String get moodWorkout => 'Trening';

  @override
  String get moodChill => 'Chill';

  @override
  String get moodCommute => 'Pendling';

  @override
  String get moodParty => 'Fest';

  @override
  String moodBuilding(Object mood) {
    return 'Bygger en $mood-miks…';
  }

  @override
  String moodFailed(Object error) {
    return 'Det gikk ikke: $error';
  }

  @override
  String get shelfRepeat => 'På repeat';

  @override
  String get shelfRepeatSub => 'Dine siste to uker';

  @override
  String get shelfForgotten => 'Glemte gamle hits du likte';

  @override
  String get shelfForgottenSub => 'Elsket en gang, urørt en stund';

  @override
  String get shelfNew => 'Nytt';

  @override
  String get shelfNewSub => 'Ferske spor KI-en tror er noe for deg';

  @override
  String shelfBecause(Object artist) {
    return 'Fordi du spilte $artist';
  }

  @override
  String get shelfBecauseSub => 'Samme hjørne av smaken din';

  @override
  String get shelfDeep => 'Knapt rørt';

  @override
  String get shelfDeepSub => 'I biblioteket ditt, nesten aldri spilt';

  @override
  String get shelfMix => 'Din miks';

  @override
  String get shelfMixSub => 'Bygges på nytt hver gang du åpner appen';

  @override
  String get shelfAdded => 'Nylig lagt til';

  @override
  String get shelfAddedSub => 'Nedlastinger og filer du har importert';

  @override
  String get shelfStarter => 'Start her';

  @override
  String get shelfStarterSub =>
      'Spill noen få, så begynner KI-en å lære med en gang';

  @override
  String reasonPlays(int count) {
    return '$count avspillinger';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Likt, sist spilt $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count avspillinger, sist $when';
  }

  @override
  String get reasonTopArtist => 'En av artistene du spiller mest';

  @override
  String reasonMore(Object artist) {
    return 'Mer $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Du kommer stadig tilbake til $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Din type $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Mye $tag i det siste';
  }

  @override
  String get reasonOutThisYear => 'Ute i år';

  @override
  String get reasonReleasedRecently => 'Nylig utgitt';

  @override
  String get reasonClose => 'Nær det du har spilt';

  @override
  String reasonNear(Object artist) {
    return 'Ligger nær $artist';
  }

  @override
  String get reasonNeverPlayed => 'Aldri spilt';

  @override
  String get reasonPlayedOnce => 'Spilt én gang';

  @override
  String get reasonPopular => 'Populært akkurat nå';

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
    return '$count dager siden';
  }

  @override
  String get searchHint => 'Sanger, artister, album';

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
  String get searchRecent => 'Siste søk';

  @override
  String get searchEmptyTitle => 'Fant ingenting';

  @override
  String get searchEmptyBody =>
      'Prøv en annen stavemåte, eller bare artistens navn.';

  @override
  String get searchStartTitle => 'Finn noe å spille';

  @override
  String get searchStartBody =>
      'Søk i YouTube Music — kun sanger dukker opp, aldri videoer om andre ting.';

  @override
  String get libPlaylists => 'Spillelister';

  @override
  String get libSongs => 'Sanger';

  @override
  String get libArtists => 'Artister';

  @override
  String get libLiked => 'Likt';

  @override
  String get libDownloads => 'Nedlastinger';

  @override
  String get libImported => 'Importert';

  @override
  String get libLikedSongs => 'Likte sanger';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sanger',
      one: '1 sang',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count frakoblet';
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
  String get libMakeOne => 'Lag en';

  @override
  String get libSortRecent => 'Nylig lagt til';

  @override
  String get libSortTitle => 'Tittel';

  @override
  String get libSortArtist => 'Artist';

  @override
  String get libSortPlays => 'Mest spilt';

  @override
  String get sheetNotForMe => 'Ikke for meg';

  @override
  String get sheetNotForMeSub => 'Aldri anbefal dette igjen';

  @override
  String get sheetBlocked => 'Blokkert — trykk for å tillate igjen';

  @override
  String get sheetBlockedSub => 'Den kan dukke opp i anbefalinger igjen';

  @override
  String get sheetPlayNext => 'Spill neste';

  @override
  String get sheetAddToPlaylist => 'Legg til i spilleliste';

  @override
  String get sheetDownloaded => 'Lastet ned';

  @override
  String get sheetRemoveFile => 'Trykk for å fjerne filen';

  @override
  String get sheetDownload => 'Last ned';

  @override
  String get sheetKeepOffline => 'Behold for frakoblet bruk';

  @override
  String get sheetRadio => 'Start radio';

  @override
  String get sheetRadioSub => 'En kø bygget rundt denne sangen';

  @override
  String get sheetQueue => 'Kø';

  @override
  String get sheetSleepTimer => 'Søvntimer';

  @override
  String get sheetSleepOff => 'Av';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minutter';
  }

  @override
  String get sheetSleepEndOfTrack => 'Slutten av denne sangen';

  @override
  String sheetSleepSet(int count) {
    return 'Musikken stopper om $count min';
  }

  @override
  String get tasteTitle => 'Din smak';

  @override
  String get tasteRetrain => 'Tren på nytt';

  @override
  String get tasteRetraining => 'Trener på nytt på historikken din…';

  @override
  String get tasteRetrained => 'KI-en bygget modellen sin på nytt.';

  @override
  String tasteConfidence(int percent) {
    return 'Sikkerhet $percent %';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays avspillinger · $skips hoppet over · $likes likt';
  }

  @override
  String get tasteEmptySummary => 'Spill noen sanger, så fylles dette ut.';

  @override
  String get tasteKeepLearning => 'Fortsett å lære mens jeg lytter';

  @override
  String get tasteKeepLearningSub => 'Slå av for å fryse gjeldende profil';

  @override
  String get tasteDownloadsTitle => 'Nedlastinger KI-en styrer';

  @override
  String get tasteDownloadsSub =>
      'Musikk havner på enheten uten at du ber om det';

  @override
  String get tasteDownloadLikes => 'Last ned alt jeg liker';

  @override
  String get tasteDownloadLikesSub =>
      'Trykk på hjertet, så lagres filen for frakoblet bruk';

  @override
  String get tasteAiInstall => 'La KI-en installere musikk den velger';

  @override
  String get tasteAiInstallSub => 'Den henter spor den er trygg på';

  @override
  String get tasteWhatItThinks => 'Hva den tror du liker';

  @override
  String get tasteWhatItThinksSub =>
      'Lært fra avspillinger, hopp, likes og repetisjoner';

  @override
  String get tasteArtists => 'Artister den lener seg på';

  @override
  String get tasteWhenYouListen => 'Når du lytter';

  @override
  String get tasteWhenYouListenSub =>
      'Avspillinger per time — gjeldende time får mer vekt';

  @override
  String get tasteDecades => 'Tiår';

  @override
  String get tasteTune => 'Finjuster anbefalingene';

  @override
  String get tasteTuneSub => 'Trer i kraft ved neste oppdatering av Hjem';

  @override
  String get tasteDiscovery => 'Oppdagelse';

  @override
  String get tasteDiscoverySub => 'Kjent ↔ ting du aldri har hørt';

  @override
  String get tasteEnergy => 'Energi';

  @override
  String get tasteEnergySub => 'Rolig ↔ høylytt';

  @override
  String get tasteRecency => 'Ferskhet';

  @override
  String get tasteRecencySub => 'Tidløst ↔ splitter nytt';

  @override
  String get tasteNostalgia => 'Nostalgi';

  @override
  String get tasteNostalgiaSub =>
      'Hvor langt tilbake en gammel favoritt regnes som glemt';

  @override
  String get tasteSignals => 'Signaler den kan bruke';

  @override
  String get tasteSignalsSub => 'Alt blir på denne enheten';

  @override
  String get tasteUseHistory => 'Det jeg har spilt';

  @override
  String get tasteUseSkips => 'Det jeg hopper over';

  @override
  String get tasteUseTime => 'Tid på døgnet';

  @override
  String get tasteUseYouTube => 'Forslag fra YouTube';

  @override
  String get tasteAlwaysMore => 'Alltid mer av';

  @override
  String get tasteNeverAgain => 'Aldri igjen';

  @override
  String get tasteAddArtist => 'Legg til en artist';

  @override
  String get tasteMoreOfPrompt => 'Alltid mer av…';

  @override
  String get tasteNeverAgainPrompt => 'Aldri igjen…';

  @override
  String get tasteReset => 'Nullstill det den har lært';

  @override
  String get tasteResetSub => 'Musikken din blir; profilen starter fra null';

  @override
  String get trainCard => 'Tren den ved å vurdere';

  @override
  String get trainCardSub =>
      'Sveip gjennom ekte sanger. Høyre for mer som dette, venstre for aldri igjen. To minutter her slår en uke med lytting.';

  @override
  String get trainStart => 'Start en treningsrunde';

  @override
  String get trainTitle => 'Treningsrunde';

  @override
  String get trainQuestion => 'Vil du ha dette på Hjem?';

  @override
  String get trainMoreLikeThis => 'Mer som dette';

  @override
  String get trainNeverAgain => 'Aldri igjen';

  @override
  String get trainDone => 'Runden er fullført';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked beholdt · $blocked blokkert. Sikkerhet $before % → $after %';
  }

  @override
  String get trainBackToTaste => 'Tilbake til smaken din';

  @override
  String get trainNothingTitle => 'Ingenting å vurdere ennå';

  @override
  String get trainNothingBody =>
      'Legg til litt musikk eller la KI-en hente kandidater først, og kom så tilbake.';

  @override
  String get trainLeaveTitle => 'Forlate treningsrunden?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Hvis du går nå, forkaster KI-en alt fra denne runden — alle de $count sangene du nettopp vurderte.',
      one:
          'Hvis du går nå, forkaster KI-en alt fra denne runden — den ene sangen du nettopp vurderte.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Fortsett treningen';

  @override
  String get trainDiscard => 'Forkast og forlat';

  @override
  String get setTitle => 'Innstillinger';

  @override
  String get setAppearance => 'Utseende';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Følg systemet';

  @override
  String get setThemeLight => 'Lys';

  @override
  String get setThemeDark => 'Mørk';

  @override
  String get setPureBlack => 'Ren svart';

  @override
  String get setPureBlackSub => 'Sparer strøm på OLED-skjerm';

  @override
  String get setAccent => 'Aksentfarge';

  @override
  String get setAccentArtwork => 'Fra coverbildet';

  @override
  String get setAccentFixed => 'Én farge jeg valgte';

  @override
  String get setLanguage => 'Språk';

  @override
  String get setLanguageSystem => 'Følg systemet';

  @override
  String get setAccessibility => 'Tilgjengelighet';

  @override
  String get setTextSize => 'Tekststørrelse';

  @override
  String get setTextSizeSub => 'I tillegg til systeminnstillingen din';

  @override
  String get setReduceMotion => 'Reduser bevegelse';

  @override
  String get setReduceMotionSub =>
      'Stopper stolpene, visualiseringen, spretten rulling, fjærende trykk og sideoverganger';

  @override
  String get setHighContrast => 'Høy kontrast';

  @override
  String get setHighContrastSub => 'Tydeligere skille og synlige omriss';

  @override
  String get setBoldText => 'Fet tekst';

  @override
  String get setPlayback => 'Avspilling';

  @override
  String get setAutoRadio => 'Hold musikken i gang';

  @override
  String get setAutoRadioSub =>
      'Når køen er slutt, fortsetter den med en radio bygget fra siste sang';

  @override
  String get setSmartShuffle => 'Smart blanding';

  @override
  String get setSmartShuffleSub => 'Blander etter smak i stedet for tilfeldig';

  @override
  String get setResume => 'Fortsett der jeg slapp';

  @override
  String get setResumeSub =>
      'Gjenoppretter køen når appen åpnes, satt på pause';

  @override
  String get setDataSaver => 'Datasparing utenfor Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Begrenser strømming og nedlasting til 128 kbps på mobildata';

  @override
  String get setHaptics => 'Haptisk tilbakemelding';

  @override
  String get setShowReasons => 'Vis hvorfor noe ble anbefalt';

  @override
  String get setSkipSilence => 'Hopp over stillhet';

  @override
  String get setQuality => 'Lydkvalitet';

  @override
  String get setQualityLow => 'Lav · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Høy · 192 kbps';

  @override
  String get setQualityBest => 'Best tilgjengelig';

  @override
  String get setStorage => 'Nedlastinger og lagring';

  @override
  String get setWifiOnly => 'Last ned kun på Wi-Fi';

  @override
  String get setDailyLimit => 'Daglig grense for KI-en';

  @override
  String setDailyLimitSub(int count) {
    return '$count sanger om dagen';
  }

  @override
  String get setBudget => 'Lagring KI-en kan bruke';

  @override
  String setUsed(Object size) {
    return '$size brukt av nedlastinger';
  }

  @override
  String get setYourMusic => 'Musikken din';

  @override
  String get setImport => 'Legg til musikk fra denne enheten';

  @override
  String get setImportSub => 'Velg mapper eller enkeltfiler';

  @override
  String get setCleanup => 'Rydd opp i manglende filer';

  @override
  String get setCleanupSub => 'Fjern sanger der filen er borte';

  @override
  String setCleanupDone(int count) {
    return 'Fjernet $count manglende filer.';
  }

  @override
  String get setExport => 'Send smaken min til en annen enhet';

  @override
  String get setExportSub =>
      'Lagrer en fil med likes, avspillinger og alt KI-en har lært';

  @override
  String get setImportTaste => 'Last inn smak fra en annen enhet';

  @override
  String get setImportTasteSub =>
      'Velg en lagret smaksfil og slå den sammen — trygt å gjenta';

  @override
  String get setAbout => 'Om';

  @override
  String get setAboutBody =>
      'Musikk fra YouTube og dine egne filer. KI-en kjører helt og holdent på denne enheten — ingenting forlater den.';

  @override
  String get setSource => 'Kildekode';

  @override
  String get importTitle => 'Legg til musikk';

  @override
  String get importPickFolder => 'Velg en mappe';

  @override
  String get importPickFiles => 'Velg filer';

  @override
  String importScanning(Object file) {
    return 'Skanner $file';
  }

  @override
  String importAdded(int count) {
    return '$count lagt til';
  }

  @override
  String get importDenied => 'Tilgang nektet — kan ikke lese musikken din.';

  @override
  String get importWatched => 'Mapper den overvåker';

  @override
  String get importIosHint =>
      'Åpne Filer-appen, gå til På min iPhone → TuneBox, og legg musikk inn der.';

  @override
  String get playerQueue => 'Kø';

  @override
  String get playerUpNext => 'Neste';

  @override
  String get playerLyrics => 'Sangtekst';

  @override
  String get playerNoLyrics => 'Ingen sangtekst for denne.';

  @override
  String get playerRepeat => 'Gjenta';

  @override
  String get playerShuffle => 'Bland';

  @override
  String errorPlayback(Object title) {
    return 'Kunne ikke spille «$title»';
  }

  @override
  String errorSkipping(Object title) {
    return 'Hopper over «$title» — strømmen ville ikke åpnes.';
  }

  @override
  String get undo => 'Angre';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Akkurat nå: $tags, ledet av $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Akkurat nå: $tags.';
  }

  @override
  String get setColour => 'Farge';

  @override
  String get setColourSub => 'Hele appen følger denne';

  @override
  String get setCoverArt => 'Coverbilde';

  @override
  String get setMyColour => 'Min farge';

  @override
  String get setCoverArtSub => 'Hver sang gir appen ny fargetone fra coveret.';

  @override
  String get setMyColourSub => 'Én farge, overalt, hele tiden.';

  @override
  String get setPickColour => 'Velg hvilken som helst farge';

  @override
  String get setWifiOnlyTitle => 'Last ned kun på Wi-Fi';

  @override
  String get setDownloadLikes => 'Last ned alt jeg liker';

  @override
  String get setDownloadLikesSub => 'Hjerteknappen lagrer også filen';

  @override
  String get setAiInstall => 'La KI-en installere musikk den velger';

  @override
  String get setSkipSilenceSub =>
      'Kun Android. Kan klippe stille introer, uttoninger og myke partier — la den være av hvis musikken hopper';

  @override
  String get setStorageUsed => 'Lagring brukt av nedlastinger';

  @override
  String get setLibrary => 'Bibliotek';

  @override
  String get setUpdates => 'Oppdateringer';

  @override
  String get setAutoUpdate => 'Se etter oppdateringer selv';

  @override
  String get setAutoUpdateSub =>
      'Hver få timer, i det stille, og laster ned på Wi-Fi. Installasjon spør deg fortsatt.';

  @override
  String setUpdateReady(Object version) {
    return 'Oppdatering til $version er klar';
  }

  @override
  String get setUpdateReadySub => 'Lastet ned — trykk for å installere';

  @override
  String get setUpdateAvailableSub =>
      'Hent den fra utgivelsessiden — trykk for å kopiere lenken';

  @override
  String get setLinkCopied => 'Lenke kopiert';

  @override
  String get setCheckNow => 'Sjekk nå';

  @override
  String get setUpToDate => 'TuneBox er oppdatert';

  @override
  String get setChecking => 'Ser etter en nyere versjon…';

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
