// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class LZu extends L {
  LZu([String locale = 'zu']) : super(locale);

  @override
  String get navHome => 'Ikhaya';

  @override
  String get navExplore => 'Hlola';

  @override
  String get navLibrary => 'Ilayibrari';

  @override
  String get navTaste => 'Ukunambitha kwakho';

  @override
  String get actionDone => 'Kwenziwe';

  @override
  String get actionCancel => 'Khansela';

  @override
  String get actionCreate => 'Dala';

  @override
  String get actionPlay => 'Dlala';

  @override
  String get actionShuffle => 'Hlanganisa';

  @override
  String get actionPlayAll => 'Dlala konke';

  @override
  String get actionAdd => 'Engeza';

  @override
  String get actionRemove => 'Susa';

  @override
  String get actionName => 'Igama';

  @override
  String get greetingNight => 'Usavukile?';

  @override
  String get greetingMorning => 'Sawubona kusasa';

  @override
  String get greetingAfternoon => 'Sawubona ntambama';

  @override
  String get greetingEvening => 'Sawubona kusihlwa';

  @override
  String get homeBuilding => 'I-AI iyakha amashalofu akho…';

  @override
  String get homeOffline => 'Awuxhumekile — kubonisa okusedivayisini';

  @override
  String get homeNothingYet => 'Asikho isikhathi sokubonisa';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'amashalofu angu-$count, kuvuselelwe khona manje',
      one: 'ishalofu elingu-1, kuvuselelwe khona manje',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Akha kabusha amashalofu';

  @override
  String get homeAddMusic => 'Engeza umculo kule divayisi';

  @override
  String get homeQuickPicks => 'Okukhethwe masinya';

  @override
  String get homeQuickPicksSub => 'Buyela ngokushesha kokwakuqhubeka';

  @override
  String get homeEmptyTitle => 'Ilayibrari yakho ayinalutho';

  @override
  String get homeEmptyBody =>
      'Sesha okuthile, noma engeza umculo osuvele ukule divayisi. I-AI iqala ukufunda kusukela ekudlalweni kwakho kokuqala.';

  @override
  String get homeAddMyMusic => 'Engeza umculo wami';

  @override
  String homeCouldNotReach(Object error) {
    return 'Ayikwazanga ukufinyelela ku-YouTube: $error';
  }

  @override
  String get moodFocus => 'Ukugxila';

  @override
  String get moodWorkout => 'Ukuzivocavoca';

  @override
  String get moodChill => 'Ukuphumula';

  @override
  String get moodCommute => 'Uhambo';

  @override
  String get moodParty => 'Idili';

  @override
  String moodBuilding(Object mood) {
    return 'Kwakhiwa inhlanganisela ye-$mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Akuphumelelanga: $error';
  }

  @override
  String get shelfRepeat => 'Kuyaphindaphindwa';

  @override
  String get shelfRepeatSub => 'Amasonto akho amabili edlule';

  @override
  String get shelfForgotten => 'Izingoma zakudala ozithandile ezikhohliwe';

  @override
  String get shelfForgottenSub =>
      'Zake zathandwa, azithintwanga isikhathi eside';

  @override
  String get shelfNew => 'Okusha';

  @override
  String get shelfNewSub => 'Izingoma ezintsha i-AI ecabanga ukuthi zakho';

  @override
  String shelfBecause(Object artist) {
    return 'Ngoba udlale u-$artist';
  }

  @override
  String get shelfBecauseSub => 'Ekhoneni elifanayo lokunambitha kwakho';

  @override
  String get shelfDeep => 'Azithintwanga kangako';

  @override
  String get shelfDeepSub => 'Elayibrari yakho, azivamile ukudlalwa';

  @override
  String get shelfMix => 'Inhlanganisela yakho';

  @override
  String get shelfMixSub => 'Yakhiwa kabusha nxa uvula i-app';

  @override
  String get shelfAdded => 'Okwengezwe muva nje';

  @override
  String get shelfAddedSub => 'Okudawunilodiwe namafayela owangenisile';

  @override
  String get shelfStarter => 'Qala lapha';

  @override
  String get shelfStarterSub =>
      'Dlala ezimbalwa bese i-AI iqala ukufunda ngokushesha';

  @override
  String reasonPlays(int count) {
    return '$count ukudlala';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Kuthandiwe, kudlalwe kokugcina $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count ukudlala, kokugcina $when';
  }

  @override
  String get reasonTopArtist => 'Omunye wabaculi obadlala kakhulu';

  @override
  String reasonMore(Object artist) {
    return 'Okuningi ku-$artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Uhlala ubuyela ku-$artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Uhlobo lwakho lwe-$tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Kuhlezi kuphezulu ku-$tag muva nje';
  }

  @override
  String get reasonOutThisYear => 'Kuphumile kulo nyaka';

  @override
  String get reasonReleasedRecently => 'Kukhishwe muva nje';

  @override
  String get reasonClose => 'Kusondele kwenikudlalayo';

  @override
  String reasonNear(Object artist) {
    return 'Kuseduze no-$artist';
  }

  @override
  String get reasonNeverPlayed => 'Akukaze kudlalwe';

  @override
  String get reasonPlayedOnce => 'Kudlalwe kanye';

  @override
  String get reasonPopular => 'Kuyathandwa manje';

  @override
  String whenYearsAgo(int count) {
    return '$count iminyaka edlule';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count izinyanga ezedlule';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count izinsuku ezedlule';
  }

  @override
  String get searchHint => 'Izingoma, abaculi, ama-albhamu';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'imiphumela engu-$count',
      one: 'umphumela o-1',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Ukusesha kwakamuva';

  @override
  String get searchEmptyTitle => 'Akukho okutholakele';

  @override
  String get searchEmptyBody =>
      'Zama ukupela okunye, noma igama lomculi kuphela.';

  @override
  String get searchStartTitle => 'Thola okuthile okufanele kudlalwe';

  @override
  String get searchStartBody =>
      'Sesha ku-YouTube Music — izingoma kuphela ezibuyayo, ungabuyi nezinhlobo zamavidiyo ezinye izinto.';

  @override
  String get libPlaylists => 'Amalisti okudlala';

  @override
  String get libSongs => 'Izingoma';

  @override
  String get libArtists => 'Abaculi';

  @override
  String get libLiked => 'Okuthandiwe';

  @override
  String get libDownloads => 'Okudawunilodiwe';

  @override
  String get libImported => 'Okungeniswe';

  @override
  String get libLikedSongs => 'Izingoma ezithandiwe';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'izingoma ezingu-$count',
      one: 'ingoma e-1',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ongaxhunyiwe';
  }

  @override
  String get libMyFiles => 'Amafayela ami';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'amafayela angu-$count',
      one: 'ifayela eli-1',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Uhlu lokudlala olusha';

  @override
  String get libMakeOne => 'Yakha olulodwa';

  @override
  String get libSortRecent => 'Okwengezwe muva';

  @override
  String get libSortTitle => 'Isihloko';

  @override
  String get libSortArtist => 'Umculi';

  @override
  String get libSortPlays => 'Okudlalwe kakhulu';

  @override
  String get sheetNotForMe => 'Akungifanele';

  @override
  String get sheetNotForMeSub => 'Ungaphinde ukunconywa futhi';

  @override
  String get sheetBlocked => 'Kuvinjiwe — thepha ukuvumela futhi';

  @override
  String get sheetBlockedSub => 'Kungavela futhi kuziphakamiso';

  @override
  String get sheetPlayNext => 'Dlala okulandelayo';

  @override
  String get sheetAddToPlaylist => 'Engeza kulisti yokudlala';

  @override
  String get sheetDownloaded => 'Kudawunilodiwe';

  @override
  String get sheetRemoveFile => 'Thepha ukususa ifayela';

  @override
  String get sheetDownload => 'Dawunilodi';

  @override
  String get sheetKeepOffline => 'Kugcine ukuze ungaxhunyiwe';

  @override
  String get sheetRadio => 'Qala irediyo';

  @override
  String get sheetRadioSub => 'Ulayini owakhiwe ngalesi singoma';

  @override
  String get sheetQueue => 'Ulayini';

  @override
  String get sheetSleepTimer => 'Isibali sokulala';

  @override
  String get sheetSleepOff => 'Kuvaliwe';

  @override
  String sheetSleepMinutes(int count) {
    return '$count amaminithi';
  }

  @override
  String get sheetSleepEndOfTrack => 'Ukuphela kwalesi singoma';

  @override
  String sheetSleepSet(int count) {
    return 'Umculo uzoma ngemizuzu engu-$count';
  }

  @override
  String get tasteTitle => 'Ukunambitha kwakho';

  @override
  String get tasteRetrain => 'Qeqesha kabusha';

  @override
  String get tasteRetraining => 'Iqeqeshwa kabusha ngomlando wakho…';

  @override
  String get tasteRetrained => 'I-AI ikhe kabusha imodeli yayo.';

  @override
  String tasteConfidence(int percent) {
    return 'Ukuzethemba $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays ukudlala · $skips ukweqa · $likes ukuthanda';
  }

  @override
  String get tasteEmptySummary =>
      'Dlala izingoma ezimbalwa bese lokhu kugcwala.';

  @override
  String get tasteKeepLearning => 'Qhubeka ufunda ngenkathi ngilalela';

  @override
  String get tasteKeepLearningSub => 'Vala ukuze uqinise iphrofayela yamanje';

  @override
  String get tasteDownloadsTitle => 'Okudawunilodwa yi-AI';

  @override
  String get tasteDownloadsSub => 'Umculo ufika kudivayisi ungawucelanga';

  @override
  String get tasteDownloadLikes => 'Dawunilodi konke engikuthandayo';

  @override
  String get tasteDownloadLikesSub =>
      'Cindezela inhliziyo bese ifayela ligcinwa ukuze lingaxhunyiwe';

  @override
  String get tasteAiInstall => 'Vumela i-AI ifake umculo ewukhethayo';

  @override
  String get tasteAiInstallSub => 'Izothola izingoma eziqiniseke ngazo';

  @override
  String get tasteWhatItThinks => 'Okucabanga ukuthi uyakuthanda';

  @override
  String get tasteWhatItThinksSub =>
      'Kufundwe ekudlaleni, ekweqeni, ekuthandeni nasekuphindeni';

  @override
  String get tasteArtists => 'Abaculi iwathembele kubo';

  @override
  String get tasteWhenYouListen => 'Uma ulalela';

  @override
  String get tasteWhenYouListenSub =>
      'Ukudlala ngehora — ihora lamanje linesisindo';

  @override
  String get tasteDecades => 'Amashumi eminyaka';

  @override
  String get tasteTune => 'Lungisa iziphakamiso';

  @override
  String get tasteTuneSub =>
      'Kuqala ukusebenza ekuvuselelweni okulandelayo kweKhaya';

  @override
  String get tasteDiscovery => 'Ukuthola';

  @override
  String get tasteDiscoverySub => 'Okujwayelekile ↔ izinto ongakaze uzizwe';

  @override
  String get tasteEnergy => 'Amandla';

  @override
  String get tasteEnergySub => 'Kuthule ↔ kuyadumisa';

  @override
  String get tasteRecency => 'Ubusha';

  @override
  String get tasteRecencySub => 'Akunasikhathi ↔ kusha kakhulu';

  @override
  String get tasteNostalgia => 'Ukulangazelela';

  @override
  String get tasteNostalgiaSub =>
      'Ukuthi ngemuva kwesikhathi esingakanani ozithandayo zakudala zibalwa njengezikhohliwe';

  @override
  String get tasteSignals => 'Amasiginali ongawasebenzisa';

  @override
  String get tasteSignalsSub => 'Konke kuhlala kule divayisi';

  @override
  String get tasteUseHistory => 'Engikudlalile';

  @override
  String get tasteUseSkips => 'Engikweqayo';

  @override
  String get tasteUseTime => 'Isikhathi sosuku';

  @override
  String get tasteUseYouTube => 'Iziphakamiso ezivela ku-YouTube';

  @override
  String get tasteAlwaysMore => 'Njalo okwengeziwe';

  @override
  String get tasteNeverAgain => 'Ungaphinde';

  @override
  String get tasteAddArtist => 'Engeza umculi';

  @override
  String get tasteMoreOfPrompt => 'Njalo okwengeziwe…';

  @override
  String get tasteNeverAgainPrompt => 'Ungaphinde…';

  @override
  String get tasteReset => 'Setha kabusha akufundile';

  @override
  String get tasteResetSub =>
      'Umculo wakho uyahlala; iphrofayela iqala kusukela ku-zero';

  @override
  String get trainCard => 'Yiqeqeshe ngokukala';

  @override
  String get trainCardSub =>
      'Swayipha izingoma zangempela. Kwesokudla ukuze kube nokuningi okunje, kwesobunxele ukuze ungaphinde. Imizuzu emibili lapha ingcono kunesonto lokulalela.';

  @override
  String get trainStart => 'Qala umjikelezo wokuqeqesha';

  @override
  String get trainTitle => 'Umjikelezo wokuqeqesha';

  @override
  String get trainQuestion => 'Ungathanda lokhu eKhaya lakho?';

  @override
  String get trainMoreLikeThis => 'Okuningi okunje';

  @override
  String get trainNeverAgain => 'Ungaphinde';

  @override
  String get trainDone => 'Umjikelezo uphelile';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked kugciniwe · $blocked kuvinjiwe. Ukuzethemba $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Buyela ekunambithekeni kwakho';

  @override
  String get trainNothingTitle => 'Akukho okufanele kukalwe okwamanje';

  @override
  String get trainNothingBody =>
      'Engeza umculo noma uyeke i-AI ilethe abanye kuqala, bese ubuya.';

  @override
  String get trainLeaveTitle => 'Shiya umjikelezo wokuqeqesha?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Uma ushiya manje, i-AI ilahla konke kulo mjikelezo — zonke izingoma ezingu-$count ekade uzikale.',
      one:
          'Uma ushiya manje, i-AI ilahla konke kulo mjikelezo — ingoma e-1 ekade uyikale.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Qhubeka uqeqesha';

  @override
  String get trainDiscard => 'Lahla uphume';

  @override
  String get setTitle => 'Izilungiselelo';

  @override
  String get setAppearance => 'Ukubukeka';

  @override
  String get setTheme => 'Itimu';

  @override
  String get setThemeSystem => 'Landela isistimu';

  @override
  String get setThemeLight => 'Okukhanyayo';

  @override
  String get setThemeDark => 'Okumnyama';

  @override
  String get setPureBlack => 'Omnyama kakhulu';

  @override
  String get setPureBlackSub => 'Konga amandla esikrinini se-OLED';

  @override
  String get setAccent => 'Umbala oqavile';

  @override
  String get setAccentArtwork => 'Kusuka ekhava';

  @override
  String get setAccentFixed => 'Umbala owodwa engiwukhethile';

  @override
  String get setLanguage => 'Ulimi';

  @override
  String get setLanguageSystem => 'Landela isistimu';

  @override
  String get setAccessibility => 'Ukufinyeleleka';

  @override
  String get setTextSize => 'Usayizi wombhalo';

  @override
  String get setTextSizeSub => 'Ngaphezu kwesilungiselelo sesistimu yakho';

  @override
  String get setReduceMotion => 'Nciphisa ukunyakaza';

  @override
  String get setReduceMotionSub =>
      'Kumisa imigoqo, i-visualiser, ukuskrola okugxumayo, ukuthepha okugxumayo nezinguquko zamakhasi';

  @override
  String get setHighContrast => 'Ukuhlukana okuphezulu';

  @override
  String get setHighContrastSub =>
      'Ukuhlukanisa okuqinile nemiphetho ebonakalayo';

  @override
  String get setBoldText => 'Umbhalo ogqamile';

  @override
  String get setPlayback => 'Ukudlala';

  @override
  String get setAutoRadio => 'Gcina umculo uqhubeka';

  @override
  String get setAutoRadioSub =>
      'Uma ulayini uphela, qhubeka ngerediyo eyakhiwe kusukela engomeni yokugcina';

  @override
  String get setSmartShuffle => 'Ukuhlanganisa okuhlakaniphile';

  @override
  String get setSmartShuffleSub =>
      'Kuhlanganisa ngokunambitha esikhundleni sokungahleliwe';

  @override
  String get setResume => 'Qhubeka lapho ngiyekele khona';

  @override
  String get setResumeSub => 'Kubuyisela ulayini uma i-app ivulwa, kumisiwe';

  @override
  String get setDataSaver => 'Ukonga idatha ngaphandle kwe-Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Kukhawulela ukusakaza nokudawunilodi ku-128 kbps ku-mobile data';

  @override
  String get setHaptics => 'Impendulo yokuthinta';

  @override
  String get setShowReasons => 'Bonisa ukuthi kungani okuthile kunconywe';

  @override
  String get setSkipSilence => 'Eqa ukuthula';

  @override
  String get setQuality => 'Ikhwalithi yomsindo';

  @override
  String get setQualityLow => 'Ephansi · 64 kbps';

  @override
  String get setQualityNormal => 'Evamile · 128 kbps';

  @override
  String get setQualityHigh => 'Ephezulu · 192 kbps';

  @override
  String get setQualityBest => 'Engcono kakhulu etholakalayo';

  @override
  String get setStorage => 'Okudawunilodiwe nesitoreji';

  @override
  String get setWifiOnly => 'Dawunilodi nge-Wi-Fi kuphela';

  @override
  String get setDailyLimit => 'Umkhawulo wansuku zonke we-AI';

  @override
  String setDailyLimitSub(int count) {
    return 'Izingoma ezingu-$count ngosuku';
  }

  @override
  String get setBudget => 'Isitoreji i-AI engasisebenzisa';

  @override
  String setUsed(Object size) {
    return '$size isetshenziswe ngokudawunilodiwe';
  }

  @override
  String get setYourMusic => 'Umculo wakho';

  @override
  String get setImport => 'Engeza umculo kule divayisi';

  @override
  String get setImportSub => 'Khetha amafolda noma amafayela angodwana';

  @override
  String get setCleanup => 'Hlanza amafayela angekho';

  @override
  String get setCleanupSub => 'Susa izingoma ezingasenalo ifayela';

  @override
  String setCleanupDone(int count) {
    return 'Kususwe amafayela angekho angu-$count.';
  }

  @override
  String get setExport => 'Thumela ukunambitha kwami kwenye idivayisi';

  @override
  String get setExportSub =>
      'Igcina ifayela elinokuthandwa kwakho, ukudlala nakho konke i-AI ekufundile';

  @override
  String get setImportTaste => 'Layisha ukunambitha kusuka kwenye idivayisi';

  @override
  String get setImportTasteSub =>
      'Khetha ifayela lokunambitha elilondoloziwe ulihlanganise — kuphephile ukuphinda';

  @override
  String get setAbout => 'Mayelana';

  @override
  String get setAboutBody =>
      'Umculo osuka ku-YouTube namafayela akho. I-AI isebenza ngokuphelele kule divayisi — akukho okuyishiyayo.';

  @override
  String get setSource => 'Ikhodi yomthombo';

  @override
  String get importTitle => 'Engeza umculo';

  @override
  String get importPickFolder => 'Khetha ifolda';

  @override
  String get importPickFiles => 'Khetha amafayela';

  @override
  String importScanning(Object file) {
    return 'Iskena $file';
  }

  @override
  String importAdded(int count) {
    return '$count kwengeziwe';
  }

  @override
  String get importDenied =>
      'Imvume ihlulekile — ayikwazi ukufunda umculo wakho.';

  @override
  String get importWatched => 'Amafolda iwabuka';

  @override
  String get importIosHint =>
      'Vula i-app yamaFayela, uye ku-On My iPhone → TuneBox, bese ulahla umculo lapho.';

  @override
  String get playerQueue => 'Ulayini';

  @override
  String get playerUpNext => 'Okulandelayo';

  @override
  String get playerLyrics => 'Amagama engoma';

  @override
  String get playerNoLyrics => 'Awekho amagama alesi singoma.';

  @override
  String get playerRepeat => 'Phinda';

  @override
  String get playerShuffle => 'Hlanganisa';

  @override
  String errorPlayback(Object title) {
    return 'Ayikwazanga ukudlala \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Kweqwa \"$title\" — isakazo asivulekanga.';
  }

  @override
  String get undo => 'Hlehlisa';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Njengamanje: $tags, kuholwa ngu-$artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Njengamanje: $tags.';
  }

  @override
  String get setColour => 'Umbala';

  @override
  String get setColourSub => 'I-app yonke ilandela lokhu';

  @override
  String get setCoverArt => 'Ikhava';

  @override
  String get setMyColour => 'Umbala wami';

  @override
  String get setCoverArtSub =>
      'Yonke ingoma iphinda ifake i-app umbala ngekhava yayo.';

  @override
  String get setMyColourSub => 'Umbala owodwa, yonke indawo, njalo.';

  @override
  String get setPickColour => 'Khetha noma yimuphi umbala';

  @override
  String get setWifiOnlyTitle => 'Dawunilodi nge-Wi-Fi kuphela';

  @override
  String get setDownloadLikes => 'Dawunilodi konke engikuthandayo';

  @override
  String get setDownloadLikesSub => 'Inkinobho yenhliziyo igcina nefayela';

  @override
  String get setAiInstall => 'Vumela i-AI ifake umculo ewukhethayo';

  @override
  String get setSkipSilenceSub =>
      'I-Android kuphela. Ingasika izingenisi ezithulile, ukufiphala nezingxenye ezithambile — yivale uma umculo weqa';

  @override
  String get setStorageUsed => 'Isitoreji esisetshenziswa ukudawunilodiwe';

  @override
  String get setLibrary => 'Ilayibrari';

  @override
  String get setUpdates => 'Izibuyekezo';

  @override
  String get setAutoUpdate => 'Hlola izibuyekezo ngokuzenzakalela';

  @override
  String get setAutoUpdateSub =>
      'Njalo ngamahora ambalwa, ngokuthula, futhi kudawunilodwa nge-Wi-Fi. Ukufaka kusaku-buza.';

  @override
  String setUpdateReady(Object version) {
    return 'Isibuyekezo esiya ku-$version sesilungile';
  }

  @override
  String get setUpdateReadySub => 'Kudawunilodiwe — thepha ukufaka';

  @override
  String get setUpdateAvailableSub =>
      'Yithole ekhasini lokukhishwa — thepha ukukopisha isixhumanisi';

  @override
  String get setLinkCopied => 'Isixhumanisi sikopishiwe';

  @override
  String get setCheckNow => 'Hlola manje';

  @override
  String get setUpToDate => 'I-TuneBox isesesikhathini';

  @override
  String get setChecking => 'Kufunwa inguqulo entsha…';

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
