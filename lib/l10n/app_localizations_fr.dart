// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class LFr extends L {
  LFr([String locale = 'fr']) : super(locale);

  @override
  String get navHome => 'Accueil';

  @override
  String get navExplore => 'Explorer';

  @override
  String get navLibrary => 'Bibliothèque';

  @override
  String get navTaste => 'Tes goûts';

  @override
  String get actionDone => 'Terminé';

  @override
  String get actionCancel => 'Annuler';

  @override
  String get actionCreate => 'Créer';

  @override
  String get actionPlay => 'Lecture';

  @override
  String get actionShuffle => 'Aléatoire';

  @override
  String get actionPlayAll => 'Tout lire';

  @override
  String get actionAdd => 'Ajouter';

  @override
  String get actionRemove => 'Retirer';

  @override
  String get actionName => 'Nom';

  @override
  String get greetingNight => 'Encore debout ?';

  @override
  String get greetingMorning => 'Bonjour';

  @override
  String get greetingAfternoon => 'Bon après-midi';

  @override
  String get greetingEvening => 'Bonsoir';

  @override
  String get homeBuilding => 'L\'IA construit tes étagères…';

  @override
  String get homeOffline => 'Hors ligne — voici ce qui est sur l\'appareil';

  @override
  String get homeNothingYet => 'Rien à afficher pour l\'instant';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count étagères, mises à jour à l\'instant',
      one: '1 étagère, mise à jour à l\'instant',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Reconstruire les étagères';

  @override
  String get homeAddMusic => 'Ajouter de la musique depuis cet appareil';

  @override
  String get homeQuickPicks => 'Reprises rapides';

  @override
  String get homeQuickPicksSub => 'Retour direct à ce que tu écoutais';

  @override
  String get homeEmptyTitle => 'Ta bibliothèque est vide';

  @override
  String get homeEmptyBody =>
      'Cherche quelque chose, ou ajoute la musique déjà présente sur cet appareil. L\'IA apprend dès la toute première écoute.';

  @override
  String get homeAddMyMusic => 'Ajouter ma musique';

  @override
  String homeCouldNotReach(Object error) {
    return 'Impossible de joindre YouTube : $error';
  }

  @override
  String get moodFocus => 'Concentration';

  @override
  String get moodWorkout => 'Sport';

  @override
  String get moodChill => 'Détente';

  @override
  String get moodCommute => 'Trajet';

  @override
  String get moodParty => 'Fête';

  @override
  String moodBuilding(Object mood) {
    return 'Construction d\'un mix $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Pas de chance : $error';
  }

  @override
  String get shelfRepeat => 'En boucle';

  @override
  String get shelfRepeatSub => 'Tes deux dernières semaines';

  @override
  String get shelfForgotten => 'Vieux morceaux que tu aimais';

  @override
  String get shelfForgottenSub => 'Adorés autrefois, oubliés depuis un moment';

  @override
  String get shelfNew => 'Nouveau';

  @override
  String get shelfNewSub => 'Des titres frais que l\'IA pense être pour toi';

  @override
  String shelfBecause(Object artist) {
    return 'Parce que tu as écouté $artist';
  }

  @override
  String get shelfBecauseSub => 'Le même coin de tes goûts';

  @override
  String get shelfDeep => 'À peine écoutés';

  @override
  String get shelfDeepSub => 'Dans ta bibliothèque, presque jamais joués';

  @override
  String get shelfMix => 'Ton mix';

  @override
  String get shelfMixSub => 'Refait à chaque ouverture de l\'application';

  @override
  String get shelfAdded => 'Ajouté récemment';

  @override
  String get shelfAddedSub => 'Téléchargements et fichiers importés';

  @override
  String get shelfStarter => 'Commence ici';

  @override
  String get shelfStarterSub =>
      'Écoutes-en quelques-uns et l\'IA apprend aussitôt';

  @override
  String reasonPlays(int count) {
    return '$count écoutes';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Aimé, écouté $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count écoutes, la dernière $when';
  }

  @override
  String get reasonTopArtist => 'L\'un des artistes que tu écoutes le plus';

  @override
  String reasonMore(Object artist) {
    return 'Encore $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Tu reviens toujours à $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Ton genre de $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Beaucoup de $tag ces temps-ci';
  }

  @override
  String get reasonOutThisYear => 'Sorti cette année';

  @override
  String get reasonReleasedRecently => 'Sorti récemment';

  @override
  String get reasonClose => 'Proche de ce que tu écoutes en ce moment';

  @override
  String reasonNear(Object artist) {
    return 'Proche de $artist';
  }

  @override
  String get reasonNeverPlayed => 'Jamais écouté';

  @override
  String get reasonPlayedOnce => 'Écouté une fois';

  @override
  String get reasonPopular => 'Populaire en ce moment';

  @override
  String whenYearsAgo(int count) {
    return 'il y a $count ans';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'il y a $count mois';
  }

  @override
  String whenDaysAgo(int count) {
    return 'il y a $count jours';
  }

  @override
  String get searchHint => 'Titres, artistes, albums';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count résultats',
      one: '1 résultat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Recherches récentes';

  @override
  String get searchEmptyTitle => 'Rien trouvé';

  @override
  String get searchEmptyBody =>
      'Essaie une autre orthographe, ou juste le nom de l\'artiste.';

  @override
  String get searchStartTitle => 'Trouve quelque chose à écouter';

  @override
  String get searchStartBody =>
      'Cherche dans YouTube Music : seuls des morceaux reviennent, jamais des vidéos d\'autre chose.';

  @override
  String get libPlaylists => 'Playlists';

  @override
  String get libSongs => 'Titres';

  @override
  String get libArtists => 'Artistes';

  @override
  String get libLiked => 'Aimés';

  @override
  String get libDownloads => 'Téléchargements';

  @override
  String get libImported => 'Importés';

  @override
  String get libLikedSongs => 'Titres aimés';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titres',
      one: '1 titre',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count hors ligne';
  }

  @override
  String get libMyFiles => 'Mes propres fichiers';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fichiers',
      one: '1 fichier',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nouvelle playlist';

  @override
  String get libMakeOne => 'En créer une';

  @override
  String get libSortRecent => 'Ajouté récemment';

  @override
  String get libSortTitle => 'Titre';

  @override
  String get libSortArtist => 'Artiste';

  @override
  String get libSortPlays => 'Les plus écoutés';

  @override
  String get sheetNotForMe => 'Pas pour moi';

  @override
  String get sheetNotForMeSub => 'Ne plus jamais recommander ça';

  @override
  String get sheetBlocked => 'Bloqué — appuie pour l\'autoriser à nouveau';

  @override
  String get sheetBlockedSub => 'Peut réapparaître dans les recommandations';

  @override
  String get sheetPlayNext => 'Lire juste après';

  @override
  String get sheetAddToPlaylist => 'Ajouter à une playlist';

  @override
  String get sheetDownloaded => 'Téléchargé';

  @override
  String get sheetRemoveFile => 'Appuie pour supprimer le fichier';

  @override
  String get sheetDownload => 'Télécharger';

  @override
  String get sheetKeepOffline => 'Garder hors ligne';

  @override
  String get sheetRadio => 'Lancer une radio';

  @override
  String get sheetRadioSub => 'Une file construite autour de ce titre';

  @override
  String get sheetQueue => 'File d\'attente';

  @override
  String get sheetSleepTimer => 'Minuteur';

  @override
  String get sheetSleepOff => 'Désactivé';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minutes';
  }

  @override
  String get sheetSleepEndOfTrack => 'À la fin de ce titre';

  @override
  String sheetSleepSet(int count) {
    return 'La musique s\'arrête dans $count min';
  }

  @override
  String get tasteTitle => 'Tes goûts';

  @override
  String get tasteRetrain => 'Réapprendre';

  @override
  String get tasteRetraining => 'Réapprentissage à partir de ton historique…';

  @override
  String get tasteRetrained => 'L\'IA a reconstruit son modèle.';

  @override
  String tasteConfidence(int percent) {
    return 'Confiance $percent %';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays écoutes · $skips passées · $likes j\'aime';
  }

  @override
  String get tasteEmptySummary => 'Écoute quelques titres et ça se remplira.';

  @override
  String get tasteKeepLearning =>
      'Continuer d\'apprendre pendant que j\'écoute';

  @override
  String get tasteKeepLearningSub => 'Désactive pour figer le profil actuel';

  @override
  String get tasteDownloadsTitle => 'Téléchargements gérés par l\'IA';

  @override
  String get tasteDownloadsSub =>
      'La musique arrive sur l\'appareil sans que tu demandes';

  @override
  String get tasteDownloadLikes => 'Télécharger tout ce que j\'aime';

  @override
  String get tasteDownloadLikesSub =>
      'Appuie sur le cœur et le fichier est gardé hors ligne';

  @override
  String get tasteAiInstall =>
      'Laisser l\'IA installer la musique qu\'elle choisit';

  @override
  String get tasteAiInstallSub =>
      'Elle ira chercher les titres dont elle est sûre';

  @override
  String get tasteWhatItThinks => 'Ce qu\'elle pense que tu aimes';

  @override
  String get tasteWhatItThinksSub =>
      'Appris des écoutes, des passages, des j\'aime et des répétitions';

  @override
  String get tasteArtists => 'Artistes sur lesquels elle s\'appuie';

  @override
  String get tasteWhenYouListen => 'Quand tu écoutes';

  @override
  String get tasteWhenYouListenSub =>
      'Écoutes par heure — l\'heure actuelle compte davantage';

  @override
  String get tasteDecades => 'Décennies';

  @override
  String get tasteTune => 'Régler les recommandations';

  @override
  String get tasteTuneSub =>
      'Prend effet au prochain rafraîchissement de l\'accueil';

  @override
  String get tasteDiscovery => 'Découverte';

  @override
  String get tasteDiscoverySub => 'Familier ↔ jamais entendu';

  @override
  String get tasteEnergy => 'Énergie';

  @override
  String get tasteEnergySub => 'Calme ↔ fort';

  @override
  String get tasteRecency => 'Nouveauté';

  @override
  String get tasteRecencySub => 'Intemporel ↔ tout frais';

  @override
  String get tasteNostalgia => 'Nostalgie';

  @override
  String get tasteNostalgiaSub =>
      'Au bout de combien de temps un vieux favori compte comme oublié';

  @override
  String get tasteSignals => 'Signaux qu\'elle peut utiliser';

  @override
  String get tasteSignalsSub => 'Tout reste sur cet appareil';

  @override
  String get tasteUseHistory => 'Ce que j\'ai écouté';

  @override
  String get tasteUseSkips => 'Ce que je passe';

  @override
  String get tasteUseTime => 'Heure de la journée';

  @override
  String get tasteUseYouTube => 'Suggestions de YouTube';

  @override
  String get tasteAlwaysMore => 'Toujours plus de';

  @override
  String get tasteNeverAgain => 'Plus jamais';

  @override
  String get tasteAddArtist => 'Ajouter un artiste';

  @override
  String get tasteMoreOfPrompt => 'Toujours plus de…';

  @override
  String get tasteNeverAgainPrompt => 'Plus jamais…';

  @override
  String get tasteReset => 'Effacer ce qu\'elle a appris';

  @override
  String get tasteResetSub => 'Ta musique reste ; le profil repart de zéro';

  @override
  String get trainCard => 'Entraîne-la en notant';

  @override
  String get trainCardSub =>
      'Fais défiler de vrais morceaux. À droite pour en avoir plus, à gauche pour ne plus jamais. Deux minutes ici valent une semaine d\'écoute.';

  @override
  String get trainStart => 'Lancer une session d\'entraînement';

  @override
  String get trainTitle => 'Session d\'entraînement';

  @override
  String get trainQuestion => 'Tu voudrais ça sur ton accueil ?';

  @override
  String get trainMoreLikeThis => 'Plus comme ça';

  @override
  String get trainNeverAgain => 'Plus jamais';

  @override
  String get trainDone => 'Session terminée';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked gardés · $blocked bloqués. Confiance $before % → $after %';
  }

  @override
  String get trainBackToTaste => 'Retour à tes goûts';

  @override
  String get trainNothingTitle => 'Rien à noter pour l\'instant';

  @override
  String get trainNothingBody =>
      'Ajoute de la musique ou laisse l\'IA chercher des candidats d\'abord, puis reviens.';

  @override
  String get trainLeaveTitle => 'Quitter la session d\'entraînement ?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Si tu pars maintenant, l\'IA jette tout ce qui vient de cette session — les $count titres que tu viens de noter.',
      one:
          'Si tu pars maintenant, l\'IA jette tout ce qui vient de cette session — le 1 titre que tu viens de noter.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Continuer';

  @override
  String get trainDiscard => 'Abandonner et quitter';

  @override
  String get setTitle => 'Réglages';

  @override
  String get setAppearance => 'Apparence';

  @override
  String get setTheme => 'Thème';

  @override
  String get setThemeSystem => 'Suivre le système';

  @override
  String get setThemeLight => 'Clair';

  @override
  String get setThemeDark => 'Sombre';

  @override
  String get setPureBlack => 'Noir absolu';

  @override
  String get setPureBlackSub => 'Économise la batterie sur un écran OLED';

  @override
  String get setAccent => 'Couleur d\'accent';

  @override
  String get setAccentArtwork => 'D\'après la pochette';

  @override
  String get setAccentFixed => 'Une couleur que je choisis';

  @override
  String get setLanguage => 'Langue';

  @override
  String get setLanguageSystem => 'Suivre le système';

  @override
  String get setAccessibility => 'Accessibilité';

  @override
  String get setTextSize => 'Taille du texte';

  @override
  String get setTextSizeSub => 'En plus du réglage système';

  @override
  String get setReduceMotion => 'Réduire les animations';

  @override
  String get setReduceMotionSub =>
      'Arrête les barres, le visualiseur et les transitions';

  @override
  String get setHighContrast => 'Contraste élevé';

  @override
  String get setHighContrastSub => 'Séparation plus nette et contours visibles';

  @override
  String get setBoldText => 'Texte en gras';

  @override
  String get setPlayback => 'Lecture';

  @override
  String get setAutoRadio => 'Garder la musique en marche';

  @override
  String get setAutoRadioSub =>
      'Quand la file se termine, une radio prend le relais à partir du dernier titre';

  @override
  String get setSmartShuffle => 'Aléatoire intelligent';

  @override
  String get setSmartShuffleSub =>
      'Mélange selon tes goûts plutôt qu\'au hasard';

  @override
  String get setResume => 'Reprendre où je me suis arrêté';

  @override
  String get setResumeSub => 'Restaure la file à l\'ouverture, en pause';

  @override
  String get setDataSaver => 'Économie de données hors Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Limite les flux et téléchargements à 128 kbit/s en données mobiles';

  @override
  String get setHaptics => 'Retour haptique';

  @override
  String get setShowReasons => 'Afficher pourquoi c\'est recommandé';

  @override
  String get setSkipSilence => 'Passer les silences';

  @override
  String get setQuality => 'Qualité audio';

  @override
  String get setQualityLow => 'Basse · 64 kbit/s';

  @override
  String get setQualityNormal => 'Normale · 128 kbit/s';

  @override
  String get setQualityHigh => 'Haute · 192 kbit/s';

  @override
  String get setQualityBest => 'La meilleure disponible';

  @override
  String get setStorage => 'Téléchargements et stockage';

  @override
  String get setWifiOnly => 'Télécharger seulement en Wi-Fi';

  @override
  String get setDailyLimit => 'Limite quotidienne pour l\'IA';

  @override
  String setDailyLimitSub(int count) {
    return '$count titres par jour';
  }

  @override
  String get setBudget => 'Espace que l\'IA peut utiliser';

  @override
  String setUsed(Object size) {
    return '$size occupés par les téléchargements';
  }

  @override
  String get setYourMusic => 'Ta musique';

  @override
  String get setImport => 'Ajouter de la musique depuis cet appareil';

  @override
  String get setImportSub => 'Choisis des dossiers ou des fichiers';

  @override
  String get setCleanup => 'Nettoyer les fichiers manquants';

  @override
  String get setCleanupSub => 'Retire les titres dont le fichier a disparu';

  @override
  String setCleanupDone(int count) {
    return '$count fichiers manquants retirés.';
  }

  @override
  String get setExport => 'Envoyer mes goûts vers un autre appareil';

  @override
  String get setExportSub =>
      'Écrit un fichier de transfert : j\'aime, écoutes et tout ce que l\'IA a appris';

  @override
  String get setImportTaste => 'Charger des goûts depuis un autre appareil';

  @override
  String get setImportTasteSub =>
      'Les fusionne avec ce que cet appareil sait déjà';

  @override
  String get setAbout => 'À propos';

  @override
  String get setAboutBody =>
      'De la musique depuis YouTube et tes propres fichiers. L\'IA tourne entièrement sur cet appareil — rien n\'en sort.';

  @override
  String get setSource => 'Code source';

  @override
  String get importTitle => 'Ajouter de la musique';

  @override
  String get importPickFolder => 'Choisir un dossier';

  @override
  String get importPickFiles => 'Choisir des fichiers';

  @override
  String importScanning(Object file) {
    return 'Analyse de $file';
  }

  @override
  String importAdded(int count) {
    return '$count ajoutés';
  }

  @override
  String get importDenied =>
      'Autorisation refusée — impossible de lire ta musique.';

  @override
  String get importWatched => 'Dossiers surveillés';

  @override
  String get importIosHint =>
      'Ouvre l\'app Fichiers, va dans Sur mon iPhone → TuneBox et dépose la musique là.';

  @override
  String get playerQueue => 'File d\'attente';

  @override
  String get playerUpNext => 'À suivre';

  @override
  String get playerLyrics => 'Paroles';

  @override
  String get playerNoLyrics => 'Pas de paroles pour ce titre.';

  @override
  String get playerRepeat => 'Répéter';

  @override
  String get playerShuffle => 'Aléatoire';

  @override
  String errorPlayback(Object title) {
    return 'Impossible de lire « $title »';
  }

  @override
  String errorSkipping(Object title) {
    return '« $title » est passé — le flux n\'a pas pu s\'ouvrir.';
  }

  @override
  String get undo => 'Annuler';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'En ce moment : $tags, mené par $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'En ce moment : $tags.';
  }

  @override
  String get setColour => 'Couleur';

  @override
  String get setColourSub => 'Toute l\'application la suit';

  @override
  String get setCoverArt => 'Pochette';

  @override
  String get setMyColour => 'Ma couleur';

  @override
  String get setCoverArtSub =>
      'Chaque titre recolore l\'application d\'après sa pochette.';

  @override
  String get setMyColourSub => 'Une couleur, partout, tout le temps.';

  @override
  String get setPickColour => 'Choisir une autre couleur';

  @override
  String get setWifiOnlyTitle => 'Télécharger seulement en Wi-Fi';

  @override
  String get setDownloadLikes => 'Télécharger tout ce que j\'aime';

  @override
  String get setDownloadLikesSub => 'Le cœur enregistre aussi le fichier';

  @override
  String get setAiInstall =>
      'Laisser l\'IA installer la musique qu\'elle choisit';

  @override
  String get setSkipSilenceSub => 'Android seulement';

  @override
  String get setStorageUsed => 'Espace occupé par les téléchargements';

  @override
  String get setLibrary => 'Bibliothèque';

  @override
  String get setUpdates => 'Mises à jour';

  @override
  String get setAutoUpdate => 'Chercher les mises à jour tout seul';

  @override
  String get setAutoUpdateSub =>
      'Toutes les quelques heures, discrètement, et télécharge en Wi-Fi. L\'installation te demande toujours.';

  @override
  String setUpdateReady(Object version) {
    return 'La mise à jour vers $version est prête';
  }

  @override
  String get setUpdateReadySub => 'Téléchargée — appuie pour installer';

  @override
  String get setUpdateAvailableSub =>
      'Disponible sur la page des releases — appuie pour copier le lien';

  @override
  String get setLinkCopied => 'Lien copié';

  @override
  String get setCheckNow => 'Chercher maintenant';

  @override
  String get setUpToDate => 'TuneBox est à jour';

  @override
  String get setChecking => 'Recherche d\'une version plus récente…';

  @override
  String get homeCantReach => 'YouTube est injoignable';

  @override
  String get homeOfflineHint =>
      'Vérifie ta connexion. Tout ce qui est déjà sur l\'appareil fonctionne toujours.';

  @override
  String get actionRetry => 'Réessayer';

  @override
  String get actionClear => 'Effacer';

  @override
  String get searchFailed => 'La recherche a échoué';

  @override
  String get profWho => 'Qui écoute ?';

  @override
  String get profExplain =>
      'Chaque profil a sa propre bibliothèque, ses likes, ses playlists et ses goûts.';

  @override
  String get profActive => 'Actif';

  @override
  String get profRename => 'Renommer';

  @override
  String get profDeleteMenu => 'Supprimer le profil';

  @override
  String get profAdd => 'Ajouter un profil';

  @override
  String get profNew => 'Nouveau profil';

  @override
  String get profName => 'Nom';

  @override
  String profDeleteTitle(String name) {
    return 'Supprimer \"$name\" ?';
  }

  @override
  String get profDeleteBody =>
      'Sa bibliothèque, ses likes, ses playlists et ses goûts appris seront supprimés définitivement. Les fichiers musicaux restent sur l\'appareil.';

  @override
  String get profKeep => 'Garder';

  @override
  String get actionOk => 'OK';

  @override
  String get actionDelete => 'Supprimer';

  @override
  String get xferTitle => 'Transférer tes goûts';

  @override
  String xferIntro(String profile) {
    return 'Likes, écoutes et règles d\'artistes de \"$profile\". La réception fusionne avec ce profil et peut être répétée sans risque : rien n\'est en double.';
  }

  @override
  String get xferSectionWifi => 'Entre appareils sur le même Wi-Fi';

  @override
  String get xferSend => 'Envoyer à un appareil proche';

  @override
  String get xferSendSub =>
      'Affiche un code ; l\'autre appareil trouve celui-ci';

  @override
  String get xferReceive => 'Recevoir d\'un appareil proche';

  @override
  String get xferReceiveSub =>
      'Trouve les expéditeurs automatiquement : tu saisis le code';

  @override
  String get xferSectionFile => 'Avec un fichier';

  @override
  String get xferSave => 'Enregistrer dans un fichier';

  @override
  String get xferSaveSub =>
      'Choisis la destination : Téléchargements, USB, un chat…';

  @override
  String get xferLoad => 'Charger depuis un fichier';

  @override
  String get xferLoadSub => 'Tout fichier de goûts TuneBox, ancien ou récent';

  @override
  String get xferSectionText => 'Sous forme de texte';

  @override
  String get xferCopy => 'Copier sous forme de texte';

  @override
  String get xferCopySub =>
      'Une ligne que tu peux coller dans n\'importe quel chat ou note';

  @override
  String get xferPaste => 'Coller le texte';

  @override
  String get xferPasteSub => 'Depuis le presse-papiers';

  @override
  String get xferSaveDialog => 'Enregistrer tes goûts';

  @override
  String xferSaved(String kb) {
    return '$kb Ko enregistrés. Sur l\'autre appareil, choisis \"Charger depuis un fichier\".';
  }

  @override
  String xferSaveFailed(String error) {
    return 'Impossible d\'enregistrer : $error';
  }

  @override
  String xferFileUnreadable(String error) {
    return 'Ce fichier n\'a pas pu être lu comme des goûts : $error';
  }

  @override
  String xferCopied(String kb) {
    return 'Copié ($kb Ko de texte). Colle-le sur l\'autre appareil avec \"Coller le texte\".';
  }

  @override
  String xferCopyFailed(String error) {
    return 'Impossible de copier : $error';
  }

  @override
  String get xferClipboardEmpty =>
      'Le presse-papiers ne contient pas de goûts TuneBox. Copie-les d\'abord sur l\'autre appareil.';

  @override
  String get xferNewerTitle => 'Plus récent que cette appli';

  @override
  String get xferNewerBody =>
      'Ces goûts ont été créés par une version plus récente de TuneBox. Mets d\'abord à jour cet appareil.';

  @override
  String xferMergeTitle(String profile) {
    return 'Fusionner dans \"$profile\" ?';
  }

  @override
  String xferMergeBody(
    String source,
    int songs,
    int liked,
    int plays,
    int rules,
  ) {
    return 'Depuis $source :\n• $songs titres, $liked aimés\n• $plays écoutes\n• $rules règles d\'artistes\n\nTes propres likes et ton historique restent. Le faire deux fois ne change rien.';
  }

  @override
  String get xferSourceFile => 'le fichier';

  @override
  String get xferSourceClipboard => 'le presse-papiers';

  @override
  String get xferMerge => 'Fusionner';

  @override
  String get xferMerging => 'Fusion en cours…';

  @override
  String xferMerged(String summary) {
    return 'Fusionné : $summary';
  }

  @override
  String xferMergeFailed(String error) {
    return 'Échec de la fusion : $error';
  }

  @override
  String get xferSendTitle => 'Envoyer tes goûts';

  @override
  String xferCouldNotStart(String error) {
    return 'Impossible de démarrer : $error';
  }

  @override
  String get xferSent => 'Envoyé. L\'autre appareil a tes goûts.';

  @override
  String get xferClosed =>
      'Fermé — le code a expiré ou a été mal saisi trop souvent. Recommence pour en obtenir un nouveau.';

  @override
  String get xferSendHow =>
      'Sur l\'autre appareil, ouvre Réglages → Transférer tes goûts → Recevoir, choisis cet appareil et saisis :';

  @override
  String get xferNoWifi =>
      'Aucune adresse Wi-Fi trouvée — connecte les deux appareils au même réseau.';

  @override
  String xferThisDevice(String addresses, int port) {
    return 'Cet appareil : $addresses (port $port)';
  }

  @override
  String get xferWaiting =>
      'En attente de l\'autre appareil… (se ferme après 5 minutes)';

  @override
  String xferCodeFor(String name) {
    return 'Code affiché sur $name';
  }

  @override
  String get xferCodeLabel => 'Code à 6 chiffres';

  @override
  String get xferReceiveAction => 'Recevoir';

  @override
  String xferReceivingFrom(String name) {
    return 'Réception depuis $name…';
  }

  @override
  String get xferWrongCode =>
      'Code incorrect. Vérifie le numéro sur l\'autre appareil.';

  @override
  String get xferNotTaste => 'Ce n\'étaient pas des goûts TuneBox.';

  @override
  String xferCouldNotReach(String error) {
    return 'Impossible de le joindre : $error';
  }

  @override
  String xferLooking(String host) {
    return 'Recherche de $host…';
  }

  @override
  String xferNothingAt(String host) {
    return 'Rien n\'a répondu à $host. Est-ce que Envoyer est ouvert là-bas ?';
  }

  @override
  String get xferReceiveTitle => 'Recevoir des goûts';

  @override
  String get xferOpenSendFirst =>
      'Ouvre d\'abord Envoyer sur l\'autre appareil (même Wi-Fi).';

  @override
  String get xferSearching => 'Recherche d\'appareils proches…';

  @override
  String get xferNoSender => 'Aucun expéditeur trouvé pour l\'instant.';

  @override
  String get xferSearchAgain => 'Rechercher à nouveau';

  @override
  String get xferTypeAddress => 'Pas dans la liste ? Saisis son adresse';

  @override
  String get xferConnect => 'Se connecter';

  @override
  String get qUndo => 'Annuler';

  @override
  String qRemoved(String title) {
    return '\"$title\" retiré';
  }

  @override
  String get qCleared => 'File d\'attente vidée';

  @override
  String qSaved(String songs, String name) {
    return '$songs enregistré dans \"$name\"';
  }

  @override
  String qTitle(int count) {
    return 'File d\'attente · $count';
  }

  @override
  String get qSavePlaylist => 'Enregistrer comme playlist';

  @override
  String get qClear => 'Vider la file d\'attente';

  @override
  String get qClearSub => 'Garde le titre en cours de lecture';

  @override
  String get qEmptyTitle => 'La file d\'attente est vide';

  @override
  String get qEmptyBody => 'Lance quelque chose et elle se remplit ici.';

  @override
  String get qDrag => 'Fais glisser pour réorganiser';

  @override
  String plDeleted(String name) {
    return '\"$name\" supprimée';
  }

  @override
  String get plDeleteSub => 'Les titres restent dans ta bibliothèque';

  @override
  String get plDelete => 'Supprimer la playlist';

  @override
  String get plRenameOrDelete => 'Renommer ou supprimer';

  @override
  String get aLibListView => 'Vue en liste';

  @override
  String get aLibGridView => 'Vue en grille';

  @override
  String get aLibSortAlpha => 'A–Z';

  @override
  String get aLibSortYear => 'Année';

  @override
  String get aLibNothingYet => 'Rien ici pour l\'instant';

  @override
  String get aLibImportedEmptyBody =>
      'Ajoute la musique déjà présente sur cet appareil.';

  @override
  String get aLibEmptyBody =>
      'Écoute ou télécharge quelque chose et ça apparaît ici.';

  @override
  String aLibBannerSummary(String songs, String size) {
    return '$songs · $size sur cet appareil';
  }

  @override
  String get aLibOfflineNote => 'Elles se lisent sans aucune connexion';

  @override
  String aLibAiPicked(String count) {
    return '$count d\'entre elles ont été choisies par l\'IA pour toi';
  }

  @override
  String get aPlaylistLabel => 'Playlist';

  @override
  String get aLibNoArtists => 'Pas encore d\'artistes';

  @override
  String get aLibNoArtistsBody =>
      'Écoute quelques titres et ils s\'accumuleront ici.';

  @override
  String get aHomeSearch => 'Rechercher';

  @override
  String get aHomeInYourLibrary => 'Dans ta bibliothèque';

  @override
  String get aHomeInYourLibrarySub => 'Ce que tu as ajouté jusqu\'ici';

  @override
  String get aSearchHintDots => 'Titres, artistes, albums…';

  @override
  String get aSearchEmptyBody =>
      'Essaie une autre orthographe ou colle un lien YouTube.';

  @override
  String get aSearchTrySomething => 'Essaie quelque chose';

  @override
  String get aSearchLearnedFrom => 'D\'après ce que l\'IA a appris';

  @override
  String get aSearchAnything => 'Cherche n\'importe quoi sur YouTube';

  @override
  String get aSearchSeedTap => 'Touche une piste pour explorer autour';

  @override
  String get aSearchArtistsYouPlay => 'Artistes que tu écoutes';

  @override
  String aSearchAffinity(String percent) {
    return '$percent% d\'affinité';
  }

  @override
  String get aArtistAlwaysMore => 'Toujours plus de ça';

  @override
  String get aArtistClearRule => 'Effacer la règle';

  @override
  String get aArtistBoosted => 'favorisé';

  @override
  String get aArtistBlocked => 'bloqué';

  @override
  String get aArtistRadio => 'Radio';

  @override
  String get aPlLikedSub => 'Tout ce que tu as aimé avec le cœur';

  @override
  String get aPlDownloadsSub => 'Se lit sans connexion';

  @override
  String get aPlImportedSub => 'Musique que tu as ajoutée depuis cet appareil';

  @override
  String get aPlEmptyTitle => 'Vide pour l\'instant';

  @override
  String get aPlEmptyBody =>
      'Ajoute des titres depuis le menu ⋮ de n\'importe quel morceau.';

  @override
  String aPlDownloading(String songs) {
    return 'Téléchargement de $songs…';
  }

  @override
  String bTasteAiBudgetSub(String count, String gb) {
    return 'Jusqu\'à $count titres par jour, $gb Go de budget';
  }

  @override
  String get bTasteSongsPerDay => 'Titres par jour';

  @override
  String get bTasteStorageMayUse => 'Stockage autorisé';

  @override
  String bTasteGb(String gb) {
    return '$gb Go';
  }

  @override
  String get bTasteNothingToDownload =>
      'Rien de nouveau à télécharger pour le moment.';

  @override
  String bTasteQueuedSongs(String count) {
    return '$count titres choisis par l\'IA mis en file.';
  }

  @override
  String get bTasteFetchNow => 'En récupérer maintenant';

  @override
  String get bTasteNotEnoughListening =>
      'Pas encore assez d\'écoute. Joue quelques titres ou lance une session d\'entraînement ci-dessous.';

  @override
  String get bTasteFamiliar => 'Familier';

  @override
  String get bTasteDiscoveryCap1 => 'Surtout des titres que tu connais déjà';

  @override
  String get bTasteDiscoveryCap2 => 'Quelques nouveaux titres par étagère';

  @override
  String get bTasteDiscoveryCap3 =>
      'La moitié de l\'accueil sera nouvelle pour toi';

  @override
  String get bTasteDiscoveryCap4 => 'Montre-moi ce que je n\'ai jamais entendu';

  @override
  String get bTasteCalm => 'Calme';

  @override
  String get bTasteHighEnergy => 'Plein d\'énergie';

  @override
  String get bTasteEnergyCaption =>
      'Pousse les choix vers plus fort et plus rapide';

  @override
  String get bTasteTimeless => 'Intemporel';

  @override
  String get bTasteFresh => 'Récent';

  @override
  String get bTasteRecencyCaption =>
      'Poids de la date de sortie dans « Nouveau ⭐ »';

  @override
  String get bTasteRarely => 'Rarement';

  @override
  String get bTasteOften => 'Souvent';

  @override
  String get bTasteNostalgiaCaption =>
      'Jusqu\'où chercher de vieux tubes oubliés';

  @override
  String get bTasteListeningHistory => 'Historique d\'écoute';

  @override
  String bTastePlaysRecorded(String count) {
    return '$count lectures enregistrées';
  }

  @override
  String get bTasteSkips => 'Passages';

  @override
  String bTasteSkipsCounted(String count) {
    return '$count passages comptés contre des titres';
  }

  @override
  String get bTasteTimeOfDaySub => 'Des choix différents à 08:00 et à 23:00';

  @override
  String get bTasteYoutubeRelated => 'Titres associés sur YouTube';

  @override
  String get bTasteYoutubeRelatedSub =>
      'Ajoute des titres que tu n\'as pas encore';

  @override
  String get bTasteResetSub =>
      'Efface lectures, passages et pondérations. Garde la bibliothèque.';

  @override
  String get bTasteResetDialogTitle => 'Réinitialiser l\'IA ?';

  @override
  String get bTasteResetDialogBody =>
      'Ta bibliothèque, tes playlists et tes téléchargements restent. Tout ce qu\'elle a appris sur toi est effacé et l\'accueil revient aux réglages par défaut.';

  @override
  String get bTasteResetAction => 'Réinitialiser';

  @override
  String get bTrainHearIt => 'Écouter';

  @override
  String bImportDoneAdded(String count) {
    return 'Terminé · $count nouveaux titres ajoutés';
  }

  @override
  String bImportScanningProgress(String scanned, String total) {
    return 'Analyse · $scanned sur $total fichiers';
  }

  @override
  String get bImportWatchedFolders => 'Dossiers surveillés';

  @override
  String get bImportWatchedFoldersSub => 'Réanalysés au lancement de l\'appli';

  @override
  String get bImportNoneYet =>
      'Aucun pour l\'instant. Choisis un dossier et il sera surveillé automatiquement.';

  @override
  String get bImportFoundOnDevice => 'Trouvés sur cet appareil';

  @override
  String get bImportFoundOnDeviceSub => 'Touche pour analyser et surveiller';

  @override
  String get bImportYourFiles => 'Tes fichiers';

  @override
  String bImportImportedSoFar(String count) {
    return '$count importés jusqu\'ici';
  }

  @override
  String get bImportFilesStayNote =>
      'Les fichiers restent où ils sont : TuneBox ne fait que les indexer. Supprime un fichier et il quittera discrètement ta bibliothèque au prochain scan.';

  @override
  String get bImportRescan => 'Réanalyser';

  @override
  String get cMore => 'Plus';

  @override
  String cBlockedSnack(String title) {
    return '\"$title\" bloqué — l\'IA l\'évitera';
  }

  @override
  String get cLike => 'J\'aime';

  @override
  String get cUnlike => 'Je n\'aime plus';

  @override
  String get cRemoveFromLiked => 'Retirer des titres aimés';

  @override
  String get cLikeSub => 'L\'IA apprend tout de suite';

  @override
  String get cSave => 'Enregistrer';

  @override
  String get cNothingPlaying => 'Rien en lecture';

  @override
  String get cNothingPlayingBody => 'Choisis un titre et il apparaîtra ici.';

  @override
  String get cPlayingFrom => 'Lecture depuis';

  @override
  String get cSeek => 'Position';

  @override
  String cTimeOf(String done, String total) {
    return '$done sur $total';
  }

  @override
  String get cShuffleOn => 'Aléatoire : activé';

  @override
  String get cShuffleOff => 'Aléatoire : désactivé';

  @override
  String get cPrevious => 'Précédent';

  @override
  String get cNext => 'Suivant';

  @override
  String get cPause => 'Pause';

  @override
  String get cRepeatOne => 'Répéter : ce titre';

  @override
  String get cRepeatOff => 'Répéter : désactivé';

  @override
  String get cRepeatAll => 'Répéter : toute la file';

  @override
  String get cSaved => 'Enregistré';

  @override
  String get cAudio => 'Audio';

  @override
  String get cSpeed => 'Vitesse';

  @override
  String get cAndroidOnly => 'Android uniquement';

  @override
  String get cPlaylist => 'Playlist';

  @override
  String get cSearchResults => 'Résultats de recherche';

  @override
  String get cYourLibrary => 'Ta bibliothèque';

  @override
  String get cRadio => 'Radio';

  @override
  String get cYourQueue => 'Ta file d\'attente';

  @override
  String cDownloadFailed(String title) {
    return 'Échec du téléchargement : $title';
  }

  @override
  String cAiDownloading(String title) {
    return 'L\'IA télécharge $title';
  }

  @override
  String cDownloading(String title) {
    return 'Téléchargement de $title';
  }

  @override
  String get cSaveQueueAs => 'Enregistrer la file sous';

  @override
  String cProfileSwitch(String count) {
    return 'Profil · touche pour changer ($count)';
  }

  @override
  String get cProfileAddAnother =>
      'Profil · touche pour ajouter un autre auditeur';

  @override
  String get cUseIt => 'Utiliser';

  @override
  String cAiBudgetSub(String daily, String gb) {
    return 'Jusqu\'à $daily/jour · budget de $gb Go · à régler dans Tes goûts';
  }

  @override
  String cFoldersWatched(String count) {
    return '$count dossiers surveillés';
  }

  @override
  String get cMoveTasteSub =>
      'Entre appareils via Wi-Fi, ou avec un fichier ou du texte';

  @override
  String get cSearchLanguages => 'Rechercher des langues';

  @override
  String cNoLanguageMatch(String query) {
    return 'Aucune langue ne correspond à \"$query\"';
  }

  @override
  String addedToPlaylist(String name) {
    return 'Ajouté à « $name »';
  }
}
