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
}
