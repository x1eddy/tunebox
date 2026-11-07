// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class LCa extends L {
  LCa([String locale = 'ca']) : super(locale);

  @override
  String get navHome => 'Inici';

  @override
  String get navExplore => 'Explora';

  @override
  String get navLibrary => 'Biblioteca';

  @override
  String get navTaste => 'El teu gust';

  @override
  String get actionDone => 'Fet';

  @override
  String get actionCancel => 'Cancel·la';

  @override
  String get actionCreate => 'Crea';

  @override
  String get actionPlay => 'Reprodueix';

  @override
  String get actionShuffle => 'Aleatori';

  @override
  String get actionPlayAll => 'Reprodueix-ho tot';

  @override
  String get actionAdd => 'Afegeix';

  @override
  String get actionRemove => 'Elimina';

  @override
  String get actionName => 'Nom';

  @override
  String get greetingNight => 'Encara despert?';

  @override
  String get greetingMorning => 'Bon dia';

  @override
  String get greetingAfternoon => 'Bona tarda';

  @override
  String get greetingEvening => 'Bon vespre';

  @override
  String get homeBuilding => 'La IA està muntant els teus prestatges…';

  @override
  String get homeOffline =>
      'Sense connexió: es mostra el que hi ha al dispositiu';

  @override
  String get homeNothingYet => 'Encara no hi ha res per mostrar';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prestatges, actualitzats ara mateix',
      one: '1 prestatge, actualitzat ara mateix',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Refés els prestatges';

  @override
  String get homeAddMusic => 'Afegeix música d\'aquest dispositiu';

  @override
  String get homeQuickPicks => 'Tria ràpida';

  @override
  String get homeQuickPicksSub => 'Torna directament al que escoltaves';

  @override
  String get homeEmptyTitle => 'La teva biblioteca és buida';

  @override
  String get homeEmptyBody =>
      'Cerca alguna cosa o afegeix la música que ja hi ha en aquest dispositiu. La IA comença a aprendre des de la teva primera reproducció.';

  @override
  String get homeAddMyMusic => 'Afegeix la meva música';

  @override
  String homeCouldNotReach(Object error) {
    return 'No s\'ha pogut connectar amb YouTube: $error';
  }

  @override
  String get moodFocus => 'Concentració';

  @override
  String get moodWorkout => 'Exercici';

  @override
  String get moodChill => 'Relax';

  @override
  String get moodCommute => 'Trajecte';

  @override
  String get moodParty => 'Festa';

  @override
  String moodBuilding(Object mood) {
    return 'Preparant una mescla de $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Sense sort: $error';
  }

  @override
  String get shelfRepeat => 'En bucle';

  @override
  String get shelfRepeatSub => 'Les teves últimes dues setmanes';

  @override
  String get shelfForgotten => 'Antics èxits oblidats que t\'agradaven';

  @override
  String get shelfForgottenSub =>
      'Estimats un temps, sense tocar des de fa estona';

  @override
  String get shelfNew => 'Novetats';

  @override
  String get shelfNewSub => 'Cançons fresques que la IA creu que són per a tu';

  @override
  String shelfBecause(Object artist) {
    return 'Perquè has escoltat $artist';
  }

  @override
  String get shelfBecauseSub => 'El mateix racó del teu gust';

  @override
  String get shelfDeep => 'Gairebé sense tocar';

  @override
  String get shelfDeepSub => 'A la teva biblioteca, gairebé mai reproduït';

  @override
  String get shelfMix => 'La teva mescla';

  @override
  String get shelfMixSub => 'Es refà cada cop que obres l\'aplicació';

  @override
  String get shelfAdded => 'Afegit recentment';

  @override
  String get shelfAddedSub => 'Baixades i fitxers que has importat';

  @override
  String get shelfStarter => 'Comença aquí';

  @override
  String get shelfStarterSub =>
      'Escolta\'n unes quantes i la IA començarà a aprendre de seguida';

  @override
  String reasonPlays(int count) {
    return '$count reproduccions';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'T\'agrada, última reproducció $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count reproduccions, l\'última $when';
  }

  @override
  String get reasonTopArtist => 'Un dels artistes que més escoltes';

  @override
  String reasonMore(Object artist) {
    return 'Més $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Sempre tornes a $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'El teu tipus de $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Molt de $tag últimament';
  }

  @override
  String get reasonOutThisYear => 'Sortit aquest any';

  @override
  String get reasonReleasedRecently => 'Publicat recentment';

  @override
  String get reasonClose => 'Proper al que has estat escoltant';

  @override
  String reasonNear(Object artist) {
    return 'Proper a $artist';
  }

  @override
  String get reasonNeverPlayed => 'Mai reproduït';

  @override
  String get reasonPlayedOnce => 'Reproduït una vegada';

  @override
  String get reasonPopular => 'Popular ara mateix';

  @override
  String whenYearsAgo(int count) {
    return 'fa $count anys';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'fa $count mesos';
  }

  @override
  String whenDaysAgo(int count) {
    return 'fa $count dies';
  }

  @override
  String get searchHint => 'Cançons, artistes, àlbums';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultats',
      one: '1 resultat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Cerques recents';

  @override
  String get searchEmptyTitle => 'No s\'ha trobat res';

  @override
  String get searchEmptyBody =>
      'Prova una altra grafia, o només el nom de l\'artista.';

  @override
  String get searchStartTitle => 'Troba alguna cosa per escoltar';

  @override
  String get searchStartBody =>
      'Cerca a YouTube Music: només tornen cançons, mai vídeos d\'altres coses.';

  @override
  String get libPlaylists => 'Llistes';

  @override
  String get libSongs => 'Cançons';

  @override
  String get libArtists => 'Artistes';

  @override
  String get libLiked => 'M\'agrada';

  @override
  String get libDownloads => 'Baixades';

  @override
  String get libImported => 'Importat';

  @override
  String get libLikedSongs => 'Cançons que m\'agraden';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cançons',
      one: '1 cançó',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count sense connexió';
  }

  @override
  String get libMyFiles => 'Els meus fitxers';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fitxers',
      one: '1 fitxer',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Llista nova';

  @override
  String get libMakeOne => 'Crea\'n una';

  @override
  String get libSortRecent => 'Afegit recentment';

  @override
  String get libSortTitle => 'Títol';

  @override
  String get libSortArtist => 'Artista';

  @override
  String get libSortPlays => 'Més reproduït';

  @override
  String get sheetNotForMe => 'No és per a mi';

  @override
  String get sheetNotForMeSub => 'No ho recomanis mai més';

  @override
  String get sheetBlocked => 'Bloquejat: toca per permetre-ho de nou';

  @override
  String get sheetBlockedSub => 'Pot tornar a aparèixer a les recomanacions';

  @override
  String get sheetPlayNext => 'Reprodueix a continuació';

  @override
  String get sheetAddToPlaylist => 'Afegeix a una llista';

  @override
  String get sheetDownloaded => 'Baixat';

  @override
  String get sheetRemoveFile => 'Toca per eliminar el fitxer';

  @override
  String get sheetDownload => 'Baixa';

  @override
  String get sheetKeepOffline => 'Conserva-ho per a sense connexió';

  @override
  String get sheetRadio => 'Inicia la ràdio';

  @override
  String get sheetRadioSub => 'Una cua creada al voltant d\'aquesta cançó';

  @override
  String get sheetQueue => 'Cua';

  @override
  String get sheetSleepTimer => 'Temporitzador de son';

  @override
  String get sheetSleepOff => 'Desactivat';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minuts';
  }

  @override
  String get sheetSleepEndOfTrack => 'Al final d\'aquesta cançó';

  @override
  String sheetSleepSet(int count) {
    return 'La música s\'aturarà d\'aquí a $count min';
  }

  @override
  String get tasteTitle => 'El teu gust';

  @override
  String get tasteRetrain => 'Reentrena';

  @override
  String get tasteRetraining => 'Reentrenant amb el teu historial…';

  @override
  String get tasteRetrained => 'La IA ha refet el seu model.';

  @override
  String tasteConfidence(int percent) {
    return 'Confiança $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays reproduccions · $skips omeses · $likes m\'agrada';
  }

  @override
  String get tasteEmptySummary =>
      'Escolta unes quantes cançons i això s\'omplirà.';

  @override
  String get tasteKeepLearning => 'Continua aprenent mentre escolto';

  @override
  String get tasteKeepLearningSub =>
      'Desactiva-ho per congelar el perfil actual';

  @override
  String get tasteDownloadsTitle => 'Baixades que gestiona la IA';

  @override
  String get tasteDownloadsSub =>
      'La música arriba al dispositiu sense que ho demanis';

  @override
  String get tasteDownloadLikes => 'Baixa tot el que m\'agrada';

  @override
  String get tasteDownloadLikesSub =>
      'Toca el cor i el fitxer es desa per a sense connexió';

  @override
  String get tasteAiInstall => 'Deixa que la IA instal·li la música que triï';

  @override
  String get tasteAiInstallSub =>
      'Baixarà les cançons de les quals estigui segura';

  @override
  String get tasteWhatItThinks => 'El que creu que t\'agrada';

  @override
  String get tasteWhatItThinksSub =>
      'Après a partir de reproduccions, omissions, m\'agrada i repeticions';

  @override
  String get tasteArtists => 'Artistes en què es basa';

  @override
  String get tasteWhenYouListen => 'Quan escoltes';

  @override
  String get tasteWhenYouListenSub =>
      'Reproduccions per hora: l\'hora actual té més pes';

  @override
  String get tasteDecades => 'Dècades';

  @override
  String get tasteTune => 'Ajusta les recomanacions';

  @override
  String get tasteTuneSub => 'Té efecte en la propera actualització d\'Inici';

  @override
  String get tasteDiscovery => 'Descobriment';

  @override
  String get tasteDiscoverySub => 'Conegut ↔ coses que no has sentit mai';

  @override
  String get tasteEnergy => 'Energia';

  @override
  String get tasteEnergySub => 'Calma ↔ forta';

  @override
  String get tasteRecency => 'Novetat';

  @override
  String get tasteRecencySub => 'Atemporal ↔ nou de trinca';

  @override
  String get tasteNostalgia => 'Nostàlgia';

  @override
  String get tasteNostalgiaSub =>
      'Quant de temps ha de passar perquè un vell favorit es consideri oblidat';

  @override
  String get tasteSignals => 'Senyals que pot utilitzar';

  @override
  String get tasteSignalsSub => 'Tot es queda en aquest dispositiu';

  @override
  String get tasteUseHistory => 'El que he escoltat';

  @override
  String get tasteUseSkips => 'El que ometo';

  @override
  String get tasteUseTime => 'Hora del dia';

  @override
  String get tasteUseYouTube => 'Suggeriments de YouTube';

  @override
  String get tasteAlwaysMore => 'Sempre més de';

  @override
  String get tasteNeverAgain => 'Mai més';

  @override
  String get tasteAddArtist => 'Afegeix un artista';

  @override
  String get tasteMoreOfPrompt => 'Sempre més de…';

  @override
  String get tasteNeverAgainPrompt => 'Mai més…';

  @override
  String get tasteReset => 'Restableix el que ha après';

  @override
  String get tasteResetSub =>
      'La teva música es queda; el perfil comença de zero';

  @override
  String get trainCard => 'Entrena-la valorant';

  @override
  String get trainCardSub =>
      'Llisca per cançons reals. Dreta per més com aquesta, esquerra per mai més. Dos minuts aquí valen més que una setmana d\'escolta.';

  @override
  String get trainStart => 'Comença una ronda d\'entrenament';

  @override
  String get trainTitle => 'Ronda d\'entrenament';

  @override
  String get trainQuestion => 'Voldries això a Inici?';

  @override
  String get trainMoreLikeThis => 'Més com aquesta';

  @override
  String get trainNeverAgain => 'Mai més';

  @override
  String get trainDone => 'Ronda completada';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked conservades · $blocked bloquejades. Confiança $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Torna al teu gust';

  @override
  String get trainNothingTitle => 'Encara no hi ha res per valorar';

  @override
  String get trainNothingBody =>
      'Afegeix música o deixa que la IA baixi candidats primer, i després torna.';

  @override
  String get trainLeaveTitle => 'Vols sortir de la ronda d\'entrenament?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Si surts ara, la IA descarta tot el d\'aquesta ronda: les $count cançons que acabes de valorar.',
      one:
          'Si surts ara, la IA descarta tot el d\'aquesta ronda: la cançó que acabes de valorar.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Continua entrenant';

  @override
  String get trainDiscard => 'Descarta i surt';

  @override
  String get setTitle => 'Configuració';

  @override
  String get setAppearance => 'Aparença';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Segueix el sistema';

  @override
  String get setThemeLight => 'Clar';

  @override
  String get setThemeDark => 'Fosc';

  @override
  String get setPureBlack => 'Negre pur';

  @override
  String get setPureBlackSub => 'Estalvia energia en una pantalla OLED';

  @override
  String get setAccent => 'Color d\'accent';

  @override
  String get setAccentArtwork => 'De la portada';

  @override
  String get setAccentFixed => 'Un color que he triat';

  @override
  String get setLanguage => 'Idioma';

  @override
  String get setLanguageSystem => 'Segueix el sistema';

  @override
  String get setAccessibility => 'Accessibilitat';

  @override
  String get setTextSize => 'Mida del text';

  @override
  String get setTextSizeSub => 'A més de la configuració del sistema';

  @override
  String get setReduceMotion => 'Redueix el moviment';

  @override
  String get setReduceMotionSub =>
      'Atura les barres, el visualitzador, el desplaçament amb rebot, els tocs elàstics i les transicions de pàgina';

  @override
  String get setHighContrast => 'Contrast alt';

  @override
  String get setHighContrastSub => 'Més separació i contorns visibles';

  @override
  String get setBoldText => 'Text en negreta';

  @override
  String get setPlayback => 'Reproducció';

  @override
  String get setAutoRadio => 'Mantén la música sonant';

  @override
  String get setAutoRadioSub =>
      'Quan s\'acabi la cua, continua amb una ràdio creada a partir de l\'última cançó';

  @override
  String get setSmartShuffle => 'Aleatori intel·ligent';

  @override
  String get setSmartShuffleSub =>
      'Barreja segons el gust en lloc d\'a l\'atzar';

  @override
  String get setResume => 'Continua on ho havia deixat';

  @override
  String get setResumeSub => 'Restaura la cua en obrir l\'aplicació, en pausa';

  @override
  String get setDataSaver => 'Estalvi de dades fora de la Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Limita les reproduccions i baixades a 128 kbps amb dades mòbils';

  @override
  String get setHaptics => 'Resposta hàptica';

  @override
  String get setShowReasons => 'Mostra per què s\'ha recomanat alguna cosa';

  @override
  String get setSkipSilence => 'Omet els silencis';

  @override
  String get setQuality => 'Qualitat d\'àudio';

  @override
  String get setQualityLow => 'Baixa · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Alta · 192 kbps';

  @override
  String get setQualityBest => 'La millor disponible';

  @override
  String get setStorage => 'Baixades i emmagatzematge';

  @override
  String get setWifiOnly => 'Baixa només amb Wi-Fi';

  @override
  String get setDailyLimit => 'Límit diari per a la IA';

  @override
  String setDailyLimitSub(int count) {
    return '$count cançons al dia';
  }

  @override
  String get setBudget => 'Emmagatzematge que pot usar la IA';

  @override
  String setUsed(Object size) {
    return '$size utilitzats per les baixades';
  }

  @override
  String get setYourMusic => 'La teva música';

  @override
  String get setImport => 'Afegeix música d\'aquest dispositiu';

  @override
  String get setImportSub => 'Tria carpetes o fitxers individuals';

  @override
  String get setCleanup => 'Neteja els fitxers que falten';

  @override
  String get setCleanupSub => 'Elimina les cançons que ja no tenen fitxer';

  @override
  String setCleanupDone(int count) {
    return 'S\'han eliminat $count fitxers que faltaven.';
  }

  @override
  String get setExport => 'Envia el meu gust a un altre dispositiu';

  @override
  String get setExportSub =>
      'Desa un fitxer amb els teus m\'agrada, reproduccions i tot el que la IA ha après';

  @override
  String get setImportTaste => 'Carrega el gust d\'un altre dispositiu';

  @override
  String get setImportTasteSub =>
      'Tria un fitxer de gust desat i fusiona\'l: es pot repetir sense risc';

  @override
  String get setAbout => 'Quant a';

  @override
  String get setAboutBody =>
      'Música de YouTube i dels teus fitxers. La IA s\'executa íntegrament en aquest dispositiu: res no en surt.';

  @override
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

  @override
  String get setSource => 'Codi font';

  @override
  String get importTitle => 'Afegeix música';

  @override
  String get importPickFolder => 'Tria una carpeta';

  @override
  String get importPickFiles => 'Tria fitxers';

  @override
  String importScanning(Object file) {
    return 'Explorant $file';
  }

  @override
  String importAdded(int count) {
    return '$count afegits';
  }

  @override
  String get importDenied => 'Permís denegat: no es pot llegir la teva música.';

  @override
  String get importWatched => 'Carpetes que vigila';

  @override
  String get importIosHint =>
      'Obre l\'aplicació Fitxers, ves a Al meu iPhone → TuneBox i deixa-hi la música.';

  @override
  String get playerQueue => 'Cua';

  @override
  String get playerUpNext => 'A continuació';

  @override
  String get playerLyrics => 'Lletra';

  @override
  String get playerNoLyrics => 'No hi ha lletra per a aquesta.';

  @override
  String get playerRepeat => 'Repeteix';

  @override
  String get playerShuffle => 'Aleatori';

  @override
  String errorPlayback(Object title) {
    return 'No s\'ha pogut reproduir \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'S\'omet \"$title\": la reproducció no s\'ha pogut obrir.';
  }

  @override
  String get undo => 'Desfés';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Ara mateix: $tags, encapçalat per $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Ara mateix: $tags.';
  }

  @override
  String get setColour => 'Color';

  @override
  String get setColourSub => 'Tota l\'aplicació el segueix';

  @override
  String get setCoverArt => 'Portada';

  @override
  String get setMyColour => 'El meu color';

  @override
  String get setCoverArtSub =>
      'Cada cançó retinta l\'aplicació amb la seva portada.';

  @override
  String get setMyColourSub => 'Un sol color, arreu, sempre.';

  @override
  String get setPickColour => 'Tria qualsevol color';

  @override
  String get setWifiOnlyTitle => 'Baixa només amb Wi-Fi';

  @override
  String get setDownloadLikes => 'Baixa tot el que m\'agrada';

  @override
  String get setDownloadLikesSub => 'El botó del cor també desa el fitxer';

  @override
  String get setAiInstall => 'Deixa que la IA instal·li la música que triï';

  @override
  String get setSkipSilenceSub =>
      'Només Android. Pot retallar introduccions silencioses, fosos i parts suaus: deixa-ho desactivat si la música salta';

  @override
  String get setStorageUsed => 'Emmagatzematge usat per les baixades';

  @override
  String get setLibrary => 'Biblioteca';

  @override
  String get setUpdates => 'Actualitzacions';

  @override
  String get setAutoUpdate => 'Cerca actualitzacions automàticament';

  @override
  String get setAutoUpdateSub =>
      'Cada poques hores, discretament, i baixa amb Wi-Fi. La instal·lació encara et pregunta.';

  @override
  String setUpdateReady(Object version) {
    return 'L\'actualització a $version està preparada';
  }

  @override
  String get setUpdateReadySub => 'Baixada: toca per instal·lar';

  @override
  String get setUpdateAvailableSub =>
      'Aconsegueix-la a la pàgina de versions: toca per copiar l\'enllaç';

  @override
  String get setLinkCopied => 'Enllaç copiat';

  @override
  String get setCheckNow => 'Comprova ara';

  @override
  String get setUpToDate => 'TuneBox està actualitzat';

  @override
  String get setChecking => 'Cercant una versió més nova…';

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
    return '$count of them picked for you';
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
  String get aSearchLearnedFrom => 'Based on what you play';

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
    return 'Queued $count songs picked for you.';
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
  String get bTasteResetDialogTitle => 'Start learning from scratch?';

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
    return '\"$title\" won\'t come up again';
  }

  @override
  String get cLike => 'Like';

  @override
  String get cUnlike => 'Unlike';

  @override
  String get cRemoveFromLiked => 'Remove from liked';

  @override
  String get cLikeSub => 'Counts right away';

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
    return 'Fetching $title for you';
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

  @override
  String get sndTitle => 'Sound';

  @override
  String get sndSub => 'Crossfade, equaliser, loudness, sleep timer';

  @override
  String get sndAll => 'All sound settings';

  @override
  String get sndBetween => 'Between songs';

  @override
  String get sndCrossfade => 'Crossfade';

  @override
  String get sndGapless => 'Gapless';

  @override
  String sndSeconds(int n) {
    return '$n s';
  }

  @override
  String get sndSmart => 'Smart crossfade';

  @override
  String get sndSmartSub =>
      'Albums and live sets play straight through; short songs fade quicker';

  @override
  String get sndLoudness => 'Loudness';

  @override
  String get sndNormalize => 'Even out loudness';

  @override
  String get sndNormalizeSub =>
      'Turns down songs that are mastered louder than the rest';

  @override
  String get sndQuiet => 'Quiet';

  @override
  String get sndNormal => 'Normal';

  @override
  String get sndLoud => 'Loud';

  @override
  String get sndEq => 'Equaliser';

  @override
  String get sndEqOn => 'Use the equaliser';

  @override
  String get sndEqOnlyAndroid => 'The equaliser is available on Android.';

  @override
  String get sndEqFor => 'Each output keeps its own sound';

  @override
  String get sndInUse => 'in use';

  @override
  String get sndSpeaker => 'Speaker';

  @override
  String get sndWired => 'Wired';

  @override
  String get sndBluetooth => 'Bluetooth';

  @override
  String get sndSavePreset => 'Save as preset';

  @override
  String get sndPresetName => 'Preset name';

  @override
  String get sndDeletePreset => 'Delete preset';

  @override
  String get sndCustom => 'Custom';

  @override
  String get sndBoost => 'Extra loudness';

  @override
  String get sndBoostSub =>
      'Lifts quiet phones and earbuds. Too much can distort.';

  @override
  String get sndSpeedPitch => 'Speed and pitch';

  @override
  String get sndSpeed => 'Speed';

  @override
  String get sndPitch => 'Pitch';

  @override
  String get sndReset => 'Reset';

  @override
  String get eqFlat => 'Flat';

  @override
  String get eqBass => 'Bass';

  @override
  String get eqVocal => 'Vocal';

  @override
  String get eqNight => 'Night';

  @override
  String get eqHeadphones => 'Headphones';

  @override
  String get eqCar => 'Car';

  @override
  String get eqTreble => 'Treble';

  @override
  String get sleepTitle => 'Sleep timer';

  @override
  String sleepMinutes(int n) {
    return '$n min';
  }

  @override
  String get sleepEndSong => 'End of song';

  @override
  String get sleepEndQueue => 'End of queue';

  @override
  String sleepLeft(String time) {
    return 'Stops in $time';
  }

  @override
  String get sleepAfterSong => 'Stops after this song';

  @override
  String get sleepAfterQueue => 'Stops when the queue ends';

  @override
  String get sleepShake => 'Shake the phone for 10 more minutes';

  @override
  String get sleepCancel => 'Turn off';

  @override
  String get lyrRetry => 'Try again';

  @override
  String get lyrOffline =>
      'Lyrics need a connection the first time. After that they work offline.';

  @override
  String get lyrCredit => 'Lyrics from LRCLIB, an open community database';

  @override
  String get lyrShow => 'Show lyrics';

  @override
  String get lyrShowArt => 'Show cover';

  @override
  String get rwTitle => 'Rewind';

  @override
  String get rwEntry => 'Your listening, as a story';

  @override
  String get rwWeek => 'This week';

  @override
  String get rwMonth => 'This month';

  @override
  String get rwYear => 'This year';

  @override
  String get rwAll => 'All time';

  @override
  String get rwNotYet => 'Not enough listening yet';

  @override
  String get rwNotYetBody =>
      'Play a few songs in this period and your story fills in. Try a longer period.';

  @override
  String get rwShare => 'Share this card';

  @override
  String get rwShareText =>
      'My listening, from TuneBox — https://tunebox.pages.dev';

  @override
  String rwSaved(String path) {
    return 'Saved to $path';
  }

  @override
  String get rwMinutes => 'minutes of music';

  @override
  String rwPlaysSongs(int plays, int songs) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays plays',
      one: '1 play',
    );
    String _temp1 = intl.Intl.pluralLogic(
      songs,
      locale: localeName,
      other: '$songs different songs',
      one: '1 song',
    );
    return '$_temp0 of $_temp1';
  }

  @override
  String rwPlays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count plays',
      one: '1 play',
    );
    return '$_temp0';
  }

  @override
  String rwPlaysMinutes(int plays, int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      plays,
      locale: localeName,
      other: '$plays plays',
      one: '1 play',
    );
    return '$_temp0 · $minutes min';
  }

  @override
  String get rwTopSong => 'Your song';

  @override
  String get rwTopSongs => 'On repeat';

  @override
  String get rwTopArtists => 'Your artists';

  @override
  String get rwSound => 'Your sound';

  @override
  String get rwYourHour => 'Your hour';

  @override
  String get rwStreak => 'Longest streak';

  @override
  String get rwDaysInARow => 'days in a row with music';

  @override
  String rwDiscovery(int percent) {
    return '$percent% of what you played was new to you';
  }

  @override
  String get rwUnskippable => 'Couldn\'t skip it';

  @override
  String get rwNeverSkipped => 'Played again and again, not skipped once.';

  @override
  String get rwYouAre => 'You are';

  @override
  String get rwExplorer => 'The Explorer';

  @override
  String get rwExplorerSub =>
      'Most of what you played was new. Your taste keeps moving.';

  @override
  String get rwLoyalist => 'The Loyalist';

  @override
  String get rwLoyalistSub =>
      'A few artists, played properly. You know what you love.';

  @override
  String get rwCollector => 'The Collector';

  @override
  String get rwCollectorSub => 'Dozens of artists, rarely the same song twice.';

  @override
  String get rwRepeater => 'The Repeater';

  @override
  String get rwRepeaterSub => 'When a song gets you, it really gets you.';

  @override
  String get rwAllRounder => 'The All-Rounder';

  @override
  String get rwAllRounderSub => 'A bit of everything, in good balance.';

  @override
  String get shelfYearAgo => 'A year ago';

  @override
  String get shelfMonthAgo => 'A month ago';

  @override
  String get shelfOnThisDaySub => 'What you were playing around this day';

  @override
  String get mixTitle => 'Describe a mix';

  @override
  String get mixEntry => 'Describe a mix…';

  @override
  String get mixAsk => 'What do you want to hear?';

  @override
  String get mixHint => 'rainy sunday 2000s rock, no Linkin Park';

  @override
  String get mixPrivate => 'Read on this phone. Your words never leave it.';

  @override
  String get mixMake => 'Make it';

  @override
  String get mixTry => 'Try one of these';

  @override
  String get mixEx1 => 'chill lofi to study, 1 hour';

  @override
  String get mixEx2 => 'workout hip hop, getting faster';

  @override
  String get mixEx3 => '80s synthwave like The Midnight';

  @override
  String get mixEx4 => 'party afrobeats, 20 songs';

  @override
  String get mixNothing => 'Nothing fits that yet';

  @override
  String get mixNothingBody =>
      'Try fewer conditions, or turn on YouTube suggestions in Your taste.';

  @override
  String get mixUnderstood => 'Understood as';

  @override
  String mixLike(String artist) {
    return 'like $artist';
  }

  @override
  String get mixRising => 'getting faster';

  @override
  String get mixFalling => 'winding down';

  @override
  String get mixSave => 'Save as playlist';

  @override
  String get mixSaveAs => 'Name for this playlist';

  @override
  String get mixAgain => 'Shuffle it up';

  @override
  String reasonMatches(String what) {
    return 'Fits: $what';
  }

  @override
  String get reasonNewFind => 'A new find';

  @override
  String get stTitle => 'Appearance studio';

  @override
  String get stSub => 'Themes, fonts, player styles, tabs, gestures';

  @override
  String get stThemes => 'Themes';

  @override
  String get stFollow => 'My colour';

  @override
  String get stType => 'Type and shape';

  @override
  String get stSystem => 'System';

  @override
  String get stCorners => 'Corners';

  @override
  String get stSharp => 'Sharp';

  @override
  String get stSoft => 'Soft';

  @override
  String get stRound => 'Round';

  @override
  String get stDensity => 'Spacing';

  @override
  String get stCompact => 'Compact';

  @override
  String get stComfy => 'Comfy';

  @override
  String get stPlayer => 'Player';

  @override
  String get stClassic => 'Classic';

  @override
  String get stVinyl => 'Vinyl';

  @override
  String get stFullBleed => 'Big art';

  @override
  String get stMinimal => 'Minimal';

  @override
  String get stCassette => 'Cassette';

  @override
  String get stVisualizer => 'Visualiser';

  @override
  String get stSeek => 'Seek bar';

  @override
  String get stBars => 'Bars';

  @override
  String get stWave => 'Wave';

  @override
  String get stLine => 'Line';

  @override
  String get stThick => 'Thick';

  @override
  String get stOff => 'Off';

  @override
  String get stLiving => 'Living background';

  @override
  String get stLivingSub =>
      'Colours from the cover drift slowly behind the player';

  @override
  String get stDoubleTap => 'Double-tap the cover to like';

  @override
  String get stTabs => 'Tabs';

  @override
  String get stTabsSub => 'Drag to reorder, switch off what you never use';

  @override
  String get stLabels => 'Show tab names';

  @override
  String get stGlass => 'Frosted navigation';

  @override
  String get stHome => 'Home layout';

  @override
  String get stHomeSub => 'Which shelves, in which order';

  @override
  String get stGestures => 'Gestures';

  @override
  String get stSwipeRight => 'Swipe a song right';

  @override
  String get stSwipeLeft => 'Swipe a song left';

  @override
  String get stNothing => 'Nothing';

  @override
  String get stShake => 'Shake to skip';

  @override
  String get stShakeSub => 'A firm shake of the phone plays the next song';

  @override
  String get stShareLook => 'Share your look';

  @override
  String get stCopyCode => 'Copy theme code';

  @override
  String get stCodeSub =>
      'Send it to a friend; pasting it gives them exactly this look';

  @override
  String get stPasteCode => 'Paste a theme code';

  @override
  String get stCodeCopied => 'Theme code copied';

  @override
  String get stCodeApplied => 'New look applied';

  @override
  String get stCodeBad => 'That is not a TuneBox theme code';

  @override
  String get stReset => 'Back to the default look';

  @override
  String swLiked(String title) {
    return 'Liked \"$title\"';
  }

  @override
  String swQueued(String title) {
    return '\"$title\" plays next';
  }

  @override
  String get glxTitle => 'Taste Galaxy';

  @override
  String get glxEntry => 'Your artists as a map of stars';

  @override
  String get glxHint =>
      'Big stars are played most. Neighbours sound alike. Tap a star.';

  @override
  String get glxLasso => 'Draw around a cluster';

  @override
  String get glxLassoHint =>
      'Draw a loop around some stars to play that corner of your taste';

  @override
  String get glxLassoEmpty => 'No stars inside that loop';

  @override
  String glxLassoPlaying(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Playing $count artists',
      one: 'Playing 1 artist',
    );
    return '$_temp0';
  }

  @override
  String get glxRecenter => 'Back to the whole sky';

  @override
  String glxPlay(String artist) {
    return 'Play $artist';
  }

  @override
  String get glxOpen => 'Open artist page';

  @override
  String get glxMore => 'More of this artist';

  @override
  String get glxNever => 'Never play this artist';

  @override
  String get glxEmpty => 'Your sky is still dark';

  @override
  String get glxEmptyBody =>
      'Add songs from a few different artists and the stars appear.';

  @override
  String get blendTitle => 'Blend';

  @override
  String get blendEntry => 'One queue from two tastes';

  @override
  String get blendIntro =>
      'For a party, a car or a shared speaker. TuneBox finds what you both like and takes turns fairly. The other taste is only read, never added to yours.';

  @override
  String get blendWith => 'Blend with';

  @override
  String get blendProfile => 'A profile on this device';

  @override
  String get blendPaste => 'A friend\'s taste code';

  @override
  String get blendPasteSub =>
      'Copy it first (Move your taste → As text), then tap here';

  @override
  String get blendFile => 'A taste file';

  @override
  String get blendFriend => 'Your friend';

  @override
  String get blendBad => 'That is not a TuneBox taste';

  @override
  String blendYouAnd(String name) {
    return 'You and $name';
  }

  @override
  String get blendHigh => 'Practically the same ears.';

  @override
  String get blendMid => 'Plenty in common, and some to discover.';

  @override
  String get blendLow =>
      'Very different tastes. This one will be an adventure.';

  @override
  String get blendPlay => 'Play the blend';

  @override
  String get blendOther => 'Blend with someone else';

  @override
  String get blendLearn => 'Let the blend teach TuneBox';

  @override
  String get blendLearnSub =>
      'Off: what plays in a blend does not change your taste';

  @override
  String get blendBothArtists => 'Artists you both have';

  @override
  String get blendQueue => 'The queue';

  @override
  String get blendBoth => 'you both';

  @override
  String get blendYours => 'yours';

  @override
  String get syncTitle => 'Synced devices';

  @override
  String get syncHeadline => 'One taste, on all your devices';

  @override
  String get syncIntro =>
      'Pair your phone and computer once. After that they swap what they learned by themselves, about every 45 minutes and whenever you open the app, while both are on the same Wi-Fi. No account and no server.';

  @override
  String get syncDevices => 'Paired devices';

  @override
  String get syncNow => 'Sync now';

  @override
  String get syncNone => 'Nothing paired yet';

  @override
  String get syncNoneSub =>
      'Show a code on one device and type it on the other.';

  @override
  String syncLast(String when) {
    return 'Last synced $when';
  }

  @override
  String get syncNever => 'not yet';

  @override
  String get syncJustNow => 'just now';

  @override
  String syncMinutesAgo(int n) {
    return '$n min ago';
  }

  @override
  String syncHoursAgo(int n) {
    return '$n h ago';
  }

  @override
  String get syncForget => 'Unpair';

  @override
  String syncForgetQ(String name) {
    return 'Unpair $name?';
  }

  @override
  String get syncForgetBody =>
      'Nothing is deleted. The two devices just stop swapping taste.';

  @override
  String get syncAdd => 'Add a device';

  @override
  String get syncShowCode => 'Show a pairing code';

  @override
  String get syncShowCodeSub => 'On this device';

  @override
  String get syncEnterCode => 'Type a pairing code';

  @override
  String get syncEnterCodeSub => 'Shown on your other device';

  @override
  String get syncPrivate => 'Stays on your network';

  @override
  String get syncPrivateSub =>
      'Devices talk directly and every transfer is encrypted with a key only they know.';

  @override
  String get syncTypeThis => 'Type this code on your other device';

  @override
  String get syncWaiting => 'Waiting for it… keep this open.';

  @override
  String syncAddress(String address) {
    return 'If it is not found, type this address there: $address';
  }

  @override
  String get syncCodeExpired => 'That code has expired.';

  @override
  String get syncNewCode => 'New code';

  @override
  String syncPaired(String name) {
    return 'Paired with $name';
  }

  @override
  String get syncPair => 'Pair';

  @override
  String get syncNotFound => 'Not found? Type its address';

  @override
  String get syncAddressLabel => 'Address (e.g. 192.168.1.20)';

  @override
  String syncDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Synced with $count devices',
      one: 'Synced with 1 device',
    );
    return '$_temp0';
  }

  @override
  String get syncNoneReached =>
      'Could not reach your other devices. Are they on and on the same Wi-Fi?';

  @override
  String get syncNoDevice =>
      'No device with an open code was found on this Wi-Fi';

  @override
  String get syncWrongCode => 'That code is not right';

  @override
  String get syncNotPaired => 'The other device no longer knows this one';

  @override
  String get syncUnreachable => 'Not reachable right now';

  @override
  String get syncSettingsOff =>
      'Keep your taste the same on phone and computer';

  @override
  String syncSettingsOn(String names) {
    return 'Syncing with $names';
  }
}
