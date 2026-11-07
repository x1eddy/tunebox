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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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
}
