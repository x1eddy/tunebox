// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class LIs extends L {
  LIs([String locale = 'is']) : super(locale);

  @override
  String get navHome => 'Heim';

  @override
  String get navExplore => 'Kanna';

  @override
  String get navLibrary => 'Safn';

  @override
  String get navTaste => 'Þinn smekkur';

  @override
  String get actionDone => 'Lokið';

  @override
  String get actionCancel => 'Hætta við';

  @override
  String get actionCreate => 'Búa til';

  @override
  String get actionPlay => 'Spila';

  @override
  String get actionShuffle => 'Stokka';

  @override
  String get actionPlayAll => 'Spila allt';

  @override
  String get actionAdd => 'Bæta við';

  @override
  String get actionRemove => 'Fjarlægja';

  @override
  String get actionName => 'Heiti';

  @override
  String get greetingNight => 'Ennþá vakandi?';

  @override
  String get greetingMorning => 'Góðan daginn';

  @override
  String get greetingAfternoon => 'Góðan daginn';

  @override
  String get greetingEvening => 'Gott kvöld';

  @override
  String get homeBuilding => 'Gervigreindin er að setja saman hillurnar þínar…';

  @override
  String get homeOffline => 'Án nettengingar — sýni það sem er í tækinu';

  @override
  String get homeNothingYet => 'Ekkert að sýna ennþá';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hillur, nýuppfærðar',
      one: '$count hilla, nýuppfærð',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Endurbyggja hillur';

  @override
  String get homeAddMusic => 'Bæta við tónlist úr þessu tæki';

  @override
  String get homeQuickPicks => 'Fljótlegt val';

  @override
  String get homeQuickPicksSub => 'Beint aftur í það sem þú varst að hlusta á';

  @override
  String get homeEmptyTitle => 'Safnið þitt er tómt';

  @override
  String get homeEmptyBody =>
      'Leitaðu að einhverju eða bættu við tónlistinni sem er þegar í þessu tæki. Gervigreindin byrjar að læra frá fyrsta lagi.';

  @override
  String get homeAddMyMusic => 'Bæta við minni tónlist';

  @override
  String homeCouldNotReach(Object error) {
    return 'Náði ekki sambandi við YouTube: $error';
  }

  @override
  String get moodFocus => 'Einbeiting';

  @override
  String get moodWorkout => 'Æfing';

  @override
  String get moodChill => 'Slökun';

  @override
  String get moodCommute => 'Ferðalag';

  @override
  String get moodParty => 'Partý';

  @override
  String moodBuilding(Object mood) {
    return 'Bý til $mood-blöndu…';
  }

  @override
  String moodFailed(Object error) {
    return 'Tókst ekki: $error';
  }

  @override
  String get shelfRepeat => 'Á repeat';

  @override
  String get shelfRepeatSub => 'Síðustu tvær vikur';

  @override
  String get shelfForgotten => 'Gleymdir slagarar sem þér líkaði';

  @override
  String get shelfForgottenSub => 'Elskað einu sinni, ósnert um tíma';

  @override
  String get shelfNew => 'Nýtt';

  @override
  String get shelfNewSub => 'Ný lög sem gervigreindin heldur að henti þér';

  @override
  String shelfBecause(Object artist) {
    return 'Af því að þú spilaðir $artist';
  }

  @override
  String get shelfBecauseSub => 'Sama horn af smekk þínum';

  @override
  String get shelfDeep => 'Varla snert';

  @override
  String get shelfDeepSub => 'Í safninu þínu, varla spilað';

  @override
  String get shelfMix => 'Þín blanda';

  @override
  String get shelfMixSub => 'Endurbyggð í hvert sinn sem þú opnar appið';

  @override
  String get shelfAdded => 'Nýlega bætt við';

  @override
  String get shelfAddedSub => 'Niðurhal og skrár sem þú fluttir inn';

  @override
  String get shelfStarter => 'Byrjaðu hér';

  @override
  String get shelfStarterSub =>
      'Spilaðu nokkur lög og gervigreindin byrjar strax að læra';

  @override
  String reasonPlays(int count) {
    return '$count spilanir';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Líkað, síðast spilað $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count spilanir, síðast $when';
  }

  @override
  String get reasonTopArtist => 'Einn af mest spiluðu flytjendum þínum';

  @override
  String reasonMore(Object artist) {
    return 'Meira með $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Þú kemur alltaf aftur til $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Þín tegund af $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Mikið af $tag upp á síðkastið';
  }

  @override
  String get reasonOutThisYear => 'Kom út á þessu ári';

  @override
  String get reasonReleasedRecently => 'Nýlega gefið út';

  @override
  String get reasonClose => 'Nálægt því sem þú hefur verið að hlusta á';

  @override
  String reasonNear(Object artist) {
    return 'Í námunda við $artist';
  }

  @override
  String get reasonNeverPlayed => 'Aldrei spilað';

  @override
  String get reasonPlayedOnce => 'Spilað einu sinni';

  @override
  String get reasonPopular => 'Vinsælt núna';

  @override
  String whenYearsAgo(int count) {
    return 'fyrir $count á.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'fyrir $count mán.';
  }

  @override
  String whenDaysAgo(int count) {
    return 'fyrir $count d.';
  }

  @override
  String get searchHint => 'Lög, flytjendur, plötur';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count niðurstöður',
      one: '$count niðurstaða',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Nýlegar leitir';

  @override
  String get searchEmptyTitle => 'Ekkert fannst';

  @override
  String get searchEmptyBody =>
      'Prófaðu aðra stafsetningu eða nafn flytjandans eitt og sér.';

  @override
  String get searchStartTitle => 'Finndu eitthvað til að spila';

  @override
  String get searchStartBody =>
      'Leitaðu á YouTube Music — aðeins lög birtast, aldrei myndbönd um annað.';

  @override
  String get libPlaylists => 'Lagalistar';

  @override
  String get libSongs => 'Lög';

  @override
  String get libArtists => 'Flytjendur';

  @override
  String get libLiked => 'Líkað';

  @override
  String get libDownloads => 'Niðurhal';

  @override
  String get libImported => 'Innflutt';

  @override
  String get libLikedSongs => 'Lög sem þér líkar';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lög',
      one: '$count lag',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count án nettengingar';
  }

  @override
  String get libMyFiles => 'Mínar eigin skrár';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count skrár',
      one: '$count skrá',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nýr lagalisti';

  @override
  String get libMakeOne => 'Búa til einn';

  @override
  String get libSortRecent => 'Nýlega bætt við';

  @override
  String get libSortTitle => 'Titill';

  @override
  String get libSortArtist => 'Flytjandi';

  @override
  String get libSortPlays => 'Mest spilað';

  @override
  String get sheetNotForMe => 'Ekki fyrir mig';

  @override
  String get sheetNotForMeSub => 'Mæla aldrei með þessu aftur';

  @override
  String get sheetBlocked => 'Lokað á — ýttu til að leyfa aftur';

  @override
  String get sheetBlockedSub => 'Getur birst í tillögum aftur';

  @override
  String get sheetPlayNext => 'Spila næst';

  @override
  String get sheetAddToPlaylist => 'Bæta á lagalista';

  @override
  String get sheetDownloaded => 'Niðurhalað';

  @override
  String get sheetRemoveFile => 'Ýttu til að fjarlægja skrána';

  @override
  String get sheetDownload => 'Sækja';

  @override
  String get sheetKeepOffline => 'Geyma til notkunar án nettengingar';

  @override
  String get sheetRadio => 'Hefja útvarp';

  @override
  String get sheetRadioSub => 'Biðröð byggð í kringum þetta lag';

  @override
  String get sheetQueue => 'Biðröð';

  @override
  String get sheetSleepTimer => 'Svefntímastillir';

  @override
  String get sheetSleepOff => 'Slökkt';

  @override
  String sheetSleepMinutes(int count) {
    return '$count mínútur';
  }

  @override
  String get sheetSleepEndOfTrack => 'Þegar þessu lagi lýkur';

  @override
  String sheetSleepSet(int count) {
    return 'Tónlistin stöðvast eftir $count mín.';
  }

  @override
  String get tasteTitle => 'Þinn smekkur';

  @override
  String get tasteRetrain => 'Þjálfa aftur';

  @override
  String get tasteRetraining => 'Þjálfa aftur á sögunni þinni…';

  @override
  String get tasteRetrained => 'Gervigreindin endurbyggði líkanið sitt.';

  @override
  String tasteConfidence(int percent) {
    return 'Öryggi $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays spilanir · $skips sleppt · $likes líkað';
  }

  @override
  String get tasteEmptySummary => 'Spilaðu nokkur lög og þetta fyllist.';

  @override
  String get tasteKeepLearning => 'Halda áfram að læra meðan ég hlusta';

  @override
  String get tasteKeepLearningSub => 'Slökktu til að frysta núverandi prófíl';

  @override
  String get tasteDownloadsTitle => 'Niðurhal sem gervigreindin sér um';

  @override
  String get tasteDownloadsSub =>
      'Tónlist kemur í tækið án þess að þú biðjir um hana';

  @override
  String get tasteDownloadLikes => 'Sækja allt sem mér líkar';

  @override
  String get tasteDownloadLikesSub =>
      'Ýttu á hjartað og skráin er vistuð til notkunar án nettengingar';

  @override
  String get tasteAiInstall =>
      'Leyfa gervigreindinni að setja upp tónlist sem hún velur';

  @override
  String get tasteAiInstallSub => 'Hún sækir lög sem hún er viss um';

  @override
  String get tasteWhatItThinks => 'Það sem hún heldur að þér líki';

  @override
  String get tasteWhatItThinksSub =>
      'Lært af spilunum, sleppingum, líkunum og endurtekningum';

  @override
  String get tasteArtists => 'Flytjendur sem hún styðst við';

  @override
  String get tasteWhenYouListen => 'Hvenær þú hlustar';

  @override
  String get tasteWhenYouListenSub =>
      'Spilanir á klukkustund — núverandi klukkustund vegur þyngra';

  @override
  String get tasteDecades => 'Áratugir';

  @override
  String get tasteTune => 'Stilla tillögurnar';

  @override
  String get tasteTuneSub => 'Tekur gildi við næstu uppfærslu á Heim';

  @override
  String get tasteDiscovery => 'Uppgötvun';

  @override
  String get tasteDiscoverySub =>
      'Kunnuglegt ↔ hlutir sem þú hefur aldrei heyrt';

  @override
  String get tasteEnergy => 'Orka';

  @override
  String get tasteEnergySub => 'Rólegt ↔ hávært';

  @override
  String get tasteRecency => 'Nýleiki';

  @override
  String get tasteRecencySub => 'Tímalaust ↔ glænýtt';

  @override
  String get tasteNostalgia => 'Nostalgía';

  @override
  String get tasteNostalgiaSub =>
      'Hversu langt aftur gamalt uppáhald telst gleymt';

  @override
  String get tasteSignals => 'Merki sem hún má nota';

  @override
  String get tasteSignalsSub => 'Allt helst í þessu tæki';

  @override
  String get tasteUseHistory => 'Það sem ég hef spilað';

  @override
  String get tasteUseSkips => 'Það sem ég sleppi';

  @override
  String get tasteUseTime => 'Tími dags';

  @override
  String get tasteUseYouTube => 'Tillögur frá YouTube';

  @override
  String get tasteAlwaysMore => 'Alltaf meira af';

  @override
  String get tasteNeverAgain => 'Aldrei aftur';

  @override
  String get tasteAddArtist => 'Bæta við flytjanda';

  @override
  String get tasteMoreOfPrompt => 'Alltaf meira af…';

  @override
  String get tasteNeverAgainPrompt => 'Aldrei aftur…';

  @override
  String get tasteReset => 'Endurstilla það sem hún lærði';

  @override
  String get tasteResetSub =>
      'Tónlistin þín helst; prófíllinn byrjar frá núlli';

  @override
  String get trainCard => 'Þjálfa með einkunnagjöf';

  @override
  String get trainCardSub =>
      'Strjúktu í gegnum alvöru lög. Til hægri fyrir meira af þessu, til vinstri fyrir aldrei aftur. Tvær mínútur hér slá viku af hlustun.';

  @override
  String get trainStart => 'Hefja þjálfunarlotu';

  @override
  String get trainTitle => 'Þjálfunarlota';

  @override
  String get trainQuestion => 'Vilt þú hafa þetta á Heim?';

  @override
  String get trainMoreLikeThis => 'Meira í þessum dúr';

  @override
  String get trainNeverAgain => 'Aldrei aftur';

  @override
  String get trainDone => 'Lotu lokið';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked haldið · $blocked lokað á. Öryggi $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Aftur í smekkinn þinn';

  @override
  String get trainNothingTitle => 'Ekkert að meta ennþá';

  @override
  String get trainNothingBody =>
      'Bættu við tónlist eða leyfðu gervigreindinni að sækja tillögur fyrst, og komdu svo aftur.';

  @override
  String get trainLeaveTitle => 'Hætta þjálfunarlotunni?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ef þú hættir núna hendir gervigreindin öllu úr þessari lotu — öllum $count lögunum sem þú varst að meta.',
      one:
          'Ef þú hættir núna hendir gervigreindin öllu úr þessari lotu — $count laginu sem þú varst að meta.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Halda áfram að þjálfa';

  @override
  String get trainDiscard => 'Henda og hætta';

  @override
  String get setTitle => 'Stillingar';

  @override
  String get setAppearance => 'Útlit';

  @override
  String get setTheme => 'Þema';

  @override
  String get setThemeSystem => 'Fylgja kerfinu';

  @override
  String get setThemeLight => 'Ljóst';

  @override
  String get setThemeDark => 'Dökkt';

  @override
  String get setPureBlack => 'Alsvart';

  @override
  String get setPureBlackSub => 'Sparar rafmagn á OLED-skjá';

  @override
  String get setAccent => 'Áherslulitur';

  @override
  String get setAccentArtwork => 'Úr umslagsmyndinni';

  @override
  String get setAccentFixed => 'Einn litur sem ég valdi';

  @override
  String get setLanguage => 'Tungumál';

  @override
  String get setLanguageSystem => 'Fylgja kerfinu';

  @override
  String get setAccessibility => 'Aðgengi';

  @override
  String get setTextSize => 'Leturstærð';

  @override
  String get setTextSizeSub => 'Ofan á kerfisstillinguna þína';

  @override
  String get setReduceMotion => 'Draga úr hreyfingu';

  @override
  String get setReduceMotionSub =>
      'Stöðvar súlurnar, sjónræna sýningu, skopp í skrolli, fjaðrandi snertingar og síðuskipti';

  @override
  String get setHighContrast => 'Mikil birtuskil';

  @override
  String get setHighContrastSub => 'Skýrari aðgreining og sýnilegir rammar';

  @override
  String get setBoldText => 'Feitletraður texti';

  @override
  String get setPlayback => 'Spilun';

  @override
  String get setAutoRadio => 'Halda tónlistinni gangandi';

  @override
  String get setAutoRadioSub =>
      'Þegar biðröðinni lýkur heldur útvarp byggt á síðasta laginu áfram';

  @override
  String get setSmartShuffle => 'Snjöll stokkun';

  @override
  String get setSmartShuffleSub =>
      'Stokkar eftir smekk í stað þess að stokka af handahófi';

  @override
  String get setResume => 'Halda áfram þar sem frá var horfið';

  @override
  String get setResumeSub => 'Endurheimtir biðröðina þegar appið opnast, í bið';

  @override
  String get setDataSaver => 'Gagnasparnaður utan Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Takmarkar streymi og niðurhal við 128 kbps á farsímagögnum';

  @override
  String get setHaptics => 'Haptísk svörun';

  @override
  String get setShowReasons => 'Sýna hvers vegna mælt var með einhverju';

  @override
  String get setSkipSilence => 'Sleppa þögn';

  @override
  String get setQuality => 'Hljóðgæði';

  @override
  String get setQualityLow => 'Lág · 64 kbps';

  @override
  String get setQualityNormal => 'Venjuleg · 128 kbps';

  @override
  String get setQualityHigh => 'Há · 192 kbps';

  @override
  String get setQualityBest => 'Bestu fáanlegu';

  @override
  String get setStorage => 'Niðurhal og geymslurými';

  @override
  String get setWifiOnly => 'Sækja aðeins á Wi-Fi';

  @override
  String get setDailyLimit => 'Dagleg takmörkun fyrir gervigreindina';

  @override
  String setDailyLimitSub(int count) {
    return '$count lög á dag';
  }

  @override
  String get setBudget => 'Geymslurými sem gervigreindin má nota';

  @override
  String setUsed(Object size) {
    return '$size notað af niðurhali';
  }

  @override
  String get setYourMusic => 'Tónlistin þín';

  @override
  String get setImport => 'Bæta við tónlist úr þessu tæki';

  @override
  String get setImportSub => 'Veldu möppur eða stakar skrár';

  @override
  String get setCleanup => 'Hreinsa týndar skrár';

  @override
  String get setCleanupSub => 'Fjarlægja lög sem skráin vantar fyrir';

  @override
  String setCleanupDone(int count) {
    return 'Fjarlægði $count týndar skrár.';
  }

  @override
  String get setExport => 'Senda smekkinn minn í annað tæki';

  @override
  String get setExportSub =>
      'Vistar skrá með líkunum þínum, spilunum og öllu sem gervigreindin lærði';

  @override
  String get setImportTaste => 'Hlaða smekk úr öðru tæki';

  @override
  String get setImportTasteSub =>
      'Veldu vistaða smekkskrá og sameinaðu — óhætt að endurtaka';

  @override
  String get setAbout => 'Um appið';

  @override
  String get setAboutBody =>
      'Tónlist frá YouTube og þínum eigin skrám. Gervigreindin keyrir alfarið í þessu tæki — ekkert fer úr því.';

  @override
  String get setSource => 'Frumkóði';

  @override
  String get importTitle => 'Bæta við tónlist';

  @override
  String get importPickFolder => 'Veldu möppu';

  @override
  String get importPickFiles => 'Veldu skrár';

  @override
  String importScanning(Object file) {
    return 'Skanna $file';
  }

  @override
  String importAdded(int count) {
    return '$count bætt við';
  }

  @override
  String get importDenied => 'Aðgangi hafnað — get ekki lesið tónlistina þína.';

  @override
  String get importWatched => 'Möppur sem fylgst er með';

  @override
  String get importIosHint =>
      'Opnaðu Skrár-appið, farðu í Á iPhone → TuneBox og settu tónlistina þar inn.';

  @override
  String get playerQueue => 'Biðröð';

  @override
  String get playerUpNext => 'Næst';

  @override
  String get playerLyrics => 'Textar';

  @override
  String get playerNoLyrics => 'Enginn texti fyrir þetta lag.';

  @override
  String get playerRepeat => 'Endurtaka';

  @override
  String get playerShuffle => 'Stokka';

  @override
  String errorPlayback(Object title) {
    return 'Gat ekki spilað „$title“';
  }

  @override
  String errorSkipping(Object title) {
    return 'Sleppi „$title“ — straumurinn vildi ekki opnast.';
  }

  @override
  String get undo => 'Afturkalla';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Núna: $tags, með $artist í forystu.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Núna: $tags.';
  }

  @override
  String get setColour => 'Litur';

  @override
  String get setColourSub => 'Allt appið fylgir þessu';

  @override
  String get setCoverArt => 'Umslagsmynd';

  @override
  String get setMyColour => 'Minn litur';

  @override
  String get setCoverArtSub =>
      'Hvert lag litar appið upp á nýtt eftir umslaginu sínu.';

  @override
  String get setMyColourSub => 'Einn litur, alls staðar, alltaf.';

  @override
  String get setPickColour => 'Veldu hvaða lit sem er';

  @override
  String get setWifiOnlyTitle => 'Sækja aðeins á Wi-Fi';

  @override
  String get setDownloadLikes => 'Sækja allt sem mér líkar';

  @override
  String get setDownloadLikesSub => 'Hjartahnappurinn vistar líka skrána';

  @override
  String get setAiInstall =>
      'Leyfa gervigreindinni að setja upp tónlist sem hún velur';

  @override
  String get setSkipSilenceSub =>
      'Aðeins Android. Getur klippt burt hljóðlátar kynningar, úthvarf og mjúka kafla — hafðu slökkt ef tónlistin hoppar';

  @override
  String get setStorageUsed => 'Geymslurými sem niðurhal notar';

  @override
  String get setLibrary => 'Safn';

  @override
  String get setUpdates => 'Uppfærslur';

  @override
  String get setAutoUpdate => 'Leita sjálfkrafa að uppfærslum';

  @override
  String get setAutoUpdateSub =>
      'Á nokkurra klukkustunda fresti, hljóðlega, og sækir á Wi-Fi. Uppsetning spyr þig enn.';

  @override
  String setUpdateReady(Object version) {
    return 'Uppfærsla í $version er tilbúin';
  }

  @override
  String get setUpdateReadySub => 'Niðurhalað — ýttu til að setja upp';

  @override
  String get setUpdateAvailableSub =>
      'Sæktu hana af útgáfusíðunni — ýttu til að afrita tengilinn';

  @override
  String get setLinkCopied => 'Tengill afritaður';

  @override
  String get setCheckNow => 'Athuga núna';

  @override
  String get setUpToDate => 'TuneBox er uppfært';

  @override
  String get setChecking => 'Leita að nýrri útgáfu…';
}
