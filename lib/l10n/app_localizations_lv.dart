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
}
