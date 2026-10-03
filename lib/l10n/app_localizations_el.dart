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
}
