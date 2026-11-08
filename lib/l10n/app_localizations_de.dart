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
  String get setShare => 'TuneBox teilen';

  @override
  String get setShareBody => 'Schick den Link an einen Freund';

  @override
  String get setShareText =>
      'TuneBox – ein kostenloser Musikplayer, der deinen Geschmack lernt, direkt auf deinem Gerät. Ohne Konto, ohne Werbung: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link kopiert';

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

  @override
  String get sndTitle => 'Klang';

  @override
  String get sndSub => 'Überblenden, Equalizer, Lautstärke, Sleep-Timer';

  @override
  String get sndAll => 'Alle Klangeinstellungen';

  @override
  String get sndBetween => 'Zwischen den Songs';

  @override
  String get sndCrossfade => 'Überblenden';

  @override
  String get sndGapless => 'Lückenlos';

  @override
  String sndSeconds(int n) {
    return '$n s';
  }

  @override
  String get sndSmart => 'Intelligentes Überblenden';

  @override
  String get sndSmartSub =>
      'Alben und Live-Sets laufen am Stück; kurze Songs blenden schneller über';

  @override
  String get sndLoudness => 'Lautheit';

  @override
  String get sndNormalize => 'Lautstärke angleichen';

  @override
  String get sndNormalizeSub =>
      'Macht Songs leiser, die lauter abgemischt sind als der Rest';

  @override
  String get sndQuiet => 'Leise';

  @override
  String get sndNormal => 'Normal';

  @override
  String get sndLoud => 'Laut';

  @override
  String get sndEq => 'Equalizer';

  @override
  String get sndEqOn => 'Equalizer verwenden';

  @override
  String get sndEqOnlyAndroid => 'Der Equalizer ist unter Android verfügbar.';

  @override
  String get sndEqFor => 'Jeder Ausgang behält seinen eigenen Klang';

  @override
  String get sndInUse => 'aktiv';

  @override
  String get sndSpeaker => 'Lautsprecher';

  @override
  String get sndWired => 'Kabel';

  @override
  String get sndBluetooth => 'Bluetooth';

  @override
  String get sndSavePreset => 'Als Preset speichern';

  @override
  String get sndPresetName => 'Name des Presets';

  @override
  String get sndDeletePreset => 'Preset löschen';

  @override
  String get sndCustom => 'Eigenes';

  @override
  String get sndBoost => 'Extra Lautstärke';

  @override
  String get sndBoostSub =>
      'Hilft bei leisen Handys und Kopfhörern. Zu viel kann verzerren.';

  @override
  String get sndSpeedPitch => 'Tempo und Tonhöhe';

  @override
  String get sndSpeed => 'Tempo';

  @override
  String get sndPitch => 'Tonhöhe';

  @override
  String get sndReset => 'Zurücksetzen';

  @override
  String get eqFlat => 'Neutral';

  @override
  String get eqBass => 'Bass';

  @override
  String get eqVocal => 'Stimme';

  @override
  String get eqNight => 'Nacht';

  @override
  String get eqHeadphones => 'Kopfhörer';

  @override
  String get eqCar => 'Auto';

  @override
  String get eqTreble => 'Höhen';

  @override
  String get sleepTitle => 'Sleep-Timer';

  @override
  String sleepMinutes(int n) {
    return '$n Min.';
  }

  @override
  String get sleepEndSong => 'Ende des Songs';

  @override
  String get sleepEndQueue => 'Ende der Warteschlange';

  @override
  String sleepLeft(String time) {
    return 'Stoppt in $time';
  }

  @override
  String get sleepAfterSong => 'Stoppt nach diesem Song';

  @override
  String get sleepAfterQueue => 'Stoppt am Ende der Warteschlange';

  @override
  String get sleepShake => 'Handy schütteln für 10 Minuten mehr';

  @override
  String get sleepCancel => 'Ausschalten';

  @override
  String get lyrRetry => 'Erneut versuchen';

  @override
  String get lyrOffline =>
      'Songtexte brauchen beim ersten Mal Internet. Danach gehen sie auch offline.';

  @override
  String get lyrCredit =>
      'Songtexte von LRCLIB, einer offenen Community-Datenbank';

  @override
  String get lyrShow => 'Songtext zeigen';

  @override
  String get lyrShowArt => 'Cover zeigen';

  @override
  String get rwTitle => 'Rückblick';

  @override
  String get rwEntry => 'Dein Hören als Story';

  @override
  String get rwWeek => 'Diese Woche';

  @override
  String get rwMonth => 'Diesen Monat';

  @override
  String get rwYear => 'Dieses Jahr';

  @override
  String get rwAll => 'Insgesamt';

  @override
  String get rwNotYet => 'Noch zu wenig gehört';

  @override
  String get rwNotYetBody =>
      'Spiel in diesem Zeitraum ein paar Songs, dann füllt sich deine Story. Oder wähl einen längeren Zeitraum.';

  @override
  String get rwShare => 'Diese Karte teilen';

  @override
  String get rwShareText =>
      'Mein Hören, aus TuneBox — https://tunebox.pages.dev';

  @override
  String rwSaved(String path) {
    return 'Gespeichert unter $path';
  }

  @override
  String get rwMinutes => 'Minuten Musik';

  @override
  String rwPlaysSongs(int plays, int songs) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays Wiedergaben',
      one: '1 Wiedergabe',
    );
    String _temp1 = intl.Intl.pluralLogic(
      songs,
      locale: localeName,
      other: '$songs verschiedenen Songs',
      one: '1 Song',
    );
    return '$_temp0 von $_temp1';
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
      other: '$plays× gehört',
      one: '1× gehört',
    );
    return '$_temp0 · $minutes Min.';
  }

  @override
  String get rwTopSong => 'Dein Song';

  @override
  String get rwTopSongs => 'In Dauerschleife';

  @override
  String get rwTopArtists => 'Deine Artists';

  @override
  String get rwSound => 'Dein Sound';

  @override
  String get rwYourHour => 'Deine Stunde';

  @override
  String get rwStreak => 'Längste Serie';

  @override
  String get rwDaysInARow => 'Tage am Stück mit Musik';

  @override
  String rwDiscovery(int percent) {
    return '$percent % von dem, was du gehört hast, war neu für dich';
  }

  @override
  String get rwUnskippable => 'Nie übersprungen';

  @override
  String get rwNeverSkipped =>
      'Immer wieder gehört, kein einziges Mal übersprungen.';

  @override
  String get rwYouAre => 'Du bist';

  @override
  String get rwExplorer => 'Entdecker:in';

  @override
  String get rwExplorerSub =>
      'Das meiste war neu für dich. Dein Geschmack bleibt in Bewegung.';

  @override
  String get rwLoyalist => 'Treue Seele';

  @override
  String get rwLoyalistSub =>
      'Wenige Artists, dafür richtig. Du weißt, was du liebst.';

  @override
  String get rwCollector => 'Sammler:in';

  @override
  String get rwCollectorSub =>
      'Dutzende Artists, selten zweimal derselbe Song.';

  @override
  String get rwRepeater => 'Dauerschleife';

  @override
  String get rwRepeaterSub => 'Wenn dich ein Song packt, dann richtig.';

  @override
  String get rwAllRounder => 'Allrounder:in';

  @override
  String get rwAllRounderSub => 'Von allem etwas, gut ausbalanciert.';

  @override
  String get shelfYearAgo => 'Vor einem Jahr';

  @override
  String get shelfMonthAgo => 'Vor einem Monat';

  @override
  String get shelfOnThisDaySub => 'Was du um diese Zeit gehört hast';

  @override
  String get mixTitle => 'Mix beschreiben';

  @override
  String get mixEntry => 'Mix beschreiben…';

  @override
  String get mixAsk => 'Was willst du hören?';

  @override
  String get mixHint => 'Regensonntag, 2000er Rock, ohne Linkin Park';

  @override
  String get mixPrivate =>
      'Wird auf dem Handy gelesen. Deine Worte verlassen es nie.';

  @override
  String get mixMake => 'Los';

  @override
  String get mixTry => 'Probier eins davon';

  @override
  String get mixEx1 => 'Lofi zum Lernen, 1 Stunde';

  @override
  String get mixEx2 => 'Workout Hip-Hop, immer schneller';

  @override
  String get mixEx3 => '80er Synthwave wie The Midnight';

  @override
  String get mixEx4 => 'Party-Afrobeats, 20 Songs';

  @override
  String get mixNothing => 'Dazu passt noch nichts';

  @override
  String get mixNothingBody =>
      'Versuch es mit weniger Bedingungen oder schalte YouTube-Vorschläge unter Dein Geschmack ein.';

  @override
  String get mixUnderstood => 'Verstanden als';

  @override
  String mixLike(String artist) {
    return 'wie $artist';
  }

  @override
  String get mixRising => 'immer schneller';

  @override
  String get mixFalling => 'zum Runterkommen';

  @override
  String get mixSave => 'Als Playlist speichern';

  @override
  String get mixSaveAs => 'Name der Playlist';

  @override
  String get mixAgain => 'Neu mischen';

  @override
  String reasonMatches(String what) {
    return 'Passt: $what';
  }

  @override
  String get reasonNewFind => 'Neu entdeckt';

  @override
  String get stTitle => 'Design-Studio';

  @override
  String get stSub => 'Themes, Schriften, Player-Stile, Tabs, Gesten';

  @override
  String get stThemes => 'Themes';

  @override
  String get stFollow => 'Meine Farbe';

  @override
  String get stType => 'Schrift und Form';

  @override
  String get stSystem => 'System';

  @override
  String get stCorners => 'Ecken';

  @override
  String get stSharp => 'Kantig';

  @override
  String get stSoft => 'Weich';

  @override
  String get stRound => 'Rund';

  @override
  String get stDensity => 'Abstände';

  @override
  String get stCompact => 'Kompakt';

  @override
  String get stComfy => 'Luftig';

  @override
  String get stPlayer => 'Player';

  @override
  String get stClassic => 'Klassisch';

  @override
  String get stVinyl => 'Vinyl';

  @override
  String get stFullBleed => 'Großes Cover';

  @override
  String get stMinimal => 'Minimal';

  @override
  String get stCassette => 'Kassette';

  @override
  String get stVisualizer => 'Visualizer';

  @override
  String get stSeek => 'Suchleiste';

  @override
  String get stBars => 'Balken';

  @override
  String get stWave => 'Welle';

  @override
  String get stLine => 'Linie';

  @override
  String get stThick => 'Dick';

  @override
  String get stOff => 'Aus';

  @override
  String get stLiving => 'Lebendiger Hintergrund';

  @override
  String get stLivingSub =>
      'Farben aus dem Cover ziehen langsam hinter dem Player vorbei';

  @override
  String get stDoubleTap => 'Doppeltippen aufs Cover = Gefällt mir';

  @override
  String get stTabs => 'Tabs';

  @override
  String get stTabsSub => 'Ziehen zum Sortieren, Ungenutztes ausschalten';

  @override
  String get stLabels => 'Tab-Namen zeigen';

  @override
  String get stGlass => 'Milchglas-Navigation';

  @override
  String get stHome => 'Startseite';

  @override
  String get stHomeSub => 'Welche Regale, in welcher Reihenfolge';

  @override
  String get stGestures => 'Gesten';

  @override
  String get stSwipeRight => 'Song nach rechts wischen';

  @override
  String get stSwipeLeft => 'Song nach links wischen';

  @override
  String get stNothing => 'Nichts';

  @override
  String get stShake => 'Schütteln zum Überspringen';

  @override
  String get stShakeSub => 'Kräftig schütteln spielt den nächsten Song';

  @override
  String get stShareLook => 'Dein Design teilen';

  @override
  String get stCopyCode => 'Theme-Code kopieren';

  @override
  String get stCodeSub =>
      'Schick ihn jemandem; eingefügt ergibt er genau dieses Design';

  @override
  String get stPasteCode => 'Theme-Code einfügen';

  @override
  String get stCodeCopied => 'Theme-Code kopiert';

  @override
  String get stCodeApplied => 'Neues Design übernommen';

  @override
  String get stCodeBad => 'Das ist kein TuneBox-Theme-Code';

  @override
  String get stReset => 'Zurück zum Standard';

  @override
  String swLiked(String title) {
    return '\"$title\" gefällt dir';
  }

  @override
  String swQueued(String title) {
    return '\"$title\" kommt als Nächstes';
  }

  @override
  String get glxTitle => 'Geschmacks-Galaxie';

  @override
  String get glxEntry => 'Deine Artists als Sternenkarte';

  @override
  String get glxHint =>
      'Große Sterne hörst du am meisten. Nachbarn klingen ähnlich. Tipp einen Stern an.';

  @override
  String get glxLasso => 'Um eine Gruppe zeichnen';

  @override
  String get glxLassoHint =>
      'Zeichne eine Schleife um Sterne, um diese Ecke deines Geschmacks zu hören';

  @override
  String get glxLassoEmpty => 'In der Schleife sind keine Sterne';

  @override
  String glxLassoPlaying(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Spielt $count Artists',
      one: 'Spielt 1 Artist',
    );
    return '$_temp0';
  }

  @override
  String get glxRecenter => 'Zurück zum ganzen Himmel';

  @override
  String glxPlay(String artist) {
    return '$artist abspielen';
  }

  @override
  String get glxOpen => 'Artist-Seite öffnen';

  @override
  String get glxMore => 'Mehr von diesem Artist';

  @override
  String get glxNever => 'Diesen Artist nie spielen';

  @override
  String get glxEmpty => 'Dein Himmel ist noch dunkel';

  @override
  String get glxEmptyBody =>
      'Füg Songs von ein paar verschiedenen Artists hinzu, dann erscheinen die Sterne.';

  @override
  String get blendTitle => 'Mischen';

  @override
  String get blendEntry => 'Eine Warteschlange aus zwei Geschmäckern';

  @override
  String get blendIntro =>
      'Für eine Party, das Auto oder einen gemeinsamen Lautsprecher. TuneBox findet, was ihr beide mögt, und wechselt fair ab. Der andere Geschmack wird nur gelesen, nie zu deinem hinzugefügt.';

  @override
  String get blendWith => 'Mischen mit';

  @override
  String get blendProfile => 'Ein Profil auf diesem Gerät';

  @override
  String get blendPaste => 'Geschmacks-Code von jemandem';

  @override
  String get blendPasteSub =>
      'Erst kopieren (Geschmack übertragen → Als Text), dann hier tippen';

  @override
  String get blendFile => 'Eine Geschmacks-Datei';

  @override
  String get blendFriend => 'Dein Freund';

  @override
  String get blendBad => 'Das ist kein TuneBox-Geschmack';

  @override
  String blendYouAnd(String name) {
    return 'Du und $name';
  }

  @override
  String get blendHigh => 'Praktisch dieselben Ohren.';

  @override
  String get blendMid => 'Viel gemeinsam, und einiges zu entdecken.';

  @override
  String get blendLow =>
      'Sehr unterschiedlicher Geschmack. Das wird ein Abenteuer.';

  @override
  String get blendPlay => 'Mix abspielen';

  @override
  String get blendOther => 'Mit jemand anderem mischen';

  @override
  String get blendLearn => 'Mix darf TuneBox etwas beibringen';

  @override
  String get blendLearnSub =>
      'Aus: Was im Mix läuft, ändert deinen Geschmack nicht';

  @override
  String get blendBothArtists => 'Artists, die ihr beide habt';

  @override
  String get blendQueue => 'Die Warteschlange';

  @override
  String get blendBoth => 'ihr beide';

  @override
  String get blendYours => 'deins';

  @override
  String get syncTitle => 'Synchronisierte Geräte';

  @override
  String get syncHeadline => 'Ein Geschmack auf all deinen Geräten';

  @override
  String get syncIntro =>
      'Kopple Handy und Computer einmal. Danach tauschen sie selbst aus, was sie gelernt haben, etwa alle 45 Minuten und beim Öffnen der App, wenn beide im selben WLAN sind. Ohne Konto und ohne Server.';

  @override
  String get syncDevices => 'Gekoppelte Geräte';

  @override
  String get syncNow => 'Jetzt synchronisieren';

  @override
  String get syncNone => 'Noch nichts gekoppelt';

  @override
  String get syncNoneSub =>
      'Zeig auf einem Gerät einen Code und tipp ihn auf dem anderen ein.';

  @override
  String syncLast(String when) {
    return 'Zuletzt synchronisiert: $when';
  }

  @override
  String get syncNever => 'noch nie';

  @override
  String get syncJustNow => 'gerade eben';

  @override
  String syncMinutesAgo(int n) {
    return 'vor $n Min.';
  }

  @override
  String syncHoursAgo(int n) {
    return 'vor $n Std.';
  }

  @override
  String get syncForget => 'Entkoppeln';

  @override
  String syncForgetQ(String name) {
    return '$name entkoppeln?';
  }

  @override
  String get syncForgetBody =>
      'Es wird nichts gelöscht. Die Geräte tauschen nur keinen Geschmack mehr aus.';

  @override
  String get syncAdd => 'Gerät hinzufügen';

  @override
  String get syncShowCode => 'Kopplungscode zeigen';

  @override
  String get syncShowCodeSub => 'Auf diesem Gerät';

  @override
  String get syncEnterCode => 'Kopplungscode eingeben';

  @override
  String get syncEnterCodeSub => 'Den dein anderes Gerät zeigt';

  @override
  String get syncPrivate => 'Bleibt in deinem Netzwerk';

  @override
  String get syncPrivateSub =>
      'Die Geräte reden direkt miteinander, jede Übertragung ist mit einem Schlüssel verschlüsselt, den nur sie kennen.';

  @override
  String get syncTypeThis => 'Gib diesen Code auf dem anderen Gerät ein';

  @override
  String get syncWaiting => 'Warte darauf… lass das hier offen.';

  @override
  String syncAddress(String address) {
    return 'Falls es nicht gefunden wird, dort diese Adresse eingeben: $address';
  }

  @override
  String get syncCodeExpired => 'Der Code ist abgelaufen.';

  @override
  String get syncNewCode => 'Neuer Code';

  @override
  String syncPaired(String name) {
    return 'Mit $name gekoppelt';
  }

  @override
  String get syncPair => 'Koppeln';

  @override
  String get syncNotFound => 'Nicht gefunden? Adresse eingeben';

  @override
  String get syncAddressLabel => 'Adresse (z. B. 192.168.1.20)';

  @override
  String syncDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mit $count Geräten synchronisiert',
      one: 'Mit 1 Gerät synchronisiert',
    );
    return '$_temp0';
  }

  @override
  String get syncNoneReached =>
      'Die anderen Geräte waren nicht erreichbar. Sind sie an und im selben WLAN?';

  @override
  String get syncNoDevice =>
      'Kein Gerät mit offenem Code in diesem WLAN gefunden';

  @override
  String get syncWrongCode => 'Der Code stimmt nicht';

  @override
  String get syncNotPaired => 'Das andere Gerät kennt dieses nicht mehr';

  @override
  String get syncUnreachable => 'Gerade nicht erreichbar';

  @override
  String get syncSettingsOff =>
      'Halte deinen Geschmack auf Handy und Computer gleich';

  @override
  String syncSettingsOn(String names) {
    return 'Synchronisiert mit $names';
  }

  @override
  String get stMirror => 'Spiegel';

  @override
  String get stLine2 => 'Kurve';

  @override
  String get stDots => 'Punkte';

  @override
  String get stLive => 'Live-Visualizer';

  @override
  String get stLiveSub =>
      'Bewegt sich mit der echten Musik. Android fragt dafür nach der Mikrofon-Berechtigung, gelesen wird aber nur der Ton von TuneBox, nie das Mikrofon.';

  @override
  String get stLiveDenied =>
      'Ohne die Berechtigung bleibt der Visualizer bei seiner eigenen Animation.';
}
