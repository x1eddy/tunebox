// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class LGl extends L {
  LGl([String locale = 'gl']) : super(locale);

  @override
  String get navHome => 'Inicio';

  @override
  String get navExplore => 'Explorar';

  @override
  String get navLibrary => 'Biblioteca';

  @override
  String get navTaste => 'O teu gusto';

  @override
  String get actionDone => 'Feito';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionCreate => 'Crear';

  @override
  String get actionPlay => 'Reproducir';

  @override
  String get actionShuffle => 'Aleatorio';

  @override
  String get actionPlayAll => 'Reproducir todo';

  @override
  String get actionAdd => 'Engadir';

  @override
  String get actionRemove => 'Eliminar';

  @override
  String get actionName => 'Nome';

  @override
  String get greetingNight => 'Aínda esperto?';

  @override
  String get greetingMorning => 'Bos días';

  @override
  String get greetingAfternoon => 'Boas tardes';

  @override
  String get greetingEvening => 'Boas noites';

  @override
  String get homeBuilding => 'A IA está montando as túas estantarías…';

  @override
  String get homeOffline => 'Sen conexión — mostrando o que hai no dispositivo';

  @override
  String get homeNothingYet => 'Aínda non hai nada que mostrar';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count estantarías, actualizadas agora mesmo',
      one: '1 estantaría, actualizada agora mesmo',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Reconstruír estantarías';

  @override
  String get homeAddMusic => 'Engadir música deste dispositivo';

  @override
  String get homeQuickPicks => 'Escollas rápidas';

  @override
  String get homeQuickPicksSub => 'Volve directo ao que estabas escoitando';

  @override
  String get homeEmptyTitle => 'A túa biblioteca está baleira';

  @override
  String get homeEmptyBody =>
      'Busca algo ou engade a música que xa hai neste dispositivo. A IA comeza a aprender desde a túa primeira reprodución.';

  @override
  String get homeAddMyMusic => 'Engadir a miña música';

  @override
  String homeCouldNotReach(Object error) {
    return 'Non se puido acceder a YouTube: $error';
  }

  @override
  String get moodFocus => 'Concentración';

  @override
  String get moodWorkout => 'Exercicio';

  @override
  String get moodChill => 'Relax';

  @override
  String get moodCommute => 'Traxecto';

  @override
  String get moodParty => 'Festa';

  @override
  String moodBuilding(Object mood) {
    return 'Creando unha mestura $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Sen sorte: $error';
  }

  @override
  String get shelfRepeat => 'En repetición';

  @override
  String get shelfRepeatSub => 'As túas últimas dúas semanas';

  @override
  String get shelfForgotten => 'Vellos éxitos esquecidos que che gustaban';

  @override
  String get shelfForgottenSub =>
      'Moi queridos noutro tempo, sen tocar desde hai un tempo';

  @override
  String get shelfNew => 'Novidades';

  @override
  String get shelfNewSub => 'Temas novos que a IA pensa que son para ti';

  @override
  String shelfBecause(Object artist) {
    return 'Porque escoitaches $artist';
  }

  @override
  String get shelfBecauseSub => 'O mesmo currunchiño do teu gusto';

  @override
  String get shelfDeep => 'Case sen tocar';

  @override
  String get shelfDeepSub => 'Na túa biblioteca, case nunca reproducido';

  @override
  String get shelfMix => 'A túa mestura';

  @override
  String get shelfMixSub => 'Reconstruída cada vez que abres a app';

  @override
  String get shelfAdded => 'Engadido recentemente';

  @override
  String get shelfAddedSub => 'Descargas e ficheiros que importaches';

  @override
  String get shelfStarter => 'Comeza aquí';

  @override
  String get shelfStarterSub =>
      'Reproduce algunhas e a IA comeza a aprender de inmediato';

  @override
  String reasonPlays(int count) {
    return '$count reproducións';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Gustouche, última reprodución $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count reproducións, última $when';
  }

  @override
  String get reasonTopArtist => 'Un dos artistas que máis escoitas';

  @override
  String reasonMore(Object artist) {
    return 'Máis de $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Sempre volves a $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'O teu tipo de $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Moito $tag ultimamente';
  }

  @override
  String get reasonOutThisYear => 'Saíu este ano';

  @override
  String get reasonReleasedRecently => 'Lanzado recentemente';

  @override
  String get reasonClose => 'Preto do que escoitaches';

  @override
  String reasonNear(Object artist) {
    return 'Está preto de $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nunca reproducido';

  @override
  String get reasonPlayedOnce => 'Reproducido unha vez';

  @override
  String get reasonPopular => 'Popular agora mesmo';

  @override
  String whenYearsAgo(int count) {
    return 'hai $count a';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'hai $count meses';
  }

  @override
  String whenDaysAgo(int count) {
    return 'hai $count días';
  }

  @override
  String get searchHint => 'Cancións, artistas, álbums';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultados',
      one: '1 resultado',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Buscas recentes';

  @override
  String get searchEmptyTitle => 'Non se atopou nada';

  @override
  String get searchEmptyBody =>
      'Proba con outra ortografía ou só co nome do artista.';

  @override
  String get searchStartTitle => 'Atopa algo para reproducir';

  @override
  String get searchStartBody =>
      'Busca en YouTube Music — só aparecen cancións, nunca vídeos doutras cousas.';

  @override
  String get libPlaylists => 'Listas';

  @override
  String get libSongs => 'Cancións';

  @override
  String get libArtists => 'Artistas';

  @override
  String get libLiked => 'Favoritas';

  @override
  String get libDownloads => 'Descargas';

  @override
  String get libImported => 'Importadas';

  @override
  String get libLikedSongs => 'Cancións que me gustan';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cancións',
      one: '1 canción',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count sen conexión';
  }

  @override
  String get libMyFiles => 'Os meus ficheiros';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ficheiros',
      one: '1 ficheiro',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nova lista';

  @override
  String get libMakeOne => 'Crear unha';

  @override
  String get libSortRecent => 'Engadido recentemente';

  @override
  String get libSortTitle => 'Título';

  @override
  String get libSortArtist => 'Artista';

  @override
  String get libSortPlays => 'Máis reproducido';

  @override
  String get sheetNotForMe => 'Non é para min';

  @override
  String get sheetNotForMeSub => 'Non recomendar isto nunca máis';

  @override
  String get sheetBlocked => 'Bloqueada — toca para permitir de novo';

  @override
  String get sheetBlockedSub => 'Pode volver aparecer nas recomendacións';

  @override
  String get sheetPlayNext => 'Reproducir a seguir';

  @override
  String get sheetAddToPlaylist => 'Engadir a unha lista';

  @override
  String get sheetDownloaded => 'Descargada';

  @override
  String get sheetRemoveFile => 'Toca para eliminar o ficheiro';

  @override
  String get sheetDownload => 'Descargar';

  @override
  String get sheetKeepOffline => 'Gardala para usar sen conexión';

  @override
  String get sheetRadio => 'Iniciar radio';

  @override
  String get sheetRadioSub => 'Unha cola creada arredor desta canción';

  @override
  String get sheetQueue => 'Cola';

  @override
  String get sheetSleepTimer => 'Temporizador de sono';

  @override
  String get sheetSleepOff => 'Desactivado';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minutos';
  }

  @override
  String get sheetSleepEndOfTrack => 'Final desta canción';

  @override
  String sheetSleepSet(int count) {
    return 'A música para en $count min';
  }

  @override
  String get tasteTitle => 'O teu gusto';

  @override
  String get tasteRetrain => 'Reentrenar';

  @override
  String get tasteRetraining => 'Reentrenando co teu historial…';

  @override
  String get tasteRetrained => 'A IA reconstruíu o seu modelo.';

  @override
  String tasteConfidence(int percent) {
    return 'Confianza $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays reproducións · $skips saltos · $likes gústames';
  }

  @override
  String get tasteEmptySummary => 'Reproduce algunhas cancións e isto énchese.';

  @override
  String get tasteKeepLearning => 'Seguir aprendendo mentres escoito';

  @override
  String get tasteKeepLearningSub => 'Desactiva para conxelar o perfil actual';

  @override
  String get tasteDownloadsTitle => 'Descargas que xestiona a IA';

  @override
  String get tasteDownloadsSub =>
      'A música chega ao dispositivo sen que o pidas';

  @override
  String get tasteDownloadLikes => 'Descargar todo o que me gusta';

  @override
  String get tasteDownloadLikesSub =>
      'Toca o corazón e o ficheiro gárdase para usar sen conexión';

  @override
  String get tasteAiInstall => 'Deixar que a IA instale a música que escolla';

  @override
  String get tasteAiInstallSub => 'Descargará temas dos que estea segura';

  @override
  String get tasteWhatItThinks => 'O que pensa que che gusta';

  @override
  String get tasteWhatItThinksSub =>
      'Aprendido de reproducións, saltos, gústames e repeticións';

  @override
  String get tasteArtists => 'Artistas nos que se apoia';

  @override
  String get tasteWhenYouListen => 'Cando escoitas';

  @override
  String get tasteWhenYouListenSub =>
      'Reproducións por hora — a hora actual pesa máis';

  @override
  String get tasteDecades => 'Décadas';

  @override
  String get tasteTune => 'Axustar as recomendacións';

  @override
  String get tasteTuneSub => 'Aplícase na seguinte actualización de Inicio';

  @override
  String get tasteDiscovery => 'Descubrimento';

  @override
  String get tasteDiscoverySub => 'Familiar ↔ cousas que nunca escoitaches';

  @override
  String get tasteEnergy => 'Enerxía';

  @override
  String get tasteEnergySub => 'Calmo ↔ forte';

  @override
  String get tasteRecency => 'Actualidade';

  @override
  String get tasteRecencySub => 'Atemporal ↔ recén saído';

  @override
  String get tasteNostalgia => 'Nostalxia';

  @override
  String get tasteNostalgiaSub =>
      'Canto hai que retroceder para que un vello favorito conte como esquecido';

  @override
  String get tasteSignals => 'Sinais que pode usar';

  @override
  String get tasteSignalsSub => 'Todo queda neste dispositivo';

  @override
  String get tasteUseHistory => 'O que reproduxen';

  @override
  String get tasteUseSkips => 'O que salto';

  @override
  String get tasteUseTime => 'Hora do día';

  @override
  String get tasteUseYouTube => 'Suxestións de YouTube';

  @override
  String get tasteAlwaysMore => 'Sempre máis de';

  @override
  String get tasteNeverAgain => 'Nunca máis';

  @override
  String get tasteAddArtist => 'Engadir un artista';

  @override
  String get tasteMoreOfPrompt => 'Sempre máis de…';

  @override
  String get tasteNeverAgainPrompt => 'Nunca máis…';

  @override
  String get tasteReset => 'Restablecer o que aprendeu';

  @override
  String get tasteResetSub => 'A túa música queda; o perfil comeza de cero';

  @override
  String get trainCard => 'Entrénaa puntuando';

  @override
  String get trainCardSub =>
      'Desliza por cancións reais. Á dereita para máis así, á esquerda para nunca máis. Dous minutos aquí valen máis que unha semana escoitando.';

  @override
  String get trainStart => 'Iniciar unha rolda de entrenamento';

  @override
  String get trainTitle => 'Rolda de entrenamento';

  @override
  String get trainQuestion => 'Querías isto no teu Inicio?';

  @override
  String get trainMoreLikeThis => 'Máis así';

  @override
  String get trainNeverAgain => 'Nunca máis';

  @override
  String get trainDone => 'Rolda completada';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked gardadas · $blocked bloqueadas. Confianza $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Volver ao teu gusto';

  @override
  String get trainNothingTitle => 'Aínda nada que puntuar';

  @override
  String get trainNothingBody =>
      'Engade música ou deixa que a IA busque candidatas primeiro e logo volve.';

  @override
  String get trainLeaveTitle => 'Saír da rolda de entrenamento?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Se sales agora, a IA descarta todo desta rolda — as $count cancións que acabas de puntuar.',
      one:
          'Se sales agora, a IA descarta todo desta rolda — a canción que acabas de puntuar.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Seguir entrenando';

  @override
  String get trainDiscard => 'Descartar e saír';

  @override
  String get setTitle => 'Axustes';

  @override
  String get setAppearance => 'Aparencia';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Seguir o sistema';

  @override
  String get setThemeLight => 'Claro';

  @override
  String get setThemeDark => 'Escuro';

  @override
  String get setPureBlack => 'Negro puro';

  @override
  String get setPureBlackSub => 'Aforra batería nunha pantalla OLED';

  @override
  String get setAccent => 'Cor de realce';

  @override
  String get setAccentArtwork => 'Da portada';

  @override
  String get setAccentFixed => 'Unha cor que escollín';

  @override
  String get setLanguage => 'Idioma';

  @override
  String get setLanguageSystem => 'Seguir o sistema';

  @override
  String get setAccessibility => 'Accesibilidade';

  @override
  String get setTextSize => 'Tamaño do texto';

  @override
  String get setTextSizeSub => 'Ademais do axuste do sistema';

  @override
  String get setReduceMotion => 'Reducir o movemento';

  @override
  String get setReduceMotionSub =>
      'Detén as barras, o visualizador, o desprazamento elástico, os toques con rebote e as transicións de páxina';

  @override
  String get setHighContrast => 'Contraste alto';

  @override
  String get setHighContrastSub => 'Separación máis forte e contornos visibles';

  @override
  String get setBoldText => 'Texto en negra';

  @override
  String get setPlayback => 'Reprodución';

  @override
  String get setAutoRadio => 'Manter a música en marcha';

  @override
  String get setAutoRadioSub =>
      'Cando remata a cola, continúa cunha radio creada a partir da última canción';

  @override
  String get setSmartShuffle => 'Aleatorio intelixente';

  @override
  String get setSmartShuffleSub => 'Mestura segundo o gusto en vez de ao azar';

  @override
  String get setResume => 'Continuar onde o deixei';

  @override
  String get setResumeSub => 'Restaura a cola ao abrir a app, en pausa';

  @override
  String get setDataSaver => 'Aforro de datos fóra da wifi';

  @override
  String get setDataSaverSub =>
      'Limita a transmisión e as descargas a 128 kbps cos datos móbiles';

  @override
  String get setHaptics => 'Resposta háptica';

  @override
  String get setShowReasons => 'Mostrar por que se recomendou algo';

  @override
  String get setSkipSilence => 'Saltar silencios';

  @override
  String get setQuality => 'Calidade de son';

  @override
  String get setQualityLow => 'Baixa · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Alta · 192 kbps';

  @override
  String get setQualityBest => 'A mellor dispoñible';

  @override
  String get setStorage => 'Descargas e almacenamento';

  @override
  String get setWifiOnly => 'Descargar só con wifi';

  @override
  String get setDailyLimit => 'Límite diario para a IA';

  @override
  String setDailyLimitSub(int count) {
    return '$count cancións ao día';
  }

  @override
  String get setBudget => 'Almacenamento que pode usar a IA';

  @override
  String setUsed(Object size) {
    return '$size usados polas descargas';
  }

  @override
  String get setYourMusic => 'A túa música';

  @override
  String get setImport => 'Engadir música deste dispositivo';

  @override
  String get setImportSub => 'Escolle cartafoles ou ficheiros soltos';

  @override
  String get setCleanup => 'Limpar ficheiros que faltan';

  @override
  String get setCleanupSub => 'Quita as cancións cuxo ficheiro desapareceu';

  @override
  String setCleanupDone(int count) {
    return 'Eliminados $count ficheiros que faltaban.';
  }

  @override
  String get setExport => 'Enviar o meu gusto a outro dispositivo';

  @override
  String get setExportSub =>
      'Garda un ficheiro cos teus gústames, reproducións e todo o que aprendeu a IA';

  @override
  String get setImportTaste => 'Cargar o gusto doutro dispositivo';

  @override
  String get setImportTasteSub =>
      'Escolle un ficheiro de gusto gardado e únmo — seguro de repetir';

  @override
  String get setAbout => 'Acerca de';

  @override
  String get setAboutBody =>
      'Música de YouTube e dos teus propios ficheiros. A IA funciona enteiramente neste dispositivo — nada sae del.';

  @override
  String get setSource => 'Código fonte';

  @override
  String get importTitle => 'Engadir música';

  @override
  String get importPickFolder => 'Escoller un cartafol';

  @override
  String get importPickFiles => 'Escoller ficheiros';

  @override
  String importScanning(Object file) {
    return 'Analizando $file';
  }

  @override
  String importAdded(int count) {
    return '$count engadidas';
  }

  @override
  String get importDenied => 'Permiso denegado — non se pode ler a túa música.';

  @override
  String get importWatched => 'Cartafoles que vixía';

  @override
  String get importIosHint =>
      'Abre a app Ficheiros, vai a No meu iPhone → TuneBox e deixa a música alí.';

  @override
  String get playerQueue => 'Cola';

  @override
  String get playerUpNext => 'A continuación';

  @override
  String get playerLyrics => 'Letra';

  @override
  String get playerNoLyrics => 'Non hai letra para esta.';

  @override
  String get playerRepeat => 'Repetir';

  @override
  String get playerShuffle => 'Aleatorio';

  @override
  String errorPlayback(Object title) {
    return 'Non se puido reproducir \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Saltando \"$title\" — a emisión non se abriu.';
  }

  @override
  String get undo => 'Desfacer';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Agora mesmo: $tags, con $artist á cabeza.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Agora mesmo: $tags.';
  }

  @override
  String get setColour => 'Cor';

  @override
  String get setColourSub => 'Toda a app segue isto';

  @override
  String get setCoverArt => 'Portada';

  @override
  String get setMyColour => 'A miña cor';

  @override
  String get setCoverArtSub => 'Cada canción retinxe a app coa súa portada.';

  @override
  String get setMyColourSub => 'Unha cor, en todas partes, sempre.';

  @override
  String get setPickColour => 'Escoller calquera cor';

  @override
  String get setWifiOnlyTitle => 'Descargar só con wifi';

  @override
  String get setDownloadLikes => 'Descargar todo o que me gusta';

  @override
  String get setDownloadLikesSub => 'O botón do corazón tamén garda o ficheiro';

  @override
  String get setAiInstall => 'Deixar que a IA instale a música que escolla';

  @override
  String get setSkipSilenceSub =>
      'Só Android. Pode cortar introdución tranquilas, fades e pasaxes suaves — déixao desactivado se a música salta';

  @override
  String get setStorageUsed => 'Almacenamento usado polas descargas';

  @override
  String get setLibrary => 'Biblioteca';

  @override
  String get setUpdates => 'Actualizacións';

  @override
  String get setAutoUpdate => 'Buscar actualizacións automaticamente';

  @override
  String get setAutoUpdateSub =>
      'Cada poucas horas, en silencio, e descarga con wifi. Instalar segue pedindo permiso.';

  @override
  String setUpdateReady(Object version) {
    return 'A actualización a $version está lista';
  }

  @override
  String get setUpdateReadySub => 'Descargada — toca para instalar';

  @override
  String get setUpdateAvailableSub =>
      'Obtena na páxina de versións — toca para copiar a ligazón';

  @override
  String get setLinkCopied => 'Ligazón copiada';

  @override
  String get setCheckNow => 'Buscar agora';

  @override
  String get setUpToDate => 'TuneBox está actualizado';

  @override
  String get setChecking => 'Buscando unha versión máis recente…';

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

  @override
  String addedToPlaylist(String name) {
    return 'Added to \"$name\"';
  }
}
