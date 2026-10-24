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
  String get setUpdateAvailableSub =>
      'Disponibile nella pagina delle release — tocca per copiare il link';

  @override
  String get setLinkCopied => 'Link copiato';

  @override
  String get setCheckNow => 'Cerca ora';

  @override
  String get setUpToDate => 'TuneBox è aggiornato';

  @override
  String get setChecking => 'Cerco una versione più recente…';

  @override
  String get homeCantReach => 'YouTube non raggiungibile';

  @override
  String get homeOfflineHint =>
      'Controlla la connessione. Tutto ciò che è già sul dispositivo funziona ancora.';

  @override
  String get actionRetry => 'Riprova';

  @override
  String get actionClear => 'Cancella';

  @override
  String get searchFailed => 'La ricerca non è riuscita';

  @override
  String get profWho => 'Chi sta ascoltando?';

  @override
  String get profExplain =>
      'Ogni profilo ha la sua libreria, i suoi preferiti, le sue playlist e i suoi gusti.';

  @override
  String get profActive => 'Attivo';

  @override
  String get profRename => 'Rinomina';

  @override
  String get profDeleteMenu => 'Elimina profilo';

  @override
  String get profAdd => 'Aggiungi profilo';

  @override
  String get profNew => 'Nuovo profilo';

  @override
  String get profName => 'Nome';

  @override
  String profDeleteTitle(String name) {
    return 'Eliminare \"$name\"?';
  }

  @override
  String get profDeleteBody =>
      'La sua libreria, i preferiti, le playlist e i gusti appresi vengono rimossi definitivamente. I file musicali restano sul dispositivo.';

  @override
  String get profKeep => 'Mantieni';

  @override
  String get actionOk => 'OK';

  @override
  String get actionDelete => 'Elimina';

  @override
  String get xferTitle => 'Sposta i tuoi gusti';

  @override
  String xferIntro(String profile) {
    return 'Preferiti, riproduzioni e regole degli artisti di \"$profile\". La ricezione si unisce a questo profilo e si può ripetere senza rischi: nulla viene duplicato.';
  }

  @override
  String get xferSectionWifi => 'Tra dispositivi sulla stessa rete Wi-Fi';

  @override
  String get xferSend => 'Invia a un dispositivo vicino';

  @override
  String get xferSendSub =>
      'Mostra un codice; l\'altro dispositivo trova questo';

  @override
  String get xferReceive => 'Ricevi da un dispositivo vicino';

  @override
  String get xferReceiveSub =>
      'Trova i mittenti automaticamente: digiti il codice';

  @override
  String get xferSectionFile => 'Con un file';

  @override
  String get xferSave => 'Salva in un file';

  @override
  String get xferSaveSub => 'Scegli dove va: Download, USB, una chat…';

  @override
  String get xferLoad => 'Carica da un file';

  @override
  String get xferLoadSub => 'Qualsiasi file di gusti TuneBox, vecchio o nuovo';

  @override
  String get xferSectionText => 'Come testo';

  @override
  String get xferCopy => 'Copia come testo';

  @override
  String get xferCopySub => 'Una riga da incollare in qualsiasi chat o nota';

  @override
  String get xferPaste => 'Incolla testo';

  @override
  String get xferPasteSub => 'Dagli appunti';

  @override
  String get xferSaveDialog => 'Salva i tuoi gusti';

  @override
  String xferSaved(String kb) {
    return 'Salvati $kb KB. Sull\'altro dispositivo scegli \"Carica da un file\".';
  }

  @override
  String xferSaveFailed(String error) {
    return 'Impossibile salvare: $error';
  }

  @override
  String xferFileUnreadable(String error) {
    return 'Impossibile leggere quel file come gusti: $error';
  }

  @override
  String xferCopied(String kb) {
    return 'Copiato ($kb KB di testo). Incollalo sull\'altro dispositivo con \"Incolla testo\".';
  }

  @override
  String xferCopyFailed(String error) {
    return 'Impossibile copiare: $error';
  }

  @override
  String get xferClipboardEmpty =>
      'Gli appunti non contengono gusti TuneBox. Copiali prima sull\'altro dispositivo.';

  @override
  String get xferNewerTitle => 'Più recente di questa app';

  @override
  String get xferNewerBody =>
      'Questi gusti sono stati creati da una versione più recente di TuneBox. Aggiorna prima questo dispositivo.';

  @override
  String xferMergeTitle(String profile) {
    return 'Unire a \"$profile\"?';
  }

  @override
  String xferMergeBody(
    String source,
    int songs,
    int liked,
    int plays,
    int rules,
  ) {
    return 'Da $source:\n• $songs brani, $liked preferiti\n• $plays riproduzioni\n• $rules regole degli artisti\n\nI tuoi preferiti e la cronologia restano. Farlo due volte non cambia nulla.';
  }

  @override
  String get xferSourceFile => 'il file';

  @override
  String get xferSourceClipboard => 'gli appunti';

  @override
  String get xferMerge => 'Unisci';

  @override
  String get xferMerging => 'Unione in corso…';

  @override
  String xferMerged(String summary) {
    return 'Unito: $summary';
  }

  @override
  String xferMergeFailed(String error) {
    return 'Unione non riuscita: $error';
  }

  @override
  String get xferSendTitle => 'Invia i tuoi gusti';

  @override
  String xferCouldNotStart(String error) {
    return 'Impossibile avviare: $error';
  }

  @override
  String get xferSent => 'Inviato. L\'altro dispositivo ha i tuoi gusti.';

  @override
  String get xferClosed =>
      'Chiuso: il codice è scaduto o è stato sbagliato troppe volte. Ricomincia per ottenerne uno nuovo.';

  @override
  String get xferSendHow =>
      'Sull\'altro dispositivo apri Impostazioni → Sposta i tuoi gusti → Ricevi, scegli questo dispositivo e digita:';

  @override
  String get xferNoWifi =>
      'Nessun indirizzo Wi-Fi trovato: collega entrambi i dispositivi alla stessa rete.';

  @override
  String xferThisDevice(String addresses, int port) {
    return 'Questo dispositivo: $addresses (porta $port)';
  }

  @override
  String get xferWaiting =>
      'In attesa dell\'altro dispositivo… (si chiude dopo 5 minuti)';

  @override
  String xferCodeFor(String name) {
    return 'Codice mostrato su $name';
  }

  @override
  String get xferCodeLabel => 'Codice a 6 cifre';

  @override
  String get xferReceiveAction => 'Ricevi';

  @override
  String xferReceivingFrom(String name) {
    return 'Ricezione da $name…';
  }

  @override
  String get xferWrongCode =>
      'Codice errato. Controlla il numero sull\'altro dispositivo.';

  @override
  String get xferNotTaste => 'Non erano gusti TuneBox.';

  @override
  String xferCouldNotReach(String error) {
    return 'Impossibile raggiungerlo: $error';
  }

  @override
  String xferLooking(String host) {
    return 'Ricerca di $host…';
  }

  @override
  String xferNothingAt(String host) {
    return 'Nessuna risposta da $host. Invia è aperto lì?';
  }

  @override
  String get xferReceiveTitle => 'Ricevi dei gusti';

  @override
  String get xferOpenSendFirst =>
      'Apri prima Invia sull\'altro dispositivo (stessa rete Wi-Fi).';

  @override
  String get xferSearching => 'Ricerca di dispositivi vicini…';

  @override
  String get xferNoSender => 'Nessun mittente trovato per ora.';

  @override
  String get xferSearchAgain => 'Cerca di nuovo';

  @override
  String get xferTypeAddress => 'Non in elenco? Digita il suo indirizzo';

  @override
  String get xferConnect => 'Connetti';

  @override
  String get qUndo => 'Annulla';

  @override
  String qRemoved(String title) {
    return 'Rimosso \"$title\"';
  }

  @override
  String get qCleared => 'Coda svuotata';

  @override
  String qSaved(String songs, String name) {
    return 'Salvato $songs in \"$name\"';
  }

  @override
  String qTitle(int count) {
    return 'Coda · $count';
  }

  @override
  String get qSavePlaylist => 'Salva come playlist';

  @override
  String get qClear => 'Svuota coda';

  @override
  String get qClearSub => 'Mantiene il brano in riproduzione';

  @override
  String get qEmptyTitle => 'La coda è vuota';

  @override
  String get qEmptyBody => 'Riproduci qualcosa e si riempirà qui.';

  @override
  String get qDrag => 'Trascina per riordinare';

  @override
  String plDeleted(String name) {
    return 'Eliminata \"$name\"';
  }

  @override
  String get plDeleteSub => 'I brani restano nella tua libreria';

  @override
  String get plDelete => 'Elimina playlist';

  @override
  String get plRenameOrDelete => 'Rinomina o elimina';

  @override
  String get aLibListView => 'Vista a elenco';

  @override
  String get aLibGridView => 'Vista a griglia';

  @override
  String get aLibSortAlpha => 'A–Z';

  @override
  String get aLibSortYear => 'Anno';

  @override
  String get aLibNothingYet => 'Ancora niente qui';

  @override
  String get aLibImportedEmptyBody =>
      'Aggiungi la musica già presente su questo dispositivo.';

  @override
  String get aLibEmptyBody => 'Riproduci o scarica qualcosa e finirà qui.';

  @override
  String aLibBannerSummary(String songs, String size) {
    return '$songs · $size su questo dispositivo';
  }

  @override
  String get aLibOfflineNote => 'Questi si riproducono senza connessione';

  @override
  String aLibAiPicked(String count) {
    return '$count di questi li ha scelti l\'IA per te';
  }

  @override
  String get aPlaylistLabel => 'Playlist';

  @override
  String get aLibNoArtists => 'Ancora nessun artista';

  @override
  String get aLibNoArtistsBody =>
      'Riproduci qualche brano e si raccoglieranno qui.';

  @override
  String get aHomeSearch => 'Cerca';

  @override
  String get aHomeInYourLibrary => 'Nella tua libreria';

  @override
  String get aHomeInYourLibrarySub => 'Quello che hai aggiunto finora';

  @override
  String get aSearchHintDots => 'Brani, artisti, album…';

  @override
  String get aSearchEmptyBody =>
      'Prova un\'altra grafia o incolla un link di YouTube.';

  @override
  String get aSearchTrySomething => 'Prova qualcosa';

  @override
  String get aSearchLearnedFrom => 'Da ciò che l\'IA ha imparato';

  @override
  String get aSearchAnything => 'Cerca qualsiasi cosa su YouTube';

  @override
  String get aSearchSeedTap => 'Tocca uno spunto per esplorare';

  @override
  String get aSearchArtistsYouPlay => 'Artisti che ascolti';

  @override
  String aSearchAffinity(String percent) {
    return '$percent% di affinità';
  }

  @override
  String get aArtistAlwaysMore => 'Sempre di più';

  @override
  String get aArtistClearRule => 'Rimuovi regola';

  @override
  String get aArtistBoosted => 'favorito';

  @override
  String get aArtistBlocked => 'bloccato';

  @override
  String get aArtistRadio => 'Radio';

  @override
  String get aPlLikedSub => 'Tutto ciò a cui hai messo il cuore';

  @override
  String get aPlDownloadsSub => 'Si riproduce senza connessione';

  @override
  String get aPlImportedSub => 'Musica che hai aggiunto da questo dispositivo';

  @override
  String get aPlEmptyTitle => 'Vuota per ora';

  @override
  String get aPlEmptyBody => 'Aggiungi brani dal menu ⋮ di qualsiasi traccia.';

  @override
  String aPlDownloading(String songs) {
    return 'Download di $songs…';
  }

  @override
  String bTasteAiBudgetSub(String count, String gb) {
    return 'Fino a $count brani al giorno, $gb GB di budget';
  }

  @override
  String get bTasteSongsPerDay => 'Brani al giorno';

  @override
  String get bTasteStorageMayUse => 'Spazio che può usare';

  @override
  String bTasteGb(String gb) {
    return '$gb GB';
  }

  @override
  String get bTasteNothingToDownload =>
      'Per ora niente di nuovo che valga il download.';

  @override
  String bTasteQueuedSongs(String count) {
    return '$count brani scelti dall\'IA in coda.';
  }

  @override
  String get bTasteFetchNow => 'Scarica ora';

  @override
  String get bTasteNotEnoughListening =>
      'Non hai ascoltato abbastanza. Riproduci qualche brano o avvia un giro di allenamento qui sotto.';

  @override
  String get bTasteFamiliar => 'Familiare';

  @override
  String get bTasteDiscoveryCap1 => 'Soprattutto brani che già conosci';

  @override
  String get bTasteDiscoveryCap2 => 'Qualche brano nuovo per scaffale';

  @override
  String get bTasteDiscoveryCap3 => 'Metà della Home sarà nuova per te';

  @override
  String get bTasteDiscoveryCap4 => 'Mostrami cose che non ho mai ascoltato';

  @override
  String get bTasteCalm => 'Calmo';

  @override
  String get bTasteHighEnergy => 'Molta energia';

  @override
  String get bTasteEnergyCaption => 'Spinge le scelte verso più forti e veloci';

  @override
  String get bTasteTimeless => 'Senza tempo';

  @override
  String get bTasteFresh => 'Fresco';

  @override
  String get bTasteRecencyCaption =>
      'Quanto \"Novità ⭐\" dipende dalla data di uscita';

  @override
  String get bTasteRarely => 'Raramente';

  @override
  String get bTasteOften => 'Spesso';

  @override
  String get bTasteNostalgiaCaption =>
      'Quanto scavare per vecchie hit dimenticate';

  @override
  String get bTasteListeningHistory => 'Cronologia di ascolto';

  @override
  String bTastePlaysRecorded(String count) {
    return '$count riproduzioni registrate';
  }

  @override
  String get bTasteSkips => 'Salti';

  @override
  String bTasteSkipsCounted(String count) {
    return '$count salti contati contro i brani';
  }

  @override
  String get bTasteTimeOfDaySub => 'Scelte diverse alle 08:00 e alle 23:00';

  @override
  String get bTasteYoutubeRelated => 'Brani correlati di YouTube';

  @override
  String get bTasteYoutubeRelatedSub => 'Porta brani che non hai ancora';

  @override
  String get bTasteResetSub =>
      'Cancella riproduzioni, salti e pesi. Mantiene la libreria.';

  @override
  String get bTasteResetDialogTitle => 'Reimpostare l\'IA?';

  @override
  String get bTasteResetDialogBody =>
      'Libreria, playlist e download restano. Tutto ciò che ha imparato su di te viene cancellato e la Home torna alle impostazioni predefinite.';

  @override
  String get bTasteResetAction => 'Reimposta';

  @override
  String get bTrainHearIt => 'Ascolta';

  @override
  String bImportDoneAdded(String count) {
    return 'Fatto · $count nuovi brani aggiunti';
  }

  @override
  String bImportScanningProgress(String scanned, String total) {
    return 'Scansione · $scanned di $total file';
  }

  @override
  String get bImportWatchedFolders => 'Cartelle monitorate';

  @override
  String get bImportWatchedFoldersSub => 'Riscansionate all\'avvio dell\'app';

  @override
  String get bImportNoneYet =>
      'Ancora nessuna. Scegli una cartella e verrà monitorata automaticamente.';

  @override
  String get bImportFoundOnDevice => 'Trovate su questo dispositivo';

  @override
  String get bImportFoundOnDeviceSub => 'Tocca per scansionare e monitorare';

  @override
  String get bImportYourFiles => 'I tuoi file';

  @override
  String bImportImportedSoFar(String count) {
    return '$count importati finora';
  }

  @override
  String get bImportFilesStayNote =>
      'I file restano dove sono: TuneBox si limita a indicizzarli. Se ne elimini uno, sparirà in silenzio dalla libreria alla prossima scansione.';

  @override
  String get bImportRescan => 'Riscansiona';

  @override
  String get cMore => 'Altro';

  @override
  String cBlockedSnack(String title) {
    return '\"$title\" bloccata — l\'IA la eviterà';
  }

  @override
  String get cLike => 'Mi piace';

  @override
  String get cUnlike => 'Non mi piace più';

  @override
  String get cRemoveFromLiked => 'Rimuovi dai preferiti';

  @override
  String get cLikeSub => 'L\'IA impara subito';

  @override
  String get cSave => 'Salva';

  @override
  String get cNothingPlaying => 'Nessun brano in riproduzione';

  @override
  String get cNothingPlayingBody => 'Scegli un brano e comparirà qui.';

  @override
  String get cPlayingFrom => 'In riproduzione da';

  @override
  String get cSeek => 'Cerca';

  @override
  String cTimeOf(String done, String total) {
    return '$done di $total';
  }

  @override
  String get cShuffleOn => 'Casuale: attivo';

  @override
  String get cShuffleOff => 'Casuale: disattivato';

  @override
  String get cPrevious => 'Precedente';

  @override
  String get cNext => 'Successivo';

  @override
  String get cPause => 'Pausa';

  @override
  String get cRepeatOne => 'Ripeti: questo brano';

  @override
  String get cRepeatOff => 'Ripeti: disattivato';

  @override
  String get cRepeatAll => 'Ripeti: tutta la coda';

  @override
  String get cSaved => 'Salvato';

  @override
  String get cAudio => 'Audio';

  @override
  String get cSpeed => 'Velocità';

  @override
  String get cAndroidOnly => 'Solo Android';

  @override
  String get cPlaylist => 'Playlist';

  @override
  String get cSearchResults => 'Risultati di ricerca';

  @override
  String get cYourLibrary => 'La tua libreria';

  @override
  String get cRadio => 'Radio';

  @override
  String get cYourQueue => 'La tua coda';

  @override
  String cDownloadFailed(String title) {
    return 'Download non riuscito: $title';
  }

  @override
  String cAiDownloading(String title) {
    return 'L\'IA sta scaricando $title';
  }

  @override
  String cDownloading(String title) {
    return 'Download di $title';
  }

  @override
  String get cSaveQueueAs => 'Salva la coda come';

  @override
  String cProfileSwitch(String count) {
    return 'Profilo · tocca per cambiare ($count)';
  }

  @override
  String get cProfileAddAnother =>
      'Profilo · tocca per aggiungere un altro ascoltatore';

  @override
  String get cUseIt => 'Usa';

  @override
  String cAiBudgetSub(String daily, String gb) {
    return 'Fino a $daily/giorno · budget di $gb GB · regolalo in I tuoi gusti';
  }

  @override
  String cFoldersWatched(String count) {
    return '$count cartelle monitorate';
  }

  @override
  String get cMoveTasteSub =>
      'Tra dispositivi via Wi-Fi, o con un file o del testo';

  @override
  String get cSearchLanguages => 'Cerca lingue';

  @override
  String cNoLanguageMatch(String query) {
    return 'Nessuna lingua corrisponde a \"$query\"';
  }
}
