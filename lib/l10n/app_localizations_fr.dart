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
}
