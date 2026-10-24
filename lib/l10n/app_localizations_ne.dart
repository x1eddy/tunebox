// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class LNe extends L {
  LNe([String locale = 'ne']) : super(locale);

  @override
  String get navHome => 'गृहपृष्ठ';

  @override
  String get navExplore => 'अन्वेषण';

  @override
  String get navLibrary => 'लाइब्रेरी';

  @override
  String get navTaste => 'तपाईंको रुचि';

  @override
  String get actionDone => 'सम्पन्न';

  @override
  String get actionCancel => 'रद्द गर्नुहोस्';

  @override
  String get actionCreate => 'बनाउनुहोस्';

  @override
  String get actionPlay => 'बजाउनुहोस्';

  @override
  String get actionShuffle => 'सफल';

  @override
  String get actionPlayAll => 'सबै बजाउनुहोस्';

  @override
  String get actionAdd => 'थप्नुहोस्';

  @override
  String get actionRemove => 'हटाउनुहोस्';

  @override
  String get actionName => 'नाम';

  @override
  String get greetingNight => 'अझै जागै हुनुहुन्छ?';

  @override
  String get greetingMorning => 'शुभ प्रभात';

  @override
  String get greetingAfternoon => 'शुभ दिउँसो';

  @override
  String get greetingEvening => 'शुभ साँझ';

  @override
  String get homeBuilding => 'AI ले तपाईंका र्‍याकहरू तयार गर्दैछ…';

  @override
  String get homeOffline => 'अफलाइन — यन्त्रमा भएका कुरा देखाइँदैछ';

  @override
  String get homeNothingYet => 'अहिलेसम्म देखाउन केही छैन';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count र्‍याक, भर्खरै अपडेट गरिएको',
      one: '१ र्‍याक, भर्खरै अपडेट गरिएको',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'र्‍याकहरू फेरि बनाउनुहोस्';

  @override
  String get homeAddMusic => 'यो यन्त्रबाट सङ्गीत थप्नुहोस्';

  @override
  String get homeQuickPicks => 'छिटो छनोट';

  @override
  String get homeQuickPicksSub => 'सुनिरहेको ठाउँमै सिधै फर्कनुहोस्';

  @override
  String get homeEmptyTitle => 'तपाईंको लाइब्रेरी खाली छ';

  @override
  String get homeEmptyBody =>
      'केही खोज्नुहोस्, वा यो यन्त्रमा पहिल्यै रहेको सङ्गीत थप्नुहोस्। पहिलो बजाइदेखि नै AI सिक्न थाल्छ।';

  @override
  String get homeAddMyMusic => 'मेरो सङ्गीत थप्नुहोस्';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube सम्म पुग्न सकिएन: $error';
  }

  @override
  String get moodFocus => 'फोकस';

  @override
  String get moodWorkout => 'व्यायाम';

  @override
  String get moodChill => 'चिल';

  @override
  String get moodCommute => 'यात्रा';

  @override
  String get moodParty => 'पार्टी';

  @override
  String moodBuilding(Object mood) {
    return '$mood मिक्स बनाइँदैछ…';
  }

  @override
  String moodFailed(Object error) {
    return 'सफल भएन: $error';
  }

  @override
  String get shelfRepeat => 'बारम्बार';

  @override
  String get shelfRepeatSub => 'तपाईंका पछिल्ला दुई हप्ता';

  @override
  String get shelfForgotten => 'तपाईंले मन पराएका बिर्सिएका हिटहरू';

  @override
  String get shelfForgottenSub =>
      'कुनै बेला मन पर्‍यो, केही समयदेखि छोइएको छैन';

  @override
  String get shelfNew => 'नयाँ';

  @override
  String get shelfNewSub =>
      'AI ले तपाईंका लागि हुन् भनी सोचेका नयाँ ट्र्याकहरू';

  @override
  String shelfBecause(Object artist) {
    return 'तपाईंले $artist बजाउनुभएकाले';
  }

  @override
  String get shelfBecauseSub => 'तपाईंको रुचिकै कुनाबाट';

  @override
  String get shelfDeep => 'विरलै छोइएका';

  @override
  String get shelfDeepSub => 'लाइब्रेरीमा छन्, तर विरलै बजाइएका';

  @override
  String get shelfMix => 'तपाईंको मिक्स';

  @override
  String get shelfMixSub => 'एप खोल्दा हरेक पटक नयाँ बनाइन्छ';

  @override
  String get shelfAdded => 'भर्खरै थपिएका';

  @override
  String get shelfAddedSub => 'डाउनलोड र आयात गरिएका फाइलहरू';

  @override
  String get shelfStarter => 'यहाँबाट सुरु गर्नुहोस्';

  @override
  String get shelfStarterSub => 'केही बजाउनुहोस्, AI तुरुन्तै सिक्न थाल्छ';

  @override
  String reasonPlays(int count) {
    return '$count पटक बजाइयो';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'मन पर्‍यो, पछिल्लो पटक $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count पटक बजाइयो, पछिल्लो $when';
  }

  @override
  String get reasonTopArtist => 'तपाईंले सबैभन्दा धेरै सुन्ने कलाकारमध्ये एक';

  @override
  String reasonMore(Object artist) {
    return 'थप $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'तपाईं बारम्बार $artist कहाँ फर्किनुहुन्छ';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'तपाईंको मनपर्ने खालको $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'हालसालै $tag धेरै';
  }

  @override
  String get reasonOutThisYear => 'यही वर्ष रिलिज भएको';

  @override
  String get reasonReleasedRecently => 'भर्खरै रिलिज भएको';

  @override
  String get reasonClose => 'तपाईंले सुनिरहेकासँग नजिक';

  @override
  String reasonNear(Object artist) {
    return '$artist नजिकको';
  }

  @override
  String get reasonNeverPlayed => 'कहिल्यै बजाइएको छैन';

  @override
  String get reasonPlayedOnce => 'एक पटक बजाइएको';

  @override
  String get reasonPopular => 'अहिले लोकप्रिय';

  @override
  String whenYearsAgo(int count) {
    return '$count वर्ष अगाडि';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count महिना अगाडि';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count दिन अगाडि';
  }

  @override
  String get searchHint => 'गीत, कलाकार, एल्बम';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count नतिजा',
      one: '१ नतिजा',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'हालसालैका खोजहरू';

  @override
  String get searchEmptyTitle => 'केही भेटिएन';

  @override
  String get searchEmptyBody =>
      'अर्को हिज्जे प्रयास गर्नुहोस्, वा कलाकारको नाम मात्र लेख्नुहोस्।';

  @override
  String get searchStartTitle => 'बजाउन केही खोज्नुहोस्';

  @override
  String get searchStartBody =>
      'YouTube Music मा खोज्नुहोस् — गीत मात्र आउँछन्, अरू कुराका भिडियो कहिल्यै आउँदैनन्।';

  @override
  String get libPlaylists => 'प्लेलिस्टहरू';

  @override
  String get libSongs => 'गीतहरू';

  @override
  String get libArtists => 'कलाकारहरू';

  @override
  String get libLiked => 'मन परेका';

  @override
  String get libDownloads => 'डाउनलोडहरू';

  @override
  String get libImported => 'आयात गरिएका';

  @override
  String get libLikedSongs => 'मन परेका गीतहरू';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count गीत',
      one: '१ गीत',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count अफलाइन';
  }

  @override
  String get libMyFiles => 'मेरा आफ्नै फाइलहरू';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count फाइल',
      one: '१ फाइल',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'नयाँ प्लेलिस्ट';

  @override
  String get libMakeOne => 'एउटा बनाउनुहोस्';

  @override
  String get libSortRecent => 'भर्खरै थपिएका';

  @override
  String get libSortTitle => 'शीर्षक';

  @override
  String get libSortArtist => 'कलाकार';

  @override
  String get libSortPlays => 'सबैभन्दा धेरै बजाइएका';

  @override
  String get sheetNotForMe => 'मेरो लागि होइन';

  @override
  String get sheetNotForMeSub => 'यो फेरि कहिल्यै सिफारिस नगर्नुहोस्';

  @override
  String get sheetBlocked => 'रोकिएको — फेरि अनुमति दिन ट्याप गर्नुहोस्';

  @override
  String get sheetBlockedSub => 'यो फेरि सिफारिसमा देखिन सक्छ';

  @override
  String get sheetPlayNext => 'अर्को बजाउनुहोस्';

  @override
  String get sheetAddToPlaylist => 'प्लेलिस्टमा थप्नुहोस्';

  @override
  String get sheetDownloaded => 'डाउनलोड गरियो';

  @override
  String get sheetRemoveFile => 'फाइल हटाउन ट्याप गर्नुहोस्';

  @override
  String get sheetDownload => 'डाउनलोड';

  @override
  String get sheetKeepOffline => 'अफलाइनका लागि राख्नुहोस्';

  @override
  String get sheetRadio => 'रेडियो सुरु गर्नुहोस्';

  @override
  String get sheetRadioSub => 'यो गीतको वरिपरि बनाइएको क्यू';

  @override
  String get sheetQueue => 'क्यू';

  @override
  String get sheetSleepTimer => 'स्लिप टाइमर';

  @override
  String get sheetSleepOff => 'बन्द';

  @override
  String sheetSleepMinutes(int count) {
    return '$count मिनेट';
  }

  @override
  String get sheetSleepEndOfTrack => 'यो गीतको अन्त्य';

  @override
  String sheetSleepSet(int count) {
    return 'सङ्गीत $count मिनेटमा रोकिन्छ';
  }

  @override
  String get tasteTitle => 'तपाईंको रुचि';

  @override
  String get tasteRetrain => 'फेरि तालिम दिनुहोस्';

  @override
  String get tasteRetraining => 'तपाईंको इतिहासमा फेरि तालिम हुँदैछ…';

  @override
  String get tasteRetrained => 'AI ले आफ्नो मोडेल फेरि बनायो।';

  @override
  String tasteConfidence(int percent) {
    return 'आत्मविश्वास $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays पटक बजाइयो · $skips स्किप · $likes मन पर्‍यो';
  }

  @override
  String get tasteEmptySummary => 'केही गीत बजाउनुहोस्, यो भरिँदै जान्छ।';

  @override
  String get tasteKeepLearning => 'मैले सुन्दै गर्दा सिकिरहनुहोस्';

  @override
  String get tasteKeepLearningSub => 'हालको प्रोफाइल रोक्न बन्द गर्नुहोस्';

  @override
  String get tasteDownloadsTitle => 'AI ले सम्हाल्ने डाउनलोडहरू';

  @override
  String get tasteDownloadsSub => 'तपाईंले नभन्दै सङ्गीत यन्त्रमा आइपुग्छ';

  @override
  String get tasteDownloadLikes => 'मलाई मन पर्ने सबै डाउनलोड गर्नुहोस्';

  @override
  String get tasteDownloadLikesSub =>
      'मुटुमा ट्याप गर्नुहोस्, फाइल अफलाइनका लागि सेभ हुन्छ';

  @override
  String get tasteAiInstall => 'AI ले छानेको सङ्गीत इन्स्टल गर्न दिनुहोस्';

  @override
  String get tasteAiInstallSub => 'यसले आत्मविश्वास भएका ट्र्याकहरू ल्याउँछ';

  @override
  String get tasteWhatItThinks => 'तपाईंलाई के मन पर्छ भनी यसले सोच्छ';

  @override
  String get tasteWhatItThinksSub =>
      'बजाइ, स्किप, मन पराइ र दोहोरिएकाबाट सिकिएको';

  @override
  String get tasteArtists => 'यसले भर पर्ने कलाकारहरू';

  @override
  String get tasteWhenYouListen => 'तपाईं कहिले सुन्नुहुन्छ';

  @override
  String get tasteWhenYouListenSub =>
      'प्रति घण्टा बजाइ — हालको घण्टालाई बढी महत्त्व दिइन्छ';

  @override
  String get tasteDecades => 'दशकहरू';

  @override
  String get tasteTune => 'सिफारिसहरू मिलाउनुहोस्';

  @override
  String get tasteTuneSub => 'अर्को गृहपृष्ठ रिफ्रेसमा लागू हुन्छ';

  @override
  String get tasteDiscovery => 'नयाँ खोज';

  @override
  String get tasteDiscoverySub => 'परिचित ↔ कहिल्यै नसुनिएका';

  @override
  String get tasteEnergy => 'ऊर्जा';

  @override
  String get tasteEnergySub => 'शान्त ↔ चर्को';

  @override
  String get tasteRecency => 'नवीनता';

  @override
  String get tasteRecencySub => 'कालजयी ↔ एकदम नयाँ';

  @override
  String get tasteNostalgia => 'नोस्टाल्जिया';

  @override
  String get tasteNostalgiaSub =>
      'पुरानो मनपर्ने गीत कति पुरानो भएपछि बिर्सिएको मानिने';

  @override
  String get tasteSignals => 'यसले प्रयोग गर्न सक्ने सङ्केतहरू';

  @override
  String get tasteSignalsSub => 'सबै कुरा यही यन्त्रमा रहन्छ';

  @override
  String get tasteUseHistory => 'मैले बजाएका';

  @override
  String get tasteUseSkips => 'मैले स्किप गरेका';

  @override
  String get tasteUseTime => 'दिनको समय';

  @override
  String get tasteUseYouTube => 'YouTube का सुझावहरू';

  @override
  String get tasteAlwaysMore => 'सधैं बढी';

  @override
  String get tasteNeverAgain => 'फेरि कहिल्यै होइन';

  @override
  String get tasteAddArtist => 'कलाकार थप्नुहोस्';

  @override
  String get tasteMoreOfPrompt => 'सधैं बढी…';

  @override
  String get tasteNeverAgainPrompt => 'फेरि कहिल्यै होइन…';

  @override
  String get tasteReset => 'सिकेको कुरा रिसेट गर्नुहोस्';

  @override
  String get tasteResetSub =>
      'तपाईंको सङ्गीत रहन्छ; प्रोफाइल शून्यबाट सुरु हुन्छ';

  @override
  String get trainCard => 'रेटिङ दिएर तालिम दिनुहोस्';

  @override
  String get trainCardSub =>
      'वास्तविक गीतहरू स्वाइप गर्नुहोस्। यस्तै धेरै चाहिए दायाँ, फेरि नचाहिए बायाँ। यहाँ दुई मिनेट एक हप्ता सुन्नुभन्दा राम्रो हो।';

  @override
  String get trainStart => 'तालिम राउन्ड सुरु गर्नुहोस्';

  @override
  String get trainTitle => 'तालिम राउन्ड';

  @override
  String get trainQuestion => 'के यो तपाईंको गृहपृष्ठमा चाहनुहुन्छ?';

  @override
  String get trainMoreLikeThis => 'यस्तै धेरै';

  @override
  String get trainNeverAgain => 'फेरि कहिल्यै होइन';

  @override
  String get trainDone => 'राउन्ड सकियो';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked राखियो · $blocked रोकियो। आत्मविश्वास $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'तपाईंको रुचिमा फर्कनुहोस्';

  @override
  String get trainNothingTitle => 'रेटिङ दिन केही छैन';

  @override
  String get trainNothingBody =>
      'केही सङ्गीत थप्नुहोस् वा पहिले AI लाई उम्मेदवारहरू ल्याउन दिनुहोस्, अनि फर्कनुहोस्।';

  @override
  String get trainLeaveTitle => 'तालिम राउन्ड छोड्ने?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'अहिले छोड्नुभयो भने AI ले यस राउन्डका सबै कुरा खारेज गर्छ — तपाईंले भर्खर रेटिङ दिनुभएका सबै $count गीत।',
      one:
          'अहिले छोड्नुभयो भने AI ले यस राउन्डका सबै कुरा खारेज गर्छ — तपाईंले भर्खर रेटिङ दिनुभएको १ गीत।',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'तालिम जारी राख्नुहोस्';

  @override
  String get trainDiscard => 'खारेज गरी छोड्नुहोस्';

  @override
  String get setTitle => 'सेटिङ';

  @override
  String get setAppearance => 'स्वरूप';

  @override
  String get setTheme => 'थिम';

  @override
  String get setThemeSystem => 'सिस्टम अनुसार';

  @override
  String get setThemeLight => 'लाइट';

  @override
  String get setThemeDark => 'डार्क';

  @override
  String get setPureBlack => 'शुद्ध कालो';

  @override
  String get setPureBlackSub => 'OLED स्क्रिनमा ऊर्जा बचत गर्छ';

  @override
  String get setAccent => 'एक्सेन्ट रङ';

  @override
  String get setAccentArtwork => 'कभर आर्टबाट';

  @override
  String get setAccentFixed => 'मैले छानेको एउटा रङ';

  @override
  String get setLanguage => 'भाषा';

  @override
  String get setLanguageSystem => 'सिस्टम अनुसार';

  @override
  String get setAccessibility => 'पहुँचयोग्यता';

  @override
  String get setTextSize => 'अक्षरको आकार';

  @override
  String get setTextSizeSub => 'तपाईंको सिस्टम सेटिङको माथि';

  @override
  String get setReduceMotion => 'गति घटाउनुहोस्';

  @override
  String get setReduceMotionSub =>
      'बारहरू, भिजुअलाइजर, उफ्रिने स्क्रोल, स्प्रिङ ट्यापहरू र पेज ट्रान्जिसनहरू रोक्छ';

  @override
  String get setHighContrast => 'उच्च कन्ट्रास्ट';

  @override
  String get setHighContrastSub => 'बलियो छुट्याइ र देखिने किनाराहरू';

  @override
  String get setBoldText => 'मोटो अक्षर';

  @override
  String get setPlayback => 'प्लेब्याक';

  @override
  String get setAutoRadio => 'सङ्गीत चलिरहन दिनुहोस्';

  @override
  String get setAutoRadioSub => 'क्यू सकिएपछि, अन्तिम गीतमा आधारित रेडियो चल्छ';

  @override
  String get setSmartShuffle => 'स्मार्ट सफल';

  @override
  String get setSmartShuffleSub => 'अनियमित होइन, रुचि अनुसार सफल गर्छ';

  @override
  String get setResume => 'छोडेको ठाउँबाट सुरु गर्नुहोस्';

  @override
  String get setResumeSub => 'एप खुल्दा क्यू पज गरिएको अवस्थामा फर्काउँछ';

  @override
  String get setDataSaver => 'Wi-Fi नभएमा डाटा सेभर';

  @override
  String get setDataSaverSub =>
      'मोबाइल डाटामा स्ट्रिम र डाउनलोडलाई 128 kbps मा सीमित गर्छ';

  @override
  String get setHaptics => 'हेप्टिक प्रतिक्रिया';

  @override
  String get setShowReasons => 'किन सिफारिस गरियो भनेर देखाउनुहोस्';

  @override
  String get setSkipSilence => 'मौनता छोड्नुहोस्';

  @override
  String get setQuality => 'अडियो गुणस्तर';

  @override
  String get setQualityLow => 'कम · 64 kbps';

  @override
  String get setQualityNormal => 'सामान्य · 128 kbps';

  @override
  String get setQualityHigh => 'उच्च · 192 kbps';

  @override
  String get setQualityBest => 'उपलब्ध सर्वोत्तम';

  @override
  String get setStorage => 'डाउनलोड र भण्डारण';

  @override
  String get setWifiOnly => 'Wi-Fi मा मात्र डाउनलोड गर्नुहोस्';

  @override
  String get setDailyLimit => 'AI का लागि दैनिक सीमा';

  @override
  String setDailyLimitSub(int count) {
    return 'दिनमा $count गीत';
  }

  @override
  String get setBudget => 'AI ले प्रयोग गर्न सक्ने भण्डारण';

  @override
  String setUsed(Object size) {
    return 'डाउनलोडले $size प्रयोग गरेको छ';
  }

  @override
  String get setYourMusic => 'तपाईंको सङ्गीत';

  @override
  String get setImport => 'यो यन्त्रबाट सङ्गीत थप्नुहोस्';

  @override
  String get setImportSub => 'फोल्डर वा एकल फाइलहरू छान्नुहोस्';

  @override
  String get setCleanup => 'हराएका फाइलहरू सफा गर्नुहोस्';

  @override
  String get setCleanupSub => 'फाइल हराएका गीतहरू हटाउनुहोस्';

  @override
  String setCleanupDone(int count) {
    return '$count हराएका फाइल हटाइयो।';
  }

  @override
  String get setExport => 'मेरो रुचि अर्को यन्त्रमा पठाउनुहोस्';

  @override
  String get setExportSub =>
      'तपाईंका मन पराइ, बजाइ र AI ले सिकेका सबै कुरासहित फाइल सेभ गर्छ';

  @override
  String get setImportTaste => 'अर्को यन्त्रबाट रुचि लोड गर्नुहोस्';

  @override
  String get setImportTasteSub =>
      'सेभ गरिएको रुचि फाइल छानेर मिलाउनुहोस् — दोहोर्‍याउन सुरक्षित छ';

  @override
  String get setAbout => 'बारेमा';

  @override
  String get setAboutBody =>
      'YouTube र तपाईंका आफ्नै फाइलबाट सङ्गीत। AI पूर्ण रूपमा यही यन्त्रमा चल्छ — केही बाहिर जाँदैन।';

  @override
  String get setSource => 'सोर्स कोड';

  @override
  String get importTitle => 'सङ्गीत थप्नुहोस्';

  @override
  String get importPickFolder => 'फोल्डर छान्नुहोस्';

  @override
  String get importPickFiles => 'फाइलहरू छान्नुहोस्';

  @override
  String importScanning(Object file) {
    return '$file स्क्यान गरिँदैछ';
  }

  @override
  String importAdded(int count) {
    return '$count थपियो';
  }

  @override
  String get importDenied => 'अनुमति अस्वीकृत — तपाईंको सङ्गीत पढ्न सकिँदैन।';

  @override
  String get importWatched => 'निगरानी गरिने फोल्डरहरू';

  @override
  String get importIosHint =>
      'Files एप खोल्नुहोस्, On My iPhone → TuneBox मा जानुहोस्, र त्यहाँ सङ्गीत राख्नुहोस्।';

  @override
  String get playerQueue => 'क्यू';

  @override
  String get playerUpNext => 'अर्को';

  @override
  String get playerLyrics => 'गीतका बोल';

  @override
  String get playerNoLyrics => 'यसको बोल उपलब्ध छैन।';

  @override
  String get playerRepeat => 'दोहोर्‍याउनुहोस्';

  @override
  String get playerShuffle => 'सफल';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" बजाउन सकिएन';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" छोडिँदैछ — स्ट्रिम खुलेन।';
  }

  @override
  String get undo => 'पूर्ववत्';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'अहिले: $tags, $artist को नेतृत्वमा।';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'अहिले: $tags।';
  }

  @override
  String get setColour => 'रङ';

  @override
  String get setColourSub => 'सिङ्गो एपले यही पछ्याउँछ';

  @override
  String get setCoverArt => 'कभर आर्ट';

  @override
  String get setMyColour => 'मेरो रङ';

  @override
  String get setCoverArtSub => 'हरेक गीतले आफ्नो कभरबाट एपको रङ फेर्छ।';

  @override
  String get setMyColourSub => 'एउटै रङ, जताततै, सधैं।';

  @override
  String get setPickColour => 'कुनै पनि रङ छान्नुहोस्';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi मा मात्र डाउनलोड गर्नुहोस्';

  @override
  String get setDownloadLikes => 'मलाई मन पर्ने सबै डाउनलोड गर्नुहोस्';

  @override
  String get setDownloadLikesSub => 'मुटुको बटनले फाइल पनि सेभ गर्छ';

  @override
  String get setAiInstall => 'AI ले छानेको सङ्गीत इन्स्टल गर्न दिनुहोस्';

  @override
  String get setSkipSilenceSub =>
      'Android मात्र। शान्त सुरुवात, फेड र मधुरा भाग काट्न सक्छ — सङ्गीत छुट्यो भने बन्द राख्नुहोस्';

  @override
  String get setStorageUsed => 'डाउनलोडले प्रयोग गरेको भण्डारण';

  @override
  String get setLibrary => 'लाइब्रेरी';

  @override
  String get setUpdates => 'अपडेटहरू';

  @override
  String get setAutoUpdate => 'आफैँ अपडेट जाँच गर्नुहोस्';

  @override
  String get setAutoUpdateSub =>
      'केही घण्टामा चुपचाप जाँच गर्छ र Wi-Fi मा डाउनलोड गर्छ। इन्स्टल गर्न भने अझै सोध्छ।';

  @override
  String setUpdateReady(Object version) {
    return '$version मा अपडेट तयार छ';
  }

  @override
  String get setUpdateReadySub => 'डाउनलोड भयो — इन्स्टल गर्न ट्याप गर्नुहोस्';

  @override
  String get setUpdateAvailableSub =>
      'रिलिज पेजबाट लिनुहोस् — लिङ्क कपी गर्न ट्याप गर्नुहोस्';

  @override
  String get setLinkCopied => 'लिङ्क कपी गरियो';

  @override
  String get setCheckNow => 'अहिले जाँच गर्नुहोस्';

  @override
  String get setUpToDate => 'TuneBox अद्यावधिक छ';

  @override
  String get setChecking => 'नयाँ संस्करण खोजिँदैछ…';

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
}
