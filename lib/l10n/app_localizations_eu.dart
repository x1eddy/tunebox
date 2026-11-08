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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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

  @override
  String get syncTitle => 'Synced devices';

  @override
  String get syncHeadline => 'One taste, on all your devices';

  @override
  String get syncIntro =>
      'Pair your phone and computer once. After that they swap what they learned by themselves, about every 45 minutes and whenever you open the app, while both are on the same Wi-Fi. No account and no server.';

  @override
  String get syncDevices => 'Paired devices';

  @override
  String get syncNow => 'Sync now';

  @override
  String get syncNone => 'Nothing paired yet';

  @override
  String get syncNoneSub =>
      'Show a code on one device and type it on the other.';

  @override
  String syncLast(String when) {
    return 'Last synced $when';
  }

  @override
  String get syncNever => 'not yet';

  @override
  String get syncJustNow => 'just now';

  @override
  String syncMinutesAgo(int n) {
    return '$n min ago';
  }

  @override
  String syncHoursAgo(int n) {
    return '$n h ago';
  }

  @override
  String get syncForget => 'Unpair';

  @override
  String syncForgetQ(String name) {
    return 'Unpair $name?';
  }

  @override
  String get syncForgetBody =>
      'Nothing is deleted. The two devices just stop swapping taste.';

  @override
  String get syncAdd => 'Add a device';

  @override
  String get syncShowCode => 'Show a pairing code';

  @override
  String get syncShowCodeSub => 'On this device';

  @override
  String get syncEnterCode => 'Type a pairing code';

  @override
  String get syncEnterCodeSub => 'Shown on your other device';

  @override
  String get syncPrivate => 'Stays on your network';

  @override
  String get syncPrivateSub =>
      'Devices talk directly and every transfer is encrypted with a key only they know.';

  @override
  String get syncTypeThis => 'Type this code on your other device';

  @override
  String get syncWaiting => 'Waiting for it… keep this open.';

  @override
  String syncAddress(String address) {
    return 'If it is not found, type this address there: $address';
  }

  @override
  String get syncCodeExpired => 'That code has expired.';

  @override
  String get syncNewCode => 'New code';

  @override
  String syncPaired(String name) {
    return 'Paired with $name';
  }

  @override
  String get syncPair => 'Pair';

  @override
  String get syncNotFound => 'Not found? Type its address';

  @override
  String get syncAddressLabel => 'Address (e.g. 192.168.1.20)';

  @override
  String syncDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Synced with $count devices',
      one: 'Synced with 1 device',
    );
    return '$_temp0';
  }

  @override
  String get syncNoneReached =>
      'Could not reach your other devices. Are they on and on the same Wi-Fi?';

  @override
  String get syncNoDevice =>
      'No device with an open code was found on this Wi-Fi';

  @override
  String get syncWrongCode => 'That code is not right';

  @override
  String get syncNotPaired => 'The other device no longer knows this one';

  @override
  String get syncUnreachable => 'Not reachable right now';

  @override
  String get syncSettingsOff =>
      'Keep your taste the same on phone and computer';

  @override
  String syncSettingsOn(String names) {
    return 'Syncing with $names';
  }

  @override
  String get stMirror => 'Mirror';

  @override
  String get stLine2 => 'Curve';

  @override
  String get stDots => 'Dots';

  @override
  String get stLive => 'Live visualiser';

  @override
  String get stLiveSub =>
      'Moves with the real music. Android asks for the microphone permission for this, but only TuneBox\'s own sound is read, never the microphone.';

  @override
  String get stLiveDenied =>
      'Without the permission the visualiser keeps its own animation.';
}
