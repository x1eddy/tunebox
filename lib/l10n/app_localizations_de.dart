// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class LDe extends L {
  LDe([String locale = 'de']) : super(locale);

  @override
  String get navHome => 'Start';

  @override
  String get navExplore => 'Entdecken';

  @override
  String get navLibrary => 'Bibliothek';

  @override
  String get navTaste => 'Dein Geschmack';

  @override
  String get actionDone => 'Fertig';

  @override
  String get actionCancel => 'Abbrechen';

  @override
  String get actionCreate => 'Erstellen';

  @override
  String get actionPlay => 'Abspielen';

  @override
  String get actionShuffle => 'Zufall';

  @override
  String get actionPlayAll => 'Alle abspielen';

  @override
  String get actionAdd => 'Hinzufügen';

  @override
  String get actionRemove => 'Entfernen';

  @override
  String get actionName => 'Name';

  @override
  String get greetingNight => 'Noch wach?';

  @override
  String get greetingMorning => 'Guten Morgen';

  @override
  String get greetingAfternoon => 'Guten Tag';

  @override
  String get greetingEvening => 'Guten Abend';

  @override
  String get homeBuilding => 'Die KI baut deine Regale…';

  @override
  String get homeOffline => 'Offline – es wird gezeigt, was auf dem Gerät ist';

  @override
  String get homeNothingYet => 'Noch nichts zu zeigen';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Regale, gerade aktualisiert',
      one: '1 Regal, gerade aktualisiert',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Regale neu bauen';

  @override
  String get homeAddMusic => 'Musik von diesem Gerät hinzufügen';

  @override
  String get homeQuickPicks => 'Schnellauswahl';

  @override
  String get homeQuickPicksSub => 'Direkt zurück zu dem, was lief';

  @override
  String get homeEmptyTitle => 'Deine Bibliothek ist leer';

  @override
  String get homeEmptyBody =>
      'Such nach etwas oder füge die Musik hinzu, die schon auf diesem Gerät liegt. Die KI lernt ab dem allerersten Titel.';

  @override
  String get homeAddMyMusic => 'Meine Musik hinzufügen';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube nicht erreichbar: $error';
  }

  @override
  String get moodFocus => 'Fokus';

  @override
  String get moodWorkout => 'Workout';

  @override
  String get moodChill => 'Chill';

  @override
  String get moodCommute => 'Pendeln';

  @override
  String get moodParty => 'Party';

  @override
  String moodBuilding(Object mood) {
    return '$mood-Mix wird gebaut…';
  }

  @override
  String moodFailed(Object error) {
    return 'Kein Glück: $error';
  }

  @override
  String get shelfRepeat => 'In Dauerschleife';

  @override
  String get shelfRepeatSub => 'Deine letzten zwei Wochen';

  @override
  String get shelfForgotten => 'Alte Lieblingslieder, die du vergessen hast';

  @override
  String get shelfForgottenSub => 'Einmal geliebt, lange nicht gehört';

  @override
  String get shelfNew => 'Neu';

  @override
  String get shelfNewSub => 'Frische Titel, die zu dir passen sollten';

  @override
  String shelfBecause(Object artist) {
    return 'Weil du $artist gehört hast';
  }

  @override
  String get shelfBecauseSub => 'Dieselbe Ecke deines Geschmacks';

  @override
  String get shelfDeep => 'Kaum angefasst';

  @override
  String get shelfDeepSub => 'In deiner Bibliothek, fast nie gespielt';

  @override
  String get shelfMix => 'Dein Mix';

  @override
  String get shelfMixSub => 'Wird bei jedem Öffnen neu gebaut';

  @override
  String get shelfAdded => 'Zuletzt hinzugefügt';

  @override
  String get shelfAddedSub => 'Downloads und importierte Dateien';

  @override
  String get shelfStarter => 'Fang hier an';

  @override
  String get shelfStarterSub =>
      'Spiel ein paar davon und die KI lernt sofort mit';

  @override
  String reasonPlays(int count) {
    return '$count Wiedergaben';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Geliked, zuletzt gehört $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count Wiedergaben, zuletzt $when';
  }

  @override
  String get reasonTopArtist =>
      'Eine deiner meistgehörten Künstlerinnen und Künstler';

  @override
  String reasonMore(Object artist) {
    return 'Mehr von $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Du kommst immer wieder zu $artist zurück';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Dein Fall von $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Zuletzt viel $tag';
  }

  @override
  String get reasonOutThisYear => 'Dieses Jahr erschienen';

  @override
  String get reasonReleasedRecently => 'Kürzlich erschienen';

  @override
  String get reasonClose => 'Nah an dem, was du gerade hörst';

  @override
  String reasonNear(Object artist) {
    return 'Liegt nah an $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nie gespielt';

  @override
  String get reasonPlayedOnce => 'Einmal gespielt';

  @override
  String get reasonPopular => 'Gerade beliebt';

  @override
  String whenYearsAgo(int count) {
    return 'vor $count J.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'vor $count Monaten';
  }

  @override
  String whenDaysAgo(int count) {
    return 'vor $count Tagen';
  }

  @override
  String get searchHint => 'Songs, Künstler, Alben';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Treffer',
      one: '1 Treffer',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Letzte Suchen';

  @override
  String get searchEmptyTitle => 'Nichts gefunden';

  @override
  String get searchEmptyBody =>
      'Versuch eine andere Schreibweise oder nur den Namen der Künstlerin bzw. des Künstlers.';

  @override
  String get searchStartTitle => 'Finde etwas zum Hören';

  @override
  String get searchStartBody =>
      'Durchsucht YouTube Music – es kommen nur Songs zurück, nie Videos von anderen Dingen.';

  @override
  String get libPlaylists => 'Playlists';

  @override
  String get libSongs => 'Songs';

  @override
  String get libArtists => 'Künstler';

  @override
  String get libLiked => 'Geliked';

  @override
  String get libDownloads => 'Downloads';

  @override
  String get libImported => 'Importiert';

  @override
  String get libLikedSongs => 'Gelikte Songs';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Songs',
      one: '1 Song',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'Meine eigenen Dateien';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Dateien',
      one: '1 Datei',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Neue Playlist';

  @override
  String get libMakeOne => 'Anlegen';

  @override
  String get libSortRecent => 'Zuletzt hinzugefügt';

  @override
  String get libSortTitle => 'Titel';

  @override
  String get libSortArtist => 'Künstler';

  @override
  String get libSortPlays => 'Meistgespielt';

  @override
  String get sheetNotForMe => 'Nichts für mich';

  @override
  String get sheetNotForMeSub => 'Nie wieder empfehlen';

  @override
  String get sheetBlocked => 'Blockiert – tippen, um es wieder zuzulassen';

  @override
  String get sheetBlockedSub => 'Darf wieder in Empfehlungen auftauchen';

  @override
  String get sheetPlayNext => 'Als Nächstes spielen';

  @override
  String get sheetAddToPlaylist => 'Zur Playlist hinzufügen';

  @override
  String get sheetDownloaded => 'Heruntergeladen';

  @override
  String get sheetRemoveFile => 'Tippen, um die Datei zu löschen';

  @override
  String get sheetDownload => 'Herunterladen';

  @override
  String get sheetKeepOffline => 'Für offline behalten';

  @override
  String get sheetRadio => 'Radio starten';

  @override
  String get sheetRadioSub => 'Eine Warteschlange rund um diesen Song';

  @override
  String get sheetQueue => 'Warteschlange';

  @override
  String get sheetSleepTimer => 'Sleeptimer';

  @override
  String get sheetSleepOff => 'Aus';

  @override
  String sheetSleepMinutes(int count) {
    return '$count Minuten';
  }

  @override
  String get sheetSleepEndOfTrack => 'Ende dieses Songs';

  @override
  String sheetSleepSet(int count) {
    return 'Musik stoppt in $count Min.';
  }

  @override
  String get tasteTitle => 'Dein Geschmack';

  @override
  String get tasteRetrain => 'Neu lernen';

  @override
  String get tasteRetraining => 'Lernt aus deinem Verlauf neu…';

  @override
  String get tasteRetrained => 'Die KI hat ihr Modell neu gebaut.';

  @override
  String tasteConfidence(int percent) {
    return 'Sicherheit $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays Wiedergaben · $skips übersprungen · $likes Likes';
  }

  @override
  String get tasteEmptySummary =>
      'Hör ein paar Songs, dann füllt sich das hier.';

  @override
  String get tasteKeepLearning => 'Weiterlernen, während ich höre';

  @override
  String get tasteKeepLearningSub =>
      'Ausschalten, um das aktuelle Profil einzufrieren';

  @override
  String get tasteDownloadsTitle => 'Downloads, die die KI übernimmt';

  @override
  String get tasteDownloadsSub =>
      'Musik landet auf dem Gerät, ohne dass du fragst';

  @override
  String get tasteDownloadLikes => 'Alles herunterladen, was ich like';

  @override
  String get tasteDownloadLikesSub =>
      'Herz antippen und die Datei wird für offline gespeichert';

  @override
  String get tasteAiInstall => 'Die KI darf Musik selbst installieren';

  @override
  String get tasteAiInstallSub =>
      'Sie holt Titel, bei denen sie sich sicher ist';

  @override
  String get tasteWhatItThinks => 'Was sie glaubt, das du magst';

  @override
  String get tasteWhatItThinksSub =>
      'Gelernt aus Wiedergaben, Skips, Likes und Wiederholungen';

  @override
  String get tasteArtists => 'Künstler, auf die sie setzt';

  @override
  String get tasteWhenYouListen => 'Wann du hörst';

  @override
  String get tasteWhenYouListenSub =>
      'Wiedergaben pro Stunde – die aktuelle Stunde zählt mehr';

  @override
  String get tasteDecades => 'Jahrzehnte';

  @override
  String get tasteTune => 'Empfehlungen einstellen';

  @override
  String get tasteTuneSub => 'Wirkt beim nächsten Aktualisieren der Startseite';

  @override
  String get tasteDiscovery => 'Entdeckung';

  @override
  String get tasteDiscoverySub => 'Vertraut ↔ nie Gehörtes';

  @override
  String get tasteEnergy => 'Energie';

  @override
  String get tasteEnergySub => 'Ruhig ↔ laut';

  @override
  String get tasteRecency => 'Aktualität';

  @override
  String get tasteRecencySub => 'Zeitlos ↔ brandneu';

  @override
  String get tasteNostalgia => 'Nostalgie';

  @override
  String get tasteNostalgiaSub =>
      'Ab wann ein alter Liebling als vergessen gilt';

  @override
  String get tasteSignals => 'Signale, die sie nutzen darf';

  @override
  String get tasteSignalsSub => 'Alles bleibt auf diesem Gerät';

  @override
  String get tasteUseHistory => 'Was ich gehört habe';

  @override
  String get tasteUseSkips => 'Was ich überspringe';

  @override
  String get tasteUseTime => 'Tageszeit';

  @override
  String get tasteUseYouTube => 'Vorschläge von YouTube';

  @override
  String get tasteAlwaysMore => 'Immer mehr davon';

  @override
  String get tasteNeverAgain => 'Nie wieder';

  @override
  String get tasteAddArtist => 'Künstler hinzufügen';

  @override
  String get tasteMoreOfPrompt => 'Immer mehr von…';

  @override
  String get tasteNeverAgainPrompt => 'Nie wieder…';

  @override
  String get tasteReset => 'Gelerntes zurücksetzen';

  @override
  String get tasteResetSub =>
      'Deine Musik bleibt; das Profil fängt bei null an';

  @override
  String get trainCard => 'Durch Bewerten trainieren';

  @override
  String get trainCardSub =>
      'Wisch dich durch echte Songs. Rechts für mehr davon, links für nie wieder. Zwei Minuten hier bringen mehr als eine Woche Hören.';

  @override
  String get trainStart => 'Trainingsrunde starten';

  @override
  String get trainTitle => 'Trainingsrunde';

  @override
  String get trainQuestion => 'Willst du das auf deiner Startseite haben?';

  @override
  String get trainMoreLikeThis => 'Mehr davon';

  @override
  String get trainNeverAgain => 'Nie wieder';

  @override
  String get trainDone => 'Runde abgeschlossen';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked behalten · $blocked blockiert. Sicherheit $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Zurück zu deinem Geschmack';

  @override
  String get trainNothingTitle => 'Noch nichts zu bewerten';

  @override
  String get trainNothingBody =>
      'Füge Musik hinzu oder lass die KI erst Vorschläge holen, dann komm zurück.';

  @override
  String get trainLeaveTitle => 'Trainingsrunde verlassen?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Wenn du jetzt gehst, verwirft die KI alles aus dieser Runde – alle $count Songs, die du gerade bewertet hast.',
      one:
          'Wenn du jetzt gehst, verwirft die KI alles aus dieser Runde – den 1 Song, den du gerade bewertet hast.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Weitertrainieren';

  @override
  String get trainDiscard => 'Verwerfen und verlassen';

  @override
  String get setTitle => 'Einstellungen';

  @override
  String get setAppearance => 'Darstellung';

  @override
  String get setTheme => 'Design';

  @override
  String get setThemeSystem => 'Wie das System';

  @override
  String get setThemeLight => 'Hell';

  @override
  String get setThemeDark => 'Dunkel';

  @override
  String get setPureBlack => 'Reines Schwarz';

  @override
  String get setPureBlackSub => 'Spart Strom auf OLED-Displays';

  @override
  String get setAccent => 'Akzentfarbe';

  @override
  String get setAccentArtwork => 'Aus dem Cover';

  @override
  String get setAccentFixed => 'Eine Farbe, die ich wähle';

  @override
  String get setLanguage => 'Sprache';

  @override
  String get setLanguageSystem => 'Wie das System';

  @override
  String get setAccessibility => 'Barrierefreiheit';

  @override
  String get setTextSize => 'Textgröße';

  @override
  String get setTextSizeSub => 'Zusätzlich zu deiner Systemeinstellung';

  @override
  String get setReduceMotion => 'Bewegung reduzieren';

  @override
  String get setReduceMotionSub =>
      'Stoppt Balken, Visualizer und Seitenübergänge';

  @override
  String get setHighContrast => 'Hoher Kontrast';

  @override
  String get setHighContrastSub => 'Stärkere Trennung und sichtbare Umrisse';

  @override
  String get setBoldText => 'Fetter Text';

  @override
  String get setPlayback => 'Wiedergabe';

  @override
  String get setAutoRadio => 'Musik am Laufen halten';

  @override
  String get setAutoRadioSub =>
      'Wenn die Warteschlange endet, läuft ein Radio ab dem letzten Song weiter';

  @override
  String get setSmartShuffle => 'Kluger Zufall';

  @override
  String get setSmartShuffleSub => 'Mischt nach Geschmack statt rein zufällig';

  @override
  String get setResume => 'Da weitermachen, wo ich aufgehört habe';

  @override
  String get setResumeSub =>
      'Stellt die Warteschlange beim Öffnen wieder her, pausiert';

  @override
  String get setDataSaver => 'Datensparen ohne WLAN';

  @override
  String get setDataSaverSub =>
      'Begrenzt Streams und Downloads im Mobilfunk auf 128 kbit/s';

  @override
  String get setHaptics => 'Haptisches Feedback';

  @override
  String get setShowReasons => 'Zeigen, warum etwas empfohlen wurde';

  @override
  String get setSkipSilence => 'Stille überspringen';

  @override
  String get setQuality => 'Audioqualität';

  @override
  String get setQualityLow => 'Niedrig · 64 kbit/s';

  @override
  String get setQualityNormal => 'Normal · 128 kbit/s';

  @override
  String get setQualityHigh => 'Hoch · 192 kbit/s';

  @override
  String get setQualityBest => 'Beste verfügbare';

  @override
  String get setStorage => 'Downloads und Speicher';

  @override
  String get setWifiOnly => 'Nur im WLAN herunterladen';

  @override
  String get setDailyLimit => 'Tageslimit für die KI';

  @override
  String setDailyLimitSub(int count) {
    return '$count Songs pro Tag';
  }

  @override
  String get setBudget => 'Speicher, den die KI nutzen darf';

  @override
  String setUsed(Object size) {
    return '$size von Downloads belegt';
  }

  @override
  String get setYourMusic => 'Deine Musik';

  @override
  String get setImport => 'Musik von diesem Gerät hinzufügen';

  @override
  String get setImportSub => 'Ordner oder einzelne Dateien auswählen';

  @override
  String get setCleanup => 'Fehlende Dateien aufräumen';

  @override
  String get setCleanupSub => 'Songs entfernen, deren Datei weg ist';

  @override
  String setCleanupDone(int count) {
    return '$count fehlende Dateien entfernt.';
  }

  @override
  String get setExport => 'Meinen Geschmack an ein anderes Gerät senden';

  @override
  String get setExportSub =>
      'Schreibt eine Übertragungsdatei: Likes, Wiedergaben und alles Gelernte';

  @override
  String get setImportTaste => 'Geschmack von einem anderen Gerät laden';

  @override
  String get setImportTasteSub =>
      'Wird mit dem zusammengeführt, was dieses Gerät weiß';

  @override
  String get setAbout => 'Über';

  @override
  String get setAboutBody =>
      'Musik von YouTube und aus deinen eigenen Dateien. Die KI läuft komplett auf diesem Gerät – nichts verlässt es.';

  @override
  String get setSource => 'Quellcode';

  @override
  String get importTitle => 'Musik hinzufügen';

  @override
  String get importPickFolder => 'Ordner wählen';

  @override
  String get importPickFiles => 'Dateien wählen';

  @override
  String importScanning(Object file) {
    return 'Suche in $file';
  }

  @override
  String importAdded(int count) {
    return '$count hinzugefügt';
  }

  @override
  String get importDenied =>
      'Zugriff verweigert – deine Musik kann nicht gelesen werden.';

  @override
  String get importWatched => 'Beobachtete Ordner';

  @override
  String get importIosHint =>
      'Öffne die Dateien-App, geh zu Auf meinem iPhone → TuneBox und leg die Musik dort ab.';

  @override
  String get playerQueue => 'Warteschlange';

  @override
  String get playerUpNext => 'Als Nächstes';

  @override
  String get playerLyrics => 'Songtext';

  @override
  String get playerNoLyrics => 'Für diesen Song gibt es keinen Text.';

  @override
  String get playerRepeat => 'Wiederholen';

  @override
  String get playerShuffle => 'Zufall';

  @override
  String errorPlayback(Object title) {
    return '„$title“ konnte nicht abgespielt werden';
  }

  @override
  String errorSkipping(Object title) {
    return '„$title“ wird übersprungen – der Stream ließ sich nicht öffnen.';
  }

  @override
  String get undo => 'Rückgängig';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Gerade: $tags, angeführt von $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Gerade: $tags.';
  }

  @override
  String get setColour => 'Farbe';

  @override
  String get setColourSub => 'Die ganze App richtet sich danach';

  @override
  String get setCoverArt => 'Cover';

  @override
  String get setMyColour => 'Meine Farbe';

  @override
  String get setCoverArtSub => 'Jeder Song färbt die App nach seinem Cover.';

  @override
  String get setMyColourSub => 'Eine Farbe, überall, die ganze Zeit.';

  @override
  String get setPickColour => 'Beliebige Farbe wählen';

  @override
  String get setWifiOnlyTitle => 'Nur im WLAN herunterladen';

  @override
  String get setDownloadLikes => 'Alles herunterladen, was ich like';

  @override
  String get setDownloadLikesSub => 'Das Herz speichert auch die Datei';

  @override
  String get setAiInstall => 'Die KI darf Musik selbst installieren';

  @override
  String get setSkipSilenceSub => 'Nur Android';

  @override
  String get setStorageUsed => 'Von Downloads belegter Speicher';

  @override
  String get setLibrary => 'Bibliothek';

  @override
  String get setUpdates => 'Updates';

  @override
  String get setAutoUpdate => 'Selbst nach Updates suchen';

  @override
  String get setAutoUpdateSub =>
      'Alle paar Stunden, im Stillen, und lädt im WLAN herunter. Das Installieren fragt weiterhin nach.';

  @override
  String setUpdateReady(Object version) {
    return 'Update auf $version ist bereit';
  }

  @override
  String get setUpdateReadySub => 'Heruntergeladen – zum Installieren tippen';

  @override
  String get setUpdateAvailableSub =>
      'Auf der Releases-Seite verfügbar – zum Kopieren des Links tippen';

  @override
  String get setLinkCopied => 'Link kopiert';

  @override
  String get setCheckNow => 'Jetzt suchen';

  @override
  String get setUpToDate => 'TuneBox ist aktuell';

  @override
  String get setChecking => 'Suche nach einer neueren Version…';

  @override
  String get homeCantReach => 'YouTube nicht erreichbar';

  @override
  String get homeOfflineHint =>
      'Prüfe deine Verbindung. Alles, was schon auf dem Gerät ist, funktioniert weiter.';

  @override
  String get actionRetry => 'Erneut versuchen';

  @override
  String get actionClear => 'Leeren';

  @override
  String get searchFailed => 'Die Suche hat nicht geklappt';

  @override
  String get profWho => 'Wer hört gerade zu?';

  @override
  String get profExplain =>
      'Jedes Profil hat seine eigene Mediathek, Likes, Playlists und seinen eigenen Geschmack.';

  @override
  String get profActive => 'Aktiv';

  @override
  String get profRename => 'Umbenennen';

  @override
  String get profDeleteMenu => 'Profil löschen';

  @override
  String get profAdd => 'Profil hinzufügen';

  @override
  String get profNew => 'Neues Profil';

  @override
  String get profName => 'Name';

  @override
  String profDeleteTitle(String name) {
    return '\"$name\" löschen?';
  }

  @override
  String get profDeleteBody =>
      'Bibliothek, Likes, Playlists und gelernter Geschmack werden endgültig entfernt. Die Musikdateien bleiben auf dem Gerät.';

  @override
  String get profKeep => 'Behalten';

  @override
  String get actionOk => 'OK';

  @override
  String get actionDelete => 'Löschen';

  @override
  String get xferTitle => 'Geschmack übertragen';

  @override
  String xferIntro(String profile) {
    return 'Likes, Wiedergaben und Künstlerregeln von \"$profile\". Beim Empfangen wird in dieses Profil zusammengeführt – du kannst es beliebig wiederholen, nichts wird doppelt.';
  }

  @override
  String get xferSectionWifi => 'Zwischen Geräten im selben Wi-Fi';

  @override
  String get xferSend => 'An ein Gerät in der Nähe senden';

  @override
  String get xferSendSub => 'Zeigt einen Code; das andere Gerät findet dieses';

  @override
  String get xferReceive => 'Von einem Gerät in der Nähe empfangen';

  @override
  String get xferReceiveSub =>
      'Findet Sender automatisch – du gibst den Code ein';

  @override
  String get xferSectionFile => 'Mit einer Datei';

  @override
  String get xferSave => 'In Datei speichern';

  @override
  String get xferSaveSub => 'Wähle das Ziel: Downloads, USB, ein Chat …';

  @override
  String get xferLoad => 'Aus Datei laden';

  @override
  String get xferLoadSub => 'Jede TuneBox-Geschmacksdatei, alt oder neu';

  @override
  String get xferSectionText => 'Als Text';

  @override
  String get xferCopy => 'Als Text kopieren';

  @override
  String get xferCopySub =>
      'Eine Zeile, die du in jeden Chat oder jede Notiz einfügen kannst';

  @override
  String get xferPaste => 'Text einfügen';

  @override
  String get xferPasteSub => 'Aus der Zwischenablage';

  @override
  String get xferSaveDialog => 'Geschmack speichern';

  @override
  String xferSaved(String kb) {
    return '$kb KB gespeichert. Wähle auf dem anderen Gerät \"Aus Datei laden\".';
  }

  @override
  String xferSaveFailed(String error) {
    return 'Speichern fehlgeschlagen: $error';
  }

  @override
  String xferFileUnreadable(String error) {
    return 'Diese Datei konnte nicht als Geschmack gelesen werden: $error';
  }

  @override
  String xferCopied(String kb) {
    return 'Kopiert ($kb KB Text). Füge ihn auf dem anderen Gerät mit \"Text einfügen\" ein.';
  }

  @override
  String xferCopyFailed(String error) {
    return 'Kopieren fehlgeschlagen: $error';
  }

  @override
  String get xferClipboardEmpty =>
      'Die Zwischenablage enthält keinen TuneBox-Geschmack. Kopiere ihn zuerst auf dem anderen Gerät.';

  @override
  String get xferNewerTitle => 'Neuer als diese App';

  @override
  String get xferNewerBody =>
      'Dieser Geschmack wurde mit einer neueren TuneBox-Version erstellt. Aktualisiere zuerst dieses Gerät.';

  @override
  String xferMergeTitle(String profile) {
    return 'In \"$profile\" zusammenführen?';
  }

  @override
  String xferMergeBody(
    String source,
    int songs,
    int liked,
    int plays,
    int rules,
  ) {
    return 'Von $source:\n• $songs Songs, $liked mit Like\n• $plays Wiedergaben\n• $rules Künstlerregeln\n\nDeine eigenen Likes und dein Verlauf bleiben erhalten. Zweimal ausführen ändert nichts.';
  }

  @override
  String get xferSourceFile => 'der Datei';

  @override
  String get xferSourceClipboard => 'der Zwischenablage';

  @override
  String get xferMerge => 'Zusammenführen';

  @override
  String get xferMerging => 'Wird zusammengeführt …';

  @override
  String xferMerged(String summary) {
    return 'Zusammengeführt: $summary';
  }

  @override
  String xferMergeFailed(String error) {
    return 'Zusammenführen fehlgeschlagen: $error';
  }

  @override
  String get xferSendTitle => 'Geschmack senden';

  @override
  String xferCouldNotStart(String error) {
    return 'Start fehlgeschlagen: $error';
  }

  @override
  String get xferSent => 'Gesendet. Das andere Gerät hat deinen Geschmack.';

  @override
  String get xferClosed =>
      'Geschlossen – der Code ist abgelaufen oder wurde zu oft falsch eingegeben. Starte neu für einen neuen Code.';

  @override
  String get xferSendHow =>
      'Öffne auf dem anderen Gerät Einstellungen → Geschmack übertragen → Empfangen, wähle dieses Gerät und gib ein:';

  @override
  String get xferNoWifi =>
      'Keine Wi-Fi-Adresse gefunden – verbinde beide Geräte mit demselben Netzwerk.';

  @override
  String xferThisDevice(String addresses, int port) {
    return 'Dieses Gerät: $addresses (Port $port)';
  }

  @override
  String get xferWaiting =>
      'Warte auf das andere Gerät … (schließt nach 5 Minuten)';

  @override
  String xferCodeFor(String name) {
    return 'Code angezeigt auf $name';
  }

  @override
  String get xferCodeLabel => '6-stelliger Code';

  @override
  String get xferReceiveAction => 'Empfangen';

  @override
  String xferReceivingFrom(String name) {
    return 'Empfange von $name …';
  }

  @override
  String get xferWrongCode =>
      'Falscher Code. Prüfe die Zahl auf dem anderen Gerät.';

  @override
  String get xferNotTaste => 'Das war kein TuneBox-Geschmack.';

  @override
  String xferCouldNotReach(String error) {
    return 'Nicht erreichbar: $error';
  }

  @override
  String xferLooking(String host) {
    return 'Suche nach $host …';
  }

  @override
  String xferNothingAt(String host) {
    return 'Bei $host hat nichts geantwortet. Ist dort \"Senden\" geöffnet?';
  }

  @override
  String get xferReceiveTitle => 'Geschmack empfangen';

  @override
  String get xferOpenSendFirst =>
      'Öffne zuerst \"Senden\" auf dem anderen Gerät (selbes Wi-Fi).';

  @override
  String get xferSearching => 'Suche nach Geräten in der Nähe …';

  @override
  String get xferNoSender => 'Noch kein Sender gefunden.';

  @override
  String get xferSearchAgain => 'Erneut suchen';

  @override
  String get xferTypeAddress => 'Nicht aufgelistet? Gib die Adresse ein';

  @override
  String get xferConnect => 'Verbinden';

  @override
  String get qUndo => 'Rückgängig';

  @override
  String qRemoved(String title) {
    return '\"$title\" entfernt';
  }

  @override
  String get qCleared => 'Warteschlange geleert';

  @override
  String qSaved(String songs, String name) {
    return '$songs in \"$name\" gespeichert';
  }

  @override
  String qTitle(int count) {
    return 'Warteschlange · $count';
  }

  @override
  String get qSavePlaylist => 'Als Playlist speichern';

  @override
  String get qClear => 'Warteschlange leeren';

  @override
  String get qClearSub => 'Der aktuelle Song bleibt';

  @override
  String get qEmptyTitle => 'Die Warteschlange ist leer';

  @override
  String get qEmptyBody => 'Spiel etwas ab und sie füllt sich hier.';

  @override
  String get qDrag => 'Zum Umsortieren ziehen';

  @override
  String plDeleted(String name) {
    return '\"$name\" gelöscht';
  }

  @override
  String get plDeleteSub => 'Die Songs bleiben in deiner Mediathek';

  @override
  String get plDelete => 'Playlist löschen';

  @override
  String get plRenameOrDelete => 'Umbenennen oder löschen';

  @override
  String get aLibListView => 'Listenansicht';

  @override
  String get aLibGridView => 'Rasteransicht';

  @override
  String get aLibSortAlpha => 'A–Z';

  @override
  String get aLibSortYear => 'Jahr';

  @override
  String get aLibNothingYet => 'Hier ist noch nichts';

  @override
  String get aLibImportedEmptyBody =>
      'Füge die Musik hinzu, die schon auf diesem Gerät ist.';

  @override
  String get aLibEmptyBody =>
      'Spiel oder lade etwas herunter, und es landet hier.';

  @override
  String aLibBannerSummary(String songs, String size) {
    return '$songs · $size auf diesem Gerät';
  }

  @override
  String get aLibOfflineNote => 'Diese laufen ganz ohne Verbindung';

  @override
  String aLibAiPicked(String count) {
    return '$count davon hat die KI für dich ausgewählt';
  }

  @override
  String get aPlaylistLabel => 'Playlist';

  @override
  String get aLibNoArtists => 'Noch keine Künstler';

  @override
  String get aLibNoArtistsBody =>
      'Spiel ein paar Songs, dann sammeln sie sich hier.';

  @override
  String get aHomeSearch => 'Suchen';

  @override
  String get aHomeInYourLibrary => 'In deiner Bibliothek';

  @override
  String get aHomeInYourLibrarySub => 'Was du bisher hinzugefügt hast';

  @override
  String get aSearchHintDots => 'Songs, Künstler, Alben…';

  @override
  String get aSearchEmptyBody =>
      'Probier eine andere Schreibweise oder füge einen YouTube-Link ein.';

  @override
  String get aSearchTrySomething => 'Probier etwas aus';

  @override
  String get aSearchLearnedFrom => 'Aus dem, was die KI gelernt hat';

  @override
  String get aSearchAnything => 'Suche alles auf YouTube';

  @override
  String get aSearchSeedTap => 'Tipp auf einen Ausgangspunkt, um zu stöbern';

  @override
  String get aSearchArtistsYouPlay => 'Künstler, die du hörst';

  @override
  String aSearchAffinity(String percent) {
    return '$percent% Übereinstimmung';
  }

  @override
  String get aArtistAlwaysMore => 'Immer mehr davon';

  @override
  String get aArtistClearRule => 'Regel entfernen';

  @override
  String get aArtistBoosted => 'bevorzugt';

  @override
  String get aArtistBlocked => 'blockiert';

  @override
  String get aArtistRadio => 'Radio';

  @override
  String get aPlLikedSub => 'Alles, was du mit einem Herz markiert hast';

  @override
  String get aPlDownloadsSub => 'Läuft ohne Verbindung';

  @override
  String get aPlImportedSub =>
      'Musik, die du von diesem Gerät hinzugefügt hast';

  @override
  String get aPlEmptyTitle => 'Vorerst leer';

  @override
  String get aPlEmptyBody =>
      'Füge Songs über das ⋮-Menü bei jedem Titel hinzu.';

  @override
  String aPlDownloading(String songs) {
    return 'Lade $songs herunter…';
  }

  @override
  String bTasteAiBudgetSub(String count, String gb) {
    return 'Bis zu $count Songs am Tag, $gb GB Budget';
  }

  @override
  String get bTasteSongsPerDay => 'Songs pro Tag';

  @override
  String get bTasteStorageMayUse => 'Speicher, den sie nutzen darf';

  @override
  String bTasteGb(String gb) {
    return '$gb GB';
  }

  @override
  String get bTasteNothingToDownload =>
      'Gerade nichts Neues, das sich zu laden lohnt.';

  @override
  String bTasteQueuedSongs(String count) {
    return '$count Songs der KI in die Warteschlange gestellt.';
  }

  @override
  String get bTasteFetchNow => 'Jetzt welche holen';

  @override
  String get bTasteNotEnoughListening =>
      'Noch zu wenig gehört. Spiel ein paar Songs ab oder starte unten eine Trainingsrunde.';

  @override
  String get bTasteFamiliar => 'Vertraut';

  @override
  String get bTasteDiscoveryCap1 => 'Meist Songs, die du schon kennst';

  @override
  String get bTasteDiscoveryCap2 => 'Ein paar neue Songs pro Regal';

  @override
  String get bTasteDiscoveryCap3 => 'Die Hälfte von Start ist neu für dich';

  @override
  String get bTasteDiscoveryCap4 => 'Zeig mir, was ich noch nie gehört habe';

  @override
  String get bTasteCalm => 'Ruhig';

  @override
  String get bTasteHighEnergy => 'Voller Energie';

  @override
  String get bTasteEnergyCaption =>
      'Schiebt die Auswahl Richtung lauter und schneller';

  @override
  String get bTasteTimeless => 'Zeitlos';

  @override
  String get bTasteFresh => 'Frisch';

  @override
  String get bTasteRecencyCaption =>
      'Wie stark \"Neu ⭐\" auf das Erscheinungsdatum achtet';

  @override
  String get bTasteRarely => 'Selten';

  @override
  String get bTasteOften => 'Oft';

  @override
  String get bTasteNostalgiaCaption =>
      'Wie tief nach alten, vergessenen Hits gegraben wird';

  @override
  String get bTasteListeningHistory => 'Hörverlauf';

  @override
  String bTastePlaysRecorded(String count) {
    return '$count Wiedergaben erfasst';
  }

  @override
  String get bTasteSkips => 'Übersprungen';

  @override
  String bTasteSkipsCounted(String count) {
    return '$count Überspringer zählen gegen Songs';
  }

  @override
  String get bTasteTimeOfDaySub => 'Andere Vorschläge um 08:00 und 23:00';

  @override
  String get bTasteYoutubeRelated => 'Ähnliche Titel von YouTube';

  @override
  String get bTasteYoutubeRelatedSub => 'Holt Songs, die du noch nicht hast';

  @override
  String get bTasteResetSub =>
      'Löscht Wiedergaben, Überspringer und Gewichtungen. Die Bibliothek bleibt.';

  @override
  String get bTasteResetDialogTitle => 'KI zurücksetzen?';

  @override
  String get bTasteResetDialogBody =>
      'Bibliothek, Playlists und Downloads bleiben erhalten. Alles, was sie über dich gelernt hat, wird gelöscht und Start kehrt zu den Standardwerten zurück.';

  @override
  String get bTasteResetAction => 'Zurücksetzen';

  @override
  String get bTrainHearIt => 'Anhören';

  @override
  String bImportDoneAdded(String count) {
    return 'Fertig · $count neue Songs hinzugefügt';
  }

  @override
  String bImportScanningProgress(String scanned, String total) {
    return 'Scanne · $scanned von $total Dateien';
  }

  @override
  String get bImportWatchedFolders => 'Überwachte Ordner';

  @override
  String get bImportWatchedFoldersSub => 'Wird beim Start der App neu gescannt';

  @override
  String get bImportNoneYet =>
      'Noch keine. Wähl einen Ordner, dann wird er automatisch überwacht.';

  @override
  String get bImportFoundOnDevice => 'Auf diesem Gerät gefunden';

  @override
  String get bImportFoundOnDeviceSub => 'Tippen zum Scannen und Überwachen';

  @override
  String get bImportYourFiles => 'Deine Dateien';

  @override
  String bImportImportedSoFar(String count) {
    return '$count bisher importiert';
  }

  @override
  String get bImportFilesStayNote =>
      'Dateien bleiben, wo sie sind – TuneBox indexiert sie nur. Löschst du eine Datei, verschwindet sie beim nächsten Scan leise aus deiner Bibliothek.';

  @override
  String get bImportRescan => 'Neu scannen';

  @override
  String get cMore => 'Mehr';

  @override
  String cBlockedSnack(String title) {
    return '\"$title\" blockiert — die KI meidet es';
  }

  @override
  String get cLike => 'Gefällt mir';

  @override
  String get cUnlike => 'Gefällt mir nicht mehr';

  @override
  String get cRemoveFromLiked => 'Aus Gefällt mir entfernen';

  @override
  String get cLikeSub => 'Die KI lernt sofort daraus';

  @override
  String get cSave => 'Speichern';

  @override
  String get cNothingPlaying => 'Nichts läuft';

  @override
  String get cNothingPlayingBody =>
      'Wähl einen Song aus, dann erscheint er hier.';

  @override
  String get cPlayingFrom => 'Wiedergabe aus';

  @override
  String get cSeek => 'Spulen';

  @override
  String cTimeOf(String done, String total) {
    return '$done von $total';
  }

  @override
  String get cShuffleOn => 'Zufall: an';

  @override
  String get cShuffleOff => 'Zufall: aus';

  @override
  String get cPrevious => 'Zurück';

  @override
  String get cNext => 'Weiter';

  @override
  String get cPause => 'Pause';

  @override
  String get cRepeatOne => 'Wiederholen: dieser Song';

  @override
  String get cRepeatOff => 'Wiederholen: aus';

  @override
  String get cRepeatAll => 'Wiederholen: ganze Warteschlange';

  @override
  String get cSaved => 'Gespeichert';

  @override
  String get cAudio => 'Audio';

  @override
  String get cSpeed => 'Tempo';

  @override
  String get cAndroidOnly => 'Nur Android';

  @override
  String get cPlaylist => 'Playlist';

  @override
  String get cSearchResults => 'Suchergebnisse';

  @override
  String get cYourLibrary => 'Deine Bibliothek';

  @override
  String get cRadio => 'Radio';

  @override
  String get cYourQueue => 'Deine Warteschlange';

  @override
  String cDownloadFailed(String title) {
    return 'Download fehlgeschlagen: $title';
  }

  @override
  String cAiDownloading(String title) {
    return 'KI lädt $title herunter';
  }

  @override
  String cDownloading(String title) {
    return 'Lade $title herunter';
  }

  @override
  String get cSaveQueueAs => 'Warteschlange speichern als';

  @override
  String cProfileSwitch(String count) {
    return 'Profil · zum Wechseln tippen ($count)';
  }

  @override
  String get cProfileAddAnother =>
      'Profil · tippen, um weitere Hörer hinzuzufügen';

  @override
  String get cUseIt => 'Übernehmen';

  @override
  String cAiBudgetSub(String daily, String gb) {
    return 'Bis zu $daily/Tag · $gb GB Budget · einstellbar unter Dein Geschmack';
  }

  @override
  String cFoldersWatched(String count) {
    return '$count Ordner überwacht';
  }

  @override
  String get cMoveTasteSub =>
      'Zwischen Geräten per WLAN, mit einer Datei oder als Text';

  @override
  String get cSearchLanguages => 'Sprachen suchen';

  @override
  String cNoLanguageMatch(String query) {
    return 'Keine Sprache passt zu \"$query\"';
  }

  @override
  String addedToPlaylist(String name) {
    return 'Zu „$name“ hinzugefügt';
  }
}
