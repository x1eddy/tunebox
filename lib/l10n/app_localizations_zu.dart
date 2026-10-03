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
}
