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
}
