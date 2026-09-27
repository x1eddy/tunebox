// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class LIt extends L {
  LIt([String locale = 'it']) : super(locale);

  @override
  String get navHome => 'Home';

  @override
  String get navExplore => 'Esplora';

  @override
  String get navLibrary => 'Libreria';

  @override
  String get navTaste => 'I tuoi gusti';

  @override
  String get actionDone => 'Fatto';

  @override
  String get actionCancel => 'Annulla';

  @override
  String get actionCreate => 'Crea';

  @override
  String get actionPlay => 'Riproduci';

  @override
  String get actionShuffle => 'Casuale';

  @override
  String get actionPlayAll => 'Riproduci tutto';

  @override
  String get actionAdd => 'Aggiungi';

  @override
  String get actionRemove => 'Rimuovi';

  @override
  String get actionName => 'Nome';

  @override
  String get greetingNight => 'Ancora sveglio?';

  @override
  String get greetingMorning => 'Buongiorno';

  @override
  String get greetingAfternoon => 'Buon pomeriggio';

  @override
  String get greetingEvening => 'Buonasera';

  @override
  String get homeBuilding => 'L\'IA sta costruendo i tuoi scaffali…';

  @override
  String get homeOffline => 'Offline — mostro quello che c\'è sul dispositivo';

  @override
  String get homeNothingYet => 'Ancora niente da mostrare';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count scaffali, aggiornati ora',
      one: '1 scaffale, aggiornato ora',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Ricostruisci gli scaffali';

  @override
  String get homeAddMusic => 'Aggiungi musica da questo dispositivo';

  @override
  String get homeQuickPicks => 'Scelte rapide';

  @override
  String get homeQuickPicksSub => 'Torna subito a quello che ascoltavi';

  @override
  String get homeEmptyTitle => 'La tua libreria è vuota';

  @override
  String get homeEmptyBody =>
      'Cerca qualcosa, oppure aggiungi la musica che hai già su questo dispositivo. L\'IA impara fin dal primo ascolto.';

  @override
  String get homeAddMyMusic => 'Aggiungi la mia musica';

  @override
  String homeCouldNotReach(Object error) {
    return 'Impossibile raggiungere YouTube: $error';
  }

  @override
  String get moodFocus => 'Concentrazione';

  @override
  String get moodWorkout => 'Allenamento';

  @override
  String get moodChill => 'Relax';

  @override
  String get moodCommute => 'In viaggio';

  @override
  String get moodParty => 'Festa';

  @override
  String moodBuilding(Object mood) {
    return 'Sto costruendo un mix $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Niente da fare: $error';
  }

  @override
  String get shelfRepeat => 'In loop';

  @override
  String get shelfRepeatSub => 'Le tue ultime due settimane';

  @override
  String get shelfForgotten => 'Vecchi pezzi che ti piacevano';

  @override
  String get shelfForgottenSub =>
      'Amati un tempo, lasciati da parte da un po\'';

  @override
  String get shelfNew => 'Novità';

  @override
  String get shelfNewSub => 'Brani nuovi che secondo l\'IA fanno per te';

  @override
  String shelfBecause(Object artist) {
    return 'Perché hai ascoltato $artist';
  }

  @override
  String get shelfBecauseSub => 'Lo stesso angolo dei tuoi gusti';

  @override
  String get shelfDeep => 'Quasi mai ascoltati';

  @override
  String get shelfDeepSub => 'Nella tua libreria, praticamente mai riprodotti';

  @override
  String get shelfMix => 'Il tuo mix';

  @override
  String get shelfMixSub => 'Rifatto ogni volta che apri l\'app';

  @override
  String get shelfAdded => 'Aggiunti di recente';

  @override
  String get shelfAddedSub => 'Download e file che hai importato';

  @override
  String get shelfStarter => 'Comincia da qui';

  @override
  String get shelfStarterSub =>
      'Ascoltane qualcuno e l\'IA inizia subito a imparare';

  @override
  String reasonPlays(int count) {
    return '$count ascolti';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Ti piaceva, ascoltato $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count ascolti, l\'ultimo $when';
  }

  @override
  String get reasonTopArtist => 'Uno degli artisti che ascolti di più';

  @override
  String reasonMore(Object artist) {
    return 'Ancora $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Torni sempre a $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Il tuo tipo di $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Ultimamente tanto $tag';
  }

  @override
  String get reasonOutThisYear => 'Uscito quest\'anno';

  @override
  String get reasonReleasedRecently => 'Uscito da poco';

  @override
  String get reasonClose => 'Vicino a quello che stai ascoltando';

  @override
  String reasonNear(Object artist) {
    return 'Sta vicino a $artist';
  }

  @override
  String get reasonNeverPlayed => 'Mai riprodotto';

  @override
  String get reasonPlayedOnce => 'Riprodotto una volta';

  @override
  String get reasonPopular => 'Popolare in questo momento';

  @override
  String whenYearsAgo(int count) {
    return '$count anni fa';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count mesi fa';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count giorni fa';
  }

  @override
  String get searchHint => 'Brani, artisti, album';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count risultati',
      one: '1 risultato',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Ricerche recenti';

  @override
  String get searchEmptyTitle => 'Non ho trovato niente';

  @override
  String get searchEmptyBody =>
      'Prova a scriverlo diversamente, o solo il nome dell\'artista.';

  @override
  String get searchStartTitle => 'Trova qualcosa da ascoltare';

  @override
  String get searchStartBody =>
      'Cerca su YouTube Music: tornano solo brani, mai video di altro.';

  @override
  String get libPlaylists => 'Playlist';

  @override
  String get libSongs => 'Brani';

  @override
  String get libArtists => 'Artisti';

  @override
  String get libLiked => 'Mi piace';

  @override
  String get libDownloads => 'Download';

  @override
  String get libImported => 'Importati';

  @override
  String get libLikedSongs => 'Brani che ti piacciono';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count brani',
      one: '1 brano',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'I miei file';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count file',
      one: '1 file',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nuova playlist';

  @override
  String get libMakeOne => 'Creane una';

  @override
  String get libSortRecent => 'Aggiunti di recente';

  @override
  String get libSortTitle => 'Titolo';

  @override
  String get libSortArtist => 'Artista';

  @override
  String get libSortPlays => 'Più ascoltati';

  @override
  String get sheetNotForMe => 'Non fa per me';

  @override
  String get sheetNotForMeSub => 'Non consigliarlo mai più';

  @override
  String get sheetBlocked => 'Bloccato — tocca per riattivarlo';

  @override
  String get sheetBlockedSub => 'Può tornare nei consigli';

  @override
  String get sheetPlayNext => 'Riproduci dopo';

  @override
  String get sheetAddToPlaylist => 'Aggiungi a playlist';

  @override
  String get sheetDownloaded => 'Scaricato';

  @override
  String get sheetRemoveFile => 'Tocca per eliminare il file';

  @override
  String get sheetDownload => 'Scarica';

  @override
  String get sheetKeepOffline => 'Tienilo offline';

  @override
  String get sheetRadio => 'Avvia radio';

  @override
  String get sheetRadioSub => 'Una coda costruita attorno a questo brano';

  @override
  String get sheetQueue => 'Coda';

  @override
  String get sheetSleepTimer => 'Timer di spegnimento';

  @override
  String get sheetSleepOff => 'Spento';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minuti';
  }

  @override
  String get sheetSleepEndOfTrack => 'Alla fine di questo brano';

  @override
  String sheetSleepSet(int count) {
    return 'La musica si ferma tra $count min';
  }

  @override
  String get tasteTitle => 'I tuoi gusti';

  @override
  String get tasteRetrain => 'Riaddestra';

  @override
  String get tasteRetraining => 'Riaddestramento sulla tua cronologia…';

  @override
  String get tasteRetrained => 'L\'IA ha ricostruito il suo modello.';

  @override
  String tasteConfidence(int percent) {
    return 'Sicurezza $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays ascolti · $skips saltati · $likes mi piace';
  }

  @override
  String get tasteEmptySummary => 'Ascolta qualche brano e qui si riempie.';

  @override
  String get tasteKeepLearning => 'Continua a imparare mentre ascolto';

  @override
  String get tasteKeepLearningSub =>
      'Disattiva per congelare il profilo attuale';

  @override
  String get tasteDownloadsTitle => 'Download gestiti dall\'IA';

  @override
  String get tasteDownloadsSub =>
      'La musica arriva sul dispositivo senza chiedertelo';

  @override
  String get tasteDownloadLikes => 'Scarica tutto quello che mi piace';

  @override
  String get tasteDownloadLikesSub => 'Tocca il cuore e il file resta offline';

  @override
  String get tasteAiInstall =>
      'Lascia che l\'IA installi la musica che sceglie';

  @override
  String get tasteAiInstallSub => 'Scaricherà i brani di cui è sicura';

  @override
  String get tasteWhatItThinks => 'Cosa pensa che ti piaccia';

  @override
  String get tasteWhatItThinksSub =>
      'Imparato da ascolti, salti, mi piace e ripetizioni';

  @override
  String get tasteArtists => 'Artisti su cui si appoggia';

  @override
  String get tasteWhenYouListen => 'Quando ascolti';

  @override
  String get tasteWhenYouListenSub =>
      'Ascolti per ora — l\'ora attuale pesa di più';

  @override
  String get tasteDecades => 'Decenni';

  @override
  String get tasteTune => 'Regola i consigli';

  @override
  String get tasteTuneSub => 'Ha effetto al prossimo aggiornamento della Home';

  @override
  String get tasteDiscovery => 'Scoperta';

  @override
  String get tasteDiscoverySub => 'Familiare ↔ mai sentito';

  @override
  String get tasteEnergy => 'Energia';

  @override
  String get tasteEnergySub => 'Calmo ↔ forte';

  @override
  String get tasteRecency => 'Attualità';

  @override
  String get tasteRecencySub => 'Senza tempo ↔ appena uscito';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Dopo quanto un vecchio preferito conta come dimenticato';

  @override
  String get tasteSignals => 'Segnali che può usare';

  @override
  String get tasteSignalsSub => 'Tutto resta su questo dispositivo';

  @override
  String get tasteUseHistory => 'Quello che ho ascoltato';

  @override
  String get tasteUseSkips => 'Quello che salto';

  @override
  String get tasteUseTime => 'Ora del giorno';

  @override
  String get tasteUseYouTube => 'Suggerimenti da YouTube';

  @override
  String get tasteAlwaysMore => 'Sempre più di';

  @override
  String get tasteNeverAgain => 'Mai più';

  @override
  String get tasteAddArtist => 'Aggiungi un artista';

  @override
  String get tasteMoreOfPrompt => 'Sempre più di…';

  @override
  String get tasteNeverAgainPrompt => 'Mai più…';

  @override
  String get tasteReset => 'Azzera quello che ha imparato';

  @override
  String get tasteResetSub => 'La tua musica resta; il profilo riparte da zero';

  @override
  String get trainCard => 'Addestrala votando';

  @override
  String get trainCardSub =>
      'Scorri brani veri. A destra per averne altri così, a sinistra per non sentirli mai più. Due minuti qui valgono più di una settimana di ascolto.';

  @override
  String get trainStart => 'Inizia un turno di addestramento';

  @override
  String get trainTitle => 'Turno di addestramento';

  @override
  String get trainQuestion => 'Lo vorresti nella tua Home?';

  @override
  String get trainMoreLikeThis => 'Altro così';

  @override
  String get trainNeverAgain => 'Mai più';

  @override
  String get trainDone => 'Turno completato';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked tenuti · $blocked bloccati. Sicurezza $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Torna ai tuoi gusti';

  @override
  String get trainNothingTitle => 'Ancora niente da votare';

  @override
  String get trainNothingBody =>
      'Aggiungi musica o lascia che l\'IA trovi dei candidati, poi torna qui.';

  @override
  String get trainLeaveTitle => 'Uscire dal turno di addestramento?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Se esci ora, l\'IA butta via tutto quello di questo turno — tutti i $count brani che hai appena votato.',
      one:
          'Se esci ora, l\'IA butta via tutto quello di questo turno — l\'unico brano che hai appena votato.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Continua';

  @override
  String get trainDiscard => 'Scarta ed esci';

  @override
  String get setTitle => 'Impostazioni';

  @override
  String get setAppearance => 'Aspetto';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Come il sistema';

  @override
  String get setThemeLight => 'Chiaro';

  @override
  String get setThemeDark => 'Scuro';

  @override
  String get setPureBlack => 'Nero pieno';

  @override
  String get setPureBlackSub => 'Risparmia batteria su schermi OLED';

  @override
  String get setAccent => 'Colore d\'accento';

  @override
  String get setAccentArtwork => 'Dalla copertina';

  @override
  String get setAccentFixed => 'Un colore scelto da me';

  @override
  String get setLanguage => 'Lingua';

  @override
  String get setLanguageSystem => 'Come il sistema';

  @override
  String get setAccessibility => 'Accessibilità';

  @override
  String get setTextSize => 'Dimensione del testo';

  @override
  String get setTextSizeSub => 'Oltre all\'impostazione di sistema';

  @override
  String get setReduceMotion => 'Riduci le animazioni';

  @override
  String get setReduceMotionSub =>
      'Ferma le barre, il visualizzatore e le transizioni';

  @override
  String get setHighContrast => 'Contrasto elevato';

  @override
  String get setHighContrastSub => 'Separazione più netta e bordi visibili';

  @override
  String get setBoldText => 'Testo in grassetto';

  @override
  String get setPlayback => 'Riproduzione';

  @override
  String get setAutoRadio => 'Tieni la musica in movimento';

  @override
  String get setAutoRadioSub =>
      'Quando la coda finisce, continua con una radio dall\'ultimo brano';

  @override
  String get setSmartShuffle => 'Casuale intelligente';

  @override
  String get setSmartShuffleSub => 'Mescola in base ai gusti invece che a caso';

  @override
  String get setResume => 'Riprendi da dove ero';

  @override
  String get setResumeSub => 'Ripristina la coda all\'apertura, in pausa';

  @override
  String get setDataSaver => 'Risparmio dati senza Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Limita streaming e download a 128 kbps sotto rete mobile';

  @override
  String get setHaptics => 'Feedback aptico';

  @override
  String get setShowReasons => 'Mostra perché è stato consigliato';

  @override
  String get setSkipSilence => 'Salta i silenzi';

  @override
  String get setQuality => 'Qualità audio';

  @override
  String get setQualityLow => 'Bassa · 64 kbps';

  @override
  String get setQualityNormal => 'Normale · 128 kbps';

  @override
  String get setQualityHigh => 'Alta · 192 kbps';

  @override
  String get setQualityBest => 'La migliore disponibile';

  @override
  String get setStorage => 'Download e spazio';

  @override
  String get setWifiOnly => 'Scarica solo in Wi-Fi';

  @override
  String get setDailyLimit => 'Limite giornaliero per l\'IA';

  @override
  String setDailyLimitSub(int count) {
    return '$count brani al giorno';
  }

  @override
  String get setBudget => 'Spazio che l\'IA può usare';

  @override
  String setUsed(Object size) {
    return '$size occupati dai download';
  }

  @override
  String get setYourMusic => 'La tua musica';

  @override
  String get setImport => 'Aggiungi musica da questo dispositivo';

  @override
  String get setImportSub => 'Scegli cartelle o singoli file';

  @override
  String get setCleanup => 'Pulisci i file mancanti';

  @override
  String get setCleanupSub => 'Rimuove i brani il cui file è sparito';

  @override
  String setCleanupDone(int count) {
    return 'Rimossi $count file mancanti.';
  }

  @override
  String get setExport => 'Manda i miei gusti a un altro dispositivo';

  @override
  String get setExportSub =>
      'Scrive un file di trasferimento: mi piace, ascolti e tutto ciò che l\'IA ha imparato';

  @override
  String get setImportTaste => 'Carica i gusti da un altro dispositivo';

  @override
  String get setImportTasteSub =>
      'Li unisce a quello che questo dispositivo già sa';

  @override
  String get setAbout => 'Informazioni';

  @override
  String get setAboutBody =>
      'Musica da YouTube e dai tuoi file. L\'IA gira interamente su questo dispositivo: non esce niente.';

  @override
  String get setSource => 'Codice sorgente';

  @override
  String get importTitle => 'Aggiungi musica';

  @override
  String get importPickFolder => 'Scegli una cartella';

  @override
  String get importPickFiles => 'Scegli dei file';

  @override
  String importScanning(Object file) {
    return 'Analisi di $file';
  }

  @override
  String importAdded(int count) {
    return '$count aggiunti';
  }

  @override
  String get importDenied =>
      'Permesso negato — non riesco a leggere la tua musica.';

  @override
  String get importWatched => 'Cartelle osservate';

  @override
  String get importIosHint =>
      'Apri l\'app File, vai su Sul mio iPhone → TuneBox e trascina lì la musica.';

  @override
  String get playerQueue => 'Coda';

  @override
  String get playerUpNext => 'A seguire';

  @override
  String get playerLyrics => 'Testo';

  @override
  String get playerNoLyrics => 'Nessun testo per questo brano.';

  @override
  String get playerRepeat => 'Ripeti';

  @override
  String get playerShuffle => 'Casuale';

  @override
  String errorPlayback(Object title) {
    return 'Impossibile riprodurre «$title»';
  }

  @override
  String errorSkipping(Object title) {
    return 'Salto «$title» — lo stream non si è aperto.';
  }

  @override
  String get undo => 'Annulla';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'In questo momento: $tags, con $artist in testa.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'In questo momento: $tags.';
  }

  @override
  String get setColour => 'Colore';

  @override
  String get setColourSub => 'Tutta l\'app lo segue';

  @override
  String get setCoverArt => 'Copertina';

  @override
  String get setMyColour => 'Il mio colore';

  @override
  String get setCoverArtSub =>
      'Ogni brano ricolora l\'app partendo dalla copertina.';

  @override
  String get setMyColourSub => 'Un colore, ovunque, sempre.';

  @override
  String get setPickColour => 'Scegli un altro colore';

  @override
  String get setWifiOnlyTitle => 'Scarica solo in Wi-Fi';

  @override
  String get setDownloadLikes => 'Scarica tutto quello che mi piace';

  @override
  String get setDownloadLikesSub => 'Il cuore salva anche il file';

  @override
  String get setAiInstall => 'Lascia che l\'IA installi la musica che sceglie';

  @override
  String get setSkipSilenceSub => 'Solo su Android';

  @override
  String get setStorageUsed => 'Spazio occupato dai download';

  @override
  String get setLibrary => 'Libreria';

  @override
  String get setUpdates => 'Aggiornamenti';

  @override
  String get setAutoUpdate => 'Cerca aggiornamenti da solo';

  @override
  String get setAutoUpdateSub =>
      'Ogni poche ore, in silenzio, e scarica sotto Wi-Fi. L\'installazione te lo chiede comunque.';

  @override
  String setUpdateReady(Object version) {
    return 'L\'aggiornamento a $version è pronto';
  }

  @override
  String get setUpdateReadySub => 'Scaricato — tocca per installare';

  @override
  String get setCheckNow => 'Cerca ora';

  @override
  String get setUpToDate => 'TuneBox è aggiornato';

  @override
  String get setChecking => 'Cerco una versione più recente…';
}
