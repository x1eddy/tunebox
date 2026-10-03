// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swiss German Alemannic Alsatian (`gsw`).
class LGsw extends L {
  LGsw([String locale = 'gsw']) : super(locale);

  @override
  String get navHome => 'Startsite';

  @override
  String get navExplore => 'Entdecke';

  @override
  String get navLibrary => 'Bibliothek';

  @override
  String get navTaste => 'Din Gschmack';

  @override
  String get actionDone => 'Fertig';

  @override
  String get actionCancel => 'Abbräche';

  @override
  String get actionCreate => 'Erstelle';

  @override
  String get actionPlay => 'Abspile';

  @override
  String get actionShuffle => 'Zuefall';

  @override
  String get actionPlayAll => 'Alli abspile';

  @override
  String get actionAdd => 'Hinzuefüege';

  @override
  String get actionRemove => 'Entferne';

  @override
  String get actionName => 'Name';

  @override
  String get greetingNight => 'No wach?';

  @override
  String get greetingMorning => 'Guete Morge';

  @override
  String get greetingAfternoon => 'Guete Tag';

  @override
  String get greetingEvening => 'Guete Abig';

  @override
  String get homeBuilding => 'D KI baut dini Regal…';

  @override
  String get homeOffline => 'Offline – es wird zeigt, was uf em Gerät isch';

  @override
  String get homeNothingYet => 'No nüt z zeige';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Regal, grad aktualisiert',
      one: '1 Regal, grad aktualisiert',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Regal neu boue';

  @override
  String get homeAddMusic => 'Musig vo dem Gerät hinzuefüege';

  @override
  String get homeQuickPicks => 'Schnellusswahl';

  @override
  String get homeQuickPicksSub => 'Grad zrugg zu dem, was glüffe isch';

  @override
  String get homeEmptyTitle => 'Dini Bibliothek isch leer';

  @override
  String get homeEmptyBody =>
      'Suech öppis oder füeg d Musig hinzue, wo scho uf dem Gerät isch. D KI lernt ab em allererschte Titel.';

