// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class LEl extends L {
  LEl([String locale = 'el']) : super(locale);

  @override
  String get navHome => 'Αρχική';

  @override
  String get navExplore => 'Εξερεύνηση';

  @override
  String get navLibrary => 'Βιβλιοθήκη';

  @override
  String get navTaste => 'Τα γούστα σου';

  @override
  String get actionDone => 'Τέλος';

  @override
  String get actionCancel => 'Άκυρο';

  @override
  String get actionCreate => 'Δημιουργία';

  @override
  String get actionPlay => 'Αναπαραγωγή';

  @override
  String get actionShuffle => 'Τυχαία';

  @override
  String get actionPlayAll => 'Αναπαραγωγή όλων';

  @override
  String get actionAdd => 'Προσθήκη';

  @override
  String get actionRemove => 'Αφαίρεση';

  @override
  String get actionName => 'Όνομα';

  @override
  String get greetingNight => 'Ακόμα ξύπνιος;';

  @override
  String get greetingMorning => 'Καλημέρα';

  @override
  String get greetingAfternoon => 'Καλό απόγευμα';

  @override
  String get greetingEvening => 'Καλησπέρα';

  @override
  String get homeBuilding => 'Η τεχνητή νοημοσύνη φτιάχνει τα ράφια σου…';

  @override
  String get homeOffline =>
      'Εκτός σύνδεσης — εμφανίζεται ό,τι υπάρχει στη συσκευή';

  @override
  String get homeNothingYet => 'Δεν υπάρχει τίποτα ακόμα';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ράφια, μόλις ανανεώθηκαν',
      one: '1 ράφι, μόλις ανανεώθηκε',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Ανανέωση ραφιών';

  @override
  String get homeAddMusic => 'Προσθήκη μουσικής από αυτή τη συσκευή';

  @override
  String get homeQuickPicks => 'Γρήγορες επιλογές';

  @override
  String get homeQuickPicksSub => 'Κατευθείαν πίσω σε ό,τι άκουγες';

  @override
  String get homeEmptyTitle => 'Η βιβλιοθήκη σου είναι άδεια';

  @override
  String get homeEmptyBody =>
      'Ψάξε κάτι ή πρόσθεσε τη μουσική που υπάρχει ήδη σε αυτή τη συσκευή. Η τεχνητή νοημοσύνη μαθαίνει από την πρώτη σου αναπαραγωγή.';

  @override
  String get homeAddMyMusic => 'Προσθήκη της μουσικής μου';

  @override
  String homeCouldNotReach(Object error) {
    return 'Δεν ήταν δυνατή η σύνδεση με το YouTube: $error';
  }

  @override
  String get moodFocus => 'Συγκέντρωση';

  @override
  String get moodWorkout => 'Γυμναστική';

  @override
  String get moodChill => 'Χαλάρωση';

  @override
  String get moodCommute => 'Μετακίνηση';

  @override
  String get moodParty => 'Πάρτι';

  @override
  String moodBuilding(Object mood) {
    return 'Δημιουργία μίξης $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Δεν τα κατάφερα: $error';
  }

  @override
  String get shelfRepeat => 'Σε επανάληψη';

  @override
  String get shelfRepeatSub => 'Οι τελευταίες δύο εβδομάδες σου';

  @override
  String get shelfForgotten => 'Παλιές ξεχασμένες επιτυχίες που αγάπησες';

  @override
  String get shelfForgottenSub =>
      'Αγαπήθηκαν κάποτε, αλλά έχουν να ακουστούν καιρό';

  @override
  String get shelfNew => 'Νέα';

  @override
  String get shelfNewSub =>
      'Φρέσκα κομμάτια που νομίζει η τεχνητή νοημοσύνη ότι σου αρέσουν';

  @override
  String shelfBecause(Object artist) {
    return 'Επειδή άκουσες $artist';
  }

  @override
  String get shelfBecauseSub => 'Στην ίδια γωνιά των γούστων σου';

  @override
  String get shelfDeep => 'Σχεδόν ανέγγιχτα';

  @override
  String get shelfDeepSub => 'Στη βιβλιοθήκη σου, με ελάχιστες αναπαραγωγές';

  @override
  String get shelfMix => 'Η μίξη σου';

  @override
  String get shelfMixSub =>
      'Ξαναφτιάχνεται κάθε φορά που ανοίγεις την εφαρμογή';

  @override
  String get shelfAdded => 'Προστέθηκαν πρόσφατα';

  @override
  String get shelfAddedSub => 'Λήψεις και αρχεία που εισήγαγες';

  @override
  String get shelfStarter => 'Ξεκίνα από εδώ';

  @override
  String get shelfStarterSub =>
      'Άκουσε μερικά και η τεχνητή νοημοσύνη αρχίζει αμέσως να μαθαίνει';

  @override
  String reasonPlays(int count) {
    return '$count αναπαραγωγές';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Αγαπημένο, τελευταία φορά $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count αναπαραγωγές, τελευταία $when';
  }

  @override
  String get reasonTopArtist => 'Ένας από τους πιο ακουσμένους καλλιτέχνες σου';

  @override
  String reasonMore(Object artist) {
    return 'Περισσότερα από $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Επιστρέφεις συνεχώς στους $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Το είδος σου: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Πολύ $tag τελευταία';
  }

  @override
  String get reasonOutThisYear => 'Κυκλοφόρησε φέτος';

  @override
  String get reasonReleasedRecently => 'Κυκλοφόρησε πρόσφατα';

  @override
  String get reasonClose => 'Κοντά σε ό,τι άκουγες';

  @override
  String reasonNear(Object artist) {
    return 'Κοντά στους $artist';
  }

  @override
  String get reasonNeverPlayed => 'Δεν έχει παιχτεί ποτέ';

  @override
  String get reasonPlayedOnce => 'Παίχτηκε μία φορά';

  @override
  String get reasonPopular => 'Δημοφιλές αυτή τη στιγμή';

  @override
  String whenYearsAgo(int count) {
    return 'πριν $count χρ.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'πριν $count μήνες';
  }

  @override
  String whenDaysAgo(int count) {
    return 'πριν $count ημέρες';
  }

  @override
  String get searchHint => 'Τραγούδια, καλλιτέχνες, άλμπουμ';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count αποτελέσματα',
      one: '1 αποτέλεσμα',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Πρόσφατες αναζητήσεις';

  @override
  String get searchEmptyTitle => 'Δεν βρέθηκε τίποτα';

  @override
  String get searchEmptyBody =>
      'Δοκίμασε άλλη ορθογραφία ή μόνο το όνομα του καλλιτέχνη.';

  @override
  String get searchStartTitle => 'Βρες κάτι να ακούσεις';

  @override
  String get searchStartBody =>
      'Αναζήτηση στο YouTube Music — επιστρέφονται μόνο τραγούδια, ποτέ βίντεο για άλλα θέματα.';

  @override
  String get libPlaylists => 'Λίστες';

  @override
  String get libSongs => 'Τραγούδια';

  @override
  String get libArtists => 'Καλλιτέχνες';

  @override
  String get libLiked => 'Αγαπημένα';

  @override
  String get libDownloads => 'Λήψεις';

  @override
  String get libImported => 'Εισαγμένα';

  @override
  String get libLikedSongs => 'Αγαπημένα τραγούδια';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count τραγούδια',
      one: '1 τραγούδι',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count εκτός σύνδεσης';
  }

  @override
  String get libMyFiles => 'Τα δικά μου αρχεία';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count αρχεία',
      one: '1 αρχείο',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Νέα λίστα';

  @override
  String get libMakeOne => 'Φτιάξε μία';

  @override
  String get libSortRecent => 'Προστέθηκαν πρόσφατα';

  @override
  String get libSortTitle => 'Τίτλος';

  @override
  String get libSortArtist => 'Καλλιτέχνης';

  @override
  String get libSortPlays => 'Πιο ακουσμένα';

  @override
  String get sheetNotForMe => 'Δεν μου ταιριάζει';

  @override
  String get sheetNotForMeSub => 'Να μη μου προταθεί ξανά';

  @override
  String get sheetBlocked => 'Αποκλείστηκε — πάτα για να επιτραπεί ξανά';

  @override
  String get sheetBlockedSub => 'Μπορεί να εμφανιστεί ξανά στις προτάσεις';

  @override
  String get sheetPlayNext => 'Αναπαραγωγή επόμενου';

  @override
  String get sheetAddToPlaylist => 'Προσθήκη σε λίστα';

  @override
  String get sheetDownloaded => 'Λήφθηκε';

  @override
  String get sheetRemoveFile => 'Πάτα για να αφαιρέσεις το αρχείο';

  @override
  String get sheetDownload => 'Λήψη';

  @override
  String get sheetKeepOffline => 'Κράτησέ το για χρήση εκτός σύνδεσης';

  @override
  String get sheetRadio => 'Έναρξη ραδιοφώνου';

  @override
  String get sheetRadioSub => 'Μια ουρά βασισμένη σε αυτό το τραγούδι';

  @override
  String get sheetQueue => 'Ουρά';

  @override
  String get sheetSleepTimer => 'Χρονοδιακόπτης ύπνου';

  @override
  String get sheetSleepOff => 'Ανενεργός';

  @override
  String sheetSleepMinutes(int count) {
    return '$count λεπτά';
  }

  @override
  String get sheetSleepEndOfTrack => 'Τέλος αυτού του τραγουδιού';

  @override
  String sheetSleepSet(int count) {
    return 'Η μουσική σταματά σε $count λεπτά';
  }

  @override
  String get tasteTitle => 'Τα γούστα σου';

  @override
  String get tasteRetrain => 'Επανεκπαίδευση';

  @override
  String get tasteRetraining => 'Επανεκπαίδευση με βάση το ιστορικό σου…';

  @override
  String get tasteRetrained => 'Η τεχνητή νοημοσύνη ξαναέχτισε το μοντέλο της.';

  @override
  String tasteConfidence(int percent) {
    return 'Βεβαιότητα $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays αναπαραγωγές · $skips παραλείψεις · $likes αγαπημένα';
  }

  @override
  String get tasteEmptySummary =>
      'Άκουσε μερικά τραγούδια και αυτό θα γεμίσει.';

  @override
  String get tasteKeepLearning => 'Να μαθαίνει όσο ακούω';

  @override
  String get tasteKeepLearningSub =>
      'Απενεργοποίησε για να παγώσει το τρέχον προφίλ';

  @override
  String get tasteDownloadsTitle => 'Λήψεις από την τεχνητή νοημοσύνη';

  @override
  String get tasteDownloadsSub =>
      'Η μουσική έρχεται στη συσκευή χωρίς να το ζητήσεις';

  @override
  String get tasteDownloadLikes => 'Λήψη όλων όσων αγαπώ';

  @override
  String get tasteDownloadLikesSub =>
      'Πάτα την καρδιά και το αρχείο αποθηκεύεται για χρήση εκτός σύνδεσης';

  @override
  String get tasteAiInstall =>
      'Να εγκαθιστά η τεχνητή νοημοσύνη μουσική που επιλέγει';

  @override
  String get tasteAiInstallSub =>
      'Θα κατεβάζει κομμάτια για τα οποία είναι σίγουρη';

  @override
  String get tasteWhatItThinks => 'Τι νομίζει ότι σου αρέσει';

  @override
  String get tasteWhatItThinksSub =>
      'Μαθαίνει από αναπαραγωγές, παραλείψεις, αγαπημένα και επαναλήψεις';

  @override
  String get tasteArtists => 'Καλλιτέχνες στους οποίους στηρίζεται';

  @override
  String get tasteWhenYouListen => 'Πότε ακούς';

  @override
  String get tasteWhenYouListenSub =>
      'Αναπαραγωγές ανά ώρα — η τρέχουσα ώρα έχει μεγαλύτερο βάρος';

  @override
  String get tasteDecades => 'Δεκαετίες';

  @override
  String get tasteTune => 'Ρύθμιση των προτάσεων';

  @override
  String get tasteTuneSub => 'Ισχύει από την επόμενη ανανέωση της Αρχικής';

  @override
  String get tasteDiscovery => 'Ανακάλυψη';

  @override
  String get tasteDiscoverySub =>
      'Οικείο ↔ πράγματα που δεν έχεις ακούσει ποτέ';

  @override
  String get tasteEnergy => 'Ενέργεια';

  @override
  String get tasteEnergySub => 'Ήρεμο ↔ δυνατό';

  @override
  String get tasteRecency => 'Φρεσκάδα';

  @override
  String get tasteRecencySub => 'Διαχρονικό ↔ πρόσφατο';

  @override
  String get tasteNostalgia => 'Νοσταλγία';

  @override
  String get tasteNostalgiaSub => 'Πόσο παλιό αγαπημένο θεωρείται ξεχασμένο';

  @override
  String get tasteSignals => 'Σήματα που μπορεί να χρησιμοποιεί';

  @override
  String get tasteSignalsSub => 'Όλα παραμένουν σε αυτή τη συσκευή';

  @override
  String get tasteUseHistory => 'Όσα έχω ακούσει';

  @override
  String get tasteUseSkips => 'Όσα παραλείπω';

  @override
  String get tasteUseTime => 'Ώρα της ημέρας';

  @override
  String get tasteUseYouTube => 'Προτάσεις από το YouTube';

  @override
  String get tasteAlwaysMore => 'Πάντα περισσότερα από';

  @override
  String get tasteNeverAgain => 'Ποτέ ξανά';

  @override
  String get tasteAddArtist => 'Προσθήκη καλλιτέχνη';

  @override
  String get tasteMoreOfPrompt => 'Πάντα περισσότερα από…';

  @override
  String get tasteNeverAgainPrompt => 'Ποτέ ξανά…';

  @override
  String get tasteReset => 'Επαναφορά όσων έμαθε';

  @override
  String get tasteResetSub =>
      'Η μουσική σου μένει· το προφίλ ξεκινά από το μηδέν';

  @override
  String get trainCard => 'Εκπαίδευσέ την με βαθμολόγηση';

  @override
  String get trainCardSub =>
      'Σύρε σε πραγματικά τραγούδια. Δεξιά για περισσότερα σαν αυτό, αριστερά για ποτέ ξανά. Δύο λεπτά εδώ αξίζουν όσο μια εβδομάδα ακρόασης.';

  @override
  String get trainStart => 'Έναρξη γύρου εκπαίδευσης';

  @override
  String get trainTitle => 'Γύρος εκπαίδευσης';

  @override
  String get trainQuestion => 'Θα ήθελες να το δεις στην Αρχική σου;';

  @override
  String get trainMoreLikeThis => 'Περισσότερα σαν αυτό';

  @override
  String get trainNeverAgain => 'Ποτέ ξανά';

  @override
  String get trainDone => 'Ο γύρος ολοκληρώθηκε';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked κρατήθηκαν · $blocked αποκλείστηκαν. Βεβαιότητα $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Πίσω στα γούστα σου';

  @override
  String get trainNothingTitle => 'Δεν υπάρχει τίποτα για βαθμολόγηση ακόμα';

  @override
  String get trainNothingBody =>
      'Πρόσθεσε μουσική ή άσε την τεχνητή νοημοσύνη να φέρει υποψήφια τραγούδια πρώτα και μετά ξαναπέρασε.';

  @override
  String get trainLeaveTitle => 'Έξοδος από τον γύρο εκπαίδευσης;';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Αν φύγεις τώρα, η τεχνητή νοημοσύνη απορρίπτει ό,τι έγινε σε αυτόν τον γύρο — και τα $count τραγούδια που μόλις βαθμολόγησες.',
      one:
          'Αν φύγεις τώρα, η τεχνητή νοημοσύνη απορρίπτει ό,τι έγινε σε αυτόν τον γύρο — το 1 τραγούδι που μόλις βαθμολόγησες.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Συνέχεια εκπαίδευσης';

  @override
  String get trainDiscard => 'Απόρριψη και έξοδος';

  @override
  String get setTitle => 'Ρυθμίσεις';

  @override
  String get setAppearance => 'Εμφάνιση';

  @override
  String get setTheme => 'Θέμα';

  @override
  String get setThemeSystem => 'Ακολουθεί το σύστημα';

  @override
  String get setThemeLight => 'Φωτεινό';

  @override
  String get setThemeDark => 'Σκούρο';

  @override
  String get setPureBlack => 'Καθαρό μαύρο';

  @override
  String get setPureBlackSub => 'Εξοικονομεί ενέργεια σε οθόνη OLED';

  @override
  String get setAccent => 'Χρώμα έμφασης';

  @override
  String get setAccentArtwork => 'Από το εξώφυλλο';

  @override
  String get setAccentFixed => 'Ένα χρώμα της επιλογής μου';

  @override
  String get setLanguage => 'Γλώσσα';

  @override
  String get setLanguageSystem => 'Ακολουθεί το σύστημα';

  @override
  String get setAccessibility => 'Προσβασιμότητα';

  @override
  String get setTextSize => 'Μέγεθος κειμένου';

  @override
  String get setTextSizeSub => 'Επιπλέον της ρύθμισης του συστήματος';

  @override
  String get setReduceMotion => 'Μείωση κίνησης';

  @override
  String get setReduceMotionSub =>
      'Σταματά τις μπάρες, τον οπτικοποιητή, την ελαστική κύλιση, τα ελαστικά πατήματα και τις μεταβάσεις σελίδων';

  @override
  String get setHighContrast => 'Υψηλή αντίθεση';

  @override
  String get setHighContrastSub =>
      'Πιο έντονος διαχωρισμός και ορατά περιγράμματα';

  @override
  String get setBoldText => 'Έντονο κείμενο';

  @override
  String get setPlayback => 'Αναπαραγωγή';

  @override
  String get setAutoRadio => 'Να συνεχίζει η μουσική';

  @override
  String get setAutoRadioSub =>
      'Όταν τελειώνει η ουρά, συνεχίζει με ραδιόφωνο βασισμένο στο τελευταίο τραγούδι';

  @override
  String get setSmartShuffle => 'Έξυπνη τυχαία σειρά';

  @override
  String get setSmartShuffleSub =>
      'Ανακατεύει με βάση τα γούστα σου αντί για τυχαία';

  @override
  String get setResume => 'Συνέχεια από εκεί που έμεινα';

  @override
  String get setResumeSub =>
      'Επαναφέρει την ουρά όταν ανοίγει η εφαρμογή, σε παύση';

  @override
  String get setDataSaver => 'Εξοικονόμηση δεδομένων εκτός Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Περιορίζει τη ροή και τις λήψεις στα 128 kbps με δεδομένα κινητής';

  @override
  String get setHaptics => 'Απτική ανάδραση';

  @override
  String get setShowReasons => 'Εμφάνιση του λόγου που προτάθηκε κάτι';

  @override
  String get setSkipSilence => 'Παράλειψη σιωπής';

  @override
  String get setQuality => 'Ποιότητα ήχου';

  @override
  String get setQualityLow => 'Χαμηλή · 64 kbps';

  @override
  String get setQualityNormal => 'Κανονική · 128 kbps';

  @override
  String get setQualityHigh => 'Υψηλή · 192 kbps';

  @override
  String get setQualityBest => 'Η καλύτερη διαθέσιμη';

  @override
  String get setStorage => 'Λήψεις και αποθήκευση';

  @override
  String get setWifiOnly => 'Λήψη μόνο μέσω Wi-Fi';

  @override
  String get setDailyLimit => 'Ημερήσιο όριο για την τεχνητή νοημοσύνη';

  @override
  String setDailyLimitSub(int count) {
    return '$count τραγούδια την ημέρα';
  }

  @override
  String get setBudget =>
      'Αποθηκευτικός χώρος που μπορεί να χρησιμοποιήσει η τεχνητή νοημοσύνη';

  @override
  String setUsed(Object size) {
    return '$size σε χρήση από λήψεις';
  }

  @override
  String get setYourMusic => 'Η μουσική σου';

  @override
  String get setImport => 'Προσθήκη μουσικής από αυτή τη συσκευή';

  @override
  String get setImportSub => 'Διάλεξε φακέλους ή μεμονωμένα αρχεία';

  @override
  String get setCleanup => 'Εκκαθάριση αρχείων που λείπουν';

  @override
  String get setCleanupSub =>
      'Αφαίρεση τραγουδιών των οποίων το αρχείο έχει χαθεί';

  @override
  String setCleanupDone(int count) {
    return 'Αφαιρέθηκαν $count αρχεία που έλειπαν.';
  }

  @override
  String get setExport => 'Αποστολή των γούστων μου σε άλλη συσκευή';

  @override
  String get setExportSub =>
      'Αποθηκεύει ένα αρχείο με τα αγαπημένα, τις αναπαραγωγές και ό,τι έμαθε η τεχνητή νοημοσύνη';

  @override
  String get setImportTaste => 'Φόρτωση γούστων από άλλη συσκευή';

  @override
  String get setImportTasteSub =>
      'Διάλεξε ένα αποθηκευμένο αρχείο γούστων και συγχώνευσέ το — ασφαλές να επαναληφθεί';

  @override
  String get setAbout => 'Σχετικά';

  @override
  String get setAboutBody =>
      'Μουσική από το YouTube και τα δικά σου αρχεία. Η τεχνητή νοημοσύνη τρέχει εξ ολοκλήρου σε αυτή τη συσκευή — τίποτα δεν φεύγει από αυτήν.';

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
  String get setSource => 'Πηγαίος κώδικας';

  @override
  String get importTitle => 'Προσθήκη μουσικής';

  @override
  String get importPickFolder => 'Επιλογή φακέλου';

  @override
  String get importPickFiles => 'Επιλογή αρχείων';

  @override
  String importScanning(Object file) {
    return 'Σάρωση $file';
  }

  @override
  String importAdded(int count) {
    return '$count προστέθηκαν';
  }

  @override
  String get importDenied =>
      'Η άδεια απορρίφθηκε — δεν είναι δυνατή η ανάγνωση της μουσικής σου.';

  @override
  String get importWatched => 'Φάκελοι που παρακολουθεί';

  @override
  String get importIosHint =>
      'Άνοιξε την εφαρμογή Αρχεία, πήγαινε στο Στο iPhone μου → TuneBox και τοποθέτησε εκεί μουσική.';

  @override
  String get playerQueue => 'Ουρά';

  @override
  String get playerUpNext => 'Επόμενα';

  @override
  String get playerLyrics => 'Στίχοι';

  @override
  String get playerNoLyrics => 'Δεν υπάρχουν στίχοι για αυτό.';

  @override
  String get playerRepeat => 'Επανάληψη';

  @override
  String get playerShuffle => 'Τυχαία σειρά';

  @override
  String errorPlayback(Object title) {
    return 'Δεν ήταν δυνατή η αναπαραγωγή του «$title»';
  }

  @override
  String errorSkipping(Object title) {
    return 'Παράλειψη του «$title» — η ροή δεν άνοιγε.';
  }

  @override
  String get undo => 'Αναίρεση';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Αυτή τη στιγμή: $tags, με προβάδισμα τους $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Αυτή τη στιγμή: $tags.';
  }

  @override
  String get setColour => 'Χρώμα';

  @override
  String get setColourSub => 'Ολόκληρη η εφαρμογή το ακολουθεί';

  @override
  String get setCoverArt => 'Εξώφυλλο';

  @override
  String get setMyColour => 'Το χρώμα μου';

  @override
  String get setCoverArtSub =>
      'Κάθε τραγούδι αλλάζει την απόχρωση της εφαρμογής από το εξώφυλλό του.';

  @override
  String get setMyColourSub => 'Ένα χρώμα, παντού, συνεχώς.';

  @override
  String get setPickColour => 'Διάλεξε οποιοδήποτε χρώμα';

  @override
  String get setWifiOnlyTitle => 'Λήψη μόνο μέσω Wi-Fi';

  @override
  String get setDownloadLikes => 'Λήψη όλων όσων αγαπώ';

  @override
  String get setDownloadLikesSub =>
      'Το κουμπί της καρδιάς αποθηκεύει και το αρχείο';

  @override
  String get setAiInstall =>
      'Να εγκαθιστά η τεχνητή νοημοσύνη μουσική που επιλέγει';

  @override
  String get setSkipSilenceSub =>
      'Μόνο για Android. Μπορεί να κόψει ήσυχες εισαγωγές, σβησίματα και απαλά μέρη — άφησέ το ανενεργό αν η μουσική κόβεται';

  @override
  String get setStorageUsed => 'Χώρος που χρησιμοποιούν οι λήψεις';

  @override
  String get setLibrary => 'Βιβλιοθήκη';

  @override
  String get setUpdates => 'Ενημερώσεις';

  @override
  String get setAutoUpdate => 'Αυτόματος έλεγχος για ενημερώσεις';

  @override
  String get setAutoUpdateSub =>
      'Κάθε λίγες ώρες, αθόρυβα, και λήψη μέσω Wi-Fi. Η εγκατάσταση ζητά πάντα την άδειά σου.';

  @override
  String setUpdateReady(Object version) {
    return 'Η ενημέρωση στην έκδοση $version είναι έτοιμη';
  }

  @override
  String get setUpdateReadySub => 'Λήφθηκε — πάτα για εγκατάσταση';

  @override
  String get setUpdateAvailableSub =>
      'Πάρε την από τη σελίδα εκδόσεων — πάτα για αντιγραφή του συνδέσμου';

  @override
  String get setLinkCopied => 'Ο σύνδεσμος αντιγράφηκε';

  @override
  String get setCheckNow => 'Έλεγχος τώρα';

  @override
  String get setUpToDate => 'Το TuneBox είναι ενημερωμένο';

  @override
  String get setChecking => 'Αναζήτηση νεότερης έκδοσης…';

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
}
