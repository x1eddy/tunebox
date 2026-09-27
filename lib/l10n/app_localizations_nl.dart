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
}
