// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class LSq extends L {
  LSq([String locale = 'sq']) : super(locale);

  @override
  String get navHome => 'Kryefaqja';

  @override
  String get navExplore => 'Eksploro';

  @override
  String get navLibrary => 'Biblioteka';

  @override
  String get navTaste => 'Shija jote';

  @override
  String get actionDone => 'U krye';

  @override
  String get actionCancel => 'Anulo';

  @override
  String get actionCreate => 'Krijo';

  @override
  String get actionPlay => 'Luaj';

  @override
  String get actionShuffle => 'Përziej';

  @override
  String get actionPlayAll => 'Luaji të gjitha';

  @override
  String get actionAdd => 'Shto';

  @override
  String get actionRemove => 'Hiq';

  @override
  String get actionName => 'Emri';

  @override
  String get greetingNight => 'Ende zgjuar?';

  @override
  String get greetingMorning => 'Mirëmëngjes';

  @override
  String get greetingAfternoon => 'Mirëdita';

  @override
  String get greetingEvening => 'Mirëmbrëma';

  @override
  String get homeBuilding => 'IA po ndërton raftet e tua…';

  @override
  String get homeOffline =>
      'Pa internet — po shfaqet ajo që ndodhet në pajisje';

  @override
  String get homeNothingYet => 'Ende asgjë për të shfaqur';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rafte, të rifreskuara tani',
      one: '1 raft, i rifreskuar tani',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Rindërto raftet';

  @override
  String get homeAddMusic => 'Shto muzikë nga kjo pajisje';

  @override
  String get homeQuickPicks => 'Zgjedhje të shpejta';

  @override
  String get homeQuickPicksSub => 'Kthehu direkt te ajo që dëgjoje';

  @override
  String get homeEmptyTitle => 'Biblioteka jote është bosh';

  @override
  String get homeEmptyBody =>
      'Kërko diçka, ose shto muzikën që ndodhet tashmë në këtë pajisje. IA fillon të mësojë që nga dëgjimi yt i parë.';

  @override
  String get homeAddMyMusic => 'Shto muzikën time';

  @override
  String homeCouldNotReach(Object error) {
    return 'Nuk u arrit YouTube: $error';
  }

  @override
  String get moodFocus => 'Përqendrim';

  @override
  String get moodWorkout => 'Stërvitje';

  @override
  String get moodChill => 'Qetësi';

  @override
  String get moodCommute => 'Udhëtim';

  @override
  String get moodParty => 'Festë';

  @override
  String moodBuilding(Object mood) {
    return 'Po ndërtohet një miks $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Pa sukses: $error';
  }

  @override
  String get shelfRepeat => 'Në përsëritje';

  @override
  String get shelfRepeatSub => 'Dy javët e fundit';

  @override
  String get shelfForgotten => 'Hite të vjetra të harruara që të pëlqyen';

  @override
  String get shelfForgottenSub => 'Të dashura dikur, të paprekura për një kohë';

  @override
  String get shelfNew => 'Të reja';

  @override
  String get shelfNewSub => 'Këngë të freskëta që IA mendon se janë për ty';

  @override
  String shelfBecause(Object artist) {
    return 'Sepse dëgjove $artist';
  }

  @override
  String get shelfBecauseSub => 'E njëjta kënd e shijes sate';

  @override
  String get shelfDeep => 'Mezi të prekura';

  @override
  String get shelfDeepSub =>
      'Në bibliotekën tënde, pothuajse kurrë të luajtura';

  @override
  String get shelfMix => 'Miksi yt';

  @override
  String get shelfMixSub => 'Rindërtohet sa herë hap aplikacionin';

  @override
  String get shelfAdded => 'Shtuar së fundmi';

  @override
  String get shelfAddedSub => 'Shkarkime dhe skedarë që ke importuar';

  @override
  String get shelfStarter => 'Nis këtu';

  @override
  String get shelfStarterSub => 'Luaj disa dhe IA fillon të mësojë menjëherë';

  @override
  String reasonPlays(int count) {
    return '$count dëgjime';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'E pëlqyer, dëgjuar së fundmi $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count dëgjime, së fundmi $when';
  }

  @override
  String get reasonTopArtist => 'Një nga artistët që dëgjon më shumë';

  @override
  String reasonMore(Object artist) {
    return 'Më shumë $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Vazhdon të kthehesh te $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Lloji yt i $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Së fundmi shumë $tag';
  }

  @override
  String get reasonOutThisYear => 'Publikuar këtë vit';

  @override
  String get reasonReleasedRecently => 'Publikuar së fundmi';

  @override
  String get reasonClose => 'Afër asaj që ke dëgjuar';

  @override
  String reasonNear(Object artist) {
    return 'Është afër $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nuk është dëgjuar kurrë';

  @override
  String get reasonPlayedOnce => 'Dëgjuar një herë';

  @override
  String get reasonPopular => 'Popullore tani';

  @override
  String whenYearsAgo(int count) {
    return '$count vjet më parë';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count muaj më parë';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count ditë më parë';
  }

  @override
  String get searchHint => 'Këngë, artistë, albume';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rezultate',
      one: '1 rezultat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Kërkimet e fundit';

  @override
  String get searchEmptyTitle => 'Nuk u gjet asgjë';

  @override
  String get searchEmptyBody =>
      'Provo një shkrim tjetër, ose vetëm emrin e artistit.';

  @override
  String get searchStartTitle => 'Gjej diçka për të luajtur';

  @override
  String get searchStartBody =>
      'Kërko në YouTube Music — kthehen vetëm këngë, kurrë video për gjëra të tjera.';

  @override
  String get libPlaylists => 'Listat e luajtjes';

  @override
  String get libSongs => 'Këngë';

  @override
  String get libArtists => 'Artistë';

  @override
  String get libLiked => 'Të pëlqyera';

  @override
  String get libDownloads => 'Shkarkime';

  @override
  String get libImported => 'Të importuara';

  @override
  String get libLikedSongs => 'Këngët e pëlqyera';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count këngë',
      one: '1 këngë',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count pa internet';
  }

  @override
  String get libMyFiles => 'Skedarët e mi';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count skedarë',
      one: '1 skedar',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Listë e re';

  @override
  String get libMakeOne => 'Krijo një';

  @override
  String get libSortRecent => 'Shtuar së fundmi';

  @override
  String get libSortTitle => 'Titulli';

  @override
  String get libSortArtist => 'Artisti';

  @override
  String get libSortPlays => 'Më të dëgjuarat';

  @override
  String get sheetNotForMe => 'Nuk është për mua';

  @override
  String get sheetNotForMeSub => 'Mos e rekomando më kurrë';

  @override
  String get sheetBlocked => 'Bllokuar — trokit për ta lejuar sërish';

  @override
  String get sheetBlockedSub => 'Mund të shfaqet sërish te rekomandimet';

  @override
  String get sheetPlayNext => 'Luaj më pas';

  @override
  String get sheetAddToPlaylist => 'Shto në listë';

  @override
  String get sheetDownloaded => 'Shkarkuar';

  @override
  String get sheetRemoveFile => 'Trokit për të hequr skedarin';

  @override
  String get sheetDownload => 'Shkarko';

  @override
  String get sheetKeepOffline => 'Mbaje pa internet';

  @override
  String get sheetRadio => 'Nis radion';

  @override
  String get sheetRadioSub => 'Një radhë e ndërtuar rreth kësaj kënge';

  @override
  String get sheetQueue => 'Radha';

  @override
  String get sheetSleepTimer => 'Kohëmatësi i gjumit';

  @override
  String get sheetSleepOff => 'Joaktiv';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minuta';
  }

  @override
  String get sheetSleepEndOfTrack => 'Fundi i kësaj kënge';

  @override
  String sheetSleepSet(int count) {
    return 'Muzika ndalon pas $count min';
  }

  @override
  String get tasteTitle => 'Shija jote';

  @override
  String get tasteRetrain => 'Ri-trajno';

  @override
  String get tasteRetraining => 'Po ri-trajnohet me historikun tënd…';

  @override
  String get tasteRetrained => 'IA e rindërtoi modelin e saj.';

  @override
  String tasteConfidence(int percent) {
    return 'Besueshmëria $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays dëgjime · $skips kapërcime · $likes pëlqime';
  }

  @override
  String get tasteEmptySummary => 'Luaj disa këngë dhe kjo plotësohet.';

  @override
  String get tasteKeepLearning => 'Vazhdo të mësosh ndërsa dëgjoj';

  @override
  String get tasteKeepLearningSub => 'Çaktivizo për të ngrirë profilin aktual';

  @override
  String get tasteDownloadsTitle => 'Shkarkimet që i menaxhon IA';

  @override
  String get tasteDownloadsSub => 'Muzika vjen në pajisje pa e kërkuar ti';

  @override
  String get tasteDownloadLikes => 'Shkarko gjithçka që pëlqej';

  @override
  String get tasteDownloadLikesSub =>
      'Shtyp zemrën dhe skedari ruhet për pa internet';

  @override
  String get tasteAiInstall => 'Lër IA të instalojë muzikën që zgjedh';

  @override
  String get tasteAiInstallSub =>
      'Do të marrë këngët për të cilat është e sigurt';

  @override
  String get tasteWhatItThinks => 'Çfarë mendon se të pëlqen';

  @override
  String get tasteWhatItThinksSub =>
      'Mësuar nga dëgjimet, kapërcimet, pëlqimet dhe përsëritjet';

  @override
  String get tasteArtists => 'Artistët mbi të cilët mbështetet';

  @override
  String get tasteWhenYouListen => 'Kur dëgjon';

  @override
  String get tasteWhenYouListenSub =>
      'Dëgjime në orë — ora aktuale peshon më shumë';

  @override
  String get tasteDecades => 'Dekada';

  @override
  String get tasteTune => 'Rregullo rekomandimet';

  @override
  String get tasteTuneSub => 'Hyn në fuqi në rifreskimin e radhës të Kryefaqes';

  @override
  String get tasteDiscovery => 'Zbulim';

  @override
  String get tasteDiscoverySub => 'E njohur ↔ gjëra që s\'i ke dëgjuar kurrë';

  @override
  String get tasteEnergy => 'Energji';

  @override
  String get tasteEnergySub => 'E qetë ↔ e fortë';

  @override
  String get tasteRecency => 'Risia';

  @override
  String get tasteRecencySub => 'E përjetshme ↔ krejt e re';

  @override
  String get tasteNostalgia => 'Nostalgji';

  @override
  String get tasteNostalgiaSub =>
      'Sa larg në kohë një e preferuar e vjetër konsiderohet e harruar';

  @override
  String get tasteSignals => 'Sinjalet që mund të përdorë';

  @override
  String get tasteSignalsSub => 'Gjithçka mbetet në këtë pajisje';

  @override
  String get tasteUseHistory => 'Çfarë kam dëgjuar';

  @override
  String get tasteUseSkips => 'Çfarë kapërcej';

  @override
  String get tasteUseTime => 'Ora e ditës';

  @override
  String get tasteUseYouTube => 'Sugjerime nga YouTube';

  @override
  String get tasteAlwaysMore => 'Gjithmonë më shumë nga';

  @override
  String get tasteNeverAgain => 'Kurrë më';

  @override
  String get tasteAddArtist => 'Shto një artist';

  @override
  String get tasteMoreOfPrompt => 'Gjithmonë më shumë nga…';

  @override
  String get tasteNeverAgainPrompt => 'Kurrë më…';

  @override
  String get tasteReset => 'Rivendos çfarë ka mësuar';

  @override
  String get tasteResetSub => 'Muzika jote mbetet; profili fillon nga zero';

  @override
  String get trainCard => 'Trajnoje duke vlerësuar';

  @override
  String get trainCardSub =>
      'Rrëshqit nëpër këngë reale. Djathtas për më shumë të tilla, majtas për kurrë më. Dy minuta këtu vlejnë më shumë se një javë dëgjimi.';

  @override
  String get trainStart => 'Nis një raund trajnimi';

  @override
  String get trainTitle => 'Raund trajnimi';

  @override
  String get trainQuestion => 'Do ta donit këtë në Kryefaqe?';

  @override
  String get trainMoreLikeThis => 'Më shumë si kjo';

  @override
  String get trainNeverAgain => 'Kurrë më';

  @override
  String get trainDone => 'Raundi përfundoi';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked të mbajtura · $blocked të bllokuara. Besueshmëria $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Kthehu te shija jote';

  @override
  String get trainNothingTitle => 'Ende asgjë për të vlerësuar';

  @override
  String get trainNothingBody =>
      'Shto pak muzikë ose lër IA të marrë kandidatë së pari, pastaj kthehu.';

  @override
  String get trainLeaveTitle => 'Të dalësh nga raundi i trajnimit?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Nëse del tani, IA hedh çdo gjë nga ky raund — të gjitha $count këngët që sapo vlerësove.',
      one:
          'Nëse del tani, IA hedh çdo gjë nga ky raund — këngën e 1 që sapo vlerësove.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Vazhdo trajnimin';

  @override
  String get trainDiscard => 'Hidhe dhe dil';

  @override
  String get setTitle => 'Cilësimet';

  @override
  String get setAppearance => 'Pamja';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Ndiq sistemin';

  @override
  String get setThemeLight => 'E çelët';

  @override
  String get setThemeDark => 'E errët';

  @override
  String get setPureBlack => 'E zezë e plotë';

  @override
  String get setPureBlackSub => 'Kursen energji në ekran OLED';

  @override
  String get setAccent => 'Ngjyra e theksit';

  @override
  String get setAccentArtwork => 'Nga kopertina';

  @override
  String get setAccentFixed => 'Një ngjyrë që zgjodha';

  @override
  String get setLanguage => 'Gjuha';

  @override
  String get setLanguageSystem => 'Ndiq sistemin';

  @override
  String get setAccessibility => 'Qasshmëria';

  @override
  String get setTextSize => 'Madhësia e tekstit';

  @override
  String get setTextSizeSub => 'Mbi cilësimin e sistemit';

  @override
  String get setReduceMotion => 'Zvogëlo lëvizjen';

  @override
  String get setReduceMotionSub =>
      'Ndalon shiritat, vizualizuesin, rrëshqitjen me kërcim, trokitjet elastike dhe kalimet mes faqeve';

  @override
  String get setHighContrast => 'Kontrast i lartë';

  @override
  String get setHighContrastSub => 'Ndarje më e fortë dhe kontura të dukshme';

  @override
  String get setBoldText => 'Tekst i trashë';

  @override
  String get setPlayback => 'Luajtja';

  @override
  String get setAutoRadio => 'Mbaje muzikën duke luajtur';

  @override
  String get setAutoRadioSub =>
      'Kur mbaron radha, vazhdon me një radio të ndërtuar nga kënga e fundit';

  @override
  String get setSmartShuffle => 'Përzierje e zgjuar';

  @override
  String get setSmartShuffleSub => 'Përzien sipas shijes në vend të rastësisë';

  @override
  String get setResume => 'Vazhdo ku e lashë';

  @override
  String get setResumeSub => 'Rikthen radhën kur hapet aplikacioni, në pauzë';

  @override
  String get setDataSaver => 'Kursim të dhënash jashtë Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Kufizon transmetimet dhe shkarkimet në 128 kbps me të dhëna celulare';

  @override
  String get setHaptics => 'Reagim me dridhje';

  @override
  String get setShowReasons => 'Trego pse u rekomandua diçka';

  @override
  String get setSkipSilence => 'Kapërce heshtjen';

  @override
  String get setQuality => 'Cilësia e zërit';

  @override
  String get setQualityLow => 'E ulët · 64 kbps';

  @override
  String get setQualityNormal => 'Normale · 128 kbps';

  @override
  String get setQualityHigh => 'E lartë · 192 kbps';

  @override
  String get setQualityBest => 'Më e mira e mundshme';

  @override
  String get setStorage => 'Shkarkimet dhe hapësira';

  @override
  String get setWifiOnly => 'Shkarko vetëm me Wi-Fi';

  @override
  String get setDailyLimit => 'Kufiri ditor për IA';

  @override
  String setDailyLimitSub(int count) {
    return '$count këngë në ditë';
  }

  @override
  String get setBudget => 'Hapësira që mund të përdorë IA';

  @override
  String setUsed(Object size) {
    return '$size përdoren nga shkarkimet';
  }

  @override
  String get setYourMusic => 'Muzika jote';

  @override
  String get setImport => 'Shto muzikë nga kjo pajisje';

  @override
  String get setImportSub => 'Zgjidh dosje ose skedarë të veçantë';

  @override
  String get setCleanup => 'Pastro skedarët që mungojnë';

  @override
  String get setCleanupSub => 'Hiq këngët që nuk e kanë më skedarin';

  @override
  String setCleanupDone(int count) {
    return 'U hoqën $count skedarë që mungonin.';
  }

  @override
  String get setExport => 'Dërgo shijen time në një pajisje tjetër';

  @override
  String get setExportSub =>
      'Ruan një skedar me pëlqimet, dëgjimet dhe gjithçka që ka mësuar IA';

  @override
  String get setImportTaste => 'Ngarko shijen nga një pajisje tjetër';

  @override
  String get setImportTasteSub =>
      'Zgjidh një skedar shije të ruajtur dhe bashkoje — mund ta përsërisësh pa rrezik';

  @override
  String get setAbout => 'Rreth';

  @override
  String get setAboutBody =>
      'Muzikë nga YouTube dhe skedarët e tu. IA funksionon tërësisht në këtë pajisje — asgjë nuk del prej saj.';

  @override
  String get setSource => 'Kodi burimor';

  @override
  String get importTitle => 'Shto muzikë';

  @override
  String get importPickFolder => 'Zgjidh një dosje';

  @override
  String get importPickFiles => 'Zgjidh skedarë';

  @override
  String importScanning(Object file) {
    return 'Po skanohet $file';
  }

  @override
  String importAdded(int count) {
    return '$count të shtuara';
  }

  @override
  String get importDenied =>
      'Leja u refuzua — nuk mund të lexohet muzika jote.';

  @override
  String get importWatched => 'Dosjet që monitoron';

  @override
  String get importIosHint =>
      'Hap aplikacionin Files, shko te On My iPhone → TuneBox dhe hidh muzikën aty.';

  @override
  String get playerQueue => 'Radha';

  @override
  String get playerUpNext => 'Më pas';

  @override
  String get playerLyrics => 'Teksti';

  @override
  String get playerNoLyrics => 'Nuk ka tekst për këtë këngë.';

  @override
  String get playerRepeat => 'Përsërit';

  @override
  String get playerShuffle => 'Përziej';

  @override
  String errorPlayback(Object title) {
    return 'Nuk u luajt \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Po kapërcehet \"$title\" — transmetimi nuk u hap.';
  }

  @override
  String get undo => 'Zhbëj';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Tani: $tags, kryesuar nga $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Tani: $tags.';
  }

  @override
  String get setColour => 'Ngjyra';

  @override
  String get setColourSub => 'I gjithë aplikacioni e ndjek këtë';

  @override
  String get setCoverArt => 'Kopertina';

  @override
  String get setMyColour => 'Ngjyra ime';

  @override
  String get setCoverArtSub =>
      'Çdo këngë e ringjyros aplikacionin sipas kopertinës së saj.';

  @override
  String get setMyColourSub => 'Një ngjyrë, kudo, gjatë gjithë kohës.';

  @override
  String get setPickColour => 'Zgjidh çfarëdo ngjyre';

  @override
  String get setWifiOnlyTitle => 'Shkarko vetëm me Wi-Fi';

  @override
  String get setDownloadLikes => 'Shkarko gjithçka që pëlqej';

  @override
  String get setDownloadLikesSub => 'Butoni i zemrës ruan edhe skedarin';

  @override
  String get setAiInstall => 'Lër IA të instalojë muzikën që zgjedh';

  @override
  String get setSkipSilenceSub =>
      'Vetëm Android. Mund të presë hyrje të qeta, zbehje dhe pjesë të buta — lëre joaktiv nëse muzika ndërpritet';

  @override
  String get setStorageUsed => 'Hapësira e përdorur nga shkarkimet';

  @override
  String get setLibrary => 'Biblioteka';

  @override
  String get setUpdates => 'Përditësimet';

  @override
  String get setAutoUpdate => 'Kontrollo vetë për përditësime';

  @override
  String get setAutoUpdateSub =>
      'Çdo disa orë, në heshtje, dhe shkarkon me Wi-Fi. Instalimi prapë të pyet.';

  @override
  String setUpdateReady(Object version) {
    return 'Përditësimi në $version është gati';
  }

  @override
  String get setUpdateReadySub => 'Shkarkuar — trokit për ta instaluar';

  @override
  String get setUpdateAvailableSub =>
      'Merre nga faqja e publikimeve — trokit për të kopjuar lidhjen';

  @override
  String get setLinkCopied => 'Lidhja u kopjua';

  @override
  String get setCheckNow => 'Kontrollo tani';

  @override
  String get setUpToDate => 'TuneBox është i përditësuar';

  @override
  String get setChecking => 'Po kërkohet një version më i ri…';
}
