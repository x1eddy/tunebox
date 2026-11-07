// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class LNl extends L {
  LNl([String locale = 'nl']) : super(locale);

  @override
  String get navHome => 'Start';

  @override
  String get navExplore => 'Ontdek';

  @override
  String get navLibrary => 'Bibliotheek';

  @override
  String get navTaste => 'Jouw smaak';

  @override
  String get actionDone => 'Klaar';

  @override
  String get actionCancel => 'Annuleren';

  @override
  String get actionCreate => 'Maken';

  @override
  String get actionPlay => 'Afspelen';

  @override
  String get actionShuffle => 'Willekeurig';

  @override
  String get actionPlayAll => 'Alles afspelen';

  @override
  String get actionAdd => 'Toevoegen';

  @override
  String get actionRemove => 'Verwijderen';

  @override
  String get actionName => 'Naam';

  @override
  String get greetingNight => 'Nog wakker?';

  @override
  String get greetingMorning => 'Goedemorgen';

  @override
  String get greetingAfternoon => 'Goedemiddag';

  @override
  String get greetingEvening => 'Goedenavond';

  @override
  String get homeBuilding => 'De AI bouwt je schappen…';

  @override
  String get homeOffline => 'Offline — dit staat op het apparaat';

  @override
  String get homeNothingYet => 'Nog niets te laten zien';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count schappen, net ververst',
      one: '1 schap, net ververst',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Schappen opnieuw bouwen';

  @override
  String get homeAddMusic => 'Muziek van dit apparaat toevoegen';

  @override
  String get homeQuickPicks => 'Snelle keuzes';

  @override
  String get homeQuickPicksSub => 'Terug naar waar je was';

  @override
  String get homeEmptyTitle => 'Je bibliotheek is leeg';

  @override
  String get homeEmptyBody =>
      'Zoek iets op, of voeg de muziek toe die al op dit apparaat staat. De AI leert vanaf het allereerste nummer.';

  @override
  String get homeAddMyMusic => 'Mijn muziek toevoegen';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube niet bereikbaar: $error';
  }

  @override
  String get moodFocus => 'Focus';

  @override
  String get moodWorkout => 'Workout';

  @override
  String get moodChill => 'Chill';

  @override
  String get moodCommute => 'Onderweg';

  @override
  String get moodParty => 'Feest';

  @override
  String moodBuilding(Object mood) {
    return 'Een $mood-mix wordt gebouwd…';
  }

  @override
  String moodFailed(Object error) {
    return 'Geen geluk: $error';
  }

  @override
  String get shelfRepeat => 'Op herhaling';

  @override
  String get shelfRepeatSub => 'Je laatste twee weken';

  @override
  String get shelfForgotten => 'Oude nummers die je leuk vond';

  @override
  String get shelfForgottenSub => 'Ooit geliefd, al een tijd niet gehoord';

  @override
  String get shelfNew => 'Nieuw';

  @override
  String get shelfNewSub =>
      'Verse nummers waarvan de AI denkt dat ze bij je passen';

  @override
  String shelfBecause(Object artist) {
    return 'Omdat je $artist draaide';
  }

  @override
  String get shelfBecauseSub => 'Dezelfde hoek van je smaak';

  @override
  String get shelfDeep => 'Nauwelijks aangeraakt';

  @override
  String get shelfDeepSub => 'In je bibliotheek, bijna nooit afgespeeld';

  @override
  String get shelfMix => 'Jouw mix';

  @override
  String get shelfMixSub =>
      'Wordt opnieuw gemaakt elke keer dat je de app opent';

  @override
  String get shelfAdded => 'Onlangs toegevoegd';

  @override
  String get shelfAddedSub => 'Downloads en bestanden die je importeerde';

  @override
  String get shelfStarter => 'Begin hier';

  @override
  String get shelfStarterSub => 'Speel er een paar en de AI leert meteen mee';

  @override
  String reasonPlays(int count) {
    return '$count keer gespeeld';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Geliket, laatst gespeeld $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count keer gespeeld, laatst $when';
  }

  @override
  String get reasonTopArtist => 'Een van je meest gedraaide artiesten';

  @override
  String reasonMore(Object artist) {
    return 'Meer $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Je keert steeds terug naar $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Jouw soort $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Veel $tag de laatste tijd';
  }

  @override
  String get reasonOutThisYear => 'Dit jaar uitgekomen';

  @override
  String get reasonReleasedRecently => 'Kort geleden uitgekomen';

  @override
  String get reasonClose => 'Dicht bij wat je aan het draaien bent';

  @override
  String reasonNear(Object artist) {
    return 'Ligt dicht bij $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nooit gespeeld';

  @override
  String get reasonPlayedOnce => 'Eén keer gespeeld';

  @override
  String get reasonPopular => 'Nu populair';

  @override
  String whenYearsAgo(int count) {
    return '$count jaar geleden';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count maanden geleden';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count dagen geleden';
  }

  @override
  String get searchHint => 'Nummers, artiesten, albums';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultaten',
      one: '1 resultaat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Recent gezocht';

  @override
  String get searchEmptyTitle => 'Niets gevonden';

  @override
  String get searchEmptyBody =>
      'Probeer een andere schrijfwijze, of alleen de naam van de artiest.';

  @override
  String get searchStartTitle => 'Zoek iets om te draaien';

  @override
  String get searchStartBody =>
      'Doorzoekt YouTube Music — er komen alleen nummers terug, nooit video\'s van iets anders.';

  @override
  String get libPlaylists => 'Afspeellijsten';

  @override
  String get libSongs => 'Nummers';

  @override
  String get libArtists => 'Artiesten';

  @override
  String get libLiked => 'Geliket';

  @override
  String get libDownloads => 'Downloads';

  @override
  String get libImported => 'Geïmporteerd';

  @override
  String get libLikedSongs => 'Gelikete nummers';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nummers',
      one: '1 nummer',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'Mijn eigen bestanden';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bestanden',
      one: '1 bestand',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nieuwe afspeellijst';

  @override
  String get libMakeOne => 'Maak er een';

  @override
  String get libSortRecent => 'Onlangs toegevoegd';

  @override
  String get libSortTitle => 'Titel';

  @override
  String get libSortArtist => 'Artiest';

  @override
  String get libSortPlays => 'Meest gespeeld';

  @override
  String get sheetNotForMe => 'Niets voor mij';

  @override
  String get sheetNotForMeSub => 'Dit nooit meer aanraden';

  @override
  String get sheetBlocked => 'Geblokkeerd — tik om weer toe te staan';

  @override
  String get sheetBlockedSub => 'Mag weer in aanbevelingen verschijnen';

  @override
  String get sheetPlayNext => 'Hierna afspelen';

  @override
  String get sheetAddToPlaylist => 'Aan afspeellijst toevoegen';

  @override
  String get sheetDownloaded => 'Gedownload';

  @override
  String get sheetRemoveFile => 'Tik om het bestand te verwijderen';

  @override
  String get sheetDownload => 'Downloaden';

  @override
  String get sheetKeepOffline => 'Offline bewaren';

  @override
  String get sheetRadio => 'Radio starten';

  @override
  String get sheetRadioSub => 'Een wachtrij rond dit nummer';

  @override
  String get sheetQueue => 'Wachtrij';

  @override
  String get sheetSleepTimer => 'Slaaptimer';

  @override
  String get sheetSleepOff => 'Uit';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minuten';
  }

  @override
  String get sheetSleepEndOfTrack => 'Einde van dit nummer';

  @override
  String sheetSleepSet(int count) {
    return 'Muziek stopt over $count min';
  }

  @override
  String get tasteTitle => 'Jouw smaak';

  @override
  String get tasteRetrain => 'Opnieuw trainen';

  @override
  String get tasteRetraining => 'Opnieuw trainen op je geschiedenis…';

  @override
  String get tasteRetrained => 'De AI heeft haar model opnieuw gebouwd.';

  @override
  String tasteConfidence(int percent) {
    return 'Zekerheid $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays keer gespeeld · $skips overgeslagen · $likes likes';
  }

  @override
  String get tasteEmptySummary => 'Speel een paar nummers en dit vult zich.';

  @override
  String get tasteKeepLearning => 'Blijf leren terwijl ik luister';

  @override
  String get tasteKeepLearningSub =>
      'Zet uit om het huidige profiel te bevriezen';

  @override
  String get tasteDownloadsTitle => 'Downloads die de AI regelt';

  @override
  String get tasteDownloadsSub =>
      'Muziek belandt op het apparaat zonder dat je erom vraagt';

  @override
  String get tasteDownloadLikes => 'Alles downloaden wat ik like';

  @override
  String get tasteDownloadLikesSub =>
      'Tik op het hartje en het bestand blijft offline bewaard';

  @override
  String get tasteAiInstall => 'De AI mag zelf muziek installeren';

  @override
  String get tasteAiInstallSub => 'Ze haalt nummers waar ze zeker van is';

  @override
  String get tasteWhatItThinks => 'Wat ze denkt dat je leuk vindt';

  @override
  String get tasteWhatItThinksSub =>
      'Geleerd van afspelen, overslaan, likes en herhalingen';

  @override
  String get tasteArtists => 'Artiesten waarop ze leunt';

  @override
  String get tasteWhenYouListen => 'Wanneer je luistert';

  @override
  String get tasteWhenYouListenSub =>
      'Afspelen per uur — het huidige uur weegt zwaarder';

  @override
  String get tasteDecades => 'Decennia';

  @override
  String get tasteTune => 'De aanbevelingen bijstellen';

  @override
  String get tasteTuneSub => 'Werkt bij de volgende verversing van Start';

  @override
  String get tasteDiscovery => 'Ontdekking';

  @override
  String get tasteDiscoverySub => 'Vertrouwd ↔ nooit gehoord';

  @override
  String get tasteEnergy => 'Energie';

  @override
  String get tasteEnergySub => 'Rustig ↔ hard';

  @override
  String get tasteRecency => 'Actualiteit';

  @override
  String get tasteRecencySub => 'Tijdloos ↔ gloednieuw';

  @override
  String get tasteNostalgia => 'Nostalgie';

  @override
  String get tasteNostalgiaSub =>
      'Hoe lang voordat een oude favoriet als vergeten telt';

  @override
  String get tasteSignals => 'Signalen die ze mag gebruiken';

  @override
  String get tasteSignalsSub => 'Alles blijft op dit apparaat';

  @override
  String get tasteUseHistory => 'Wat ik gespeeld heb';

  @override
  String get tasteUseSkips => 'Wat ik oversla';

  @override
  String get tasteUseTime => 'Tijd van de dag';

  @override
  String get tasteUseYouTube => 'Suggesties van YouTube';

  @override
  String get tasteAlwaysMore => 'Altijd meer van';

  @override
  String get tasteNeverAgain => 'Nooit meer';

  @override
  String get tasteAddArtist => 'Een artiest toevoegen';

  @override
  String get tasteMoreOfPrompt => 'Altijd meer van…';

  @override
  String get tasteNeverAgainPrompt => 'Nooit meer…';

  @override
  String get tasteReset => 'Wissen wat ze geleerd heeft';

  @override
  String get tasteResetSub => 'Je muziek blijft; het profiel begint bij nul';

  @override
  String get trainCard => 'Train haar door te beoordelen';

  @override
  String get trainCardSub =>
      'Veeg door echte nummers. Rechts voor meer zoals dit, links voor nooit meer. Twee minuten hier doen meer dan een week luisteren.';

  @override
  String get trainStart => 'Start een trainingsronde';

  @override
  String get trainTitle => 'Trainingsronde';

  @override
  String get trainQuestion => 'Zou je dit op je startscherm willen?';

  @override
  String get trainMoreLikeThis => 'Meer zoals dit';

  @override
  String get trainNeverAgain => 'Nooit meer';

  @override
  String get trainDone => 'Ronde klaar';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked gehouden · $blocked geblokkeerd. Zekerheid $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Terug naar je smaak';

  @override
  String get trainNothingTitle => 'Nog niets te beoordelen';

  @override
  String get trainNothingBody =>
      'Voeg muziek toe of laat de AI eerst kandidaten ophalen, en kom dan terug.';

  @override
  String get trainLeaveTitle => 'Trainingsronde verlaten?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Als je nu weggaat, gooit de AI alles van deze ronde weg — alle $count nummers die je net beoordeeld hebt.',
      one:
          'Als je nu weggaat, gooit de AI alles van deze ronde weg — het 1 nummer dat je net beoordeeld hebt.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Doorgaan met trainen';

  @override
  String get trainDiscard => 'Weggooien en verlaten';

  @override
  String get setTitle => 'Instellingen';

  @override
  String get setAppearance => 'Uiterlijk';

  @override
  String get setTheme => 'Thema';

  @override
  String get setThemeSystem => 'Systeem volgen';

  @override
  String get setThemeLight => 'Licht';

  @override
  String get setThemeDark => 'Donker';

  @override
  String get setPureBlack => 'Puur zwart';

  @override
  String get setPureBlackSub => 'Bespaart stroom op een OLED-scherm';

  @override
  String get setAccent => 'Accentkleur';

  @override
  String get setAccentArtwork => 'Uit de hoes';

  @override
  String get setAccentFixed => 'Een kleur die ik kies';

  @override
  String get setLanguage => 'Taal';

  @override
  String get setLanguageSystem => 'Systeem volgen';

  @override
  String get setAccessibility => 'Toegankelijkheid';

  @override
  String get setTextSize => 'Tekstgrootte';

  @override
  String get setTextSizeSub => 'Boven op je systeeminstelling';

  @override
  String get setReduceMotion => 'Minder beweging';

  @override
  String get setReduceMotionSub =>
      'Stopt de balkjes, de visualizer en paginaovergangen';

  @override
  String get setHighContrast => 'Hoog contrast';

  @override
  String get setHighContrastSub => 'Sterkere scheiding en zichtbare randen';

  @override
  String get setBoldText => 'Vette tekst';

  @override
  String get setPlayback => 'Afspelen';

  @override
  String get setAutoRadio => 'Houd de muziek gaande';

  @override
  String get setAutoRadioSub =>
      'Als de wachtrij op is, gaat een radio verder vanaf het laatste nummer';

  @override
  String get setSmartShuffle => 'Slimme shuffle';

  @override
  String get setSmartShuffleSub => 'Schudt op smaak in plaats van willekeurig';

  @override
  String get setResume => 'Ga verder waar ik gebleven was';

  @override
  String get setResumeSub => 'Zet de wachtrij terug bij het openen, gepauzeerd';

  @override
  String get setDataSaver => 'Databesparing buiten wifi';

  @override
  String get setDataSaverSub =>
      'Beperkt streams en downloads tot 128 kbps op mobiele data';

  @override
  String get setHaptics => 'Trilfeedback';

  @override
  String get setShowReasons => 'Laat zien waarom iets is aangeraden';

  @override
  String get setSkipSilence => 'Stiltes overslaan';

  @override
  String get setQuality => 'Geluidskwaliteit';

  @override
  String get setQualityLow => 'Laag · 64 kbps';

  @override
  String get setQualityNormal => 'Normaal · 128 kbps';

  @override
  String get setQualityHigh => 'Hoog · 192 kbps';

  @override
  String get setQualityBest => 'Best beschikbaar';

  @override
  String get setStorage => 'Downloads en opslag';

  @override
  String get setWifiOnly => 'Alleen downloaden op wifi';

  @override
  String get setDailyLimit => 'Daglimiet voor de AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count nummers per dag';
  }

  @override
  String get setBudget => 'Ruimte die de AI mag gebruiken';

  @override
  String setUsed(Object size) {
    return '$size in gebruik door downloads';
  }

  @override
  String get setYourMusic => 'Jouw muziek';

  @override
  String get setImport => 'Muziek van dit apparaat toevoegen';

  @override
  String get setImportSub => 'Kies mappen of losse bestanden';

  @override
  String get setCleanup => 'Ontbrekende bestanden opruimen';

  @override
  String get setCleanupSub => 'Verwijdert nummers waarvan het bestand weg is';

  @override
  String setCleanupDone(int count) {
    return '$count ontbrekende bestanden verwijderd.';
  }

  @override
  String get setExport => 'Mijn smaak naar een ander apparaat sturen';

  @override
  String get setExportSub =>
      'Schrijft een overdrachtsbestand: likes, keren gespeeld en alles wat de AI leerde';

  @override
  String get setImportTaste => 'Smaak van een ander apparaat laden';

  @override
  String get setImportTasteSub =>
      'Voegt het samen met wat dit apparaat al weet';

  @override
  String get setAbout => 'Over';

  @override
  String get setAboutBody =>
      'Muziek van YouTube en uit je eigen bestanden. De AI draait volledig op dit apparaat — er gaat niets weg.';

  @override
  String get setShare => 'TuneBox delen';

  @override
  String get setShareBody => 'Stuur de link naar een vriend';

  @override
  String get setShareText =>
      'TuneBox: een gratis muziekspeler die je smaak leert kennen, op je eigen toestel. Geen account, geen reclame: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link gekopieerd';

  @override
  String get setSource => 'Broncode';

  @override
  String get importTitle => 'Muziek toevoegen';

  @override
  String get importPickFolder => 'Kies een map';

  @override
  String get importPickFiles => 'Kies bestanden';

  @override
  String importScanning(Object file) {
    return 'Bezig met $file';
  }

  @override
  String importAdded(int count) {
    return '$count toegevoegd';
  }

  @override
  String get importDenied =>
      'Toegang geweigerd — je muziek kan niet gelezen worden.';

  @override
  String get importWatched => 'Mappen die gevolgd worden';

  @override
  String get importIosHint =>
      'Open de Bestanden-app, ga naar Op mijn iPhone → TuneBox en zet daar je muziek neer.';

  @override
  String get playerQueue => 'Wachtrij';

  @override
  String get playerUpNext => 'Hierna';

  @override
  String get playerLyrics => 'Songtekst';

  @override
  String get playerNoLyrics => 'Geen songtekst voor dit nummer.';

  @override
  String get playerRepeat => 'Herhalen';

  @override
  String get playerShuffle => 'Willekeurig';

  @override
  String errorPlayback(Object title) {
    return 'Kon “$title” niet afspelen';
  }

  @override
  String errorSkipping(Object title) {
    return '“$title” wordt overgeslagen — de stream ging niet open.';
  }

  @override
  String get undo => 'Ongedaan maken';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Op dit moment: $tags, aangevoerd door $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Op dit moment: $tags.';
  }

  @override
  String get setColour => 'Kleur';

  @override
  String get setColourSub => 'De hele app volgt dit';

  @override
  String get setCoverArt => 'Hoes';

  @override
  String get setMyColour => 'Mijn kleur';

  @override
  String get setCoverArtSub => 'Elk nummer kleurt de app naar zijn hoes.';

  @override
  String get setMyColourSub => 'Eén kleur, overal, altijd.';

  @override
  String get setPickColour => 'Kies een andere kleur';

  @override
  String get setWifiOnlyTitle => 'Alleen downloaden op wifi';

  @override
  String get setDownloadLikes => 'Alles downloaden wat ik like';

  @override
  String get setDownloadLikesSub => 'Het hartje bewaart ook het bestand';

  @override
  String get setAiInstall => 'De AI mag zelf muziek installeren';

  @override
  String get setSkipSilenceSub => 'Alleen Android';

  @override
  String get setStorageUsed => 'Ruimte in gebruik door downloads';

  @override
  String get setLibrary => 'Bibliotheek';

  @override
  String get setUpdates => 'Updates';

  @override
  String get setAutoUpdate => 'Zelf naar updates zoeken';

  @override
  String get setAutoUpdateSub =>
      'Om de paar uur, stilletjes, en downloadt op wifi. Installeren vraagt het je nog steeds.';

  @override
  String setUpdateReady(Object version) {
    return 'Update naar $version staat klaar';
  }

  @override
  String get setUpdateReadySub => 'Gedownload — tik om te installeren';

  @override
  String get setUpdateAvailableSub =>
      'Te vinden op de releases-pagina — tik om de link te kopiëren';

  @override
  String get setLinkCopied => 'Link gekopieerd';

  @override
  String get setCheckNow => 'Nu zoeken';

  @override
  String get setUpToDate => 'TuneBox is up-to-date';

  @override
  String get setChecking => 'Zoeken naar een nieuwere versie…';

  @override
  String get homeCantReach => 'YouTube is niet bereikbaar';

  @override
  String get homeOfflineHint =>
      'Controleer je verbinding. Alles wat al op dit apparaat staat, werkt nog.';

  @override
  String get actionRetry => 'Opnieuw proberen';

  @override
  String get actionClear => 'Wissen';

  @override
  String get searchFailed => 'Zoeken is mislukt';

  @override
  String get profWho => 'Wie luistert er?';

  @override
  String get profExplain =>
      'Elk profiel heeft een eigen bibliotheek, likes, afspeellijsten en smaak.';

  @override
  String get profActive => 'Actief';

  @override
  String get profRename => 'Hernoemen';

  @override
  String get profDeleteMenu => 'Profiel verwijderen';

  @override
  String get profAdd => 'Profiel toevoegen';

  @override
  String get profNew => 'Nieuw profiel';

  @override
  String get profName => 'Naam';

  @override
  String profDeleteTitle(String name) {
    return '\"$name\" verwijderen?';
  }

  @override
  String get profDeleteBody =>
      'De bibliotheek, likes, afspeellijsten en geleerde smaak worden definitief verwijderd. Muziekbestanden blijven op het apparaat.';

  @override
  String get profKeep => 'Behouden';

  @override
  String get actionOk => 'OK';

  @override
  String get actionDelete => 'Verwijderen';

  @override
  String get xferTitle => 'Verplaats je smaak';

  @override
  String xferIntro(String profile) {
    return 'Likes, afspeelbeurten en artiestregels van \"$profile\". Ontvangen voegt samen met dit profiel en kan veilig herhaald worden — er wordt niets dubbel.';
  }

  @override
  String get xferSectionWifi => 'Tussen apparaten op hetzelfde Wi-Fi';

  @override
  String get xferSend => 'Naar een apparaat in de buurt sturen';

  @override
  String get xferSendSub =>
      'Toont een code; het andere apparaat vindt dit apparaat';

  @override
  String get xferReceive => 'Van een apparaat in de buurt ontvangen';

  @override
  String get xferReceiveSub => 'Vindt zenders automatisch — jij typt de code';

  @override
  String get xferSectionFile => 'Met een bestand';

  @override
  String get xferSave => 'Opslaan in een bestand';

  @override
  String get xferSaveSub =>
      'Kies waar het heen gaat: Downloads, USB, een chat…';

  @override
  String get xferLoad => 'Laden uit een bestand';

  @override
  String get xferLoadSub => 'Elk TuneBox-smaakbestand, oud of nieuw';

  @override
  String get xferSectionText => 'Als tekst';

  @override
  String get xferCopy => 'Kopiëren als tekst';

  @override
  String get xferCopySub =>
      'Eén regel die je in elke chat of notitie kunt plakken';

  @override
  String get xferPaste => 'Tekst plakken';

  @override
  String get xferPasteSub => 'Van het klembord';

  @override
  String get xferSaveDialog => 'Sla je smaak op';

  @override
  String xferSaved(String kb) {
    return '$kb KB opgeslagen. Kies op het andere apparaat \"Laden uit een bestand\".';
  }

  @override
  String xferSaveFailed(String error) {
    return 'Opslaan mislukt: $error';
  }

  @override
  String xferFileUnreadable(String error) {
    return 'Dat bestand kon niet als smaak worden gelezen: $error';
  }

  @override
  String xferCopied(String kb) {
    return 'Gekopieerd ($kb KB tekst). Plak het op het andere apparaat met \"Tekst plakken\".';
  }

  @override
  String xferCopyFailed(String error) {
    return 'Kopiëren mislukt: $error';
  }

  @override
  String get xferClipboardEmpty =>
      'Het klembord bevat geen TuneBox-smaak. Kopieer die eerst op het andere apparaat.';

  @override
  String get xferNewerTitle => 'Nieuwer dan deze app';

  @override
  String get xferNewerBody =>
      'Deze smaak is gemaakt met een nieuwere versie van TuneBox. Werk eerst dit apparaat bij.';

  @override
  String xferMergeTitle(String profile) {
    return 'Samenvoegen met \"$profile\"?';
  }

  @override
  String xferMergeBody(
    String source,
    int songs,
    int liked,
    int plays,
    int rules,
  ) {
    return 'Van $source:\n• $songs nummers, $liked geliked\n• $plays afspeelbeurten\n• $rules artiestregels\n\nJe eigen likes en geschiedenis blijven behouden. Twee keer doen verandert niets.';
  }

  @override
  String get xferSourceFile => 'het bestand';

  @override
  String get xferSourceClipboard => 'het klembord';

  @override
  String get xferMerge => 'Samenvoegen';

  @override
  String get xferMerging => 'Samenvoegen…';

  @override
  String xferMerged(String summary) {
    return 'Samengevoegd: $summary';
  }

  @override
  String xferMergeFailed(String error) {
    return 'Samenvoegen mislukt: $error';
  }

  @override
  String get xferSendTitle => 'Verstuur je smaak';

  @override
  String xferCouldNotStart(String error) {
    return 'Starten mislukt: $error';
  }

  @override
  String get xferSent => 'Verzonden. Het andere apparaat heeft je smaak.';

  @override
  String get xferClosed =>
      'Gesloten — de code is verlopen of te vaak verkeerd geraden. Begin opnieuw voor een nieuwe.';

  @override
  String get xferSendHow =>
      'Open op het andere apparaat Instellingen → Verplaats je smaak → Ontvangen, kies dit apparaat en typ:';

  @override
  String get xferNoWifi =>
      'Geen Wi-Fi-adres gevonden — verbind beide apparaten met hetzelfde netwerk.';

  @override
  String xferThisDevice(String addresses, int port) {
    return 'Dit apparaat: $addresses (poort $port)';
  }

  @override
  String get xferWaiting =>
      'Wachten op het andere apparaat… (sluit na 5 minuten)';

  @override
  String xferCodeFor(String name) {
    return 'Code getoond op $name';
  }

  @override
  String get xferCodeLabel => 'Code van 6 cijfers';

  @override
  String get xferReceiveAction => 'Ontvangen';

  @override
  String xferReceivingFrom(String name) {
    return 'Ontvangen van $name…';
  }

  @override
  String get xferWrongCode =>
      'Verkeerde code. Controleer het nummer op het andere apparaat.';

  @override
  String get xferNotTaste => 'Dat was geen TuneBox-smaak.';

  @override
  String xferCouldNotReach(String error) {
    return 'Niet bereikbaar: $error';
  }

  @override
  String xferLooking(String host) {
    return 'Zoeken naar $host…';
  }

  @override
  String xferNothingAt(String host) {
    return 'Niets antwoordde op $host. Is Versturen daar open?';
  }

  @override
  String get xferReceiveTitle => 'Een smaak ontvangen';

  @override
  String get xferOpenSendFirst =>
      'Open eerst Versturen op het andere apparaat (hetzelfde Wi-Fi).';

  @override
  String get xferSearching => 'Zoeken naar apparaten in de buurt…';

  @override
  String get xferNoSender => 'Nog geen zender gevonden.';

  @override
  String get xferSearchAgain => 'Opnieuw zoeken';

  @override
  String get xferTypeAddress => 'Niet in de lijst? Typ het adres';

  @override
  String get xferConnect => 'Verbinden';

  @override
  String get qUndo => 'Ongedaan maken';

  @override
  String qRemoved(String title) {
    return '\"$title\" verwijderd';
  }

  @override
  String get qCleared => 'Wachtrij gewist';

  @override
  String qSaved(String songs, String name) {
    return '$songs opgeslagen in \"$name\"';
  }

  @override
  String qTitle(int count) {
    return 'Wachtrij · $count';
  }

  @override
  String get qSavePlaylist => 'Opslaan als afspeellijst';

  @override
  String get qClear => 'Wachtrij wissen';

  @override
  String get qClearSub => 'Houdt het nummer dat speelt';

  @override
  String get qEmptyTitle => 'De wachtrij is leeg';

  @override
  String get qEmptyBody => 'Speel iets af en hij vult zich hier.';

  @override
  String get qDrag => 'Sleep om te herschikken';

  @override
  String plDeleted(String name) {
    return '\"$name\" verwijderd';
  }

  @override
  String get plDeleteSub => 'De nummers blijven in je bibliotheek';

  @override
  String get plDelete => 'Afspeellijst verwijderen';

  @override
  String get plRenameOrDelete => 'Hernoemen of verwijderen';

  @override
  String get aLibListView => 'Lijstweergave';

  @override
  String get aLibGridView => 'Rasterweergave';

  @override
  String get aLibSortAlpha => 'A–Z';

  @override
  String get aLibSortYear => 'Jaar';

  @override
  String get aLibNothingYet => 'Hier is nog niets';

  @override
  String get aLibImportedEmptyBody =>
      'Voeg de muziek toe die al op dit apparaat staat.';

  @override
  String get aLibEmptyBody =>
      'Speel of download iets en het komt hier terecht.';

  @override
  String aLibBannerSummary(String songs, String size) {
    return '$songs · $size op dit apparaat';
  }

  @override
  String get aLibOfflineNote => 'Deze spelen zonder enige verbinding';

  @override
  String aLibAiPicked(String count) {
    return '$count daarvan koos de AI voor jou';
  }

  @override
  String get aPlaylistLabel => 'Afspeellijst';

  @override
  String get aLibNoArtists => 'Nog geen artiesten';

  @override
  String get aLibNoArtistsBody =>
      'Speel een paar nummers en ze verzamelen zich hier.';

  @override
  String get aHomeSearch => 'Zoeken';

  @override
  String get aHomeInYourLibrary => 'In je bibliotheek';

  @override
  String get aHomeInYourLibrarySub => 'Wat je tot nu toe hebt toegevoegd';

  @override
  String get aSearchHintDots => 'Nummers, artiesten, albums…';

  @override
  String get aSearchEmptyBody =>
      'Probeer een andere spelling of plak een YouTube-link.';

  @override
  String get aSearchTrySomething => 'Probeer iets';

  @override
  String get aSearchLearnedFrom => 'Van wat de AI heeft geleerd';

  @override
  String get aSearchAnything => 'Zoek alles op YouTube';

  @override
  String get aSearchSeedTap => 'Tik op een startpunt om rond te snuffelen';

  @override
  String get aSearchArtistsYouPlay => 'Artiesten die je luistert';

  @override
  String aSearchAffinity(String percent) {
    return '$percent% affiniteit';
  }

  @override
  String get aArtistAlwaysMore => 'Altijd meer hiervan';

  @override
  String get aArtistClearRule => 'Regel wissen';

  @override
  String get aArtistBoosted => 'voorgetrokken';

  @override
  String get aArtistBlocked => 'geblokkeerd';

  @override
  String get aArtistRadio => 'Radio';

  @override
  String get aPlLikedSub => 'Alles waar je het hartje bij hebt aangetikt';

  @override
  String get aPlDownloadsSub => 'Speelt zonder verbinding';

  @override
  String get aPlImportedSub => 'Muziek die je van dit apparaat hebt toegevoegd';

  @override
  String get aPlEmptyTitle => 'Voorlopig leeg';

  @override
  String get aPlEmptyBody => 'Voeg nummers toe via het ⋮-menu bij elk nummer.';

  @override
  String aPlDownloading(String songs) {
    return '$songs downloaden…';
  }

  @override
  String bTasteAiBudgetSub(String count, String gb) {
    return 'Tot $count nummers per dag, $gb GB budget';
  }

  @override
  String get bTasteSongsPerDay => 'Nummers per dag';

  @override
  String get bTasteStorageMayUse => 'Opslag die ze mag gebruiken';

  @override
  String bTasteGb(String gb) {
    return '$gb GB';
  }

  @override
  String get bTasteNothingToDownload =>
      'Op dit moment niets nieuws om te downloaden.';

  @override
  String bTasteQueuedSongs(String count) {
    return '$count nummers die de AI koos staan in de wachtrij.';
  }

  @override
  String get bTasteFetchNow => 'Nu ophalen';

  @override
  String get bTasteNotEnoughListening =>
      'Nog niet genoeg geluisterd. Speel een paar nummers af of start hieronder een trainingsronde.';

  @override
  String get bTasteFamiliar => 'Vertrouwd';

  @override
  String get bTasteDiscoveryCap1 => 'Vooral nummers die je al kent';

  @override
  String get bTasteDiscoveryCap2 => 'Een paar nieuwe nummers per plank';

  @override
  String get bTasteDiscoveryCap3 => 'De helft van Home is nieuw voor je';

  @override
  String get bTasteDiscoveryCap4 => 'Laat me dingen horen die ik nooit hoorde';

  @override
  String get bTasteCalm => 'Rustig';

  @override
  String get bTasteHighEnergy => 'Vol energie';

  @override
  String get bTasteEnergyCaption => 'Duwt de keuzes richting luider en sneller';

  @override
  String get bTasteTimeless => 'Tijdloos';

  @override
  String get bTasteFresh => 'Vers';

  @override
  String get bTasteRecencyCaption =>
      'Hoe zwaar \"Nieuw ⭐\" op de releasedatum leunt';

  @override
  String get bTasteRarely => 'Zelden';

  @override
  String get bTasteOften => 'Vaak';

  @override
  String get bTasteNostalgiaCaption =>
      'Hoe diep te graven naar vergeten oude hits';

  @override
  String get bTasteListeningHistory => 'Luistergeschiedenis';

  @override
  String bTastePlaysRecorded(String count) {
    return '$count afspeelbeurten vastgelegd';
  }

  @override
  String get bTasteSkips => 'Overgeslagen';

  @override
  String bTasteSkipsCounted(String count) {
    return '$count keer overslaan telt tegen nummers';
  }

  @override
  String get bTasteTimeOfDaySub => 'Andere keuzes om 08:00 en 23:00';

  @override
  String get bTasteYoutubeRelated => 'Gerelateerde YouTube-nummers';

  @override
  String get bTasteYoutubeRelatedSub =>
      'Haalt nummers binnen die je nog niet hebt';

  @override
  String get bTasteResetSub =>
      'Wist afspeelbeurten, overslagen en gewichten. Bibliotheek blijft.';

  @override
  String get bTasteResetDialogTitle => 'AI resetten?';

  @override
  String get bTasteResetDialogBody =>
      'Je bibliotheek, afspeellijsten en downloads blijven. Alles wat ze over jou leerde wordt gewist en Home gaat terug naar de standaard.';

  @override
  String get bTasteResetAction => 'Resetten';

  @override
  String get bTrainHearIt => 'Beluister';

  @override
  String bImportDoneAdded(String count) {
    return 'Klaar · $count nieuwe nummers toegevoegd';
  }

  @override
  String bImportScanningProgress(String scanned, String total) {
    return 'Scannen · $scanned van $total bestanden';
  }

  @override
  String get bImportWatchedFolders => 'Gevolgde mappen';

  @override
  String get bImportWatchedFoldersSub =>
      'Opnieuw gescand bij het starten van de app';

  @override
  String get bImportNoneYet =>
      'Nog geen. Kies een map en die wordt automatisch gevolgd.';

  @override
  String get bImportFoundOnDevice => 'Gevonden op dit apparaat';

  @override
  String get bImportFoundOnDeviceSub =>
      'Tik om te scannen en te blijven volgen';

  @override
  String get bImportYourFiles => 'Je bestanden';

  @override
  String bImportImportedSoFar(String count) {
    return '$count tot nu toe geïmporteerd';
  }

  @override
  String get bImportFilesStayNote =>
      'Bestanden blijven waar ze zijn — TuneBox indexeert ze alleen. Verwijder je een bestand, dan verdwijnt het bij de volgende scan stilletjes uit je bibliotheek.';

  @override
  String get bImportRescan => 'Opnieuw scannen';

  @override
  String get cMore => 'Meer';

  @override
  String cBlockedSnack(String title) {
    return '\"$title\" geblokkeerd — de AI mijdt het';
  }

  @override
  String get cLike => 'Leuk vinden';

  @override
  String get cUnlike => 'Niet meer leuk';

  @override
  String get cRemoveFromLiked => 'Verwijderen uit leuk';

  @override
  String get cLikeSub => 'De AI leert er meteen van';

  @override
  String get cSave => 'Opslaan';

  @override
  String get cNothingPlaying => 'Er speelt niets';

  @override
  String get cNothingPlayingBody => 'Kies een nummer en het verschijnt hier.';

  @override
  String get cPlayingFrom => 'Speelt af van';

  @override
  String get cSeek => 'Zoeken';

  @override
  String cTimeOf(String done, String total) {
    return '$done van $total';
  }

  @override
  String get cShuffleOn => 'Willekeurig: aan';

  @override
  String get cShuffleOff => 'Willekeurig: uit';

  @override
  String get cPrevious => 'Vorige';

  @override
  String get cNext => 'Volgende';

  @override
  String get cPause => 'Pauze';

  @override
  String get cRepeatOne => 'Herhalen: dit nummer';

  @override
  String get cRepeatOff => 'Herhalen: uit';

  @override
  String get cRepeatAll => 'Herhalen: hele wachtrij';

  @override
  String get cSaved => 'Opgeslagen';

  @override
  String get cAudio => 'Audio';

  @override
  String get cSpeed => 'Snelheid';

  @override
  String get cAndroidOnly => 'Alleen Android';

  @override
  String get cPlaylist => 'Afspeellijst';

  @override
  String get cSearchResults => 'Zoekresultaten';

  @override
  String get cYourLibrary => 'Jouw bibliotheek';

  @override
  String get cRadio => 'Radio';

  @override
  String get cYourQueue => 'Jouw wachtrij';

  @override
  String cDownloadFailed(String title) {
    return 'Download mislukt: $title';
  }

  @override
  String cAiDownloading(String title) {
    return 'AI downloadt $title';
  }

  @override
  String cDownloading(String title) {
    return '$title wordt gedownload';
  }

  @override
  String get cSaveQueueAs => 'Wachtrij opslaan als';

  @override
  String cProfileSwitch(String count) {
    return 'Profiel · tik om te wisselen ($count)';
  }

  @override
  String get cProfileAddAnother =>
      'Profiel · tik om nog een luisteraar toe te voegen';

  @override
  String get cUseIt => 'Gebruiken';

  @override
  String cAiBudgetSub(String daily, String gb) {
    return 'Tot $daily/dag · budget van $gb GB · aan te passen bij Jouw smaak';
  }

  @override
  String cFoldersWatched(String count) {
    return '$count mappen in de gaten gehouden';
  }

  @override
  String get cMoveTasteSub =>
      'Tussen apparaten via wifi, of met een bestand of tekst';

  @override
  String get cSearchLanguages => 'Talen zoeken';

  @override
  String cNoLanguageMatch(String query) {
    return 'Geen taal komt overeen met \"$query\"';
  }

  @override
  String addedToPlaylist(String name) {
    return 'Toegevoegd aan ‘$name’';
  }

  @override
  String get sndTitle => 'Geluid';

  @override
  String get sndSub => 'Overgang, equalizer, volume, slaaptimer';

  @override
  String get sndAll => 'Alle geluidsinstellingen';

  @override
  String get sndBetween => 'Tussen nummers';

  @override
  String get sndCrossfade => 'Overvloeien';

  @override
  String get sndGapless => 'Naadloos';

  @override
  String sndSeconds(int n) {
    return '$n s';
  }

  @override
  String get sndSmart => 'Slim overvloeien';

  @override
  String get sndSmartSub =>
      'Albums en livesets lopen door; korte nummers vloeien sneller over';

  @override
  String get sndLoudness => 'Luidheid';

  @override
  String get sndNormalize => 'Volume gelijktrekken';

  @override
  String get sndNormalizeSub =>
      'Zet nummers zachter die harder zijn gemasterd dan de rest';

  @override
  String get sndQuiet => 'Zacht';

  @override
  String get sndNormal => 'Normaal';

  @override
  String get sndLoud => 'Hard';

  @override
  String get sndEq => 'Equalizer';

  @override
  String get sndEqOn => 'Equalizer gebruiken';

  @override
  String get sndEqOnlyAndroid => 'De equalizer is beschikbaar op Android.';

  @override
  String get sndEqFor => 'Elke uitgang houdt zijn eigen geluid';

  @override
  String get sndInUse => 'in gebruik';

  @override
  String get sndSpeaker => 'Luidspreker';

  @override
  String get sndWired => 'Bedraad';

  @override
  String get sndBluetooth => 'Bluetooth';

  @override
  String get sndSavePreset => 'Opslaan als voorkeuze';

  @override
  String get sndPresetName => 'Naam van voorkeuze';

  @override
  String get sndDeletePreset => 'Voorkeuze verwijderen';

  @override
  String get sndCustom => 'Eigen';

  @override
  String get sndBoost => 'Extra volume';

  @override
  String get sndBoostSub =>
      'Helpt bij zachte telefoons en oordopjes. Te veel kan vervormen.';

  @override
  String get sndSpeedPitch => 'Snelheid en toonhoogte';

  @override
  String get sndSpeed => 'Snelheid';

  @override
  String get sndPitch => 'Toonhoogte';

  @override
  String get sndReset => 'Herstellen';

  @override
  String get eqFlat => 'Vlak';

  @override
  String get eqBass => 'Bas';

  @override
  String get eqVocal => 'Stem';

  @override
  String get eqNight => 'Nacht';

  @override
  String get eqHeadphones => 'Koptelefoon';

  @override
  String get eqCar => 'Auto';

  @override
  String get eqTreble => 'Hoog';

  @override
  String get sleepTitle => 'Slaaptimer';

  @override
  String sleepMinutes(int n) {
    return '$n min';
  }

  @override
  String get sleepEndSong => 'Einde van nummer';

  @override
  String get sleepEndQueue => 'Einde van wachtrij';

  @override
  String sleepLeft(String time) {
    return 'Stopt over $time';
  }

  @override
  String get sleepAfterSong => 'Stopt na dit nummer';

  @override
  String get sleepAfterQueue => 'Stopt als de wachtrij op is';

  @override
  String get sleepShake => 'Schud de telefoon voor 10 minuten extra';

  @override
  String get sleepCancel => 'Uitzetten';

  @override
  String get lyrRetry => 'Opnieuw';

  @override
  String get lyrOffline =>
      'Songteksten hebben de eerste keer internet nodig. Daarna werken ze offline.';

  @override
  String get lyrCredit => 'Songteksten van LRCLIB, een open communitydatabase';

  @override
  String get lyrShow => 'Songtekst tonen';

  @override
  String get lyrShowArt => 'Hoes tonen';

  @override
  String get rwTitle => 'Terugblik';

  @override
  String get rwEntry => 'Je luistergedrag als verhaal';

  @override
  String get rwWeek => 'Deze week';

  @override
  String get rwMonth => 'Deze maand';

  @override
  String get rwYear => 'Dit jaar';

  @override
  String get rwAll => 'Altijd';

  @override
  String get rwNotYet => 'Nog te weinig geluisterd';

  @override
  String get rwNotYetBody =>
      'Speel een paar nummers in deze periode en je verhaal vult zich. Probeer een langere periode.';

  @override
  String get rwShare => 'Deze kaart delen';

  @override
  String get rwShareText =>
      'Mijn luistergedrag, uit TuneBox — https://tunebox.pages.dev';

  @override
  String rwSaved(String path) {
    return 'Opgeslagen in $path';
  }

  @override
  String get rwMinutes => 'minuten muziek';

  @override
  String rwPlaysSongs(int plays, int songs) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays keer afgespeeld',
      one: '1 keer afgespeeld',
    );
    String _temp1 = intl.Intl.pluralLogic(
      songs,
      locale: localeName,
      other: '$songs verschillende nummers',
      one: '1 nummer',
    );
    return '$_temp0, $_temp1';
  }

  @override
  String rwPlays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count×',
      one: '1×',
    );
    return '$_temp0';
  }

  @override
  String rwPlaysMinutes(int plays, int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays× gespeeld',
      one: '1× gespeeld',
    );
    return '$_temp0 · $minutes min';
  }

  @override
  String get rwTopSong => 'Jouw nummer';

  @override
  String get rwTopSongs => 'Op herhaling';

  @override
  String get rwTopArtists => 'Jouw artiesten';

  @override
  String get rwSound => 'Jouw sound';

  @override
  String get rwYourHour => 'Jouw uur';

  @override
  String get rwStreak => 'Langste reeks';

  @override
  String get rwDaysInARow => 'dagen op rij met muziek';

  @override
  String rwDiscovery(int percent) {
    return '$percent% van wat je speelde was nieuw voor je';
  }

  @override
  String get rwUnskippable => 'Nooit overgeslagen';

  @override
  String get rwNeverSkipped => 'Keer op keer, geen enkele keer overgeslagen.';

  @override
  String get rwYouAre => 'Jij bent';

  @override
  String get rwExplorer => 'De ontdekker';

  @override
  String get rwExplorerSub =>
      'Bijna alles was nieuw. Je smaak blijft in beweging.';

  @override
  String get rwLoyalist => 'De trouwe fan';

  @override
  String get rwLoyalistSub =>
      'Een paar artiesten, goed beluisterd. Je weet wat je mooi vindt.';

  @override
  String get rwCollector => 'De verzamelaar';

  @override
  String get rwCollectorSub =>
      'Tientallen artiesten, zelden twee keer hetzelfde nummer.';

  @override
  String get rwRepeater => 'De herhaler';

  @override
  String get rwRepeaterSub => 'Als een nummer je pakt, dan ook echt.';

  @override
  String get rwAllRounder => 'De allrounder';

  @override
  String get rwAllRounderSub => 'Van alles wat, mooi in balans.';

  @override
  String get shelfYearAgo => 'Een jaar geleden';

  @override
  String get shelfMonthAgo => 'Een maand geleden';

  @override
  String get shelfOnThisDaySub => 'Wat je rond deze dag draaide';

  @override
  String get mixTitle => 'Beschrijf een mix';

  @override
  String get mixEntry => 'Beschrijf een mix…';

  @override
  String get mixAsk => 'Waar heb je zin in?';

  @override
  String get mixHint =>
      'regenachtige zondag, rock uit de jaren 2000, geen Linkin Park';

  @override
  String get mixPrivate =>
      'Wordt op deze telefoon gelezen. Je woorden gaan nergens heen.';

  @override
  String get mixMake => 'Maak';

  @override
  String get mixTry => 'Probeer er een';

  @override
  String get mixEx1 => 'rustige lofi om te studeren, 1 uur';

  @override
  String get mixEx2 => 'workout hip hop, steeds sneller';

  @override
  String get mixEx3 => 'synthwave uit de jaren 80 zoals The Midnight';

  @override
  String get mixEx4 => 'feest-afrobeats, 20 nummers';

  @override
  String get mixNothing => 'Daar past nog niets bij';

  @override
  String get mixNothingBody =>
      'Probeer minder voorwaarden of zet YouTube-suggesties aan bij Jouw smaak.';

  @override
  String get mixUnderstood => 'Begrepen als';

  @override
  String mixLike(String artist) {
    return 'zoals $artist';
  }

  @override
  String get mixRising => 'steeds sneller';

  @override
  String get mixFalling => 'steeds rustiger';

  @override
  String get mixSave => 'Opslaan als afspeellijst';

  @override
  String get mixSaveAs => 'Naam van de afspeellijst';

  @override
  String get mixAgain => 'Opnieuw mixen';

  @override
  String reasonMatches(String what) {
    return 'Past: $what';
  }

  @override
  String get reasonNewFind => 'Nieuwe vondst';

  @override
  String get stTitle => 'Uiterlijk-studio';

  @override
  String get stSub => 'Thema\'s, lettertypes, spelers, tabbladen, gebaren';

  @override
  String get stThemes => 'Thema\'s';

  @override
  String get stFollow => 'Mijn kleur';

  @override
  String get stType => 'Letters en vormen';

  @override
  String get stSystem => 'Systeem';

  @override
  String get stCorners => 'Hoeken';

  @override
  String get stSharp => 'Scherp';

  @override
  String get stSoft => 'Zacht';

  @override
  String get stRound => 'Rond';

  @override
  String get stDensity => 'Ruimte';

  @override
  String get stCompact => 'Compact';

  @override
  String get stComfy => 'Ruim';

  @override
  String get stPlayer => 'Speler';

  @override
  String get stClassic => 'Klassiek';

  @override
  String get stVinyl => 'Vinyl';

  @override
  String get stFullBleed => 'Grote hoes';

  @override
  String get stMinimal => 'Minimaal';

  @override
  String get stCassette => 'Cassette';

  @override
  String get stVisualizer => 'Visualizer';

  @override
  String get stSeek => 'Voortgangsbalk';

  @override
  String get stBars => 'Balken';

  @override
  String get stWave => 'Golf';

  @override
  String get stLine => 'Lijn';

  @override
  String get stThick => 'Dik';

  @override
  String get stOff => 'Uit';

  @override
  String get stLiving => 'Levende achtergrond';

  @override
  String get stLivingSub =>
      'Kleuren uit de hoes drijven langzaam achter de speler';

  @override
  String get stDoubleTap => 'Dubbeltik op de hoes om te liken';

  @override
  String get stTabs => 'Tabbladen';

  @override
  String get stTabsSub => 'Sleep om te ordenen, zet uit wat je niet gebruikt';

  @override
  String get stLabels => 'Namen tonen';

  @override
  String get stGlass => 'Matglas-navigatie';

  @override
  String get stHome => 'Indeling van Start';

  @override
  String get stHomeSub => 'Welke planken, in welke volgorde';

  @override
  String get stGestures => 'Gebaren';

  @override
  String get stSwipeRight => 'Nummer naar rechts vegen';

  @override
  String get stSwipeLeft => 'Nummer naar links vegen';

  @override
  String get stNothing => 'Niets';

  @override
  String get stShake => 'Schudden om over te slaan';

  @override
  String get stShakeSub => 'Stevig schudden speelt het volgende nummer';

  @override
  String get stShareLook => 'Deel je stijl';

  @override
  String get stCopyCode => 'Themacode kopiëren';

  @override
  String get stCodeSub =>
      'Stuur hem naar iemand; plakken geeft precies deze stijl';

  @override
  String get stPasteCode => 'Themacode plakken';

  @override
  String get stCodeCopied => 'Themacode gekopieerd';

  @override
  String get stCodeApplied => 'Nieuwe stijl toegepast';

  @override
  String get stCodeBad => 'Dat is geen TuneBox-themacode';

  @override
  String get stReset => 'Terug naar standaard';

  @override
  String swLiked(String title) {
    return '\"$title\" geliked';
  }

  @override
  String swQueued(String title) {
    return '\"$title\" komt hierna';
  }

  @override
  String get glxTitle => 'Smaakgalaxie';

  @override
  String get glxEntry => 'Je artiesten als sterrenkaart';

  @override
  String get glxHint =>
      'Grote sterren speel je het meest. Buren klinken hetzelfde. Tik op een ster.';

  @override
  String get glxLasso => 'Om een groep tekenen';

  @override
  String get glxLassoHint =>
      'Teken een lus om sterren om dat hoekje van je smaak te horen';

  @override
  String get glxLassoEmpty => 'Geen sterren binnen de lus';

  @override
  String glxLassoPlaying(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Speelt $count artiesten',
      one: 'Speelt 1 artiest',
    );
    return '$_temp0';
  }

  @override
  String get glxRecenter => 'Terug naar de hele hemel';

  @override
  String glxPlay(String artist) {
    return '$artist afspelen';
  }

  @override
  String get glxOpen => 'Artiestpagina openen';

  @override
  String get glxMore => 'Meer van deze artiest';

  @override
  String get glxNever => 'Deze artiest nooit afspelen';

  @override
  String get glxEmpty => 'Je hemel is nog donker';

  @override
  String get glxEmptyBody =>
      'Voeg nummers van een paar artiesten toe en de sterren verschijnen.';
}
