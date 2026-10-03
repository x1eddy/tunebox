// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class LEu extends L {
  LEu([String locale = 'eu']) : super(locale);

  @override
  String get navHome => 'Hasiera';

  @override
  String get navExplore => 'Arakatu';

  @override
  String get navLibrary => 'Liburutegia';

  @override
  String get navTaste => 'Zure gustua';

  @override
  String get actionDone => 'Eginda';

  @override
  String get actionCancel => 'Utzi';

  @override
  String get actionCreate => 'Sortu';

  @override
  String get actionPlay => 'Erreproduzitu';

  @override
  String get actionShuffle => 'Ausazkoa';

  @override
  String get actionPlayAll => 'Erreproduzitu guztiak';

  @override
  String get actionAdd => 'Gehitu';

  @override
  String get actionRemove => 'Kendu';

  @override
  String get actionName => 'Izena';

  @override
  String get greetingNight => 'Oraindik esna?';

  @override
  String get greetingMorning => 'Egun on';

  @override
  String get greetingAfternoon => 'Arratsalde on';

  @override
  String get greetingEvening => 'Gabon';

  @override
  String get homeBuilding => 'IA zure apalak prestatzen ari da…';

  @override
  String get homeOffline => 'Konexiorik gabe — gailuan dagoena erakusten da';

  @override
  String get homeNothingYet => 'Oraindik ez dago ezer erakusteko';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apal, orain eguneratuak',
      one: 'apal 1, orain eguneratua',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Berreraiki apalak';

  @override
  String get homeAddMusic => 'Gehitu gailu honetako musika';

  @override
  String get homeQuickPicks => 'Aukera azkarrak';

  @override
  String get homeQuickPicksSub => 'Zuzenean entzuten ari zinenera itzuli';

  @override
  String get homeEmptyTitle => 'Zure liburutegia hutsik dago';

  @override
  String get homeEmptyBody =>
      'Bilatu zerbait edo gehitu gailuan dagoen musika. IA zure lehen erreproduzioatik hasten da ikasten.';

  @override
  String get homeAddMyMusic => 'Gehitu nire musika';

  @override
  String homeCouldNotReach(Object error) {
    return 'Ezin izan da YouTube-rekin konektatu: $error';
  }

  @override
  String get moodFocus => 'Kontzentrazioa';

  @override
  String get moodWorkout => 'Entrenamendua';

  @override
  String get moodChill => 'Lasaitasuna';

  @override
  String get moodCommute => 'Bidaian';

  @override
  String get moodParty => 'Festa';

  @override
  String moodBuilding(Object mood) {
    return '$mood nahasketa prestatzen…';
  }

  @override
  String moodFailed(Object error) {
    return 'Ez da atera: $error';
  }

  @override
  String get shelfRepeat => 'Errepikapenean';

  @override
  String get shelfRepeatSub => 'Azken bi asteak';

  @override
  String get shelfForgotten => 'Gustatu zitzaizkizun hit ahaztu zaharrak';

  @override
  String get shelfForgottenSub => 'Behin maitatuak, denbora batez ukitu gabe';

  @override
  String get shelfNew => 'Berria';

  @override
  String get shelfNewSub => 'IAk zuretzat direla uste duen abesti freskoak';

  @override
  String shelfBecause(Object artist) {
    return '$artist entzun duzulako';
  }

  @override
  String get shelfBecauseSub => 'Zure gustuaren txoko berekoa';

  @override
  String get shelfDeep => 'Ia ukitu gabe';

  @override
  String get shelfDeepSub => 'Zure liburutegian, ia inoiz erreproduzitu gabe';

  @override
  String get shelfMix => 'Zure nahasketa';

  @override
  String get shelfMixSub =>
      'Aplikazioa irekitzen duzun bakoitzean berreraikitzen da';

  @override
  String get shelfAdded => 'Duela gutxi gehitua';

  @override
  String get shelfAddedSub => 'Deskargak eta inportatutako fitxategiak';

  @override
  String get shelfStarter => 'Hasi hemen';

  @override
  String get shelfStarterSub =>
      'Entzun batzuk eta IA berehala hasiko da ikasten';

  @override
  String reasonPlays(int count) {
    return '$count erreproduzio';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Gustukoa, azken aldiz $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count erreproduzio, azkena $when';
  }

  @override
  String get reasonTopArtist => 'Gehien entzundako artistetako bat';

  @override
  String reasonMore(Object artist) {
    return '$artist gehiago';
  }

  @override
  String reasonComeBack(Object artist) {
    return '$artist-ra itzultzen zara behin eta berriz';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Zure motakoa: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return '$tag asko azkenaldian';
  }

  @override
  String get reasonOutThisYear => 'Aurten kaleratua';

  @override
  String get reasonReleasedRecently => 'Duela gutxi kaleratua';

  @override
  String get reasonClose => 'Entzuten ari zaren horren antzekoa';

  @override
  String reasonNear(Object artist) {
    return '$artist-ren ingurukoa';
  }

  @override
  String get reasonNeverPlayed => 'Inoiz erreproduzitu gabea';

  @override
  String get reasonPlayedOnce => 'Behin erreproduzitua';

  @override
  String get reasonPopular => 'Orain ezagunak';

  @override
  String whenYearsAgo(int count) {
    return 'duela $count urte';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'duela $count hilabete';
  }

  @override
  String whenDaysAgo(int count) {
    return 'duela $count egun';
  }

  @override
  String get searchHint => 'Abestiak, artistak, albumak';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count emaitza',
      one: 'emaitza 1',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Azken bilaketak';

  @override
  String get searchEmptyTitle => 'Ez da ezer aurkitu';

  @override
  String get searchEmptyBody =>
      'Saiatu beste idazkera batekin edo artistaren izena bakarrik.';

  @override
  String get searchStartTitle => 'Aurkitu zerbait erreproduzitzeko';

  @override
  String get searchStartBody =>
      'Bilatu YouTube Music-en — abestiak bakarrik itzultzen dira, inoiz ez beste gauzen bideoak.';

  @override
  String get libPlaylists => 'Erreprodukzio-zerrendak';

  @override
  String get libSongs => 'Abestiak';

  @override
  String get libArtists => 'Artistak';

  @override
  String get libLiked => 'Gustukoak';

  @override
  String get libDownloads => 'Deskargak';

  @override
  String get libImported => 'Inportatuak';

  @override
  String get libLikedSongs => 'Gustuko abestiak';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count abesti',
      one: 'abesti 1',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count konexiorik gabe';
  }

  @override
  String get libMyFiles => 'Nire fitxategiak';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fitxategi',
      one: 'fitxategi 1',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Erreprodukzio-zerrenda berria';

  @override
  String get libMakeOne => 'Sortu bat';

  @override
  String get libSortRecent => 'Duela gutxi gehitua';

  @override
  String get libSortTitle => 'Izenburua';

  @override
  String get libSortArtist => 'Artista';

  @override
  String get libSortPlays => 'Gehien entzundakoak';

  @override
  String get sheetNotForMe => 'Ez da niretzat';

  @override
  String get sheetNotForMeSub => 'Ez gomendatu inoiz gehiago';

  @override
  String get sheetBlocked => 'Blokeatuta — sakatu berriro baimentzeko';

  @override
  String get sheetBlockedSub => 'Berriro azaldu daiteke gomendioetan';

  @override
  String get sheetPlayNext => 'Erreproduzitu hurrengoa';

  @override
  String get sheetAddToPlaylist => 'Gehitu erreprodukzio-zerrendara';

  @override
  String get sheetDownloaded => 'Deskargatuta';

  @override
  String get sheetRemoveFile => 'Sakatu fitxategia kentzeko';

  @override
  String get sheetDownload => 'Deskargatu';

  @override
  String get sheetKeepOffline => 'Gorde konexiorik gabe erabiltzeko';

  @override
  String get sheetRadio => 'Hasi irratia';

  @override
  String get sheetRadioSub => 'Abesti honen inguruan eraikitako ilara';

  @override
  String get sheetQueue => 'Ilara';

  @override
  String get sheetSleepTimer => 'Lo-tenporizadorea';

  @override
  String get sheetSleepOff => 'Desaktibatuta';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minutu';
  }

  @override
  String get sheetSleepEndOfTrack => 'Abesti honen amaiera';

  @override
  String sheetSleepSet(int count) {
    return 'Musika $count minututan geldituko da';
  }

  @override
  String get tasteTitle => 'Zure gustua';

  @override
  String get tasteRetrain => 'Berrikasi';

  @override
  String get tasteRetraining => 'Zure historialarekin berrikasten…';

  @override
  String get tasteRetrained => 'IAk bere eredua berreraiki du.';

  @override
  String tasteConfidence(int percent) {
    return 'Konfiantza %$percent';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays erreproduzio · $skips saltatze · $likes gustuko';
  }

  @override
  String get tasteEmptySummary => 'Entzun abesti batzuk eta hau beteko da.';

  @override
  String get tasteKeepLearning => 'Ikasten jarraitu entzuten dudan bitartean';

  @override
  String get tasteKeepLearningSub => 'Desaktibatu uneko profila izozteko';

  @override
  String get tasteDownloadsTitle => 'IAk kudeatzen dituen deskargak';

  @override
  String get tasteDownloadsSub => 'Musika gailura iristen da eskatu gabe';

  @override
  String get tasteDownloadLikes => 'Deskargatu gustatzen zaidan guztia';

  @override
  String get tasteDownloadLikesSub =>
      'Sakatu bihotza eta fitxategia gordetzen da konexiorik gabe erabiltzeko';

  @override
  String get tasteAiInstall => 'Utzi IAri hautatzen duen musika instalatzen';

  @override
  String get tasteAiInstallSub => 'Ziur dagoen abestiak ekarriko ditu';

  @override
  String get tasteWhatItThinks => 'Zer gustatzen zaizula uste duen';

  @override
  String get tasteWhatItThinksSub =>
      'Erreprodukzioetatik, saltatzeetatik, gustukoetatik eta errepikapenetatik ikasia';

  @override
  String get tasteArtists => 'Oinarritzen den artistak';

  @override
  String get tasteWhenYouListen => 'Noiz entzuten duzun';

  @override
  String get tasteWhenYouListenSub =>
      'Erreprodukzioak orduko — uneko orduak pisu handiagoa du';

  @override
  String get tasteDecades => 'Hamarkadak';

  @override
  String get tasteTune => 'Doitu gomendioak';

  @override
  String get tasteTuneSub =>
      'Hasierako orriaren hurrengo eguneratzean izango du eragina';

  @override
  String get tasteDiscovery => 'Aurkikuntza';

  @override
  String get tasteDiscoverySub => 'Ezaguna ↔ inoiz entzun ez dituzun gauzak';

  @override
  String get tasteEnergy => 'Energia';

  @override
  String get tasteEnergySub => 'Lasaia ↔ ozena';

  @override
  String get tasteRecency => 'Berritasuna';

  @override
  String get tasteRecencySub => 'Denboraz kanpokoa ↔ oso berria';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Zenbat denbora pasatu behar den gogoko zahar bat ahaztutzat jotzeko';

  @override
  String get tasteSignals => 'Erabil ditzakeen seinaleak';

  @override
  String get tasteSignalsSub => 'Dena gailu honetan geratzen da';

  @override
  String get tasteUseHistory => 'Entzun dudana';

  @override
  String get tasteUseSkips => 'Saltatzen dudana';

  @override
  String get tasteUseTime => 'Eguneko ordua';

  @override
  String get tasteUseYouTube => 'YouTube-ren iradokizunak';

  @override
  String get tasteAlwaysMore => 'Beti gehiago';

  @override
  String get tasteNeverAgain => 'Inoiz gehiago ez';

  @override
  String get tasteAddArtist => 'Gehitu artista bat';

  @override
  String get tasteMoreOfPrompt => 'Beti gehiago…';

  @override
  String get tasteNeverAgainPrompt => 'Inoiz gehiago ez…';

  @override
  String get tasteReset => 'Berrezarri ikasitakoa';

  @override
  String get tasteResetSub =>
      'Zure musika geratzen da; profila zerotik hasten da';

  @override
  String get trainCard => 'Trebatu balorazioekin';

  @override
  String get trainCardSub =>
      'Pasatu benetako abestiak. Eskuinera horrelako gehiago, ezkerrera inoiz gehiago ez. Hemen bi minutuk astebeteko entzuketak adina balio dute.';

  @override
  String get trainStart => 'Hasi entrenamendu-txanda bat';

  @override
  String get trainTitle => 'Entrenamendu-txanda';

  @override
  String get trainQuestion => 'Hau zure hasieran nahi zenuke?';

  @override
  String get trainMoreLikeThis => 'Horrelako gehiago';

  @override
  String get trainNeverAgain => 'Inoiz gehiago ez';

  @override
  String get trainDone => 'Txanda amaituta';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked gordeta · $blocked blokeatuta. Konfiantza %$before → %$after';
  }

  @override
  String get trainBackToTaste => 'Itzuli zure gustura';

  @override
  String get trainNothingTitle => 'Oraindik ez dago baloratzeko ezer';

  @override
  String get trainNothingBody =>
      'Gehitu musika edo utzi IAri hautagaiak ekartzen lehenik, eta gero itzuli.';

  @override
  String get trainLeaveTitle => 'Entrenamendu-txandatik irten?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Orain irteten bazara, IAk txanda honetako guztia baztertuko du — oraintxe baloratu dituzun $count abestiak.',
      one:
          'Orain irteten bazara, IAk txanda honetako guztia baztertuko du — oraintxe baloratu duzun abesti 1.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Jarraitu entrenatzen';

  @override
  String get trainDiscard => 'Baztertu eta irten';

  @override
  String get setTitle => 'Ezarpenak';

  @override
  String get setAppearance => 'Itxura';

  @override
  String get setTheme => 'Gaia';

  @override
  String get setThemeSystem => 'Jarraitu sistemari';

  @override
  String get setThemeLight => 'Argia';

  @override
  String get setThemeDark => 'Iluna';

  @override
  String get setPureBlack => 'Beltz hutsa';

  @override
  String get setPureBlackSub => 'Energia aurrezten du OLED pantailetan';

  @override
  String get setAccent => 'Azentu-kolorea';

  @override
  String get setAccentArtwork => 'Azaletik';

  @override
  String get setAccentFixed => 'Nik aukeratutako kolore bat';

  @override
  String get setLanguage => 'Hizkuntza';

  @override
  String get setLanguageSystem => 'Jarraitu sistemari';

  @override
  String get setAccessibility => 'Irisgarritasuna';

  @override
  String get setTextSize => 'Testuaren tamaina';

  @override
  String get setTextSizeSub => 'Sistemaren ezarpenaren gainean';

  @override
  String get setReduceMotion => 'Murriztu mugimendua';

  @override
  String get setReduceMotionSub =>
      'Barrak, ikusgarria, desplazamendu errebotea, ukitze elastikoak eta orri-trantsizioak gelditzen ditu';

  @override
  String get setHighContrast => 'Kontraste handia';

  @override
  String get setHighContrastSub =>
      'Bereizketa indartsuagoa eta ertz ikusgarriak';

  @override
  String get setBoldText => 'Testu lodia';

  @override
  String get setPlayback => 'Erreprodukzioa';

  @override
  String get setAutoRadio => 'Mantendu musika martxan';

  @override
  String get setAutoRadioSub =>
      'Ilara amaitzean, azken abestian oinarritutako irratiarekin jarraitzen du';

  @override
  String get setSmartShuffle => 'Ausazko adimentsua';

  @override
  String get setSmartShuffleSub =>
      'Gustuaren arabera nahasten du, ausaz beharrean';

  @override
  String get setResume => 'Jarraitu utzi nuen lekutik';

  @override
  String get setResumeSub =>
      'Aplikazioa irekitzean ilara berrezartzen du, pausatuta';

  @override
  String get setDataSaver => 'Datu-aurrezlea Wi-Fitik kanpo';

  @override
  String get setDataSaverSub =>
      'Streamak eta deskargak 128 kbps-ra mugatzen ditu datu mugikorretan';

  @override
  String get setHaptics => 'Feedback haptikoa';

  @override
  String get setShowReasons => 'Erakutsi zergatik gomendatu den zerbait';

  @override
  String get setSkipSilence => 'Saltatu isiltasuna';

  @override
  String get setQuality => 'Audioaren kalitatea';

  @override
  String get setQualityLow => 'Baxua · 64 kbps';

  @override
  String get setQualityNormal => 'Normala · 128 kbps';

  @override
  String get setQualityHigh => 'Altua · 192 kbps';

  @override
  String get setQualityBest => 'Eskuragarri dagoen onena';

  @override
  String get setStorage => 'Deskargak eta biltegiratzea';

  @override
  String get setWifiOnly => 'Deskargatu Wi-Fi bidez soilik';

  @override
  String get setDailyLimit => 'IAren eguneko muga';

  @override
  String setDailyLimitSub(int count) {
    return '$count abesti egunean';
  }

  @override
  String get setBudget => 'IAk erabil dezakeen biltegiratzea';

  @override
  String setUsed(Object size) {
    return '$size erabilita deskargetan';
  }

  @override
  String get setYourMusic => 'Zure musika';

  @override
  String get setImport => 'Gehitu gailu honetako musika';

  @override
  String get setImportSub => 'Aukeratu karpetak edo fitxategi bakarrak';

  @override
  String get setCleanup => 'Garbitu falta diren fitxategiak';

  @override
  String get setCleanupSub => 'Kendu fitxategia desagertu zaien abestiak';

  @override
  String setCleanupDone(int count) {
    return '$count fitxategi galdu kendu dira.';
  }

  @override
  String get setExport => 'Bidali nire gustua beste gailu batera';

  @override
  String get setExportSub =>
      'Fitxategi bat gordetzen du zure gustukoekin, erreprodukzioekin eta IAk ikasitako guztiarekin';

  @override
  String get setImportTaste => 'Kargatu gustua beste gailu batetik';

  @override
  String get setImportTasteSub =>
      'Aukeratu gordetako gustu-fitxategi bat eta batu — segurua da errepikatzea';

  @override
  String get setAbout => 'Honi buruz';

  @override
  String get setAboutBody =>
      'YouTube-ko musika eta zure fitxategiak. IA gailu honetan bakarrik exekutatzen da — ez da ezer gailutik ateratzen.';

  @override
  String get setSource => 'Iturburu-kodea';

  @override
  String get importTitle => 'Gehitu musika';

  @override
  String get importPickFolder => 'Aukeratu karpeta bat';

  @override
  String get importPickFiles => 'Aukeratu fitxategiak';

  @override
  String importScanning(Object file) {
    return '$file eskaneatzen';
  }

  @override
  String importAdded(int count) {
    return '$count gehituta';
  }

  @override
  String get importDenied => 'Baimena ukatua — ezin da zure musika irakurri.';

  @override
  String get importWatched => 'Zaintzen dituen karpetak';

  @override
  String get importIosHint =>
      'Ireki Fitxategiak aplikazioa, joan Nire iPhone-an → TuneBox atalera eta jarri musika bertan.';

  @override
  String get playerQueue => 'Ilara';

  @override
  String get playerUpNext => 'Hurrengoa';

  @override
  String get playerLyrics => 'Letra';

  @override
  String get playerNoLyrics => 'Honek ez du letrarik.';

  @override
  String get playerRepeat => 'Errepikatu';

  @override
  String get playerShuffle => 'Ausazkoa';

  @override
  String errorPlayback(Object title) {
    return 'Ezin izan da \"$title\" erreproduzitu';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" saltatzen — streama ez da ireki.';
  }

  @override
  String get undo => 'Desegin';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Orain: $tags, $artist buru dela.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Orain: $tags.';
  }

  @override
  String get setColour => 'Kolorea';

  @override
  String get setColourSub => 'Aplikazio osoak hau jarraitzen du';

  @override
  String get setCoverArt => 'Azala';

  @override
  String get setMyColour => 'Nire kolorea';

  @override
  String get setCoverArtSub =>
      'Abesti bakoitzak aplikazioaren tonua aldatzen du bere azalaren arabera.';

  @override
  String get setMyColourSub => 'Kolore bat, nonahi, une oro.';

  @override
  String get setPickColour => 'Aukeratu edozein kolore';

  @override
  String get setWifiOnlyTitle => 'Deskargatu Wi-Fi bidez soilik';

  @override
  String get setDownloadLikes => 'Deskargatu gustatzen zaidan guztia';

  @override
  String get setDownloadLikesSub =>
      'Bihotz-botoiak fitxategia ere gordetzen du';

  @override
  String get setAiInstall => 'Utzi IAri hautatzen duen musika instalatzen';

  @override
  String get setSkipSilenceSub =>
      'Android-en soilik. Sarrera isilak, itzalaldiak eta zati leunak moztu ditzake — desaktibatuta utzi musika saltatzen bada';

  @override
  String get setStorageUsed => 'Deskargek erabilitako biltegiratzea';

  @override
  String get setLibrary => 'Liburutegia';

  @override
  String get setUpdates => 'Eguneratzeak';

  @override
  String get setAutoUpdate => 'Bilatu eguneratzeak automatikoki';

  @override
  String get setAutoUpdateSub =>
      'Ordu batzuetik behin, isilean, eta Wi-Fi bidez deskargatzen du. Instalatzeko oraindik baimena eskatzen du.';

  @override
  String setUpdateReady(Object version) {
    return '$version bertsiorako eguneratzea prest dago';
  }

  @override
  String get setUpdateReadySub => 'Deskargatuta — sakatu instalatzeko';

  @override
  String get setUpdateAvailableSub =>
      'Eskuratu bertsioen orritik — sakatu esteka kopiatzeko';

  @override
  String get setLinkCopied => 'Esteka kopiatuta';

  @override
  String get setCheckNow => 'Egiaztatu orain';

  @override
  String get setUpToDate => 'TuneBox eguneratuta dago';

  @override
  String get setChecking => 'Bertsio berriago bat bilatzen…';
}
