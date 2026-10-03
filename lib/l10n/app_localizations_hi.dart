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
}
