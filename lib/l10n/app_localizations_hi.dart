// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class LHi extends L {
  LHi([String locale = 'hi']) : super(locale);

  @override
  String get navHome => 'होम';

  @override
  String get navExplore => 'एक्सप्लोर';

  @override
  String get navLibrary => 'लाइब्रेरी';

  @override
  String get navTaste => 'आपकी पसंद';

  @override
  String get actionDone => 'हो गया';

  @override
  String get actionCancel => 'रद्द करें';

  @override
  String get actionCreate => 'बनाएं';

  @override
  String get actionPlay => 'चलाएं';

  @override
  String get actionShuffle => 'शफ़ल';

  @override
  String get actionPlayAll => 'सब चलाएं';

  @override
  String get actionAdd => 'जोड़ें';

  @override
  String get actionRemove => 'हटाएं';

  @override
  String get actionName => 'नाम';

  @override
  String get greetingNight => 'अभी तक जाग रहे हैं?';

  @override
  String get greetingMorning => 'सुप्रभात';

  @override
  String get greetingAfternoon => 'नमस्कार';

  @override
  String get greetingEvening => 'शुभ संध्या';

  @override
  String get homeBuilding => 'AI आपकी शेल्फ़ें बना रहा है…';

  @override
  String get homeOffline => 'ऑफ़लाइन — डिवाइस पर जो है वही दिखा रहे हैं';

  @override
  String get homeNothingYet => 'अभी दिखाने के लिए कुछ नहीं';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शेल्फ़ें, अभी-अभी ताज़ा की गईं',
      one: '1 शेल्फ़, अभी-अभी ताज़ा की गई',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'शेल्फ़ें दोबारा बनाएं';

  @override
  String get homeAddMusic => 'इस डिवाइस से संगीत जोड़ें';

  @override
  String get homeQuickPicks => 'झटपट चुनाव';

  @override
  String get homeQuickPicksSub => 'जहां थे वहीं सीधे लौटें';

  @override
  String get homeEmptyTitle => 'आपकी लाइब्रेरी खाली है';

  @override
  String get homeEmptyBody =>
      'कुछ खोजें, या इस डिवाइस पर पहले से मौजूद संगीत जोड़ें। AI आपके पहले ही प्ले से सीखना शुरू कर देता है।';

  @override
  String get homeAddMyMusic => 'मेरा संगीत जोड़ें';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube तक नहीं पहुंच सके: $error';
  }

  @override
  String get moodFocus => 'फ़ोकस';

  @override
  String get moodWorkout => 'वर्कआउट';

  @override
  String get moodChill => 'चिल';

  @override
  String get moodCommute => 'सफ़र';

  @override
  String get moodParty => 'पार्टी';

  @override
  String moodBuilding(Object mood) {
    return '$mood मिक्स बना रहे हैं…';
  }

  @override
  String moodFailed(Object error) {
    return 'बात नहीं बनी: $error';
  }

  @override
  String get shelfRepeat => 'बार-बार';

  @override
  String get shelfRepeatSub => 'आपके पिछले दो हफ़्ते';

  @override
  String get shelfForgotten => 'आपके पसंदीदा पुराने भूले हुए हिट';

  @override
  String get shelfForgottenSub => 'कभी पसंद थे, कुछ समय से सुने नहीं';

  @override
  String get shelfNew => 'नया';

  @override
  String get shelfNewSub => 'AI को लगता है ये ताज़ा ट्रैक आपके लिए हैं';

  @override
  String shelfBecause(Object artist) {
    return 'क्योंकि आपने $artist सुना';
  }

  @override
  String get shelfBecauseSub => 'आपकी पसंद का वही कोना';

  @override
  String get shelfDeep => 'शायद ही छुए';

  @override
  String get shelfDeepSub => 'आपकी लाइब्रेरी में, शायद ही कभी चलाए';

  @override
  String get shelfMix => 'आपका मिक्स';

  @override
  String get shelfMixSub => 'ऐप खोलने पर हर बार दोबारा बनता है';

  @override
  String get shelfAdded => 'हाल ही में जोड़े गए';

  @override
  String get shelfAddedSub => 'डाउनलोड और आपकी इंपोर्ट की हुई फ़ाइलें';

  @override
  String get shelfStarter => 'यहां से शुरू करें';

  @override
  String get shelfStarterSub => 'कुछ चलाएं और AI तुरंत सीखना शुरू कर देता है';

  @override
  String reasonPlays(int count) {
    return '$count प्ले';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'पसंद किया, आख़िरी बार चलाया $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count प्ले, आख़िरी बार $when';
  }

  @override
  String get reasonTopArtist => 'आपके सबसे ज़्यादा सुने गए कलाकारों में से एक';

  @override
  String reasonMore(Object artist) {
    return '$artist और';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'आप बार-बार $artist के पास लौटते हैं';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'आपकी पसंद का $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'हाल ही में $tag ज़्यादा';
  }

  @override
  String get reasonOutThisYear => 'इसी साल आया';

  @override
  String get reasonReleasedRecently => 'हाल ही में रिलीज़ हुआ';

  @override
  String get reasonClose => 'जो आप सुन रहे थे उसके क़रीब';

  @override
  String reasonNear(Object artist) {
    return '$artist के आसपास';
  }

  @override
  String get reasonNeverPlayed => 'कभी नहीं चलाया';

  @override
  String get reasonPlayedOnce => 'एक बार चलाया';

  @override
  String get reasonPopular => 'अभी लोकप्रिय';

  @override
  String whenYearsAgo(int count) {
    return '$count साल पहले';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count महीने पहले';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count दिन पहले';
  }

  @override
  String get searchHint => 'गाने, कलाकार, एल्बम';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count नतीजे',
      one: '1 नतीजा',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'हाल की खोजें';

  @override
  String get searchEmptyTitle => 'कुछ नहीं मिला';

  @override
  String get searchEmptyBody =>
      'कोई और वर्तनी आज़माएं, या सिर्फ़ कलाकार का नाम लिखें।';

  @override
  String get searchStartTitle => 'चलाने के लिए कुछ खोजें';

  @override
  String get searchStartBody =>
      'YouTube Music में खोजें — सिर्फ़ गाने आते हैं, दूसरी चीज़ों के वीडियो कभी नहीं।';

  @override
  String get libPlaylists => 'प्लेलिस्ट';

  @override
  String get libSongs => 'गाने';

  @override
  String get libArtists => 'कलाकार';

  @override
  String get libLiked => 'पसंदीदा';

  @override
  String get libDownloads => 'डाउनलोड';

  @override
  String get libImported => 'इंपोर्ट किए';

  @override
  String get libLikedSongs => 'पसंदीदा गाने';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count गाने',
      one: '1 गाना',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ऑफ़लाइन';
  }

  @override
  String get libMyFiles => 'मेरी अपनी फ़ाइलें';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count फ़ाइलें',
      one: '1 फ़ाइल',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'नई प्लेलिस्ट';

  @override
  String get libMakeOne => 'बनाएं';

  @override
  String get libSortRecent => 'हाल में जोड़े गए';

  @override
  String get libSortTitle => 'शीर्षक';

  @override
  String get libSortArtist => 'कलाकार';

  @override
  String get libSortPlays => 'सबसे ज़्यादा चलाए';

  @override
  String get sheetNotForMe => 'मेरे लिए नहीं';

  @override
  String get sheetNotForMeSub => 'यह दोबारा कभी सुझाएं नहीं';

  @override
  String get sheetBlocked =>
      'ब्लॉक किया हुआ — दोबारा अनुमति देने के लिए टैप करें';

  @override
  String get sheetBlockedSub => 'यह फिर से सुझावों में आ सकता है';

  @override
  String get sheetPlayNext => 'अगला चलाएं';

  @override
  String get sheetAddToPlaylist => 'प्लेलिस्ट में जोड़ें';

  @override
  String get sheetDownloaded => 'डाउनलोड हो गया';

  @override
  String get sheetRemoveFile => 'फ़ाइल हटाने के लिए टैप करें';

  @override
  String get sheetDownload => 'डाउनलोड';

  @override
  String get sheetKeepOffline => 'ऑफ़लाइन के लिए रखें';

  @override
  String get sheetRadio => 'रेडियो शुरू करें';

  @override
  String get sheetRadioSub => 'इस गाने के आधार पर बनी कतार';

  @override
  String get sheetQueue => 'कतार';

  @override
  String get sheetSleepTimer => 'स्लीप टाइमर';

  @override
  String get sheetSleepOff => 'बंद';

  @override
  String sheetSleepMinutes(int count) {
    return '$count मिनट';
  }

  @override
  String get sheetSleepEndOfTrack => 'इस गाने के अंत में';

  @override
  String sheetSleepSet(int count) {
    return '$count मिनट में संगीत बंद होगा';
  }

  @override
  String get tasteTitle => 'आपकी पसंद';

  @override
  String get tasteRetrain => 'दोबारा ट्रेन करें';

  @override
  String get tasteRetraining => 'आपके इतिहास पर दोबारा ट्रेन हो रहा है…';

  @override
  String get tasteRetrained => 'AI ने अपना मॉडल दोबारा बनाया।';

  @override
  String tasteConfidence(int percent) {
    return 'भरोसा $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays प्ले · $skips स्किप · $likes लाइक';
  }

  @override
  String get tasteEmptySummary => 'कुछ गाने चलाएं और यह भर जाएगा।';

  @override
  String get tasteKeepLearning => 'मेरे सुनते समय सीखते रहें';

  @override
  String get tasteKeepLearningSub =>
      'मौजूदा प्रोफ़ाइल को रोकने के लिए बंद करें';

  @override
  String get tasteDownloadsTitle => 'AI जो डाउनलोड संभालता है';

  @override
  String get tasteDownloadsSub => 'आपके कहे बिना संगीत डिवाइस पर आ जाता है';

  @override
  String get tasteDownloadLikes => 'मुझे जो पसंद आए सब डाउनलोड करें';

  @override
  String get tasteDownloadLikesSub =>
      'दिल दबाएं और फ़ाइल ऑफ़लाइन के लिए सेव हो जाती है';

  @override
  String get tasteAiInstall => 'AI को अपनी चुनी हुई संगीत इंस्टॉल करने दें';

  @override
  String get tasteAiInstallSub => 'जिन ट्रैक पर उसे भरोसा होगा वही लाएगा';

  @override
  String get tasteWhatItThinks => 'उसके हिसाब से आपको क्या पसंद है';

  @override
  String get tasteWhatItThinksSub => 'प्ले, स्किप, लाइक और दोहराव से सीखा हुआ';

  @override
  String get tasteArtists => 'जिन कलाकारों पर वह टिकता है';

  @override
  String get tasteWhenYouListen => 'आप कब सुनते हैं';

  @override
  String get tasteWhenYouListenSub =>
      'प्रति घंटा प्ले — मौजूदा घंटे को ज़्यादा अहमियत मिलती है';

  @override
  String get tasteDecades => 'दशक';

  @override
  String get tasteTune => 'सुझाव ट्यून करें';

  @override
  String get tasteTuneSub => 'अगले होम रिफ़्रेश पर लागू होगा';

  @override
  String get tasteDiscovery => 'खोज';

  @override
  String get tasteDiscoverySub => 'जाना-पहचाना ↔ जो कभी नहीं सुना';

  @override
  String get tasteEnergy => 'ऊर्जा';

  @override
  String get tasteEnergySub => 'शांत ↔ तेज़';

  @override
  String get tasteRecency => 'नयापन';

  @override
  String get tasteRecencySub => 'सदाबहार ↔ बिल्कुल नया';

  @override
  String get tasteNostalgia => 'पुरानी यादें';

  @override
  String get tasteNostalgiaSub =>
      'कितना पीछे का पुराना पसंदीदा भूला हुआ माना जाए';

  @override
  String get tasteSignals => 'वह कौन से संकेत इस्तेमाल कर सकता है';

  @override
  String get tasteSignalsSub => 'सब कुछ इसी डिवाइस पर रहता है';

  @override
  String get tasteUseHistory => 'मैंने क्या चलाया';

  @override
  String get tasteUseSkips => 'मैं क्या स्किप करता हूं';

  @override
  String get tasteUseTime => 'दिन का समय';

  @override
  String get tasteUseYouTube => 'YouTube के सुझाव';

  @override
  String get tasteAlwaysMore => 'हमेशा और ज़्यादा';

  @override
  String get tasteNeverAgain => 'दोबारा कभी नहीं';

  @override
  String get tasteAddArtist => 'कलाकार जोड़ें';

  @override
  String get tasteMoreOfPrompt => 'हमेशा और ज़्यादा…';

  @override
  String get tasteNeverAgainPrompt => 'दोबारा कभी नहीं…';

  @override
  String get tasteReset => 'जो सीखा उसे रीसेट करें';

  @override
  String get tasteResetSub => 'आपका संगीत रहेगा; प्रोफ़ाइल शून्य से शुरू होगी';

  @override
  String get trainCard => 'रेटिंग देकर ट्रेन करें';

  @override
  String get trainCardSub =>
      'असली गानों पर स्वाइप करें। ऐसे और के लिए दाएं, दोबारा कभी नहीं के लिए बाएं। यहां दो मिनट एक हफ़्ते सुनने से बेहतर हैं।';

  @override
  String get trainStart => 'ट्रेनिंग राउंड शुरू करें';

  @override
  String get trainTitle => 'ट्रेनिंग राउंड';

  @override
  String get trainQuestion => 'क्या आप इसे अपने होम पर चाहेंगे?';

  @override
  String get trainMoreLikeThis => 'ऐसे और';

  @override
  String get trainNeverAgain => 'दोबारा कभी नहीं';

  @override
  String get trainDone => 'राउंड पूरा हुआ';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked रखे · $blocked ब्लॉक किए। भरोसा $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'आपकी पसंद पर वापस';

  @override
  String get trainNothingTitle => 'रेट करने के लिए अभी कुछ नहीं';

  @override
  String get trainNothingBody =>
      'कुछ संगीत जोड़ें या पहले AI को उम्मीदवार लाने दें, फिर लौटें।';

  @override
  String get trainLeaveTitle => 'ट्रेनिंग राउंड छोड़ें?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'अभी छोड़ने पर AI इस राउंड का सब कुछ हटा देगा — आपने जो सभी $count गाने अभी रेट किए।',
      one:
          'अभी छोड़ने पर AI इस राउंड का सब कुछ हटा देगा — आपने जो 1 गाना अभी रेट किया।',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'ट्रेनिंग जारी रखें';

  @override
  String get trainDiscard => 'हटाएं और छोड़ें';

  @override
  String get setTitle => 'सेटिंग';

  @override
  String get setAppearance => 'रूप-रंग';

  @override
  String get setTheme => 'थीम';

  @override
  String get setThemeSystem => 'सिस्टम के अनुसार';

  @override
  String get setThemeLight => 'लाइट';

  @override
  String get setThemeDark => 'डार्क';

  @override
  String get setPureBlack => 'शुद्ध काला';

  @override
  String get setPureBlackSub => 'OLED स्क्रीन पर बिजली बचाता है';

  @override
  String get setAccent => 'एक्सेंट रंग';

  @override
  String get setAccentArtwork => 'कवर आर्ट से';

  @override
  String get setAccentFixed => 'मेरा चुना हुआ एक रंग';

  @override
  String get setLanguage => 'भाषा';

  @override
  String get setLanguageSystem => 'सिस्टम के अनुसार';

  @override
  String get setAccessibility => 'सुलभता';

  @override
  String get setTextSize => 'टेक्स्ट का आकार';

  @override
  String get setTextSizeSub => 'आपकी सिस्टम सेटिंग के ऊपर';

  @override
  String get setReduceMotion => 'मोशन कम करें';

  @override
  String get setReduceMotionSub =>
      'बार, विज़ुअलाइज़र, उछलने वाली स्क्रोलिंग, स्प्रिंग जैसे टैप और पेज ट्रांज़िशन बंद करता है';

  @override
  String get setHighContrast => 'हाई कॉन्ट्रास्ट';

  @override
  String get setHighContrastSub => 'ज़्यादा स्पष्ट अलगाव और दिखने वाली रूपरेखा';

  @override
  String get setBoldText => 'बोल्ड टेक्स्ट';

  @override
  String get setPlayback => 'प्लेबैक';

  @override
  String get setAutoRadio => 'संगीत चलता रहे';

  @override
  String get setAutoRadioSub =>
      'कतार खत्म होने पर आख़िरी गाने से बने रेडियो के साथ जारी रखें';

  @override
  String get setSmartShuffle => 'स्मार्ट शफ़ल';

  @override
  String get setSmartShuffleSub =>
      'बेतरतीब की जगह पसंद के हिसाब से शफ़ल करता है';

  @override
  String get setResume => 'जहां छोड़ा था वहीं से शुरू करें';

  @override
  String get setResumeSub => 'ऐप खुलने पर कतार वापस लाता है, रुकी हुई';

  @override
  String get setDataSaver => 'Wi-Fi न होने पर डेटा सेवर';

  @override
  String get setDataSaverSub =>
      'मोबाइल डेटा पर स्ट्रीम और डाउनलोड 128 kbps तक सीमित करता है';

  @override
  String get setHaptics => 'हैप्टिक फ़ीडबैक';

  @override
  String get setShowReasons => 'दिखाएं कि कुछ क्यों सुझाया गया';

  @override
  String get setSkipSilence => 'खामोशी छोड़ें';

  @override
  String get setQuality => 'ऑडियो गुणवत्ता';

  @override
  String get setQualityLow => 'कम · 64 kbps';

  @override
  String get setQualityNormal => 'सामान्य · 128 kbps';

  @override
  String get setQualityHigh => 'उच्च · 192 kbps';

  @override
  String get setQualityBest => 'उपलब्ध सर्वश्रेष्ठ';

  @override
  String get setStorage => 'डाउनलोड और स्टोरेज';

  @override
  String get setWifiOnly => 'सिर्फ़ Wi-Fi पर डाउनलोड करें';

  @override
  String get setDailyLimit => 'AI के लिए रोज़ की सीमा';

  @override
  String setDailyLimitSub(int count) {
    return 'रोज़ $count गाने';
  }

  @override
  String get setBudget => 'AI जितना स्टोरेज इस्तेमाल कर सकता है';

  @override
  String setUsed(Object size) {
    return 'डाउनलोड ने $size इस्तेमाल किया';
  }

  @override
  String get setYourMusic => 'आपका संगीत';

  @override
  String get setImport => 'इस डिवाइस से संगीत जोड़ें';

  @override
  String get setImportSub => 'फ़ोल्डर या अलग-अलग फ़ाइलें चुनें';

  @override
  String get setCleanup => 'गायब फ़ाइलें साफ़ करें';

  @override
  String get setCleanupSub => 'जिन गानों की फ़ाइल नहीं रही उन्हें हटाएं';

  @override
  String setCleanupDone(int count) {
    return '$count गायब फ़ाइलें हटाई गईं।';
  }

  @override
  String get setExport => 'मेरी पसंद दूसरे डिवाइस पर भेजें';

  @override
  String get setExportSub =>
      'आपके लाइक, प्ले और AI ने जो कुछ सीखा उसकी फ़ाइल सेव करता है';

  @override
  String get setImportTaste => 'दूसरे डिवाइस से पसंद लोड करें';

  @override
  String get setImportTasteSub =>
      'सेव की हुई पसंद की फ़ाइल चुनकर मर्ज करें — दोहराना सुरक्षित है';

  @override
  String get setAbout => 'बारे में';

  @override
  String get setAboutBody =>
      'YouTube और आपकी अपनी फ़ाइलों से संगीत। AI पूरी तरह इसी डिवाइस पर चलता है — कुछ भी बाहर नहीं जाता।';

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
  String get setSource => 'सोर्स कोड';

  @override
  String get importTitle => 'संगीत जोड़ें';

  @override
  String get importPickFolder => 'फ़ोल्डर चुनें';

  @override
  String get importPickFiles => 'फ़ाइलें चुनें';

  @override
  String importScanning(Object file) {
    return '$file स्कैन हो रही है';
  }

  @override
  String importAdded(int count) {
    return '$count जोड़े गए';
  }

  @override
  String get importDenied => 'अनुमति नहीं मिली — आपका संगीत नहीं पढ़ सकते।';

  @override
  String get importWatched => 'जिन फ़ोल्डरों पर वह नज़र रखता है';

  @override
  String get importIosHint =>
      'Files ऐप खोलें, On My iPhone → TuneBox पर जाएं, और वहां संगीत डालें।';

  @override
  String get playerQueue => 'कतार';

  @override
  String get playerUpNext => 'अगला';

  @override
  String get playerLyrics => 'बोल';

  @override
  String get playerNoLyrics => 'इसके बोल उपलब्ध नहीं हैं।';

  @override
  String get playerRepeat => 'दोहराएं';

  @override
  String get playerShuffle => 'शफ़ल';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" नहीं चला सके';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" छोड़ रहे हैं — स्ट्रीम नहीं खुली।';
  }

  @override
  String get undo => 'पूर्ववत करें';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'अभी: $tags, सबसे आगे $artist।';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'अभी: $tags।';
  }

  @override
  String get setColour => 'रंग';

  @override
  String get setColourSub => 'पूरा ऐप इसी को अपनाता है';

  @override
  String get setCoverArt => 'कवर आर्ट';

  @override
  String get setMyColour => 'मेरा रंग';

  @override
  String get setCoverArtSub => 'हर गाना अपने कवर से ऐप का रंग बदल देता है।';

  @override
  String get setMyColourSub => 'एक रंग, हर जगह, हमेशा।';

  @override
  String get setPickColour => 'कोई भी रंग चुनें';

  @override
  String get setWifiOnlyTitle => 'सिर्फ़ Wi-Fi पर डाउनलोड करें';

  @override
  String get setDownloadLikes => 'मुझे जो पसंद आए सब डाउनलोड करें';

  @override
  String get setDownloadLikesSub => 'दिल का बटन फ़ाइल भी सेव करता है';

  @override
  String get setAiInstall => 'AI को अपना चुना हुआ संगीत इंस्टॉल करने दें';

  @override
  String get setSkipSilenceSub =>
      'सिर्फ़ Android। शांत इंट्रो, फ़ेड और धीमे हिस्से कट सकते हैं — संगीत अटके तो बंद रखें';

  @override
  String get setStorageUsed => 'डाउनलोड से इस्तेमाल हुआ स्टोरेज';

  @override
  String get setLibrary => 'लाइब्रेरी';

  @override
  String get setUpdates => 'अपडेट';

  @override
  String get setAutoUpdate => 'अपने-आप अपडेट जांचें';

  @override
  String get setAutoUpdateSub =>
      'हर कुछ घंटे में, चुपचाप, और Wi-Fi पर डाउनलोड करता है। इंस्टॉल करने से पहले फिर भी पूछेगा।';

  @override
  String setUpdateReady(Object version) {
    return '$version का अपडेट तैयार है';
  }

  @override
  String get setUpdateReadySub =>
      'डाउनलोड हो गया — इंस्टॉल करने के लिए टैप करें';

  @override
  String get setUpdateAvailableSub =>
      'रिलीज़ पेज से पाएं — लिंक कॉपी करने के लिए टैप करें';

  @override
  String get setLinkCopied => 'लिंक कॉपी हो गया';

  @override
  String get setCheckNow => 'अभी जांचें';

  @override
  String get setUpToDate => 'TuneBox अप टू डेट है';

  @override
  String get setChecking => 'नया संस्करण खोज रहे हैं…';

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
}