  @override
  String get homeAddMyMusic => 'Mini Musig hinzuefüege';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube nöd erreichbar: $error';
  }

  @override
  String get moodFocus => 'Fokus';

  @override
  String get moodWorkout => 'Workout';

  @override
  String get moodChill => 'Chill';

  @override
  String get moodCommute => 'Pendle';

  @override
  String get moodParty => 'Party';

  @override
  String moodBuilding(Object mood) {
    return '$mood-Mix wird boue…';
  }

  @override
  String moodFailed(Object error) {
    return 'Kein Glück: $error';
  }

  @override
  String get shelfRepeat => 'Im Dauerloop';

  @override
  String get shelfRepeatSub => 'Dini letschte zwei Wuche';

  @override
  String get shelfForgotten => 'Alti vergässni Hits, wo du gmögt häsch';

  @override
  String get shelfForgottenSub => 'Emal gliebt, scho lang nüme aaglängt';

  @override
  String get shelfNew => 'Neu';

  @override
  String get shelfNewSub => 'Frischi Titel, wo d KI für dich passend findet';

  @override
  String shelfBecause(Object artist) {
    return 'Will du $artist ghört häsch';
  }

  @override
  String get shelfBecauseSub => 'Im gliiche Egge vo dim Gschmack';

  @override
  String get shelfDeep => 'Chuum aaglängt';

  @override
  String get shelfDeepSub => 'In dire Bibliothek, aber fascht nie gspilt';

  @override
  String get shelfMix => 'Din Mix';

  @override
  String get shelfMixSub => 'Wird jedes Mal neu boue, wenn du d App öffnisch';

  @override
  String get shelfAdded => 'Zletscht hinzuegfüegt';

  @override
  String get shelfAddedSub => 'Downloads und Dateie, wo du importiert häsch';

  @override
  String get shelfStarter => 'Fang do aa';

  @override
  String get shelfStarterSub =>
      'Spil e paar ab und d KI fangt sofort aa z lerne';

  @override
  String reasonPlays(int count) {
    return '$count Wiedergabe';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Gmögt, zletscht gspilt $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count Wiedergabe, zletscht $when';
  }

  @override
  String get reasonTopArtist => 'Eine vo dine meistghörte Artischte';

  @override
  String reasonMore(Object artist) {
    return 'Meh $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Du chunnsch immer wieder zu $artist zrugg';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Dini Art vo $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Zletscht viel $tag';
  }

  @override
  String get reasonOutThisYear => 'Dis Johr usecho';

  @override
  String get reasonReleasedRecently => 'Chürzlich veröffentlicht';

  @override
  String get reasonClose => 'Nöch bi dem, was du zletscht ghört häsch';

  @override
  String reasonNear(Object artist) {
    return 'Liit nöch bi $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nie gspilt';

  @override
  String get reasonPlayedOnce => 'Eimal gspilt';

  @override
  String get reasonPopular => 'Grad beliebt';

  @override
  String whenYearsAgo(int count) {
    return 'vor $count J.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'vor $count Monet';
  }

  @override
  String whenDaysAgo(int count) {
    return 'vor $count Täg';
  }

  @override
  String get searchHint => 'Songs, Artischte, Alben';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Resultat',
      one: '1 Resultat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Letschti Suechene';

  @override
  String get searchEmptyTitle => 'Nüt gfunde';

  @override
  String get searchEmptyBody =>
      'Probier e anderi Schriibwiis oder nume de Name vom Artischt.';

  @override
  String get searchStartTitle => 'Find öppis zum Abspile';

  @override
  String get searchStartBody =>
      'Suech uf YouTube Music – es chömed nume Songs zrugg, nie Videos vo anderem.';

  @override
  String get libPlaylists => 'Playlists';

  @override
  String get libSongs => 'Songs';

  @override
  String get libArtists => 'Artischte';

  @override
  String get libLiked => 'Gmögt';

  @override
  String get libDownloads => 'Downloads';

  @override
  String get libImported => 'Importiert';

  @override
  String get libLikedSongs => 'Gmögti Songs';

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
  String get libMyFiles => 'Mini eigete Dateie';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Dateie',
      one: '1 Datei',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Neui Playlist';

  @override
  String get libMakeOne => 'Eini mache';

  @override
  String get libSortRecent => 'Zletscht hinzuegfüegt';

  @override
  String get libSortTitle => 'Titel';

  @override
  String get libSortArtist => 'Artischt';

  @override
  String get libSortPlays => 'Meistgspilt';

  @override
  String get sheetNotForMe => 'Nüt für mich';

  @override
  String get sheetNotForMeSub => 'Das nie meh empfähle';

  @override
  String get sheetBlocked => 'Blockiert – tippe zum wieder erlaube';

  @override
  String get sheetBlockedSub => 'Es cha wieder i de Empfehlige uftauche';

  @override
  String get sheetPlayNext => 'Als nächsts spile';

  @override
  String get sheetAddToPlaylist => 'Zur Playlist hinzuefüege';

  @override
  String get sheetDownloaded => 'Abeglade';

  @override
  String get sheetRemoveFile => 'Tippe zum d Datei lösche';

  @override
  String get sheetDownload => 'Abelade';

  @override
  String get sheetKeepOffline => 'Für offline ufbewahre';

  @override
  String get sheetRadio => 'Radio starte';

  @override
  String get sheetRadioSub => 'E Warteschlange rund um dä Song';

  @override
  String get sheetQueue => 'Warteschlange';

  @override
  String get sheetSleepTimer => 'Schlaf-Timer';

  @override
  String get sheetSleepOff => 'Us';

  @override
  String sheetSleepMinutes(int count) {
    return '$count Minute';
  }

  @override
  String get sheetSleepEndOfTrack => 'Ändi vo dem Song';

  @override
  String sheetSleepSet(int count) {
    return 'Musig stoppt i $count Min.';
  }

  @override
  String get tasteTitle => 'Din Gschmack';

  @override
  String get tasteRetrain => 'Neu trainiere';

  @override
  String get tasteRetraining => 'Trainiert neu uf dinere Gschicht…';

  @override
  String get tasteRetrained => 'D KI het ihres Modell neu ufbaut.';

  @override
  String tasteConfidence(int percent) {
    return 'Sicherheit $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays Wiedergabe · $skips Überspringe · $likes Likes';
  }

  @override
  String get tasteEmptySummary => 'Spil e paar Songs ab, denn füllt sich das.';

  @override
  String get tasteKeepLearning => 'Witer lerne, während ich lose';

  @override
  String get tasteKeepLearningSub =>
      'Usschalte, zum s aktuelle Profil iifriere';

  @override
  String get tasteDownloadsTitle => 'Downloads, wo d KI macht';

  @override
  String get tasteDownloadsSub =>
      'Musig chunnt ufs Gerät, ohni dass du dernah fragsch';

  @override
  String get tasteDownloadLikes => 'Alles abelade, was ich mög';

  @override
  String get tasteDownloadLikesSub =>
      'Druck uf s Herz und d Datei wird für offline gspeicheret';

  @override
  String get tasteAiInstall => 'D KI Musig la installiere, wo si uswählt';

  @override
  String get tasteAiInstallSub => 'Si holt Titel, bi dene si sich sicher isch';

  @override
  String get tasteWhatItThinks => 'Was si dänkt, dass du gärn häsch';

  @override
  String get tasteWhatItThinksSub =>
      'Glernt us Wiedergabe, Überspringe, Likes und Wiederholige';

  @override
  String get tasteArtists => 'Artischte, uf wo si sich stützt';

  @override
  String get tasteWhenYouListen => 'Wenn du lose';

  @override
  String get tasteWhenYouListenSub =>
      'Wiedergabe pro Stund – di aktuelli Stund wird gwichtet';

  @override
  String get tasteDecades => 'Jahrzähnt';

  @override
  String get tasteTune => 'D Empfehlige abstimme';

  @override
  String get tasteTuneSub =>
      'Gilt ab em nächschte Aktualisiere vo de Startsite';

  @override
  String get tasteDiscovery => 'Entdecke';

  @override
  String get tasteDiscoverySub => 'Vertruut ↔ Sache, won du no nie ghört häsch';

  @override
  String get tasteEnergy => 'Energie';

  @override
  String get tasteEnergySub => 'Rüehig ↔ lut';

  @override
  String get tasteRecency => 'Aktualität';

  @override
  String get tasteRecencySub => 'Zitlos ↔ ganz neu';

  @override
  String get tasteNostalgia => 'Nostalgie';

  @override
  String get tasteNostalgiaSub =>
      'Wie wiit zrugg en alte Liebling als vergässe gilt';

  @override
  String get tasteSignals => 'Signal, wo si darf bruuche';

  @override
  String get tasteSignalsSub => 'Alles bliibt uf dem Gerät';

  @override
  String get tasteUseHistory => 'Was ich gspilt ha';

  @override
  String get tasteUseSkips => 'Was ich überspringe';

  @override
  String get tasteUseTime => 'Tageszit';

  @override
  String get tasteUseYouTube => 'Vorschläg vo YouTube';

  @override
  String get tasteAlwaysMore => 'Immer meh vo';

  @override
  String get tasteNeverAgain => 'Nie meh';

  @override
  String get tasteAddArtist => 'Artischt hinzuefüege';

  @override
  String get tasteMoreOfPrompt => 'Immer meh vo…';

  @override
  String get tasteNeverAgainPrompt => 'Nie meh…';

  @override
  String get tasteReset => 'Zruggsetze, was si glernt het';

  @override
  String get tasteResetSub => 'Dini Musig bliibt; s Profil fangt bi null aa';

  @override
  String get trainCard => 'Trainier si mit Bewärte';

  @override
  String get trainCardSub =>
      'Wisch dur echti Songs. Rechts für meh vo dem, links für nie meh. Zwei Minute do sind besser als e Wuche Lose.';

  @override
  String get trainStart => 'Trainingsrunde starte';

  @override
  String get trainTitle => 'Trainingsrunde';

  @override
  String get trainQuestion => 'Wettsch das uf dinere Startsite?';

  @override
  String get trainMoreLikeThis => 'Meh vo dem';

  @override
  String get trainNeverAgain => 'Nie meh';

  @override
  String get trainDone => 'Runde gschafft';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked bhalte · $blocked blockiert. Sicherheit $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Zrugg zu dim Gschmack';

  @override
  String get trainNothingTitle => 'No nüt zum Bewärte';

  @override
  String get trainNothingBody =>
      'Füeg zerscht Musig hinzue oder lah d KI Kandidate hole, denn chum wieder.';

  @override
  String get trainLeaveTitle => 'D Trainingsrunde verlah?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Wenn du jetzt gasch, verwirft d KI alles us dere Runde – alli $count Songs, wo du grad bewärtet häsch.',
      one:
          'Wenn du jetzt gasch, verwirft d KI alles us dere Runde – de 1 Song, wo du grad bewärtet häsch.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Witertrainiere';

  @override
  String get trainDiscard => 'Verwerfe und verlah';

  @override
  String get setTitle => 'Iistellige';

  @override
  String get setAppearance => 'Erscheinigsbild';

  @override
  String get setTheme => 'Design';

  @override
  String get setThemeSystem => 'Em System folge';

  @override
  String get setThemeLight => 'Hell';

  @override
  String get setThemeDark => 'Dunkel';

  @override
  String get setPureBlack => 'Rein schwarz';

  @override
  String get setPureBlackSub => 'Spart Strom uf emne OLED-Bildschirm';

  @override
  String get setAccent => 'Akzentfarb';

  @override
  String get setAccentArtwork => 'Vom Cover';

  @override
  String get setAccentFixed => 'Eini Farb, won ich gwählt ha';

  @override
  String get setLanguage => 'Sproch';

  @override
  String get setLanguageSystem => 'Em System folge';

  @override
  String get setAccessibility => 'Barrierefreiheit';

  @override
  String get setTextSize => 'Textgrössi';

  @override
  String get setTextSizeSub => 'Zusätzlich zur Systemiistellig';

  @override
  String get setReduceMotion => 'Bewegig reduziere';

  @override
  String get setReduceMotionSub =>
      'Stoppt d Balke, de Visualizer, s federnde Scrolle, wippendi Tipper und Siteübergäng';

  @override
  String get setHighContrast => 'Hoche Kontrast';

  @override
  String get setHighContrastSub => 'Stärkeri Trennig und sichtbari Umrandige';

  @override
  String get setBoldText => 'Fette Text';

  @override
  String get setPlayback => 'Wiedergabe';

  @override
  String get setAutoRadio => 'D Musig la witerlaufe';

  @override
  String get setAutoRadioSub =>
      'Wenn d Warteschlange fertig isch, mit emne Radio vom letschte Song witermache';

  @override
  String get setSmartShuffle => 'Smarte Zuefall';

  @override
  String get setSmartShuffleSub => 'Mischt nach Gschmack statt zuefällig';

  @override
  String get setResume => 'Det witermache, wo ich ufghört ha';

  @override
  String get setResumeSub =>
      'Stellt d Warteschlange bim Öffne vo de App wieder häre, pausiert';

  @override
  String get setDataSaver => 'Datespaarer ohni WLAN';

  @override
  String get setDataSaverSub =>
      'Begrenzt Streams und Downloads uf 128 kbps bi mobilne Date';

  @override
  String get setHaptics => 'Haptischi Rückmeldig';

  @override
  String get setShowReasons => 'Zeige, werum öppis empfohle worde isch';

  @override
  String get setSkipSilence => 'Stilli überspringe';

  @override
  String get setQuality => 'Audioqualität';

  @override
  String get setQualityLow => 'Tief · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Hoch · 192 kbps';

  @override
  String get setQualityBest => 'Beschti verfüegbari';

  @override
  String get setStorage => 'Downloads und Speicher';

  @override
  String get setWifiOnly => 'Nume im WLAN abelade';

  @override
  String get setDailyLimit => 'Tageslimit für d KI';

  @override
  String setDailyLimitSub(int count) {
    return '$count Songs am Tag';
  }

  @override
  String get setBudget => 'Speicher, wo d KI darf bruuche';

  @override
  String setUsed(Object size) {
    return '$size vo Downloads bruucht';
  }

  @override
  String get setYourMusic => 'Dini Musig';

  @override
  String get setImport => 'Musig vo dem Gerät hinzuefüege';

  @override
  String get setImportSub => 'Ordner oder einzelni Dateie uswähle';

  @override
  String get setCleanup => 'Fehlendi Dateie ufruume';

  @override
  String get setCleanupSub => 'Songs entferne, wo d Datei nüme gits';

  @override
  String setCleanupDone(int count) {
    return '$count fehlendi Dateie entfernt.';
  }

  @override
  String get setExport => 'Minen Gschmack ufes anders Gerät schicke';

  @override
  String get setExportSub =>
      'Speichert e Datei mit dine Likes, Wiedergabe und allem, was d KI glernt het';

  @override
  String get setImportTaste => 'Gschmack vomne andere Gerät lade';

  @override
  String get setImportTasteSub =>
      'Wähl e gspeicherti Gschmacksdatei und füeg si zämme – cha ohni Risiko wiederholt wärde';

  @override
  String get setAbout => 'Über';

  @override
  String get setAboutBody =>
      'Musig vo YouTube und dine eigete Dateie. D KI laufft komplett uf dem Gerät – nüt verlaht s.';

  @override
  String get setSource => 'Quellcode';

  @override
  String get importTitle => 'Musig hinzuefüege';

  @override
  String get importPickFolder => 'Ordner uswähle';

  @override
  String get importPickFiles => 'Dateie uswähle';

  @override
  String importScanning(Object file) {
    return 'Scannt $file';
  }

  @override
  String importAdded(int count) {
    return '$count hinzuegfüegt';
  }

  @override
  String get importDenied =>
      'Berechtigung verweigeret – dini Musig cha nöd gläse wärde.';

  @override
  String get importWatched => 'Überwachti Ordner';

  @override
  String get importIosHint =>
      'Öffne d Dateien-App, gang zu Auf meinem iPhone → TuneBox und leg d Musig det ine.';

  @override
  String get playerQueue => 'Warteschlange';

  @override
  String get playerUpNext => 'Als nächsts';

  @override
  String get playerLyrics => 'Liedtext';

  @override
  String get playerNoLyrics => 'Kei Liedtext für dä Song.';

  @override
  String get playerRepeat => 'Wiederhole';

  @override
  String get playerShuffle => 'Zuefall';

  @override
  String errorPlayback(Object title) {
    return '„$title“ het nöd chöne abgspilt wärde';
  }

  @override
  String errorSkipping(Object title) {
    return '„$title“ wird übersprunge – de Stream het sich nöd la öffne.';
  }

  @override
  String get undo => 'Rückgängig';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Grad jetzt: $tags, aagfüehrt vo $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Grad jetzt: $tags.';
  }

  @override
  String get setColour => 'Farb';

  @override
  String get setColourSub => 'D ganzi App richtet sich dernoch';

  @override
  String get setCoverArt => 'Cover';

  @override
  String get setMyColour => 'Mini Farb';

  @override
  String get setCoverArtSub => 'Jede Song färbt d App neu noch sim Cover.';

  @override
  String get setMyColourSub => 'Eini Farb, überall, immer.';

  @override
  String get setPickColour => 'Beliebigi Farb uswähle';

  @override
  String get setWifiOnlyTitle => 'Nume im WLAN abelade';

  @override
  String get setDownloadLikes => 'Alles abelade, was ich mög';

  @override
  String get setDownloadLikesSub => 'De Herz-Chnopf speicheret au d Datei';

  @override
  String get setAiInstall => 'D KI Musig la installiere, wo si uswählt';

  @override
  String get setSkipSilenceSub =>
      'Nume Android. Cha ruhigi Intros, Ausblendige und liisi Stelle abschnide – us la, wenn d Musig hakt';

  @override
  String get setStorageUsed => 'Speicher, wo d Downloads bruuche';

  @override
  String get setLibrary => 'Bibliothek';

  @override
  String get setUpdates => 'Updates';

  @override
  String get setAutoUpdate => 'Elei noch Updates sueche';

  @override
  String get setAutoUpdateSub =>
      'Alli paar Stunde, still, und ladet im WLAN abe. Zum Installiere wirsch immer no gfrogt.';

  @override
  String setUpdateReady(Object version) {
    return 'Update uf $version isch parat';
  }

  @override
  String get setUpdateReadySub => 'Abeglade – tippe zum Installiere';

  @override
  String get setUpdateAvailableSub =>
      'Hol s uf de Releases-Site – tippe zum de Link kopiere';

  @override
  String get setLinkCopied => 'Link kopiert';

  @override
  String get setCheckNow => 'Jetzt prüefe';

  @override
  String get setUpToDate => 'TuneBox isch uf em neueste Stand';

  @override
  String get setChecking => 'Suecht e neueri Version…';
}
