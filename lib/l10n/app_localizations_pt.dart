// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class LPt extends L {
  LPt([String locale = 'pt']) : super(locale);

  @override
  String get navHome => 'Início';

  @override
  String get navExplore => 'Explorar';

  @override
  String get navLibrary => 'Biblioteca';

  @override
  String get navTaste => 'O teu gosto';

  @override
  String get actionDone => 'Concluído';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionCreate => 'Criar';

  @override
  String get actionPlay => 'Reproduzir';

  @override
  String get actionShuffle => 'Aleatório';

  @override
  String get actionPlayAll => 'Reproduzir tudo';

  @override
  String get actionAdd => 'Adicionar';

  @override
  String get actionRemove => 'Remover';

  @override
  String get actionName => 'Nome';

  @override
  String get greetingNight => 'Ainda acordado?';

  @override
  String get greetingMorning => 'Bom dia';

  @override
  String get greetingAfternoon => 'Boa tarde';

  @override
  String get greetingEvening => 'Boa noite';

  @override
  String get homeBuilding => 'A IA está a montar as tuas prateleiras…';

  @override
  String get homeOffline => 'Offline — a mostrar o que está no dispositivo';

  @override
  String get homeNothingYet => 'Ainda não há nada para mostrar';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prateleiras, atualizadas agora',
      one: '1 prateleira, atualizada agora',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Voltar a montar';

  @override
  String get homeAddMusic => 'Adicionar música deste dispositivo';

  @override
  String get homeQuickPicks => 'Escolhas rápidas';

  @override
  String get homeQuickPicksSub => 'De volta ao que estavas a ouvir';

  @override
  String get homeEmptyTitle => 'A tua biblioteca está vazia';

  @override
  String get homeEmptyBody =>
      'Procura alguma coisa, ou adiciona a música que já tens neste dispositivo. A IA começa a aprender logo na primeira reprodução.';

  @override
  String get homeAddMyMusic => 'Adicionar a minha música';

  @override
  String homeCouldNotReach(Object error) {
    return 'Não foi possível chegar ao YouTube: $error';
  }

  @override
  String get moodFocus => 'Concentração';

  @override
  String get moodWorkout => 'Treino';

  @override
  String get moodChill => 'Relax';

  @override
  String get moodCommute => 'Viagem';

  @override
  String get moodParty => 'Festa';

  @override
  String moodBuilding(Object mood) {
    return 'A montar uma mistura $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Sem sorte: $error';
  }

  @override
  String get shelfRepeat => 'Em repetição';

  @override
  String get shelfRepeatSub => 'As tuas últimas duas semanas';

  @override
  String get shelfForgotten => 'Êxitos antigos de que gostaste';

  @override
  String get shelfForgottenSub => 'Adorados outrora, esquecidos há algum tempo';

  @override
  String get shelfNew => 'Novo';

  @override
  String get shelfNewSub => 'Faixas novas que a IA acha que são para ti';

  @override
  String shelfBecause(Object artist) {
    return 'Porque ouviste $artist';
  }

  @override
  String get shelfBecauseSub => 'O mesmo canto do teu gosto';

  @override
  String get shelfDeep => 'Quase por ouvir';

  @override
  String get shelfDeepSub => 'Na tua biblioteca, quase nunca reproduzidas';

  @override
  String get shelfMix => 'A tua mistura';

  @override
  String get shelfMixSub => 'Refeita sempre que abres a aplicação';

  @override
  String get shelfAdded => 'Adicionado recentemente';

  @override
  String get shelfAddedSub => 'Transferências e ficheiros que importaste';

  @override
  String get shelfStarter => 'Começa por aqui';

  @override
  String get shelfStarterSub =>
      'Ouve algumas e a IA começa a aprender de imediato';

  @override
  String reasonPlays(int count) {
    return '$count reproduções';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Com gosto, ouvida $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count reproduções, a última $when';
  }

  @override
  String get reasonTopArtist => 'Um dos artistas que mais ouves';

  @override
  String reasonMore(Object artist) {
    return 'Mais $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Voltas sempre a $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return '$tag à tua maneira';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Muito $tag ultimamente';
  }

  @override
  String get reasonOutThisYear => 'Saiu este ano';

  @override
  String get reasonReleasedRecently => 'Lançada há pouco';

  @override
  String get reasonClose => 'Perto do que tens andado a ouvir';

  @override
  String reasonNear(Object artist) {
    return 'Fica perto de $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nunca reproduzida';

  @override
  String get reasonPlayedOnce => 'Reproduzida uma vez';

  @override
  String get reasonPopular => 'Popular agora';

  @override
  String whenYearsAgo(int count) {
    return 'há $count anos';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'há $count meses';
  }

  @override
  String whenDaysAgo(int count) {
    return 'há $count dias';
  }

  @override
  String get searchHint => 'Músicas, artistas, álbuns';

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
  String get searchRecent => 'Pesquisas recentes';

  @override
  String get searchEmptyTitle => 'Nada encontrado';

  @override
  String get searchEmptyBody => 'Tenta outra grafia, ou só o nome do artista.';

  @override
  String get searchStartTitle => 'Encontra algo para ouvir';

  @override
  String get searchStartBody =>
      'Pesquisa no YouTube Music — só voltam músicas, nunca vídeos de outras coisas.';

  @override
  String get libPlaylists => 'Playlists';

  @override
  String get libSongs => 'Músicas';

  @override
  String get libArtists => 'Artistas';

  @override
  String get libLiked => 'Com gosto';

  @override
  String get libDownloads => 'Transferências';

  @override
  String get libImported => 'Importadas';

  @override
  String get libLikedSongs => 'Músicas com gosto';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count músicas',
      one: '1 música',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
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
  String get libNewPlaylist => 'Nova playlist';

  @override
  String get libMakeOne => 'Criar uma';

  @override
  String get libSortRecent => 'Adicionado recentemente';

  @override
  String get libSortTitle => 'Título';

  @override
  String get libSortArtist => 'Artista';

  @override
  String get libSortPlays => 'Mais reproduzidas';

  @override
  String get sheetNotForMe => 'Não é para mim';

  @override
  String get sheetNotForMeSub => 'Nunca mais recomendar isto';

  @override
  String get sheetBlocked => 'Bloqueada — toca para permitir de novo';

  @override
  String get sheetBlockedSub => 'Pode voltar a aparecer nas recomendações';

  @override
  String get sheetPlayNext => 'Reproduzir a seguir';

  @override
  String get sheetAddToPlaylist => 'Adicionar à playlist';

  @override
  String get sheetDownloaded => 'Transferida';

  @override
  String get sheetRemoveFile => 'Toca para apagar o ficheiro';

  @override
  String get sheetDownload => 'Transferir';

  @override
  String get sheetKeepOffline => 'Guardar para offline';

  @override
  String get sheetRadio => 'Iniciar rádio';

  @override
  String get sheetRadioSub => 'Uma fila construída à volta desta música';

  @override
  String get sheetQueue => 'Fila';

  @override
  String get sheetSleepTimer => 'Temporizador';

  @override
  String get sheetSleepOff => 'Desligado';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minutos';
  }

  @override
  String get sheetSleepEndOfTrack => 'No fim desta música';

  @override
  String sheetSleepSet(int count) {
    return 'A música para dentro de $count min';
  }

  @override
  String get tasteTitle => 'O teu gosto';

  @override
  String get tasteRetrain => 'Treinar de novo';

  @override
  String get tasteRetraining => 'A treinar com o teu histórico…';

  @override
  String get tasteRetrained => 'A IA reconstruiu o modelo.';

  @override
  String tasteConfidence(int percent) {
    return 'Confiança $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays reproduções · $skips saltadas · $likes gostos';
  }

  @override
  String get tasteEmptySummary => 'Ouve algumas músicas e isto preenche-se.';

  @override
  String get tasteKeepLearning => 'Continuar a aprender enquanto ouço';

  @override
  String get tasteKeepLearningSub => 'Desliga para congelar o perfil atual';

  @override
  String get tasteDownloadsTitle => 'Transferências tratadas pela IA';

  @override
  String get tasteDownloadsSub => 'A música chega ao dispositivo sem pedires';

  @override
  String get tasteDownloadLikes => 'Transferir tudo aquilo de que gosto';

  @override
  String get tasteDownloadLikesSub =>
      'Carrega no coração e o ficheiro fica guardado para offline';

  @override
  String get tasteAiInstall => 'Deixar a IA instalar música que escolhe';

  @override
  String get tasteAiInstallSub => 'Vai buscar faixas de que tem a certeza';

  @override
  String get tasteWhatItThinks => 'O que acha que gostas';

  @override
  String get tasteWhatItThinksSub =>
      'Aprendido de reproduções, saltos, gostos e repetições';

  @override
  String get tasteArtists => 'Artistas em que se apoia';

  @override
  String get tasteWhenYouListen => 'Quando ouves';

  @override
  String get tasteWhenYouListenSub =>
      'Reproduções por hora — a hora atual pesa mais';

  @override
  String get tasteDecades => 'Décadas';

  @override
  String get tasteTune => 'Afinar as recomendações';

  @override
  String get tasteTuneSub => 'Aplica-se na próxima atualização do Início';

  @override
  String get tasteDiscovery => 'Descoberta';

  @override
  String get tasteDiscoverySub => 'Familiar ↔ coisas que nunca ouviste';

  @override
  String get tasteEnergy => 'Energia';

  @override
  String get tasteEnergySub => 'Calmo ↔ alto';

  @override
  String get tasteRecency => 'Novidade';

  @override
  String get tasteRecencySub => 'Intemporal ↔ acabado de sair';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Quanto tempo até um velho favorito contar como esquecido';

  @override
  String get tasteSignals => 'Sinais que pode usar';

  @override
  String get tasteSignalsSub => 'Tudo fica neste dispositivo';

  @override
  String get tasteUseHistory => 'O que reproduzi';

  @override
  String get tasteUseSkips => 'O que salto';

  @override
  String get tasteUseTime => 'Hora do dia';

  @override
  String get tasteUseYouTube => 'Sugestões do YouTube';

  @override
  String get tasteAlwaysMore => 'Sempre mais de';

  @override
  String get tasteNeverAgain => 'Nunca mais';

  @override
  String get tasteAddArtist => 'Adicionar um artista';

  @override
  String get tasteMoreOfPrompt => 'Sempre mais de…';

  @override
  String get tasteNeverAgainPrompt => 'Nunca mais…';

  @override
  String get tasteReset => 'Apagar o que aprendeu';

  @override
  String get tasteResetSub => 'A tua música fica; o perfil começa do zero';

  @override
  String get trainCard => 'Treina-a a avaliar';

  @override
  String get trainCardSub =>
      'Passa por músicas a sério. Direita para mais assim, esquerda para nunca mais. Dois minutos aqui valem mais do que uma semana a ouvir.';

  @override
  String get trainStart => 'Começar uma ronda de treino';

  @override
  String get trainTitle => 'Ronda de treino';

  @override
  String get trainQuestion => 'Querias isto no teu Início?';

  @override
  String get trainMoreLikeThis => 'Mais assim';

  @override
  String get trainNeverAgain => 'Nunca mais';

  @override
  String get trainDone => 'Ronda concluída';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked guardadas · $blocked bloqueadas. Confiança $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Voltar ao teu gosto';

  @override
  String get trainNothingTitle => 'Ainda não há nada para avaliar';

  @override
  String get trainNothingBody =>
      'Adiciona música ou deixa a IA ir buscar candidatos primeiro, depois volta.';

  @override
  String get trainLeaveTitle => 'Sair da ronda de treino?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Se saíres agora, a IA deita fora tudo desta ronda — todas as $count músicas que acabaste de avaliar.',
      one:
          'Se saíres agora, a IA deita fora tudo desta ronda — a 1 música que acabaste de avaliar.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Continuar a treinar';

  @override
  String get trainDiscard => 'Descartar e sair';

  @override
  String get setTitle => 'Definições';

  @override
  String get setAppearance => 'Aspeto';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Seguir o sistema';

  @override
  String get setThemeLight => 'Claro';

  @override
  String get setThemeDark => 'Escuro';

  @override
  String get setPureBlack => 'Preto puro';

  @override
  String get setPureBlackSub => 'Poupa bateria num ecrã OLED';

  @override
  String get setAccent => 'Cor de destaque';

  @override
  String get setAccentArtwork => 'A partir da capa';

  @override
  String get setAccentFixed => 'Uma cor à minha escolha';

  @override
  String get setLanguage => 'Idioma';

  @override
  String get setLanguageSystem => 'Seguir o sistema';

  @override
  String get setAccessibility => 'Acessibilidade';

  @override
  String get setTextSize => 'Tamanho do texto';

  @override
  String get setTextSizeSub => 'Além da definição do sistema';

  @override
  String get setReduceMotion => 'Reduzir movimento';

  @override
  String get setReduceMotionSub =>
      'Para as barras, o visualizador e as transições';

  @override
  String get setHighContrast => 'Contraste elevado';

  @override
  String get setHighContrastSub => 'Separação mais forte e contornos visíveis';

  @override
  String get setBoldText => 'Texto a negrito';

  @override
  String get setPlayback => 'Reprodução';

  @override
  String get setAutoRadio => 'Manter a música a tocar';

  @override
  String get setAutoRadioSub =>
      'Quando a fila acaba, segue com um rádio a partir da última música';

  @override
  String get setSmartShuffle => 'Aleatório inteligente';

  @override
  String get setSmartShuffleSub => 'Baralha pelo teu gosto em vez de à sorte';

  @override
  String get setResume => 'Continuar onde parei';

  @override
  String get setResumeSub => 'Repõe a fila quando a aplicação abre, em pausa';

  @override
  String get setDataSaver => 'Poupança de dados fora do Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Limita streams e transferências a 128 kbps nos dados móveis';

  @override
  String get setHaptics => 'Resposta tátil';

  @override
  String get setShowReasons => 'Mostrar porque foi recomendado';

  @override
  String get setSkipSilence => 'Saltar silêncios';

  @override
  String get setQuality => 'Qualidade de áudio';

  @override
  String get setQualityLow => 'Baixa · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Alta · 192 kbps';

  @override
  String get setQualityBest => 'A melhor disponível';

  @override
  String get setStorage => 'Transferências e armazenamento';

  @override
  String get setWifiOnly => 'Transferir só em Wi-Fi';

  @override
  String get setDailyLimit => 'Limite diário para a IA';

  @override
  String setDailyLimitSub(int count) {
    return '$count músicas por dia';
  }

  @override
  String get setBudget => 'Espaço que a IA pode usar';

  @override
  String setUsed(Object size) {
    return '$size ocupados por transferências';
  }

  @override
  String get setYourMusic => 'A tua música';

  @override
  String get setImport => 'Adicionar música deste dispositivo';

  @override
  String get setImportSub => 'Escolhe pastas ou ficheiros soltos';

  @override
  String get setCleanup => 'Limpar ficheiros em falta';

  @override
  String get setCleanupSub => 'Remove músicas cujo ficheiro desapareceu';

  @override
  String setCleanupDone(int count) {
    return 'Removidos $count ficheiros em falta.';
  }

  @override
  String get setExport => 'Enviar o meu gosto para outro dispositivo';

  @override
  String get setExportSub =>
      'Escreve um ficheiro de transferência: gostos, reproduções e tudo o que a IA aprendeu';

  @override
  String get setImportTaste => 'Carregar gosto de outro dispositivo';

  @override
  String get setImportTasteSub => 'Junta-o ao que este dispositivo já sabe';

  @override
  String get setAbout => 'Sobre';

  @override
  String get setAboutBody =>
      'Música do YouTube e dos teus próprios ficheiros. A IA corre inteiramente neste dispositivo — nada sai daqui.';

  @override
  String get setSource => 'Código-fonte';

  @override
  String get importTitle => 'Adicionar música';

  @override
  String get importPickFolder => 'Escolher uma pasta';

  @override
  String get importPickFiles => 'Escolher ficheiros';

  @override
  String importScanning(Object file) {
    return 'A analisar $file';
  }

  @override
  String importAdded(int count) {
    return '$count adicionadas';
  }

  @override
  String get importDenied =>
      'Permissão negada — não é possível ler a tua música.';

  @override
  String get importWatched => 'Pastas vigiadas';

  @override
  String get importIosHint =>
      'Abre a app Ficheiros, vai a No meu iPhone → TuneBox e larga aí a música.';

  @override
  String get playerQueue => 'Fila';

  @override
  String get playerUpNext => 'A seguir';

  @override
  String get playerLyrics => 'Letra';

  @override
  String get playerNoLyrics => 'Não há letra para esta.';

  @override
  String get playerRepeat => 'Repetir';

  @override
  String get playerShuffle => 'Aleatório';

  @override
  String errorPlayback(Object title) {
    return 'Não foi possível reproduzir «$title»';
  }

  @override
  String errorSkipping(Object title) {
    return 'A saltar «$title» — o stream não abriu.';
  }

  @override
  String get undo => 'Anular';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Agora: $tags, com $artist à frente.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Agora: $tags.';
  }

  @override
  String get setColour => 'Cor';

  @override
  String get setColourSub => 'A app inteira segue isto';

  @override
  String get setCoverArt => 'Capa';

  @override
  String get setMyColour => 'A minha cor';

  @override
  String get setCoverArtSub => 'Cada música pinta a app a partir da sua capa.';

  @override
  String get setMyColourSub => 'Uma cor, em todo o lado, sempre.';

  @override
  String get setPickColour => 'Escolher outra cor';

  @override
  String get setWifiOnlyTitle => 'Transferir só em Wi-Fi';

  @override
  String get setDownloadLikes => 'Transferir tudo aquilo de que gosto';

  @override
  String get setDownloadLikesSub => 'O coração também guarda o ficheiro';

  @override
  String get setAiInstall => 'Deixar a IA instalar música que escolhe';

  @override
  String get setSkipSilenceSub => 'Só no Android';

  @override
  String get setStorageUsed => 'Espaço ocupado por transferências';

  @override
  String get setLibrary => 'Biblioteca';

  @override
  String get setUpdates => 'Atualizações';

  @override
  String get setAutoUpdate => 'Procurar atualizações sozinho';

  @override
  String get setAutoUpdateSub =>
      'De poucas em poucas horas, em silêncio, e transfere em Wi-Fi. Instalar continua a pedir-te.';

  @override
  String setUpdateReady(Object version) {
    return 'A atualização para $version está pronta';
  }

  @override
  String get setUpdateReadySub => 'Transferida — toca para instalar';

  @override
  String get setUpdateAvailableSub =>
      'Disponível na página de versões — toca para copiar a ligação';

  @override
  String get setLinkCopied => 'Ligação copiada';

  @override
  String get setCheckNow => 'Procurar agora';

  @override
  String get setUpToDate => 'O TuneBox está atualizado';

  @override
  String get setChecking => 'À procura de uma versão mais recente…';

  @override
  String get homeCantReach => 'Não foi possível ligar ao YouTube';

  @override
  String get homeOfflineHint =>
      'Verifica a ligação. Tudo o que já está no dispositivo continua a funcionar.';

  @override
  String get actionRetry => 'Tentar de novo';

  @override
  String get actionClear => 'Limpar';

  @override
  String get searchFailed => 'A pesquisa falhou';

  @override
  String get profWho => 'Quem está a ouvir?';

  @override
  String get profExplain =>
      'Cada perfil tem a sua própria biblioteca, gostos, playlists e preferências.';

  @override
  String get profActive => 'Ativo';

  @override
  String get profRename => 'Mudar nome';

  @override
  String get profDeleteMenu => 'Eliminar perfil';

  @override
  String get profAdd => 'Adicionar perfil';

  @override
  String get profNew => 'Novo perfil';

  @override
  String get profName => 'Nome';

  @override
  String profDeleteTitle(String name) {
    return 'Eliminar \"$name\"?';
  }

  @override
  String get profDeleteBody =>
      'A biblioteca, os gostos, as playlists e as preferências aprendidas são removidos para sempre. Os ficheiros de música ficam no dispositivo.';

  @override
  String get profKeep => 'Manter';

  @override
  String get actionOk => 'OK';

  @override
  String get actionDelete => 'Eliminar';

  @override
  String get xferTitle => 'Mover as tuas preferências';

  @override
  String xferIntro(String profile) {
    return 'Gostos, reproduções e regras de artistas de \"$profile\". Receber junta-se a este perfil e pode repetir-se em segurança: nada fica duplicado.';
  }

  @override
  String get xferSectionWifi => 'Entre dispositivos na mesma rede Wi-Fi';

  @override
  String get xferSend => 'Enviar para um dispositivo próximo';

  @override
  String get xferSendSub =>
      'Mostra um código; o outro dispositivo encontra este';

  @override
  String get xferReceive => 'Receber de um dispositivo próximo';

  @override
  String get xferReceiveSub =>
      'Encontra emissores automaticamente: tu escreves o código';

  @override
  String get xferSectionFile => 'Com um ficheiro';

  @override
  String get xferSave => 'Guardar num ficheiro';

  @override
  String get xferSaveSub => 'Escolhe o destino: Transferências, USB, um chat…';

  @override
  String get xferLoad => 'Carregar de um ficheiro';

  @override
  String get xferLoadSub =>
      'Qualquer ficheiro de preferências do TuneBox, antigo ou novo';

  @override
  String get xferSectionText => 'Como texto';

  @override
  String get xferCopy => 'Copiar como texto';

  @override
  String get xferCopySub =>
      'Uma linha que podes colar em qualquer chat ou nota';

  @override
  String get xferPaste => 'Colar texto';

  @override
  String get xferPasteSub => 'Da área de transferência';

  @override
  String get xferSaveDialog => 'Guardar as tuas preferências';

  @override
  String xferSaved(String kb) {
    return '$kb KB guardados. No outro dispositivo, escolhe \"Carregar de um ficheiro\".';
  }

  @override
  String xferSaveFailed(String error) {
    return 'Não foi possível guardar: $error';
  }

  @override
  String xferFileUnreadable(String error) {
    return 'Não foi possível ler esse ficheiro como preferências: $error';
  }

  @override
  String xferCopied(String kb) {
    return 'Copiado ($kb KB de texto). Cola-o no outro dispositivo com \"Colar texto\".';
  }

  @override
  String xferCopyFailed(String error) {
    return 'Não foi possível copiar: $error';
  }

  @override
  String get xferClipboardEmpty =>
      'A área de transferência não contém preferências do TuneBox. Copia-as primeiro no outro dispositivo.';

  @override
  String get xferNewerTitle => 'Mais recente do que esta app';

  @override
  String get xferNewerBody =>
      'Estas preferências foram criadas por uma versão mais recente do TuneBox. Atualiza primeiro este dispositivo.';

  @override
  String xferMergeTitle(String profile) {
    return 'Juntar a \"$profile\"?';
  }

  @override
  String xferMergeBody(
    String source,
    int songs,
    int liked,
    int plays,
    int rules,
  ) {
    return 'De $source:\n• $songs músicas, $liked gostadas\n• $plays reproduções\n• $rules regras de artistas\n\nOs teus gostos e o teu histórico mantêm-se. Fazer isto duas vezes não altera nada.';
  }

  @override
  String get xferSourceFile => 'o ficheiro';

  @override
  String get xferSourceClipboard => 'a área de transferência';

  @override
  String get xferMerge => 'Juntar';

  @override
  String get xferMerging => 'A juntar…';

  @override
  String xferMerged(String summary) {
    return 'Juntado: $summary';
  }

  @override
  String xferMergeFailed(String error) {
    return 'Falha ao juntar: $error';
  }

  @override
  String get xferSendTitle => 'Enviar as tuas preferências';

  @override
  String xferCouldNotStart(String error) {
    return 'Não foi possível iniciar: $error';
  }

  @override
  String get xferSent =>
      'Enviado. O outro dispositivo já tem as tuas preferências.';

  @override
  String get xferClosed =>
      'Fechado: o código expirou ou foi errado demasiadas vezes. Começa de novo para obter outro.';

  @override
  String get xferSendHow =>
      'No outro dispositivo abre Definições → Mover as tuas preferências → Receber, escolhe este dispositivo e escreve:';

  @override
  String get xferNoWifi =>
      'Nenhum endereço Wi-Fi encontrado: liga os dois dispositivos à mesma rede.';

  @override
  String xferThisDevice(String addresses, int port) {
    return 'Este dispositivo: $addresses (porta $port)';
  }

  @override
  String get xferWaiting =>
      'A aguardar o outro dispositivo… (fecha após 5 minutos)';

  @override
  String xferCodeFor(String name) {
    return 'Código mostrado em $name';
  }

  @override
  String get xferCodeLabel => 'Código de 6 dígitos';

  @override
  String get xferReceiveAction => 'Receber';

  @override
  String xferReceivingFrom(String name) {
    return 'A receber de $name…';
  }

  @override
  String get xferWrongCode =>
      'Código errado. Verifica o número no outro dispositivo.';

  @override
  String get xferNotTaste => 'Isso não eram preferências do TuneBox.';

  @override
  String xferCouldNotReach(String error) {
    return 'Não foi possível contactar: $error';
  }

  @override
  String xferLooking(String host) {
    return 'A procurar $host…';
  }

  @override
  String xferNothingAt(String host) {
    return 'Nada respondeu em $host. O Enviar está aberto lá?';
  }

  @override
  String get xferReceiveTitle => 'Receber preferências';

  @override
  String get xferOpenSendFirst =>
      'Abre primeiro Enviar no outro dispositivo (mesmo Wi-Fi).';

  @override
  String get xferSearching => 'A procurar dispositivos próximos…';

  @override
  String get xferNoSender => 'Ainda não foi encontrado nenhum emissor.';

  @override
  String get xferSearchAgain => 'Procurar novamente';

  @override
  String get xferTypeAddress => 'Não aparece? Escreve o endereço';

  @override
  String get xferConnect => 'Ligar';

  @override
  String get qUndo => 'Anular';

  @override
  String qRemoved(String title) {
    return '\"$title\" removido';
  }

  @override
  String get qCleared => 'Fila limpa';

  @override
  String qSaved(String songs, String name) {
    return '$songs guardado em \"$name\"';
  }

  @override
  String qTitle(int count) {
    return 'Fila · $count';
  }

  @override
  String get qSavePlaylist => 'Guardar como playlist';

  @override
  String get qClear => 'Limpar fila';

  @override
  String get qClearSub => 'Mantém a música que está a tocar';

  @override
  String get qEmptyTitle => 'A fila está vazia';

  @override
  String get qEmptyBody => 'Reproduz algo e ela enche-se aqui.';

  @override
  String get qDrag => 'Arrasta para reordenar';

  @override
  String plDeleted(String name) {
    return '\"$name\" eliminada';
  }

  @override
  String get plDeleteSub => 'As músicas ficam na tua biblioteca';

  @override
  String get plDelete => 'Eliminar playlist';

  @override
  String get plRenameOrDelete => 'Mudar nome ou eliminar';
}
