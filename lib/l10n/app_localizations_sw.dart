// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class LSw extends L {
  LSw([String locale = 'sw']) : super(locale);

  @override
  String get navHome => 'Mwanzo';

  @override
  String get navExplore => 'Gundua';

  @override
  String get navLibrary => 'Maktaba';

  @override
  String get navTaste => 'Ladha yako';

  @override
  String get actionDone => 'Imekamilika';

  @override
  String get actionCancel => 'Ghairi';

  @override
  String get actionCreate => 'Unda';

  @override
  String get actionPlay => 'Cheza';

  @override
  String get actionShuffle => 'Changanya';

  @override
  String get actionPlayAll => 'Cheza zote';

  @override
  String get actionAdd => 'Ongeza';

  @override
  String get actionRemove => 'Ondoa';

  @override
  String get actionName => 'Jina';

  @override
  String get greetingNight => 'Bado hujalala?';

  @override
  String get greetingMorning => 'Habari za asubuhi';

  @override
  String get greetingAfternoon => 'Habari za mchana';

  @override
  String get greetingEvening => 'Habari za jioni';

  @override
  String get homeBuilding => 'AI inatengeneza rafu zako…';

  @override
  String get homeOffline => 'Nje ya mtandao — inaonyesha vilivyo kwenye kifaa';

  @override
  String get homeNothingYet => 'Hakuna cha kuonyesha bado';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rafu $count, zimesasishwa sasa hivi',
      one: 'Rafu 1, imesasishwa sasa hivi',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Tengeneza rafu upya';

  @override
  String get homeAddMusic => 'Ongeza muziki kutoka kwenye kifaa hiki';

  @override
  String get homeQuickPicks => 'Chaguo za haraka';

  @override
  String get homeQuickPicksSub => 'Rudi moja kwa moja ulipokuwa';

  @override
  String get homeEmptyTitle => 'Maktaba yako ni tupu';

  @override
  String get homeEmptyBody =>
      'Tafuta kitu, au ongeza muziki ulio tayari kwenye kifaa hiki. AI huanza kujifunza tangu uchezaji wako wa kwanza kabisa.';

  @override
  String get homeAddMyMusic => 'Ongeza muziki wangu';

  @override
  String homeCouldNotReach(Object error) {
    return 'Imeshindwa kufikia YouTube: $error';
  }

  @override
  String get moodFocus => 'Umakini';

  @override
  String get moodWorkout => 'Mazoezi';

  @override
  String get moodChill => 'Utulivu';

  @override
  String get moodCommute => 'Safarini';

  @override
  String get moodParty => 'Sherehe';

  @override
  String moodBuilding(Object mood) {
    return 'Inatengeneza mchanganyiko wa $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Haikufanikiwa: $error';
  }

  @override
  String get shelfRepeat => 'Zinazorudiwa';

  @override
  String get shelfRepeatSub => 'Wiki mbili zilizopita';

  @override
  String get shelfForgotten => 'Nyimbo za zamani zilizosahaulika ulizopenda';

  @override
  String get shelfForgottenSub => 'Zilipendwa zamani, hazijaguswa kwa muda';

  @override
  String get shelfNew => 'Mpya';

  @override
  String get shelfNewSub => 'Nyimbo mpya AI inadhani ni zako';

  @override
  String shelfBecause(Object artist) {
    return 'Kwa sababu ulicheza $artist';
  }

  @override
  String get shelfBecauseSub => 'Kona ile ile ya ladha yako';

  @override
  String get shelfDeep => 'Hazijaguswa sana';

  @override
  String get shelfDeepSub =>
      'Zipo kwenye maktaba yako, hazichezwi karibu kamwe';

  @override
  String get shelfMix => 'Mchanganyiko wako';

  @override
  String get shelfMixSub => 'Hutengenezwa upya kila ukifungua programu';

  @override
  String get shelfAdded => 'Zilizoongezwa hivi karibuni';

  @override
  String get shelfAddedSub => 'Vipakuliwa na faili ulizoingiza';

  @override
  String get shelfStarter => 'Anzia hapa';

  @override
  String get shelfStarterSub =>
      'Cheza chache na AI inaanza kujifunza mara moja';

  @override
  String reasonPlays(int count) {
    return 'Mara $count zimechezwa';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Imependwa, ilichezwa mwisho $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Mara $count, mwisho $when';
  }

  @override
  String get reasonTopArtist => 'Mmoja wa wasanii unaowasikiliza zaidi';

  @override
  String reasonMore(Object artist) {
    return '$artist zaidi';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Unaendelea kurudi kwa $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Aina yako ya $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return '$tag nyingi hivi karibuni';
  }

  @override
  String get reasonOutThisYear => 'Imetoka mwaka huu';

  @override
  String get reasonReleasedRecently => 'Imetolewa hivi karibuni';

  @override
  String get reasonClose => 'Karibu na ulichokuwa ukicheza';

  @override
  String reasonNear(Object artist) {
    return 'Iko karibu na $artist';
  }

  @override
  String get reasonNeverPlayed => 'Haijawahi kuchezwa';

  @override
  String get reasonPlayedOnce => 'Imechezwa mara moja';

  @override
  String get reasonPopular => 'Maarufu sasa hivi';

  @override
  String whenYearsAgo(int count) {
    return 'miaka $count iliyopita';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'miezi $count iliyopita';
  }

  @override
  String whenDaysAgo(int count) {
    return 'siku $count zilizopita';
  }

  @override
  String get searchHint => 'Nyimbo, wasanii, albamu';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Matokeo $count',
      one: 'Tokeo 1',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Utafutaji wa hivi karibuni';

  @override
  String get searchEmptyTitle => 'Hakuna kilichopatikana';

  @override
  String get searchEmptyBody =>
      'Jaribu tahajia nyingine, au jina la msanii peke yake.';

  @override
  String get searchStartTitle => 'Tafuta kitu cha kucheza';

  @override
  String get searchStartBody =>
      'Tafuta kwenye YouTube Music — nyimbo pekee ndizo zinarudi, kamwe video za vitu vingine.';

  @override
  String get libPlaylists => 'Orodha za kucheza';

  @override
  String get libSongs => 'Nyimbo';

  @override
  String get libArtists => 'Wasanii';

  @override
  String get libLiked => 'Zilizopendwa';

  @override
  String get libDownloads => 'Vipakuliwa';

  @override
  String get libImported => 'Zilizoingizwa';

  @override
  String get libLikedSongs => 'Nyimbo zilizopendwa';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nyimbo $count',
      one: 'Wimbo 1',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count nje ya mtandao';
  }

  @override
  String get libMyFiles => 'Faili zangu mwenyewe';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Faili $count',
      one: 'Faili 1',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Orodha mpya';

  @override
  String get libMakeOne => 'Tengeneza moja';

  @override
  String get libSortRecent => 'Zilizoongezwa hivi karibuni';

  @override
  String get libSortTitle => 'Kichwa';

  @override
  String get libSortArtist => 'Msanii';

  @override
  String get libSortPlays => 'Zilizochezwa zaidi';

  @override
  String get sheetNotForMe => 'Si yangu';

  @override
  String get sheetNotForMeSub => 'Usipendekeze hii tena kamwe';

  @override
  String get sheetBlocked => 'Imezuiwa — gusa kuruhusu tena';

  @override
  String get sheetBlockedSub => 'Inaweza kuonekana tena kwenye mapendekezo';

  @override
  String get sheetPlayNext => 'Cheza inayofuata';

  @override
  String get sheetAddToPlaylist => 'Ongeza kwenye orodha';

  @override
  String get sheetDownloaded => 'Imepakuliwa';

  @override
  String get sheetRemoveFile => 'Gusa kuondoa faili';

  @override
  String get sheetDownload => 'Pakua';

  @override
  String get sheetKeepOffline => 'Iweke ipatikane nje ya mtandao';

  @override
  String get sheetRadio => 'Anzisha redio';

  @override
  String get sheetRadioSub => 'Foleni iliyojengwa kuzunguka wimbo huu';

  @override
  String get sheetQueue => 'Foleni';

  @override
  String get sheetSleepTimer => 'Kipima muda cha kulala';

  @override
  String get sheetSleepOff => 'Imezimwa';

  @override
  String sheetSleepMinutes(int count) {
    return 'Dakika $count';
  }

  @override
  String get sheetSleepEndOfTrack => 'Mwisho wa wimbo huu';

  @override
  String sheetSleepSet(int count) {
    return 'Muziki utaacha baada ya dakika $count';
  }

  @override
  String get tasteTitle => 'Ladha yako';

  @override
  String get tasteRetrain => 'Funza upya';

  @override
  String get tasteRetraining => 'Inafunzwa upya kwa historia yako…';

  @override
  String get tasteRetrained => 'AI imejenga upya modeli yake.';

  @override
  String tasteConfidence(int percent) {
    return 'Uhakika $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'Mara $plays zimechezwa · $skips zimerukwa · $likes zimependwa';
  }

  @override
  String get tasteEmptySummary => 'Cheza nyimbo chache na hapa patajaa.';

  @override
  String get tasteKeepLearning => 'Endelea kujifunza ninaposikiliza';

  @override
  String get tasteKeepLearningSub => 'Zima ili kugandisha wasifu wa sasa';

  @override
  String get tasteDownloadsTitle => 'Vipakuliwa vinavyoshughulikiwa na AI';

  @override
  String get tasteDownloadsSub =>
      'Muziki unafika kwenye kifaa bila wewe kuomba';

  @override
  String get tasteDownloadLikes => 'Pakua kila ninachopenda';

  @override
  String get tasteDownloadLikesSub =>
      'Bonyeza moyo na faili inahifadhiwa kwa matumizi nje ya mtandao';

  @override
  String get tasteAiInstall => 'Ruhusu AI iweke muziki inaouchagua';

  @override
  String get tasteAiInstallSub => 'Itapakua nyimbo ilizo na uhakika nazo';

  @override
  String get tasteWhatItThinks => 'Inachofikiri unapenda';

  @override
  String get tasteWhatItThinksSub =>
      'Imejifunza kutokana na uchezaji, kurukwa, kupendwa na kurudiwa';

  @override
  String get tasteArtists => 'Wasanii inaowategemea';

  @override
  String get tasteWhenYouListen => 'Unaposikiliza';

  @override
  String get tasteWhenYouListenSub =>
      'Uchezaji kwa saa — saa ya sasa ina uzito zaidi';

  @override
  String get tasteDecades => 'Miongo';

  @override
  String get tasteTune => 'Rekebisha mapendekezo';

  @override
  String get tasteTuneSub => 'Inaanza kutumika Mwanzo ikisasishwa tena';

  @override
  String get tasteDiscovery => 'Ugunduzi';

  @override
  String get tasteDiscoverySub => 'Vinavyojulikana ↔ ambavyo hujawahi kusikia';

  @override
  String get tasteEnergy => 'Nguvu';

  @override
  String get tasteEnergySub => 'Tulivu ↔ yenye sauti kubwa';

  @override
  String get tasteRecency => 'Uchanga';

  @override
  String get tasteRecencySub => 'Isiyopitwa na wakati ↔ mpya kabisa';

  @override
  String get tasteNostalgia => 'Kumbukumbu za zamani';

  @override
  String get tasteNostalgiaSub =>
      'Kipenzi cha zamani huhesabiwa kusahaulika baada ya muda gani';

  @override
  String get tasteSignals => 'Ishara inazoweza kutumia';

  @override
  String get tasteSignalsSub => 'Kila kitu kinabaki kwenye kifaa hiki';

  @override
  String get tasteUseHistory => 'Nilichocheza';

  @override
  String get tasteUseSkips => 'Ninachoruka';

  @override
  String get tasteUseTime => 'Wakati wa siku';

  @override
  String get tasteUseYouTube => 'Mapendekezo kutoka YouTube';

  @override
  String get tasteAlwaysMore => 'Daima zaidi ya';

  @override
  String get tasteNeverAgain => 'Kamwe tena';

  @override
  String get tasteAddArtist => 'Ongeza msanii';

  @override
  String get tasteMoreOfPrompt => 'Daima zaidi ya…';

  @override
  String get tasteNeverAgainPrompt => 'Kamwe tena…';

  @override
  String get tasteReset => 'Weka upya kilichojifunzwa';

  @override
  String get tasteResetSub =>
      'Muziki wako unabaki; wasifu unaanza upya kutoka sifuri';

  @override
  String get trainCard => 'Ifunze kwa kutoa alama';

  @override
  String get trainCardSub =>
      'Telezesha kupitia nyimbo halisi. Kulia kwa zaidi kama hii, kushoto kwa kamwe tena. Dakika mbili hapa zinashinda wiki nzima ya kusikiliza.';

  @override
  String get trainStart => 'Anza raundi ya mafunzo';

  @override
  String get trainTitle => 'Raundi ya mafunzo';

  @override
  String get trainQuestion => 'Je, ungependa hii kwenye Mwanzo wako?';

  @override
  String get trainMoreLikeThis => 'Zaidi kama hii';

  @override
  String get trainNeverAgain => 'Kamwe tena';

  @override
  String get trainDone => 'Raundi imekamilika';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked zimebaki · $blocked zimezuiwa. Uhakika $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Rudi kwenye ladha yako';

  @override
  String get trainNothingTitle => 'Hakuna cha kupima bado';

  @override
  String get trainNothingBody =>
      'Ongeza muziki au ruhusu AI ilete wagombea kwanza, kisha urudi.';

  @override
  String get trainLeaveTitle => 'Kuondoka kwenye raundi ya mafunzo?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ukiondoka sasa, AI itatupa kila kitu cha raundi hii — nyimbo zote $count ulizozipima hivi punde.',
      one:
          'Ukiondoka sasa, AI itatupa kila kitu cha raundi hii — wimbo 1 ulioupima hivi punde.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Endelea kufunza';

  @override
  String get trainDiscard => 'Tupa na uondoke';

  @override
  String get setTitle => 'Mipangilio';

  @override
  String get setAppearance => 'Mwonekano';

  @override
  String get setTheme => 'Mandhari';

  @override
  String get setThemeSystem => 'Fuata mfumo';

  @override
  String get setThemeLight => 'Nyepesi';

  @override
  String get setThemeDark => 'Nyeusi';

  @override
  String get setPureBlack => 'Nyeusi kabisa';

  @override
  String get setPureBlackSub => 'Huokoa nishati kwenye skrini ya OLED';

  @override
  String get setAccent => 'Rangi ya msisitizo';

  @override
  String get setAccentArtwork => 'Kutoka kwenye jalada';

  @override
  String get setAccentFixed => 'Rangi moja niliyochagua';

  @override
  String get setLanguage => 'Lugha';

  @override
  String get setLanguageSystem => 'Fuata mfumo';

  @override
  String get setAccessibility => 'Ufikivu';

  @override
  String get setTextSize => 'Ukubwa wa maandishi';

  @override
  String get setTextSizeSub => 'Juu ya mpangilio wa mfumo wako';

  @override
  String get setReduceMotion => 'Punguza mwendo';

  @override
  String get setReduceMotionSub =>
      'Husimamisha pau, kionyeshi, kusogeza kwa kuruka, mguso wa kuchipuka na mageuzi ya kurasa';

  @override
  String get setHighContrast => 'Utofautishaji wa juu';

  @override
  String get setHighContrastSub =>
      'Mgawanyo mkali zaidi na mistari ya nje inayoonekana';

  @override
  String get setBoldText => 'Maandishi mazito';

  @override
  String get setPlayback => 'Uchezaji';

  @override
  String get setAutoRadio => 'Endeleza muziki';

  @override
  String get setAutoRadioSub =>
      'Foleni ikiisha, endelea na redio iliyojengwa kutoka wimbo wa mwisho';

  @override
  String get setSmartShuffle => 'Changanya kwa busara';

  @override
  String get setSmartShuffleSub =>
      'Huchanganya kwa ladha badala ya bahati nasibu';

  @override
  String get setResume => 'Endelea nilipoishia';

  @override
  String get setResumeSub =>
      'Hurejesha foleni programu inapofunguliwa, ikiwa imesitishwa';

  @override
  String get setDataSaver => 'Kiokoa data nje ya Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Hupunguza mtiririko na vipakuliwa hadi 128 kbps kwenye data ya simu';

  @override
  String get setHaptics => 'Mtetemo wa mguso';

  @override
  String get setShowReasons => 'Onyesha kwa nini kitu kilipendekezwa';

  @override
  String get setSkipSilence => 'Ruka ukimya';

  @override
  String get setQuality => 'Ubora wa sauti';

  @override
  String get setQualityLow => 'Chini · 64 kbps';

  @override
  String get setQualityNormal => 'Kawaida · 128 kbps';

  @override
  String get setQualityHigh => 'Juu · 192 kbps';

  @override
  String get setQualityBest => 'Bora zaidi inayopatikana';

  @override
  String get setStorage => 'Vipakuliwa na hifadhi';

  @override
  String get setWifiOnly => 'Pakua kwenye Wi-Fi pekee';

  @override
  String get setDailyLimit => 'Kikomo cha kila siku cha AI';

  @override
  String setDailyLimitSub(int count) {
    return 'Nyimbo $count kwa siku';
  }

  @override
  String get setBudget => 'Hifadhi ambayo AI inaweza kutumia';

  @override
  String setUsed(Object size) {
    return '$size zinatumiwa na vipakuliwa';
  }

  @override
  String get setYourMusic => 'Muziki wako';

  @override
  String get setImport => 'Ongeza muziki kutoka kwenye kifaa hiki';

  @override
  String get setImportSub => 'Chagua folda au faili moja moja';

  @override
  String get setCleanup => 'Safisha faili zinazokosekana';

  @override
  String get setCleanupSub => 'Ondoa nyimbo ambazo faili yake haipo tena';

  @override
  String setCleanupDone(int count) {
    return 'Faili $count zilizokosekana zimeondolewa.';
  }

  @override
  String get setExport => 'Tuma ladha yangu kwa kifaa kingine';

  @override
  String get setExportSub =>
      'Huhifadhi faili yenye vipendwa vyako, uchezaji na kila kitu AI ilichojifunza';

  @override
  String get setImportTaste => 'Pakia ladha kutoka kifaa kingine';

  @override
  String get setImportTasteSub =>
      'Chagua faili ya ladha iliyohifadhiwa na uiunganishe — ni salama kurudia';

  @override
  String get setAbout => 'Kuhusu';

  @override
  String get setAboutBody =>
      'Muziki kutoka YouTube na faili zako mwenyewe. AI inafanya kazi kabisa kwenye kifaa hiki — hakuna kinachotoka.';

  @override
  String get setSource => 'Msimbo chanzo';

  @override
  String get importTitle => 'Ongeza muziki';

  @override
  String get importPickFolder => 'Chagua folda';

  @override
  String get importPickFiles => 'Chagua faili';

  @override
  String importScanning(Object file) {
    return 'Inakagua $file';
  }

  @override
  String importAdded(int count) {
    return '$count zimeongezwa';
  }

  @override
  String get importDenied => 'Ruhusa imekataliwa — haiwezi kusoma muziki wako.';

  @override
  String get importWatched => 'Folda inazozifuatilia';

  @override
  String get importIosHint =>
      'Fungua programu ya Files, nenda kwenye On My iPhone → TuneBox, na weka muziki humo.';

  @override
  String get playerQueue => 'Foleni';

  @override
  String get playerUpNext => 'Inayofuata';

  @override
  String get playerLyrics => 'Maneno';

  @override
  String get playerNoLyrics => 'Hakuna maneno ya wimbo huu.';

  @override
  String get playerRepeat => 'Rudia';

  @override
  String get playerShuffle => 'Changanya';

  @override
  String errorPlayback(Object title) {
    return 'Imeshindwa kucheza \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Inaruka \"$title\" — mtiririko haukufunguka.';
  }

  @override
  String get undo => 'Tendua';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Sasa hivi: $tags, ikiongozwa na $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Sasa hivi: $tags.';
  }

  @override
  String get setColour => 'Rangi';

  @override
  String get setColourSub => 'Programu nzima inafuata hii';

  @override
  String get setCoverArt => 'Jalada la wimbo';

  @override
  String get setMyColour => 'Rangi yangu';

  @override
  String get setCoverArtSub =>
      'Kila wimbo hubadilisha rangi ya programu kutoka kwenye jalada lake.';

  @override
  String get setMyColourSub => 'Rangi moja, kila mahali, wakati wote.';

  @override
  String get setPickColour => 'Chagua rangi yoyote';

  @override
  String get setWifiOnlyTitle => 'Pakua kwenye Wi-Fi pekee';

  @override
  String get setDownloadLikes => 'Pakua kila ninachopenda';

  @override
  String get setDownloadLikesSub => 'Kitufe cha moyo pia huhifadhi faili';

  @override
  String get setAiInstall => 'Ruhusu AI iweke muziki inaouchagua';

  @override
  String get setSkipSilenceSub =>
      'Android pekee. Inaweza kukata utangulizi tulivu, kufifia na sehemu laini — iache imezimwa muziki ukikatika';

  @override
  String get setStorageUsed => 'Hifadhi inayotumiwa na vipakuliwa';

  @override
  String get setLibrary => 'Maktaba';

  @override
  String get setUpdates => 'Masasisho';

  @override
  String get setAutoUpdate => 'Angalia masasisho yenyewe';

  @override
  String get setAutoUpdateSub =>
      'Kila baada ya saa chache, kimya kimya, na hupakua kwenye Wi-Fi. Kusakinisha bado kunakuuliza.';

  @override
  String setUpdateReady(Object version) {
    return 'Sasisho la $version liko tayari';
  }

  @override
  String get setUpdateReadySub => 'Imepakuliwa — gusa kusakinisha';

  @override
  String get setUpdateAvailableSub =>
      'Ipate kutoka ukurasa wa matoleo — gusa kunakili kiungo';

  @override
  String get setLinkCopied => 'Kiungo kimenakiliwa';

  @override
  String get setCheckNow => 'Angalia sasa';

  @override
  String get setUpToDate => 'TuneBox imesasishwa';

  @override
  String get setChecking => 'Inatafuta toleo jipya zaidi…';
}
