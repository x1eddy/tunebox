// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class LLv extends L {
  LLv([String locale = 'lv']) : super(locale);

  @override
  String get navHome => 'Sākums';

  @override
  String get navExplore => 'Izpēte';

  @override
  String get navLibrary => 'Bibliotēka';

  @override
  String get navTaste => 'Tava gaume';

  @override
  String get actionDone => 'Gatavs';

  @override
  String get actionCancel => 'Atcelt';

  @override
  String get actionCreate => 'Izveidot';

  @override
  String get actionPlay => 'Atskaņot';

  @override
  String get actionShuffle => 'Jaukt';

  @override
  String get actionPlayAll => 'Atskaņot visu';

  @override
  String get actionAdd => 'Pievienot';

  @override
  String get actionRemove => 'Noņemt';

  @override
  String get actionName => 'Nosaukums';

  @override
  String get greetingNight => 'Vēl nomodā?';

  @override
  String get greetingMorning => 'Labrīt';

  @override
  String get greetingAfternoon => 'Labdien';

  @override
  String get greetingEvening => 'Labvakar';

  @override
  String get homeBuilding => 'MI veido tavus plauktus…';

  @override
  String get homeOffline => 'Bezsaistē — tiek rādīts tas, kas ir ierīcē';

  @override
  String get homeNothingYet => 'Pagaidām nav ko rādīt';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count plaukti, tikko atjaunināti',
      one: '$count plaukts, tikko atjaunināts',
      zero: '$count plauktu, tikko atjaunināti',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Pārveidot plauktus';

  @override
  String get homeAddMusic => 'Pievienot mūziku no šīs ierīces';

  @override
  String get homeQuickPicks => 'Ātrā izvēle';

  @override
  String get homeQuickPicksSub => 'Tieši atpakaļ pie tā, ko klausījies';

  @override
  String get homeEmptyTitle => 'Tava bibliotēka ir tukša';

  @override
  String get homeEmptyBody =>
      'Meklē kaut ko vai pievieno mūziku, kas jau ir šajā ierīcē. MI sāk mācīties jau no pirmās atskaņošanas.';

  @override
  String get homeAddMyMusic => 'Pievienot manu mūziku';

  @override
  String homeCouldNotReach(Object error) {
    return 'Neizdevās sasniegt YouTube: $error';
  }

  @override
  String get moodFocus => 'Fokuss';

  @override
  String get moodWorkout => 'Treniņš';

  @override
  String get moodChill => 'Atpūta';

  @override
  String get moodCommute => 'Ceļā';

  @override
  String get moodParty => 'Ballīte';

  @override
  String moodBuilding(Object mood) {
    return 'Veido miksu: $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Neizdevās: $error';
  }

  @override
  String get shelfRepeat => 'Atkārtojumā';

  @override
  String get shelfRepeatSub => 'Tavas pēdējās divas nedēļas';

  @override
  String get shelfForgotten => 'Vecie aizmirstie hiti, kas tev patika';

  @override
  String get shelfForgottenSub => 'Kādreiz mīlēts, bet kādu laiku neskarts';

  @override
  String get shelfNew => 'Jaunums';

  @override
  String get shelfNewSub => 'Svaigi skaņdarbi, kas, pēc MI domām, ir tev';

  @override
  String shelfBecause(Object artist) {
    return 'Jo klausījies $artist';
  }

  @override
  String get shelfBecauseSub => 'Tas pats tavas gaumes stūrītis';

  @override
  String get shelfDeep => 'Gandrīz neskarts';

  @override
  String get shelfDeepSub => 'Tavā bibliotēkā, bet gandrīz nekad neatskaņots';

  @override
  String get shelfMix => 'Tava miksa izlase';

  @override
  String get shelfMixSub => 'Tiek pārveidota katru reizi, kad atver lietotni';

  @override
  String get shelfAdded => 'Nesen pievienotais';

  @override
  String get shelfAddedSub => 'Lejupielādes un importētie faili';

  @override
  String get shelfStarter => 'Sāc šeit';

  @override
  String get shelfStarterSub => 'Atskaņo dažus, un MI uzreiz sāks mācīties';

  @override
  String reasonPlays(int count) {
    return 'Atskaņots $count reizes';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Patika, pēdējoreiz atskaņots $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Atskaņots $count reizes, pēdējoreiz $when';
  }

  @override
  String get reasonTopArtist =>
      'Viens no taviem visvairāk klausītajiem izpildītājiem';

  @override
  String reasonMore(Object artist) {
    return 'Vairāk no $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Tu turpini atgriezties pie $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Tavs $tag stils';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Pēdējā laikā daudz $tag';
  }

  @override
  String get reasonOutThisYear => 'Iznācis šogad';

  @override
  String get reasonReleasedRecently => 'Nesen izdots';

  @override
  String get reasonClose => 'Tuvu tam, ko klausījies';

  @override
  String reasonNear(Object artist) {
    return 'Līdzīgs kā $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nekad neatskaņots';

  @override
  String get reasonPlayedOnce => 'Atskaņots vienreiz';

  @override
  String get reasonPopular => 'Tagad populārs';

  @override
  String whenYearsAgo(int count) {
    return 'pirms $count g.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'pirms $count mēn.';
  }

  @override
  String whenDaysAgo(int count) {
    return 'pirms $count d.';
  }

  @override
  String get searchHint => 'Dziesmas, izpildītāji, albumi';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rezultāti',
      one: '$count rezultāts',
      zero: '$count rezultātu',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Nesenie meklējumi';

  @override
  String get searchEmptyTitle => 'Nekas nav atrasts';

  @override
  String get searchEmptyBody =>
      'Izmēģini citu pareizrakstību vai tikai izpildītāja vārdu.';

  @override
  String get searchStartTitle => 'Atrodi, ko atskaņot';

  @override
  String get searchStartBody =>
      'Meklē YouTube Music — tiek atgrieztas tikai dziesmas, nekad citu lietu video.';

  @override
  String get libPlaylists => 'Atskaņošanas saraksti';

  @override
  String get libSongs => 'Dziesmas';

  @override
  String get libArtists => 'Izpildītāji';

  @override
  String get libLiked => 'Patīk';

  @override
  String get libDownloads => 'Lejupielādes';

  @override
  String get libImported => 'Importēts';

  @override
  String get libLikedSongs => 'Patīkamās dziesmas';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dziesmas',
      one: '$count dziesma',
      zero: '$count dziesmu',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count bezsaistē';
  }

  @override
  String get libMyFiles => 'Mani paša faili';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count faili',
      one: '$count fails',
      zero: '$count failu',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Jauns saraksts';

  @override
  String get libMakeOne => 'Izveidot';

  @override
  String get libSortRecent => 'Nesen pievienotie';

  @override
  String get libSortTitle => 'Nosaukums';

  @override
  String get libSortArtist => 'Izpildītājs';

  @override
  String get libSortPlays => 'Visvairāk atskaņotie';

  @override
  String get sheetNotForMe => 'Nav priekš manis';

  @override
  String get sheetNotForMeSub => 'Nekad vairs neieteikt šo';

  @override
  String get sheetBlocked => 'Bloķēts — pieskaries, lai atkal atļautu';

  @override
  String get sheetBlockedSub => 'Tas atkal var parādīties ieteikumos';

  @override
  String get sheetPlayNext => 'Atskaņot nākamo';

  @override
  String get sheetAddToPlaylist => 'Pievienot sarakstam';

  @override
  String get sheetDownloaded => 'Lejupielādēts';

  @override
  String get sheetRemoveFile => 'Pieskaries, lai noņemtu failu';

  @override
  String get sheetDownload => 'Lejupielādēt';

  @override
  String get sheetKeepOffline => 'Paturēt bezsaistei';

  @override
  String get sheetRadio => 'Sākt radio';

  @override
  String get sheetRadioSub => 'Rinda, kas veidota ap šo dziesmu';

  @override
  String get sheetQueue => 'Rinda';

  @override
  String get sheetSleepTimer => 'Miega taimeris';

  @override
  String get sheetSleepOff => 'Izslēgts';

  @override
  String sheetSleepMinutes(int count) {
    return '$count min.';
  }

  @override
  String get sheetSleepEndOfTrack => 'Šīs dziesmas beigas';

  @override
  String sheetSleepSet(int count) {
    return 'Mūzika apstāsies pēc $count min.';
  }

  @override
  String get tasteTitle => 'Tava gaume';

  @override
  String get tasteRetrain => 'Pārmācīt';

  @override
  String get tasteRetraining => 'Pārmāca pēc tavas vēstures…';

  @override
  String get tasteRetrained => 'MI pārveidoja savu modeli.';

  @override
  String tasteConfidence(int percent) {
    return 'Pārliecība $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays atskaņ. · $skips izlaist. · $likes patīk';
  }

  @override
  String get tasteEmptySummary =>
      'Atskaņo dažas dziesmas, un šeit parādīsies dati.';

  @override
  String get tasteKeepLearning => 'Turpināt mācīties, kamēr klausos';

  @override
  String get tasteKeepLearningSub =>
      'Izslēdz, lai iesaldētu pašreizējo profilu';

  @override
  String get tasteDownloadsTitle => 'Lejupielādes, ko pārvalda MI';

  @override
  String get tasteDownloadsSub => 'Mūzika ierīcē parādās, tev neprasot';

  @override
  String get tasteDownloadLikes => 'Lejupielādēt visu, kas man patīk';

  @override
  String get tasteDownloadLikesSub =>
      'Piespied sirdi, un fails tiek saglabāts bezsaistei';

  @override
  String get tasteAiInstall => 'Ļaut MI instalēt izvēlēto mūziku';

  @override
  String get tasteAiInstallSub =>
      'Tā lejupielādēs skaņdarbus, par kuriem ir droša';

  @override
  String get tasteWhatItThinks => 'Ko, pēc tās domām, tev patīk';

  @override
  String get tasteWhatItThinksSub =>
      'Apgūts no atskaņošanām, izlaišanām, patīk atzīmēm un atkārtojumiem';

  @override
  String get tasteArtists => 'Izpildītāji, uz kuriem tā balstās';

  @override
  String get tasteWhenYouListen => 'Kad tu klausies';

  @override
  String get tasteWhenYouListenSub =>
      'Atskaņošanas stundā — pašreizējai stundai ir lielāks svars';

  @override
  String get tasteDecades => 'Desmitgades';

  @override
  String get tasteTune => 'Noskaņot ieteikumus';

  @override
  String get tasteTuneSub => 'Stāsies spēkā nākamajā sākuma atsvaidzināšanā';

  @override
  String get tasteDiscovery => 'Atklājumi';

  @override
  String get tasteDiscoverySub => 'Pazīstams ↔ tas, ko vēl neesi dzirdējis';

  @override
  String get tasteEnergy => 'Enerģija';

  @override
  String get tasteEnergySub => 'Mierīgs ↔ skaļš';

  @override
  String get tasteRecency => 'Jaunums';

  @override
  String get tasteRecencySub => 'Mūžīgs ↔ pavisam jauns';

  @override
  String get tasteNostalgia => 'Nostalģija';

  @override
  String get tasteNostalgiaSub =>
      'Cik sens mīļākais skaņdarbs tiek uzskatīts par aizmirstu';

  @override
  String get tasteSignals => 'Signāli, ko tā drīkst izmantot';

  @override
  String get tasteSignalsSub => 'Viss paliek šajā ierīcē';

  @override
  String get tasteUseHistory => 'Ko esmu atskaņojis';

  @override
  String get tasteUseSkips => 'Ko izlaižu';

  @override
  String get tasteUseTime => 'Diennakts laiks';

  @override
  String get tasteUseYouTube => 'YouTube ieteikumi';

  @override
  String get tasteAlwaysMore => 'Vienmēr vairāk';

  @override
  String get tasteNeverAgain => 'Nekad vairs';

  @override
  String get tasteAddArtist => 'Pievienot izpildītāju';

  @override
  String get tasteMoreOfPrompt => 'Vienmēr vairāk…';

  @override
  String get tasteNeverAgainPrompt => 'Nekad vairs…';

  @override
  String get tasteReset => 'Atiestatīt iemācīto';

  @override
  String get tasteResetSub => 'Tava mūzika paliek; profils sākas no nulles';

  @override
  String get trainCard => 'Apmāci, vērtējot';

  @override
  String get trainCardSub =>
      'Velc cauri īstām dziesmām. Pa labi — vairāk tādu, pa kreisi — nekad vairs. Divas minūtes šeit ir vērtīgākas par nedēļu klausīšanās.';

  @override
  String get trainStart => 'Sākt apmācības kārtu';

  @override
  String get trainTitle => 'Apmācības kārta';

  @override
  String get trainQuestion => 'Vai vēlies šo savā sākumā?';

  @override
  String get trainMoreLikeThis => 'Vairāk tādu';

  @override
  String get trainNeverAgain => 'Nekad vairs';

  @override
  String get trainDone => 'Kārta pabeigta';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'Paturēti $liked · bloķēti $blocked. Pārliecība $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Atpakaļ pie tavas gaumes';

  @override
  String get trainNothingTitle => 'Pagaidām nav ko vērtēt';

  @override
  String get trainNothingBody =>
      'Pievieno mūziku vai vispirms ļauj MI atrast kandidātus, tad atgriezies.';

  @override
  String get trainLeaveTitle => 'Pamest apmācības kārtu?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ja pametīsi tagad, MI atmetīs visu no šīs kārtas — visas $count dziesmas, ko tikko novērtēji.',
      one:
          'Ja pametīsi tagad, MI atmetīs visu no šīs kārtas — $count dziesmu, ko tikko novērtēji.',
      zero:
          'Ja pametīsi tagad, MI atmetīs visu no šīs kārtas — visas $count dziesmu, ko tikko novērtēji.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Turpināt apmācību';

  @override
  String get trainDiscard => 'Atmest un pamest';

  @override
  String get setTitle => 'Iestatījumi';

  @override
  String get setAppearance => 'Izskats';

  @override
  String get setTheme => 'Motīvs';

  @override
  String get setThemeSystem => 'Sekot sistēmai';

  @override
  String get setThemeLight => 'Gaišs';

  @override
  String get setThemeDark => 'Tumšs';

  @override
  String get setPureBlack => 'Tīri melns';

  @override
  String get setPureBlackSub => 'Taupa enerģiju OLED ekrānā';

  @override
  String get setAccent => 'Akcenta krāsa';

  @override
  String get setAccentArtwork => 'No vāka attēla';

  @override
  String get setAccentFixed => 'Viena mana izvēlēta krāsa';

  @override
  String get setLanguage => 'Valoda';

  @override
  String get setLanguageSystem => 'Sekot sistēmai';

  @override
  String get setAccessibility => 'Pieejamība';

  @override
  String get setTextSize => 'Teksta izmērs';

  @override
  String get setTextSizeSub => 'Papildus sistēmas iestatījumam';

  @override
  String get setReduceMotion => 'Samazināt kustību';

  @override
  String get setReduceMotionSub =>
      'Aptur joslas, vizualizētāju, atsperīgo ritināšanu, atsperīgos pieskārienus un lapu pārejas';

  @override
  String get setHighContrast => 'Augsts kontrasts';

  @override
  String get setHighContrastSub => 'Spēcīgāks nodalījums un redzamas kontūras';

  @override
  String get setBoldText => 'Treknraksts';

  @override
  String get setPlayback => 'Atskaņošana';

  @override
  String get setAutoRadio => 'Turpināt mūziku';

  @override
  String get setAutoRadioSub =>
      'Kad rinda beidzas, turpina ar radio, kas veidots no pēdējās dziesmas';

  @override
  String get setSmartShuffle => 'Viedā jaukšana';

  @override
  String get setSmartShuffleSub => 'Jauc pēc gaumes, nevis nejauši';

  @override
  String get setResume => 'Turpināt, kur beidzu';

  @override
  String get setResumeSub => 'Atver lietotni ar atjaunotu rindu, apturētu';

  @override
  String get setDataSaver => 'Datu taupīšana bez Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Mobilajos datos ierobežo straumēšanu un lejupielādes līdz 128 kbps';

  @override
  String get setHaptics => 'Haptiskā atgriezeniskā saite';

  @override
  String get setShowReasons => 'Rādīt, kāpēc kas ieteikts';

  @override
  String get setSkipSilence => 'Izlaist klusumu';

  @override
  String get setQuality => 'Audio kvalitāte';

  @override
  String get setQualityLow => 'Zema · 64 kbps';

  @override
  String get setQualityNormal => 'Parasta · 128 kbps';

  @override
  String get setQualityHigh => 'Augsta · 192 kbps';

  @override
  String get setQualityBest => 'Labākā pieejamā';

  @override
  String get setStorage => 'Lejupielādes un krātuve';

  @override
  String get setWifiOnly => 'Lejupielādēt tikai caur Wi-Fi';

  @override
  String get setDailyLimit => 'MI dienas limits';

  @override
  String setDailyLimitSub(int count) {
    return '$count dziesmas dienā';
  }

  @override
  String get setBudget => 'Krātuve, ko drīkst izmantot MI';

  @override
  String setUsed(Object size) {
    return 'Lejupielādes aizņem $size';
  }

  @override
  String get setYourMusic => 'Tava mūzika';

  @override
  String get setImport => 'Pievienot mūziku no šīs ierīces';

  @override
  String get setImportSub => 'Izvēlies mapes vai atsevišķus failus';

  @override
  String get setCleanup => 'Notīrīt trūkstošos failus';

  @override
  String get setCleanupSub => 'Noņemt dziesmas, kuru faila vairs nav';

  @override
  String setCleanupDone(int count) {
    return 'Noņemti trūkstošie faili: $count.';
  }

  @override
  String get setExport => 'Nosūtīt manu gaumi uz citu ierīci';

  @override
  String get setExportSub =>
      'Saglabā failu ar tavām patīk atzīmēm, atskaņojumiem un visu, ko MI apguvusi';

  @override
  String get setImportTaste => 'Ielādēt gaumi no citas ierīces';

  @override
  String get setImportTasteSub =>
      'Izvēlies saglabātu gaumes failu un apvieno — droši atkārtot';

  @override
  String get setAbout => 'Par lietotni';

  @override
  String get setAboutBody =>
      'Mūzika no YouTube un tavi paša faili. MI darbojas pilnībā šajā ierīcē — nekas to nepamet.';

  @override
  String get setSource => 'Pirmkods';

  @override
  String get importTitle => 'Pievienot mūziku';

  @override
  String get importPickFolder => 'Izvēlēties mapi';

  @override
  String get importPickFiles => 'Izvēlēties failus';

  @override
  String importScanning(Object file) {
    return 'Skenē: $file';
  }

  @override
  String importAdded(int count) {
    return 'Pievienoti: $count';
  }

  @override
  String get importDenied => 'Atļauja liegta — nevar nolasīt tavu mūziku.';

  @override
  String get importWatched => 'Mapes, kuras tā novēro';

  @override
  String get importIosHint =>
      'Atver lietotni Faili, dodies uz Manā iPhone → TuneBox un ievieto tur mūziku.';

  @override
  String get playerQueue => 'Rinda';

  @override
  String get playerUpNext => 'Tālāk';

  @override
  String get playerLyrics => 'Dziesmas vārdi';

  @override
  String get playerNoLyrics => 'Šai dziesmai vārdu nav.';

  @override
  String get playerRepeat => 'Atkārtot';

  @override
  String get playerShuffle => 'Jaukt';

  @override
  String errorPlayback(Object title) {
    return 'Neizdevās atskaņot \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Izlaiž \"$title\" — straume neatvērās.';
  }

  @override
  String get undo => 'Atsaukt';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Pašlaik: $tags, pirmajā vietā $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Pašlaik: $tags.';
  }

  @override
  String get setColour => 'Krāsa';

  @override
  String get setColourSub => 'Visa lietotne seko šai krāsai';

  @override
  String get setCoverArt => 'Vāka attēls';

  @override
  String get setMyColour => 'Mana krāsa';

  @override
  String get setCoverArtSub => 'Katra dziesma pārtonē lietotni pēc sava vāka.';

  @override
  String get setMyColourSub => 'Viena krāsa, visur un vienmēr.';

  @override
  String get setPickColour => 'Izvēlies jebkuru krāsu';

  @override
  String get setWifiOnlyTitle => 'Lejupielādēt tikai caur Wi-Fi';

  @override
  String get setDownloadLikes => 'Lejupielādēt visu, kas man patīk';

  @override
  String get setDownloadLikesSub => 'Sirds poga saglabā arī failu';

  @override
  String get setAiInstall => 'Ļaut MI instalēt izvēlēto mūziku';

  @override
  String get setSkipSilenceSub =>
      'Tikai Android. Var nogriezt kluso ievadu, izzušanu un maigās daļas — izslēdz, ja mūzika lēkā';

  @override
  String get setStorageUsed => 'Lejupielāžu aizņemtā krātuve';

  @override
  String get setLibrary => 'Bibliotēka';

  @override
  String get setUpdates => 'Atjauninājumi';

  @override
  String get setAutoUpdate => 'Pārbaudīt atjauninājumus pašai';

  @override
  String get setAutoUpdateSub =>
      'Ik pēc dažām stundām, klusi, un lejupielādē caur Wi-Fi. Instalēšanai joprojām jautā.';

  @override
  String setUpdateReady(Object version) {
    return 'Atjauninājums uz $version ir gatavs';
  }

  @override
  String get setUpdateReadySub => 'Lejupielādēts — pieskaries, lai instalētu';

  @override
  String get setUpdateAvailableSub =>
      'Iegūsti to izlaidumu lapā — pieskaries, lai kopētu saiti';

  @override
  String get setLinkCopied => 'Saite nokopēta';

  @override
  String get setCheckNow => 'Pārbaudīt tagad';

  @override
  String get setUpToDate => 'TuneBox ir jaunākajā versijā';

  @override
  String get setChecking => 'Meklē jaunāku versiju…';

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
