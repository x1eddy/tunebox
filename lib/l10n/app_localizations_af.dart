// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class LAf extends L {
  LAf([String locale = 'af']) : super(locale);

  @override
  String get navHome => 'Tuis';

  @override
  String get navExplore => 'Verken';

  @override
  String get navLibrary => 'Biblioteek';

  @override
  String get navTaste => 'Jou smaak';

  @override
  String get actionDone => 'Klaar';

  @override
  String get actionCancel => 'Kanselleer';

  @override
  String get actionCreate => 'Skep';

  @override
  String get actionPlay => 'Speel';

  @override
  String get actionShuffle => 'Skommel';

  @override
  String get actionPlayAll => 'Speel almal';

  @override
  String get actionAdd => 'Voeg by';

  @override
  String get actionRemove => 'Verwyder';

  @override
  String get actionName => 'Naam';

  @override
  String get greetingNight => 'Nog wakker?';

  @override
  String get greetingMorning => 'Goeiemôre';

  @override
  String get greetingAfternoon => 'Goeiemiddag';

  @override
  String get greetingEvening => 'Goeienaand';

  @override
  String get homeBuilding => 'Die KI bou jou rakke…';

  @override
  String get homeOffline => 'Vanlyn — wys wat op die toestel is';

  @override
  String get homeNothingYet => 'Nog niks om te wys nie';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rakke, pas herlaai',
      one: '1 rak, pas herlaai',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Herbou rakke';

  @override
  String get homeAddMusic => 'Voeg musiek van hierdie toestel by';

  @override
  String get homeQuickPicks => 'Vinnige keuses';

  @override
  String get homeQuickPicksSub => 'Reguit terug na waarmee jy besig was';

  @override
  String get homeEmptyTitle => 'Jou biblioteek is leeg';

  @override
  String get homeEmptyBody =>
      'Soek iets, of voeg die musiek by wat reeds op hierdie toestel is. Die KI begin leer vanaf jou allereerste speel.';

  @override
  String get homeAddMyMusic => 'Voeg my musiek by';

  @override
  String homeCouldNotReach(Object error) {
    return 'Kon nie YouTube bereik nie: $error';
  }

  @override
  String get moodFocus => 'Fokus';

  @override
  String get moodWorkout => 'Oefening';

  @override
  String get moodChill => 'Ontspan';

  @override
  String get moodCommute => 'Pendel';

  @override
  String get moodParty => 'Partytjie';

  @override
  String moodBuilding(Object mood) {
    return 'Bou tans \'n $mood-mengsel…';
  }

  @override
  String moodFailed(Object error) {
    return 'Geen sukses nie: $error';
  }

  @override
  String get shelfRepeat => 'Aanhoudend gespeel';

  @override
  String get shelfRepeatSub => 'Jou afgelope twee weke';

  @override
  String get shelfForgotten => 'Ou vergete treffers wat jy gehou het';

  @override
  String get shelfForgottenSub => 'Eens bemin, \'n rukkie nie aangeraak nie';

  @override
  String get shelfNew => 'Nuut';

  @override
  String get shelfNewSub => 'Varsklankies wat die KI dink vir jou is';

  @override
  String shelfBecause(Object artist) {
    return 'Omdat jy $artist gespeel het';
  }

  @override
  String get shelfBecauseSub => 'Dieselfde hoek van jou smaak';

  @override
  String get shelfDeep => 'Skaars aangeraak';

  @override
  String get shelfDeepSub => 'In jou biblioteek, amper nooit gespeel nie';

  @override
  String get shelfMix => 'Jou mengsel';

  @override
  String get shelfMixSub => 'Herbou elke keer as jy die toep oopmaak';

  @override
  String get shelfAdded => 'Onlangs bygevoeg';

  @override
  String get shelfAddedSub => 'Aflaaie en lêers wat jy ingevoer het';

  @override
  String get shelfStarter => 'Begin hier';

  @override
  String get shelfStarterSub => 'Speel \'n paar en die KI begin dadelik leer';

  @override
  String reasonPlays(int count) {
    return '$count keer gespeel';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Gehou, laas gespeel $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count keer gespeel, laas $when';
  }

  @override
  String get reasonTopArtist => 'Een van jou mees gespeelde kunstenaars';

  @override
  String reasonMore(Object artist) {
    return 'Meer $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Jy kom aanhou terug na $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Jou soort $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Onlangs baie $tag';
  }

  @override
  String get reasonOutThisYear => 'Vanjaar uit';

  @override
  String get reasonReleasedRecently => 'Onlangs vrygestel';

  @override
  String get reasonClose => 'Naby aan wat jy gespeel het';

  @override
  String reasonNear(Object artist) {
    return 'Naby aan $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nooit gespeel nie';

  @override
  String get reasonPlayedOnce => 'Een keer gespeel';

  @override
  String get reasonPopular => 'Tans gewild';

  @override
  String whenYearsAgo(int count) {
    return '${count}j gelede';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count maande gelede';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count dae gelede';
  }

  @override
  String get searchHint => 'Liedjies, kunstenaars, albums';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultate',
      one: '1 resultaat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Onlangse soektogte';

  @override
  String get searchEmptyTitle => 'Niks gevind nie';

  @override
  String get searchEmptyBody =>
      'Probeer \'n ander spelling, of net die kunstenaar se naam.';

  @override
  String get searchStartTitle => 'Vind iets om te speel';

  @override
  String get searchStartBody =>
      'Soek YouTube Music — slegs liedjies kom terug, nooit video\'s van ander goed nie.';

  @override
  String get libPlaylists => 'Snitlyste';

  @override
  String get libSongs => 'Liedjies';

  @override
  String get libArtists => 'Kunstenaars';

  @override
  String get libLiked => 'Gehou';

  @override
  String get libDownloads => 'Aflaaie';

  @override
  String get libImported => 'Ingevoer';

  @override
  String get libLikedSongs => 'Gehoude liedjies';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count liedjies',
      one: '1 liedjie',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count vanlyn';
  }

  @override
  String get libMyFiles => 'My eie lêers';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lêers',
      one: '1 lêer',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nuwe snitlys';

  @override
  String get libMakeOne => 'Maak een';

  @override
  String get libSortRecent => 'Onlangs bygevoeg';

  @override
  String get libSortTitle => 'Titel';

  @override
  String get libSortArtist => 'Kunstenaar';

  @override
  String get libSortPlays => 'Mees gespeel';

  @override
  String get sheetNotForMe => 'Nie vir my nie';

  @override
  String get sheetNotForMeSub => 'Beveel dit nooit weer aan nie';

  @override
  String get sheetBlocked => 'Geblokkeer — tik om weer toe te laat';

  @override
  String get sheetBlockedSub => 'Dit kan weer in aanbevelings verskyn';

  @override
  String get sheetPlayNext => 'Speel volgende';

  @override
  String get sheetAddToPlaylist => 'Voeg by snitlys';

  @override
  String get sheetDownloaded => 'Afgelaai';

  @override
  String get sheetRemoveFile => 'Tik om die lêer te verwyder';

  @override
  String get sheetDownload => 'Laai af';

  @override
  String get sheetKeepOffline => 'Hou dit vir vanlyn';

  @override
  String get sheetRadio => 'Begin radio';

  @override
  String get sheetRadioSub => '\'n Tou gebou rondom hierdie liedjie';

  @override
  String get sheetQueue => 'Tou';

  @override
  String get sheetSleepTimer => 'Slaaptydhouer';

  @override
  String get sheetSleepOff => 'Af';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minute';
  }

  @override
  String get sheetSleepEndOfTrack => 'Einde van hierdie liedjie';

  @override
  String sheetSleepSet(int count) {
    return 'Musiek stop oor $count min';
  }

  @override
  String get tasteTitle => 'Jou smaak';

  @override
  String get tasteRetrain => 'Herlei op';

  @override
  String get tasteRetraining => 'Leer opnuut uit jou geskiedenis…';

  @override
  String get tasteRetrained => 'Die KI het sy model herbou.';

  @override
  String tasteConfidence(int percent) {
    return 'Vertroue $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays keer gespeel · $skips oorgeslaan · $likes gehou';
  }

  @override
  String get tasteEmptySummary => 'Speel \'n paar liedjies en dit vul aan.';

  @override
  String get tasteKeepLearning => 'Hou aan leer terwyl ek luister';

  @override
  String get tasteKeepLearningSub =>
      'Skakel af om die huidige profiel te vries';

  @override
  String get tasteDownloadsTitle => 'Aflaaie wat die KI hanteer';

  @override
  String get tasteDownloadsSub =>
      'Musiek beland op die toestel sonder dat jy vra';

  @override
  String get tasteDownloadLikes => 'Laai alles af wat ek hou';

  @override
  String get tasteDownloadLikesSub =>
      'Druk die hartjie en die lêer word vir vanlyn gestoor';

  @override
  String get tasteAiInstall => 'Laat die KI musiek installeer wat dit kies';

  @override
  String get tasteAiInstallSub => 'Dit sal snitte haal waarvan dit seker is';

  @override
  String get tasteWhatItThinks => 'Wat dit dink jy hou van';

  @override
  String get tasteWhatItThinksSub =>
      'Geleer uit speel, oorslaan, hou en herhalings';

  @override
  String get tasteArtists => 'Kunstenaars waarop dit staatmaak';

  @override
  String get tasteWhenYouListen => 'Wanneer jy luister';

  @override
  String get tasteWhenYouListenSub =>
      'Speelbeurte per uur — die huidige uur weeg swaarder';

  @override
  String get tasteDecades => 'Dekades';

  @override
  String get tasteTune => 'Stem die aanbevelings af';

  @override
  String get tasteTuneSub => 'Tree in werking met die volgende Tuis-herlaai';

  @override
  String get tasteDiscovery => 'Ontdekking';

  @override
  String get tasteDiscoverySub =>
      'Bekend ↔ dinge wat jy nog nooit gehoor het nie';

  @override
  String get tasteEnergy => 'Energie';

  @override
  String get tasteEnergySub => 'Kalm ↔ hard';

  @override
  String get tasteRecency => 'Nuutheid';

  @override
  String get tasteRecencySub => 'Tydloos ↔ splinternuut';

  @override
  String get tasteNostalgia => 'Nostalgie';

  @override
  String get tasteNostalgiaSub =>
      'Hoe ver terug \'n ou gunsteling as vergete tel';

  @override
  String get tasteSignals => 'Seine wat dit mag gebruik';

  @override
  String get tasteSignalsSub => 'Alles bly op hierdie toestel';

  @override
  String get tasteUseHistory => 'Wat ek gespeel het';

  @override
  String get tasteUseSkips => 'Wat ek oorslaan';

  @override
  String get tasteUseTime => 'Tyd van die dag';

  @override
  String get tasteUseYouTube => 'Voorstelle van YouTube';

  @override
  String get tasteAlwaysMore => 'Altyd meer van';

  @override
  String get tasteNeverAgain => 'Nooit weer nie';

  @override
  String get tasteAddArtist => 'Voeg \'n kunstenaar by';

  @override
  String get tasteMoreOfPrompt => 'Altyd meer van…';

  @override
  String get tasteNeverAgainPrompt => 'Nooit weer nie…';

  @override
  String get tasteReset => 'Stel terug wat dit geleer het';

  @override
  String get tasteResetSub => 'Jou musiek bly; die profiel begin van nuuts af';

  @override
  String get trainCard => 'Lei dit op deur te gradeer';

  @override
  String get trainCardSub =>
      'Swiep deur regte liedjies. Regs vir meer soos dit, links vir nooit weer. Twee minute hier klop \'n week se luister.';

  @override
  String get trainStart => 'Begin \'n opleidingsronde';

  @override
  String get trainTitle => 'Opleidingsronde';

  @override
  String get trainQuestion => 'Sal jy dit op jou Tuis wil hê?';

  @override
  String get trainMoreLikeThis => 'Meer soos hierdie';

  @override
  String get trainNeverAgain => 'Nooit weer nie';

  @override
  String get trainDone => 'Ronde voltooi';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked behou · $blocked geblokkeer. Vertroue $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Terug na jou smaak';

  @override
  String get trainNothingTitle => 'Nog niks om te gradeer nie';

  @override
  String get trainNothingBody =>
      'Voeg musiek by of laat die KI eers kandidate haal, kom dan terug.';

  @override
  String get trainLeaveTitle => 'Verlaat die opleidingsronde?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'As jy nou weggaan, gooi die KI alles van hierdie ronde weg — al $count liedjies wat jy pas gegradeer het.',
      one:
          'As jy nou weggaan, gooi die KI alles van hierdie ronde weg — die 1 liedjie wat jy pas gegradeer het.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Gaan voort met opleiding';

  @override
  String get trainDiscard => 'Gooi weg en verlaat';

  @override
  String get setTitle => 'Instellings';

  @override
  String get setAppearance => 'Voorkoms';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Volg die stelsel';

  @override
  String get setThemeLight => 'Lig';

  @override
  String get setThemeDark => 'Donker';

  @override
  String get setPureBlack => 'Suiwer swart';

  @override
  String get setPureBlackSub => 'Spaar krag op \'n OLED-skerm';

  @override
  String get setAccent => 'Aksentkleur';

  @override
  String get setAccentArtwork => 'Van die voorbladkuns';

  @override
  String get setAccentFixed => 'Een kleur wat ek gekies het';

  @override
  String get setLanguage => 'Taal';

  @override
  String get setLanguageSystem => 'Volg die stelsel';

  @override
  String get setAccessibility => 'Toeganklikheid';

  @override
  String get setTextSize => 'Teksgrootte';

  @override
  String get setTextSizeSub => 'Bo-op jou stelselinstelling';

  @override
  String get setReduceMotion => 'Verminder beweging';

  @override
  String get setReduceMotionSub =>
      'Stop die balkies, die visualiseerder, springerige rol, veerkragtige tikke en bladsyoorgange';

  @override
  String get setHighContrast => 'Hoë kontras';

  @override
  String get setHighContrastSub => 'Sterker skeiding en sigbare buitelyne';

  @override
  String get setBoldText => 'Vet teks';

  @override
  String get setPlayback => 'Terugspeel';

  @override
  String get setAutoRadio => 'Hou die musiek aan die gang';

  @override
  String get setAutoRadioSub =>
      'Wanneer die tou eindig, gaan voort met \'n radio gebou uit die laaste liedjie';

  @override
  String get setSmartShuffle => 'Slim skommel';

  @override
  String get setSmartShuffleSub => 'Skommel volgens smaak in plaas van lukraak';

  @override
  String get setResume => 'Gaan voort waar ek opgehou het';

  @override
  String get setResumeSub =>
      'Herstel die tou wanneer die toep oopmaak, gepauzeer';

  @override
  String get setDataSaver => 'Databespaarder buite Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Beperk strome en aflaaie tot 128 kbps op mobiele data';

  @override
  String get setHaptics => 'Haptiese terugvoer';

  @override
  String get setShowReasons => 'Wys hoekom iets aanbeveel is';

  @override
  String get setSkipSilence => 'Slaan stilte oor';

  @override
  String get setQuality => 'Klankkwaliteit';

  @override
  String get setQualityLow => 'Laag · 64 kbps';

  @override
  String get setQualityNormal => 'Normaal · 128 kbps';

  @override
  String get setQualityHigh => 'Hoog · 192 kbps';

  @override
  String get setQualityBest => 'Beste beskikbaar';

  @override
  String get setStorage => 'Aflaaie en berging';

  @override
  String get setWifiOnly => 'Laai slegs oor Wi-Fi af';

  @override
  String get setDailyLimit => 'Daaglikse limiet vir die KI';

  @override
  String setDailyLimitSub(int count) {
    return '$count liedjies per dag';
  }

  @override
  String get setBudget => 'Berging wat die KI mag gebruik';

  @override
  String setUsed(Object size) {
    return '$size gebruik deur aflaaie';
  }

  @override
  String get setYourMusic => 'Jou musiek';

  @override
  String get setImport => 'Voeg musiek van hierdie toestel by';

  @override
  String get setImportSub => 'Kies vouers of enkele lêers';

  @override
  String get setCleanup => 'Maak vermiste lêers skoon';

  @override
  String get setCleanupSub => 'Verwyder liedjies waarvan die lêer weg is';

  @override
  String setCleanupDone(int count) {
    return '$count vermiste lêers verwyder.';
  }

  @override
  String get setExport => 'Stuur my smaak na \'n ander toestel';

  @override
  String get setExportSub =>
      'Stoor \'n lêer met jou hou-merke, speelbeurte en alles wat die KI geleer het';

  @override
  String get setImportTaste => 'Laai smaak van \'n ander toestel';

  @override
  String get setImportTasteSub =>
      'Kies \'n gestoorde smaaklêer en voeg dit saam — veilig om te herhaal';

  @override
  String get setAbout => 'Oor';

  @override
  String get setAboutBody =>
      'Musiek van YouTube en jou eie lêers. Die KI loop geheel en al op hierdie toestel — niks verlaat dit nie.';

  @override
  String get setSource => 'Bronkode';

  @override
  String get importTitle => 'Voeg musiek by';

  @override
  String get importPickFolder => 'Kies \'n vouer';

  @override
  String get importPickFiles => 'Kies lêers';

  @override
  String importScanning(Object file) {
    return 'Skandeer $file';
  }

  @override
  String importAdded(int count) {
    return '$count bygevoeg';
  }

  @override
  String get importDenied =>
      'Toestemming geweier — kan nie jou musiek lees nie.';

  @override
  String get importWatched => 'Vouers wat dit dophou';

  @override
  String get importIosHint =>
      'Maak die Lêers-toep oop, gaan na Op My iPhone → TuneBox, en laat val musiek daar.';

  @override
  String get playerQueue => 'Tou';

  @override
  String get playerUpNext => 'Volgende';

  @override
  String get playerLyrics => 'Lirieke';

  @override
  String get playerNoLyrics => 'Geen lirieke vir hierdie een nie.';

  @override
  String get playerRepeat => 'Herhaal';

  @override
  String get playerShuffle => 'Skommel';

  @override
  String errorPlayback(Object title) {
    return 'Kon nie \"$title\" speel nie';
  }

  @override
  String errorSkipping(Object title) {
    return 'Slaan \"$title\" oor — die stroom wou nie oopmaak nie.';
  }

  @override
  String get undo => 'Ontdoen';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Tans: $tags, aangevoer deur $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Tans: $tags.';
  }

  @override
  String get setColour => 'Kleur';

  @override
  String get setColourSub => 'Die hele toep volg dit';

  @override
  String get setCoverArt => 'Voorbladkuns';

  @override
  String get setMyColour => 'My kleur';

  @override
  String get setCoverArtSub =>
      'Elke liedjie verkleur die toep vanaf sy voorblad.';

  @override
  String get setMyColourSub => 'Een kleur, oral, heeltyd.';

  @override
  String get setPickColour => 'Kies enige kleur';

  @override
  String get setWifiOnlyTitle => 'Laai slegs oor Wi-Fi af';

  @override
  String get setDownloadLikes => 'Laai alles af wat ek hou';

  @override
  String get setDownloadLikesSub => 'Die hartjie-knoppie stoor ook die lêer';

  @override
  String get setAiInstall => 'Laat die KI musiek installeer wat dit kies';

  @override
  String get setSkipSilenceSub =>
      'Slegs Android. Kan stil intros, uitfasering en sagte dele afsny — los af as musiek spring';

  @override
  String get setStorageUsed => 'Berging gebruik deur aflaaie';

  @override
  String get setLibrary => 'Biblioteek';

  @override
  String get setUpdates => 'Opdaterings';

  @override
  String get setAutoUpdate => 'Kyk self vir opdaterings';

  @override
  String get setAutoUpdateSub =>
      'Elke paar uur, stilweg, en laai af oor Wi-Fi. Installeer vra steeds jou.';

  @override
  String setUpdateReady(Object version) {
    return 'Opdatering na $version is gereed';
  }

  @override
  String get setUpdateReadySub => 'Afgelaai — tik om te installeer';

  @override
  String get setUpdateAvailableSub =>
      'Kry dit op die vrystellingsbladsy — tik om die skakel te kopieer';

  @override
  String get setLinkCopied => 'Skakel gekopieer';

  @override
  String get setCheckNow => 'Kyk nou';

  @override
  String get setUpToDate => 'TuneBox is op datum';

  @override
  String get setChecking => 'Soek \'n nuwer weergawe…';

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
