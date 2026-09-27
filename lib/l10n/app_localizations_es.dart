// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class LEs extends L {
  LEs([String locale = 'es']) : super(locale);

  @override
  String get navHome => 'Inicio';

  @override
  String get navExplore => 'Explorar';

  @override
  String get navLibrary => 'Biblioteca';

  @override
  String get navTaste => 'Tu gusto';

  @override
  String get actionDone => 'Hecho';

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
  String get actionAdd => 'Añadir';

  @override
  String get actionRemove => 'Quitar';

  @override
  String get actionName => 'Nombre';

  @override
  String get greetingNight => '¿Todavía despierto?';

  @override
  String get greetingMorning => 'Buenos días';

  @override
  String get greetingAfternoon => 'Buenas tardes';

  @override
  String get greetingEvening => 'Buenas noches';

  @override
  String get homeBuilding => 'La IA está montando tus estantes…';

  @override
  String get homeOffline =>
      'Sin conexión: se muestra lo que hay en el dispositivo';

  @override
  String get homeNothingYet => 'Aún no hay nada que mostrar';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count estantes, recién actualizados',
      one: '1 estante, recién actualizado',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Volver a montar';

  @override
  String get homeAddMusic => 'Añadir música de este dispositivo';

  @override
  String get homeQuickPicks => 'Selección rápida';

  @override
  String get homeQuickPicksSub => 'Vuelve a lo que estabas escuchando';

  @override
  String get homeEmptyTitle => 'Tu biblioteca está vacía';

  @override
  String get homeEmptyBody =>
      'Busca algo o añade la música que ya tienes en este dispositivo. La IA empieza a aprender desde la primera canción.';

  @override
  String get homeAddMyMusic => 'Añadir mi música';

  @override
  String homeCouldNotReach(Object error) {
    return 'No se pudo conectar con YouTube: $error';
  }

  @override
  String get moodFocus => 'Concentración';

  @override
  String get moodWorkout => 'Entrenamiento';

  @override
  String get moodChill => 'Relax';

  @override
  String get moodCommute => 'Trayecto';

  @override
  String get moodParty => 'Fiesta';

  @override
  String moodBuilding(Object mood) {
    return 'Montando una mezcla de $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Sin suerte: $error';
  }

  @override
  String get shelfRepeat => 'En bucle';

  @override
  String get shelfRepeatSub => 'Tus últimas dos semanas';

  @override
  String get shelfForgotten => 'Viejos éxitos que te gustaron';

  @override
  String get shelfForgottenSub =>
      'Muy escuchados en su día, olvidados desde hace tiempo';

  @override
  String get shelfNew => 'Nuevo';

  @override
  String get shelfNewSub => 'Temas nuevos que la IA cree que son para ti';

  @override
  String shelfBecause(Object artist) {
    return 'Porque escuchaste a $artist';
  }

  @override
  String get shelfBecauseSub => 'El mismo rincón de tu gusto';

  @override
  String get shelfDeep => 'Casi sin tocar';

  @override
  String get shelfDeepSub => 'En tu biblioteca, casi nunca reproducidas';

  @override
  String get shelfMix => 'Tu mezcla';

  @override
  String get shelfMixSub => 'Se rehace cada vez que abres la aplicación';

  @override
  String get shelfAdded => 'Añadido hace poco';

  @override
  String get shelfAddedSub => 'Descargas y archivos que importaste';

  @override
  String get shelfStarter => 'Empieza por aquí';

  @override
  String get shelfStarterSub =>
      'Escucha unas cuantas y la IA empieza a aprender enseguida';

  @override
  String reasonPlays(int count) {
    return '$count reproducciones';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Te gustó, escuchada $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count reproducciones, la última $when';
  }

  @override
  String get reasonTopArtist => 'Uno de los artistas que más escuchas';

  @override
  String reasonMore(Object artist) {
    return 'Más de $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Siempre vuelves a $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Tu tipo de $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Mucho $tag últimamente';
  }

  @override
  String get reasonOutThisYear => 'Salió este año';

  @override
  String get reasonReleasedRecently => 'Publicada hace poco';

  @override
  String get reasonClose => 'Cerca de lo que has estado escuchando';

  @override
  String reasonNear(Object artist) {
    return 'Está cerca de $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nunca reproducida';

  @override
  String get reasonPlayedOnce => 'Reproducida una vez';

  @override
  String get reasonPopular => 'Popular ahora mismo';

  @override
  String whenYearsAgo(int count) {
    return 'hace $count años';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'hace $count meses';
  }

  @override
  String whenDaysAgo(int count) {
    return 'hace $count días';
  }

  @override
  String get searchHint => 'Canciones, artistas, álbumes';

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
  String get searchRecent => 'Búsquedas recientes';

  @override
  String get searchEmptyTitle => 'No se encontró nada';

  @override
  String get searchEmptyBody =>
      'Prueba otra forma de escribirlo, o solo el nombre del artista.';

  @override
  String get searchStartTitle => 'Encuentra algo que escuchar';

  @override
  String get searchStartBody =>
      'Busca en YouTube Music: solo vuelven canciones, nunca vídeos de otras cosas.';

  @override
  String get libPlaylists => 'Listas';

  @override
  String get libSongs => 'Canciones';

  @override
  String get libArtists => 'Artistas';

  @override
  String get libLiked => 'Me gusta';

  @override
  String get libDownloads => 'Descargas';

  @override
  String get libImported => 'Importadas';

  @override
  String get libLikedSongs => 'Canciones que te gustan';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count canciones',
      one: '1 canción',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count sin conexión';
  }

  @override
  String get libMyFiles => 'Mis propios archivos';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count archivos',
      one: '1 archivo',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nueva lista';

  @override
  String get libMakeOne => 'Crear una';

  @override
  String get libSortRecent => 'Añadido hace poco';

  @override
  String get libSortTitle => 'Título';

  @override
  String get libSortArtist => 'Artista';

  @override
  String get libSortPlays => 'Más reproducidas';

  @override
  String get sheetNotForMe => 'No es para mí';

  @override
  String get sheetNotForMeSub => 'No volver a recomendar esto';

  @override
  String get sheetBlocked => 'Bloqueada: toca para permitirla otra vez';

  @override
  String get sheetBlockedSub =>
      'Puede volver a aparecer en las recomendaciones';

  @override
  String get sheetPlayNext => 'Reproducir a continuación';

  @override
  String get sheetAddToPlaylist => 'Añadir a una lista';

  @override
  String get sheetDownloaded => 'Descargada';

  @override
  String get sheetRemoveFile => 'Toca para borrar el archivo';

  @override
  String get sheetDownload => 'Descargar';

  @override
  String get sheetKeepOffline => 'Guardar sin conexión';

  @override
  String get sheetRadio => 'Empezar radio';

  @override
  String get sheetRadioSub => 'Una cola construida alrededor de esta canción';

  @override
  String get sheetQueue => 'Cola';

  @override
  String get sheetSleepTimer => 'Temporizador';

  @override
  String get sheetSleepOff => 'Apagado';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minutos';
  }

  @override
  String get sheetSleepEndOfTrack => 'Al acabar esta canción';

  @override
  String sheetSleepSet(int count) {
    return 'La música para en $count min';
  }

  @override
  String get tasteTitle => 'Tu gusto';

  @override
  String get tasteRetrain => 'Reentrenar';

  @override
  String get tasteRetraining => 'Reentrenando con tu historial…';

  @override
  String get tasteRetrained => 'La IA reconstruyó su modelo.';

  @override
  String tasteConfidence(int percent) {
    return 'Confianza $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays reproducciones · $skips saltadas · $likes me gusta';
  }

  @override
  String get tasteEmptySummary => 'Escucha unas canciones y esto se rellena.';

  @override
  String get tasteKeepLearning => 'Seguir aprendiendo mientras escucho';

  @override
  String get tasteKeepLearningSub =>
      'Desactívalo para congelar el perfil actual';

  @override
  String get tasteDownloadsTitle => 'Descargas que gestiona la IA';

  @override
  String get tasteDownloadsSub =>
      'La música llega al dispositivo sin que la pidas';

  @override
  String get tasteDownloadLikes => 'Descargar todo lo que me gusta';

  @override
  String get tasteDownloadLikesSub =>
      'Pulsa el corazón y el archivo se guarda sin conexión';

  @override
  String get tasteAiInstall => 'Dejar que la IA instale la música que elige';

  @override
  String get tasteAiInstallSub => 'Traerá temas de los que esté segura';

  @override
  String get tasteWhatItThinks => 'Lo que cree que te gusta';

  @override
  String get tasteWhatItThinksSub =>
      'Aprendido de reproducciones, saltos, me gusta y repeticiones';

  @override
  String get tasteArtists => 'Artistas en los que se apoya';

  @override
  String get tasteWhenYouListen => 'Cuándo escuchas';

  @override
  String get tasteWhenYouListenSub =>
      'Reproducciones por hora: la hora actual pesa más';

  @override
  String get tasteDecades => 'Décadas';

  @override
  String get tasteTune => 'Ajustar las recomendaciones';

  @override
  String get tasteTuneSub => 'Se aplica al refrescar el Inicio';

  @override
  String get tasteDiscovery => 'Descubrimiento';

  @override
  String get tasteDiscoverySub => 'Conocido ↔ cosas que nunca has oído';

  @override
  String get tasteEnergy => 'Energía';

  @override
  String get tasteEnergySub => 'Tranquilo ↔ fuerte';

  @override
  String get tasteRecency => 'Novedad';

  @override
  String get tasteRecencySub => 'Atemporal ↔ recién salido';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Cuánto tiempo hasta que un viejo favorito cuenta como olvidado';

  @override
  String get tasteSignals => 'Señales que puede usar';

  @override
  String get tasteSignalsSub => 'Todo se queda en este dispositivo';

  @override
  String get tasteUseHistory => 'Lo que he reproducido';

  @override
  String get tasteUseSkips => 'Lo que salto';

  @override
  String get tasteUseTime => 'Hora del día';

  @override
  String get tasteUseYouTube => 'Sugerencias de YouTube';

  @override
  String get tasteAlwaysMore => 'Siempre más de';

  @override
  String get tasteNeverAgain => 'Nunca más';

  @override
  String get tasteAddArtist => 'Añadir un artista';

  @override
  String get tasteMoreOfPrompt => 'Siempre más de…';

  @override
  String get tasteNeverAgainPrompt => 'Nunca más…';

  @override
  String get tasteReset => 'Borrar lo que ha aprendido';

  @override
  String get tasteResetSub => 'Tu música se queda; el perfil empieza de cero';

  @override
  String get trainCard => 'Entrénala valorando';

  @override
  String get trainCardSub =>
      'Desliza por canciones de verdad. Derecha para más como esta, izquierda para nunca más. Dos minutos aquí valen más que una semana escuchando.';

  @override
  String get trainStart => 'Empezar una ronda de entrenamiento';

  @override
  String get trainTitle => 'Ronda de entrenamiento';

  @override
  String get trainQuestion => '¿Querrías esto en tu Inicio?';

  @override
  String get trainMoreLikeThis => 'Más como esto';

  @override
  String get trainNeverAgain => 'Nunca más';

  @override
  String get trainDone => 'Ronda completada';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked guardadas · $blocked bloqueadas. Confianza $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Volver a tu gusto';

  @override
  String get trainNothingTitle => 'Todavía no hay nada que valorar';

  @override
  String get trainNothingBody =>
      'Añade música o deja que la IA busque candidatas primero, y vuelve luego.';

  @override
  String get trainLeaveTitle => '¿Salir de la ronda de entrenamiento?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Si sales ahora, la IA descarta todo lo de esta ronda: las $count canciones que acabas de valorar.',
      one:
          'Si sales ahora, la IA descarta todo lo de esta ronda: la 1 canción que acabas de valorar.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Seguir entrenando';

  @override
  String get trainDiscard => 'Descartar y salir';

  @override
  String get setTitle => 'Ajustes';

  @override
  String get setAppearance => 'Apariencia';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Seguir al sistema';

  @override
  String get setThemeLight => 'Claro';

  @override
  String get setThemeDark => 'Oscuro';

  @override
  String get setPureBlack => 'Negro puro';

  @override
  String get setPureBlackSub => 'Ahorra batería en pantallas OLED';

  @override
  String get setAccent => 'Color de acento';

  @override
  String get setAccentArtwork => 'De la portada';

  @override
  String get setAccentFixed => 'Un color que yo elijo';

  @override
  String get setLanguage => 'Idioma';

  @override
  String get setLanguageSystem => 'Seguir al sistema';

  @override
  String get setAccessibility => 'Accesibilidad';

  @override
  String get setTextSize => 'Tamaño del texto';

  @override
  String get setTextSizeSub => 'Además del ajuste del sistema';

  @override
  String get setReduceMotion => 'Reducir movimiento';

  @override
  String get setReduceMotionSub =>
      'Detiene las barras, el visualizador y las transiciones';

  @override
  String get setHighContrast => 'Contraste alto';

  @override
  String get setHighContrastSub => 'Más separación y contornos visibles';

  @override
  String get setBoldText => 'Texto en negrita';

  @override
  String get setPlayback => 'Reproducción';

  @override
  String get setAutoRadio => 'Que la música no pare';

  @override
  String get setAutoRadioSub =>
      'Cuando la cola termina, sigue con una radio a partir de la última canción';

  @override
  String get setSmartShuffle => 'Aleatorio inteligente';

  @override
  String get setSmartShuffleSub => 'Baraja según tu gusto en vez de al azar';

  @override
  String get setResume => 'Continuar donde lo dejé';

  @override
  String get setResumeSub =>
      'Restaura la cola al abrir la aplicación, en pausa';

  @override
  String get setDataSaver => 'Ahorro de datos sin Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Limita streams y descargas a 128 kbps con datos móviles';

  @override
  String get setHaptics => 'Respuesta háptica';

  @override
  String get setShowReasons => 'Mostrar por qué se recomendó';

  @override
  String get setSkipSilence => 'Saltar silencios';

  @override
  String get setQuality => 'Calidad de audio';

  @override
  String get setQualityLow => 'Baja · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Alta · 192 kbps';

  @override
  String get setQualityBest => 'La mejor disponible';

  @override
  String get setStorage => 'Descargas y almacenamiento';

  @override
  String get setWifiOnly => 'Descargar solo con Wi-Fi';

  @override
  String get setDailyLimit => 'Límite diario para la IA';

  @override
  String setDailyLimitSub(int count) {
    return '$count canciones al día';
  }

  @override
  String get setBudget => 'Espacio que puede usar la IA';

  @override
  String setUsed(Object size) {
    return '$size ocupados por descargas';
  }

  @override
  String get setYourMusic => 'Tu música';

  @override
  String get setImport => 'Añadir música de este dispositivo';

  @override
  String get setImportSub => 'Elige carpetas o archivos sueltos';

  @override
  String get setCleanup => 'Limpiar archivos que faltan';

  @override
  String get setCleanupSub => 'Quita canciones cuyo archivo ha desaparecido';

  @override
  String setCleanupDone(int count) {
    return 'Se quitaron $count archivos que faltaban.';
  }

  @override
  String get setExport => 'Enviar mi gusto a otro dispositivo';

  @override
  String get setExportSub =>
      'Escribe un archivo de transferencia: me gusta, reproducciones y todo lo aprendido';

  @override
  String get setImportTaste => 'Cargar gusto de otro dispositivo';

  @override
  String get setImportTasteSub =>
      'Lo combina con lo que ya sabe este dispositivo';

  @override
  String get setAbout => 'Acerca de';

  @override
  String get setAboutBody =>
      'Música de YouTube y de tus propios archivos. La IA funciona por completo en este dispositivo: nada sale de aquí.';

  @override
  String get setSource => 'Código fuente';

  @override
  String get importTitle => 'Añadir música';

  @override
  String get importPickFolder => 'Elegir una carpeta';

  @override
  String get importPickFiles => 'Elegir archivos';

  @override
  String importScanning(Object file) {
    return 'Analizando $file';
  }

  @override
  String importAdded(int count) {
    return '$count añadidas';
  }

  @override
  String get importDenied => 'Permiso denegado: no se puede leer tu música.';

  @override
  String get importWatched => 'Carpetas vigiladas';

  @override
  String get importIosHint =>
      'Abre la app Archivos, ve a En mi iPhone → TuneBox y suelta ahí la música.';

  @override
  String get playerQueue => 'Cola';

  @override
  String get playerUpNext => 'A continuación';

  @override
  String get playerLyrics => 'Letra';

  @override
  String get playerNoLyrics => 'No hay letra para esta.';

  @override
  String get playerRepeat => 'Repetir';

  @override
  String get playerShuffle => 'Aleatorio';

  @override
  String errorPlayback(Object title) {
    return 'No se pudo reproducir «$title»';
  }

  @override
  String errorSkipping(Object title) {
    return 'Saltando «$title»: el stream no se abrió.';
  }

  @override
  String get undo => 'Deshacer';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Ahora mismo: $tags, con $artist a la cabeza.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Ahora mismo: $tags.';
  }

  @override
  String get setColour => 'Color';

  @override
  String get setColourSub => 'Toda la aplicación lo sigue';

  @override
  String get setCoverArt => 'Portada';

  @override
  String get setMyColour => 'Mi color';

  @override
  String get setCoverArtSub =>
      'Cada canción tiñe la aplicación con su portada.';

  @override
  String get setMyColourSub => 'Un color, en todas partes, siempre.';

  @override
  String get setPickColour => 'Elegir otro color';

  @override
  String get setWifiOnlyTitle => 'Descargar solo con Wi-Fi';

  @override
  String get setDownloadLikes => 'Descargar todo lo que me gusta';

  @override
  String get setDownloadLikesSub => 'El corazón también guarda el archivo';

  @override
  String get setAiInstall => 'Dejar que la IA instale la música que elige';

  @override
  String get setSkipSilenceSub => 'Solo en Android';

  @override
  String get setStorageUsed => 'Espacio usado por las descargas';

  @override
  String get setLibrary => 'Biblioteca';
}
