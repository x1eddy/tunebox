// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class LMr extends L {
  LMr([String locale = 'mr']) : super(locale);

  @override
  String get navHome => 'मुख्यपृष्ठ';

  @override
  String get navExplore => 'शोधा';

  @override
  String get navLibrary => 'लायब्ररी';

  @override
  String get navTaste => 'तुमची आवड';

  @override
  String get actionDone => 'झाले';

  @override
  String get actionCancel => 'रद्द करा';

  @override
  String get actionCreate => 'तयार करा';

  @override
  String get actionPlay => 'प्ले करा';

  @override
  String get actionShuffle => 'शफल';

  @override
  String get actionPlayAll => 'सर्व प्ले करा';

  @override
  String get actionAdd => 'जोडा';

  @override
  String get actionRemove => 'काढा';

  @override
  String get actionName => 'नाव';

  @override
  String get greetingNight => 'अजून जागे?';

  @override
  String get greetingMorning => 'शुभ प्रभात';

  @override
  String get greetingAfternoon => 'शुभ दुपार';

  @override
  String get greetingEvening => 'शुभ संध्याकाळ';

  @override
  String get homeBuilding => 'AI तुमचे शेल्फ तयार करत आहे…';

  @override
  String get homeOffline => 'ऑफलाइन — डिव्हाइसवर जे आहे ते दाखवत आहे';

  @override
  String get homeNothingYet => 'अजून दाखवण्यासारखे काही नाही';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शेल्फ, आत्ताच रिफ्रेश केले',
      one: '1 शेल्फ, आत्ताच रिफ्रेश केले',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'शेल्फ पुन्हा तयार करा';

  @override
  String get homeAddMusic => 'या डिव्हाइसवरून संगीत जोडा';

  @override
  String get homeQuickPicks => 'झटपट निवडी';

  @override
  String get homeQuickPicksSub => 'जे ऐकत होतात तिथे थेट परत';

  @override
  String get homeEmptyTitle => 'तुमची लायब्ररी रिकामी आहे';

  @override
  String get homeEmptyBody =>
      'काहीतरी शोधा, किंवा या डिव्हाइसवरचे संगीत जोडा. तुमच्या पहिल्याच प्लेपासून AI शिकायला सुरुवात करते.';

  @override
  String get homeAddMyMusic => 'माझे संगीत जोडा';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube शी संपर्क होऊ शकला नाही: $error';
  }

  @override
  String get moodFocus => 'एकाग्रता';

  @override
  String get moodWorkout => 'व्यायाम';

  @override
  String get moodChill => 'निवांत';

  @override
  String get moodCommute => 'प्रवास';

  @override
  String get moodParty => 'पार्टी';

  @override
  String moodBuilding(Object mood) {
    return '$mood मिक्स तयार करत आहे…';
  }

  @override
  String moodFailed(Object error) {
    return 'जमले नाही: $error';
  }

  @override
  String get shelfRepeat => 'पुन्हा पुन्हा';

  @override
  String get shelfRepeatSub => 'तुमचे गेले दोन आठवडे';

  @override
  String get shelfForgotten => 'तुम्हाला आवडलेली विसरलेली जुनी हिट गाणी';

  @override
  String get shelfForgottenSub => 'एकेकाळी आवडलेली, काही काळ न ऐकलेली';

  @override
  String get shelfNew => 'नवीन';

  @override
  String get shelfNewSub => 'AI ला तुमच्यासाठी योग्य वाटलेली ताजी गाणी';

  @override
  String shelfBecause(Object artist) {
    return 'कारण तुम्ही $artist ऐकले';
  }

  @override
  String get shelfBecauseSub => 'तुमच्या आवडीच्या त्याच कोपऱ्यातले';

  @override
  String get shelfDeep => 'क्वचितच ऐकलेली';

  @override
  String get shelfDeepSub => 'लायब्ररीत आहेत, पण क्वचितच प्ले केलेली';

  @override
  String get shelfMix => 'तुमचा मिक्स';

  @override
  String get shelfMixSub => 'अ‍ॅप उघडल्यावर प्रत्येक वेळी पुन्हा तयार होतो';

  @override
  String get shelfAdded => 'अलीकडे जोडलेली';

  @override
  String get shelfAddedSub => 'डाउनलोड आणि इंपोर्ट केलेल्या फाइल';

  @override
  String get shelfStarter => 'इथून सुरू करा';

  @override
  String get shelfStarterSub =>
      'काही प्ले करा आणि AI लगेच शिकायला सुरुवात करते';

  @override
  String reasonPlays(int count) {
    return '$count वेळा प्ले';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'आवडले, शेवटचे प्ले $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count वेळा प्ले, शेवटचे $when';
  }

  @override
  String get reasonTopArtist => 'तुम्ही सर्वाधिक ऐकलेल्या कलाकारांपैकी एक';

  @override
  String reasonMore(Object artist) {
    return 'आणखी $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'तुम्ही $artist कडे पुन्हा पुन्हा येता';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'तुमच्या आवडीचे $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'अलीकडे खूप $tag';
  }

  @override
  String get reasonOutThisYear => 'यंदा आलेले';

  @override
  String get reasonReleasedRecently => 'अलीकडे प्रदर्शित';

  @override
  String get reasonClose => 'तुम्ही ऐकत असलेल्या गाण्यांच्या जवळचे';

  @override
  String reasonNear(Object artist) {
    return '$artist च्या जवळचे';
  }

  @override
  String get reasonNeverPlayed => 'कधीही प्ले केले नाही';

  @override
  String get reasonPlayedOnce => 'एकदा प्ले केले';

  @override
  String get reasonPopular => 'सध्या लोकप्रिय';

  @override
  String whenYearsAgo(int count) {
    return '$count वर्षांपूर्वी';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count महिन्यांपूर्वी';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count दिवसांपूर्वी';
  }

  @override
  String get searchHint => 'गाणी, कलाकार, अल्बम';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count निकाल',
      one: '1 निकाल',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'अलीकडील शोध';

  @override
  String get searchEmptyTitle => 'काहीही सापडले नाही';

  @override
  String get searchEmptyBody =>
      'वेगळे स्पेलिंग वापरून पहा, किंवा फक्त कलाकाराचे नाव टाका.';

  @override
  String get searchStartTitle => 'प्ले करण्यासाठी काहीतरी शोधा';

  @override
  String get searchStartBody =>
      'YouTube Music वर शोधा — फक्त गाणीच येतात, इतर गोष्टींचे व्हिडिओ नाही.';

  @override
  String get libPlaylists => 'प्लेलिस्ट';

  @override
  String get libSongs => 'गाणी';

  @override
  String get libArtists => 'कलाकार';

  @override
  String get libLiked => 'आवडलेली';

  @override
  String get libDownloads => 'डाउनलोड';

  @override
  String get libImported => 'इंपोर्ट केलेली';

  @override
  String get libLikedSongs => 'आवडलेली गाणी';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count गाणी',
      one: '1 गाणे',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ऑफलाइन';
  }

  @override
  String get libMyFiles => 'माझ्या स्वतःच्या फाइल';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count फाइल',
      one: '1 फाइल',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'नवीन प्लेलिस्ट';

  @override
  String get libMakeOne => 'तयार करा';

  @override
  String get libSortRecent => 'अलीकडे जोडलेली';

  @override
  String get libSortTitle => 'शीर्षक';

  @override
  String get libSortArtist => 'कलाकार';

  @override
  String get libSortPlays => 'सर्वाधिक प्ले केलेली';

  @override
  String get sheetNotForMe => 'माझ्यासाठी नाही';

  @override
  String get sheetNotForMeSub => 'हे पुन्हा कधीही सुचवू नका';

  @override
  String get sheetBlocked => 'ब्लॉक केले — पुन्हा परवानगी देण्यासाठी टॅप करा';

  @override
  String get sheetBlockedSub => 'हे पुन्हा शिफारशींमध्ये दिसू शकते';

  @override
  String get sheetPlayNext => 'पुढे प्ले करा';

  @override
  String get sheetAddToPlaylist => 'प्लेलिस्टमध्ये जोडा';

  @override
  String get sheetDownloaded => 'डाउनलोड केले';

  @override
  String get sheetRemoveFile => 'फाइल काढण्यासाठी टॅप करा';

  @override
  String get sheetDownload => 'डाउनलोड करा';

  @override
  String get sheetKeepOffline => 'ऑफलाइनसाठी ठेवा';

  @override
  String get sheetRadio => 'रेडिओ सुरू करा';

  @override
  String get sheetRadioSub => 'या गाण्याभोवती तयार केलेली रांग';

  @override
  String get sheetQueue => 'रांग';

  @override
  String get sheetSleepTimer => 'स्लीप टायमर';

  @override
  String get sheetSleepOff => 'बंद';

  @override
  String sheetSleepMinutes(int count) {
    return '$count मिनिटे';
  }

  @override
  String get sheetSleepEndOfTrack => 'या गाण्याच्या शेवटी';

  @override
  String sheetSleepSet(int count) {
    return '$count मिनिटांत संगीत थांबेल';
  }

  @override
  String get tasteTitle => 'तुमची आवड';

  @override
  String get tasteRetrain => 'पुन्हा प्रशिक्षित करा';

  @override
  String get tasteRetraining => 'तुमच्या इतिहासावरून पुन्हा शिकत आहे…';

  @override
  String get tasteRetrained => 'AI ने आपले मॉडेल पुन्हा तयार केले.';

  @override
  String tasteConfidence(int percent) {
    return 'विश्वास $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays प्ले · $skips स्किप · $likes लाइक';
  }

  @override
  String get tasteEmptySummary => 'काही गाणी प्ले करा आणि हे भरत जाईल.';

  @override
  String get tasteKeepLearning => 'मी ऐकत असताना शिकत राहा';

  @override
  String get tasteKeepLearningSub => 'सध्याची प्रोफाइल गोठवण्यासाठी बंद करा';

  @override
  String get tasteDownloadsTitle => 'AI हाताळत असलेले डाउनलोड';

  @override
  String get tasteDownloadsSub => 'तुम्ही न सांगता संगीत डिव्हाइसवर येते';

  @override
  String get tasteDownloadLikes => 'मला आवडणारे सर्व डाउनलोड करा';

  @override
  String get tasteDownloadLikesSub =>
      'हार्ट दाबा आणि फाइल ऑफलाइनसाठी सेव्ह होते';

  @override
  String get tasteAiInstall => 'AI ने निवडलेले संगीत स्वतः इन्स्टॉल करू द्या';

  @override
  String get tasteAiInstallSub => 'ज्याबद्दल खात्री आहे ती गाणी ते आणेल';

  @override
  String get tasteWhatItThinks => 'तुम्हाला काय आवडते असे त्याला वाटते';

  @override
  String get tasteWhatItThinksSub => 'प्ले, स्किप, लाइक आणि रिपीटमधून शिकलेले';

  @override
  String get tasteArtists => 'ज्या कलाकारांवर ते अवलंबून असते';

  @override
  String get tasteWhenYouListen => 'तुम्ही कधी ऐकता';

  @override
  String get tasteWhenYouListenSub =>
      'प्रति तास प्ले — सध्याच्या तासाला जास्त महत्त्व मिळते';

  @override
  String get tasteDecades => 'दशके';

  @override
  String get tasteTune => 'शिफारशी सुधारा';

  @override
  String get tasteTuneSub => 'पुढच्या मुख्यपृष्ठ रिफ्रेशपासून लागू होईल';

  @override
  String get tasteDiscovery => 'शोध';

  @override
  String get tasteDiscoverySub => 'ओळखीचे ↔ कधीही न ऐकलेले';

  @override
  String get tasteEnergy => 'ऊर्जा';

  @override
  String get tasteEnergySub => 'शांत ↔ मोठ्या आवाजाचे';

  @override
  String get tasteRecency => 'नवेपणा';

  @override
  String get tasteRecencySub => 'कालातीत ↔ अगदी नवीन';

  @override
  String get tasteNostalgia => 'आठवणी';

  @override
  String get tasteNostalgiaSub =>
      'जुने आवडते गाणे किती मागे गेल्यावर विसरलेले मानले जाते';

  @override
  String get tasteSignals => 'ते वापरू शकणारे संकेत';

  @override
  String get tasteSignalsSub => 'सर्व काही या डिव्हाइसवरच राहते';

  @override
  String get tasteUseHistory => 'मी काय प्ले केले';

  @override
  String get tasteUseSkips => 'मी काय स्किप करतो';

  @override
  String get tasteUseTime => 'दिवसाची वेळ';

  @override
  String get tasteUseYouTube => 'YouTube कडून सूचना';

  @override
  String get tasteAlwaysMore => 'नेहमी आणखी';

  @override
  String get tasteNeverAgain => 'पुन्हा कधीही नको';

  @override
  String get tasteAddArtist => 'कलाकार जोडा';

  @override
  String get tasteMoreOfPrompt => 'नेहमी आणखी…';

  @override
  String get tasteNeverAgainPrompt => 'पुन्हा कधीही नको…';

  @override
  String get tasteReset => 'शिकलेले रीसेट करा';

  @override
  String get tasteResetSub =>
      'तुमचे संगीत राहते; प्रोफाइल शून्यापासून सुरू होते';

  @override
  String get trainCard => 'रेटिंग देऊन प्रशिक्षित करा';

  @override
  String get trainCardSub =>
      'खरी गाणी स्वाइप करा. यासारखे आणखी हवे तर उजवीकडे, पुन्हा कधीही नको तर डावीकडे. इथले दोन मिनिटे आठवडाभराच्या ऐकण्यापेक्षा भारी.';

  @override
  String get trainStart => 'प्रशिक्षण फेरी सुरू करा';

  @override
  String get trainTitle => 'प्रशिक्षण फेरी';

  @override
  String get trainQuestion => 'हे तुमच्या मुख्यपृष्ठावर हवे का?';

  @override
  String get trainMoreLikeThis => 'यासारखे आणखी';

  @override
  String get trainNeverAgain => 'पुन्हा कधीही नको';

  @override
  String get trainDone => 'फेरी पूर्ण';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked ठेवली · $blocked ब्लॉक केली. विश्वास $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'तुमच्या आवडीकडे परत';

  @override
  String get trainNothingTitle => 'रेट करण्यासाठी अजून काही नाही';

  @override
  String get trainNothingBody =>
      'आधी थोडे संगीत जोडा किंवा AI ला उमेदवार गाणी आणू द्या, मग परत या.';

  @override
  String get trainLeaveTitle => 'प्रशिक्षण फेरी सोडायची?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'आता बाहेर पडलात तर AI या फेरीतील सर्व काही रद्द करेल — तुम्ही नुकतीच रेट केलेली सर्व $count गाणी.',
      one:
          'आता बाहेर पडलात तर AI या फेरीतील सर्व काही रद्द करेल — तुम्ही नुकतेच रेट केलेले 1 गाणे.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'प्रशिक्षण सुरू ठेवा';

  @override
  String get trainDiscard => 'रद्द करून बाहेर पडा';

  @override
  String get setTitle => 'सेटिंग्ज';

  @override
  String get setAppearance => 'दिसणे';

  @override
  String get setTheme => 'थीम';

  @override
  String get setThemeSystem => 'सिस्टीमप्रमाणे';

  @override
  String get setThemeLight => 'लाइट';

  @override
  String get setThemeDark => 'डार्क';

  @override
  String get setPureBlack => 'शुद्ध काळा';

  @override
  String get setPureBlackSub => 'OLED स्क्रीनवर बॅटरी वाचवते';

  @override
  String get setAccent => 'अ‍ॅक्सेंट रंग';

  @override
  String get setAccentArtwork => 'कव्हर आर्टवरून';

  @override
  String get setAccentFixed => 'मी निवडलेला एक रंग';

  @override
  String get setLanguage => 'भाषा';

  @override
  String get setLanguageSystem => 'सिस्टीमप्रमाणे';

  @override
  String get setAccessibility => 'सुलभता';

  @override
  String get setTextSize => 'मजकूराचा आकार';

  @override
  String get setTextSizeSub => 'तुमच्या सिस्टीम सेटिंगच्या वर';

  @override
  String get setReduceMotion => 'हालचाल कमी करा';

  @override
  String get setReduceMotionSub =>
      'बार, व्हिज्युअलायझर, उसळणारे स्क्रोलिंग, स्प्रिंगसारखे टॅप आणि पेज ट्रान्झिशन बंद करते';

  @override
  String get setHighContrast => 'उच्च कॉन्ट्रास्ट';

  @override
  String get setHighContrastSub => 'अधिक ठळक फरक आणि दिसणाऱ्या कडा';

  @override
  String get setBoldText => 'ठळक मजकूर';

  @override
  String get setPlayback => 'प्लेबॅक';

  @override
  String get setAutoRadio => 'संगीत चालू ठेवा';

  @override
  String get setAutoRadioSub =>
      'रांग संपल्यावर शेवटच्या गाण्यावरून तयार केलेल्या रेडिओने पुढे चालू ठेवा';

  @override
  String get setSmartShuffle => 'स्मार्ट शफल';

  @override
  String get setSmartShuffleSub => 'यादृच्छिक नव्हे, आवडीनुसार शफल करते';

  @override
  String get setResume => 'जिथे सोडले तिथून सुरू करा';

  @override
  String get setResumeSub =>
      'अ‍ॅप उघडल्यावर रांग पॉझ केलेल्या स्थितीत परत आणते';

  @override
  String get setDataSaver => 'Wi-Fi नसताना डेटा सेव्हर';

  @override
  String get setDataSaverSub =>
      'मोबाइल डेटावर स्ट्रीम आणि डाउनलोड 128 kbps पर्यंत मर्यादित करते';

  @override
  String get setHaptics => 'हॅप्टिक फीडबॅक';

  @override
  String get setShowReasons => 'शिफारस का केली ते दाखवा';

  @override
  String get setSkipSilence => 'शांतता वगळा';

  @override
  String get setQuality => 'ऑडिओ गुणवत्ता';

  @override
  String get setQualityLow => 'कमी · 64 kbps';

  @override
  String get setQualityNormal => 'सामान्य · 128 kbps';

  @override
  String get setQualityHigh => 'उच्च · 192 kbps';

  @override
  String get setQualityBest => 'उपलब्ध सर्वोत्तम';

  @override
  String get setStorage => 'डाउनलोड आणि स्टोरेज';

  @override
  String get setWifiOnly => 'फक्त Wi-Fi वर डाउनलोड करा';

  @override
  String get setDailyLimit => 'AI साठी दैनिक मर्यादा';

  @override
  String setDailyLimitSub(int count) {
    return 'दिवसाला $count गाणी';
  }

  @override
  String get setBudget => 'AI वापरू शकेल असे स्टोरेज';

  @override
  String setUsed(Object size) {
    return 'डाउनलोडसाठी $size वापरले';
  }

  @override
  String get setYourMusic => 'तुमचे संगीत';

  @override
  String get setImport => 'या डिव्हाइसवरून संगीत जोडा';

  @override
  String get setImportSub => 'फोल्डर किंवा एकेक फाइल निवडा';

  @override
  String get setCleanup => 'गायब फाइल साफ करा';

  @override
  String get setCleanupSub => 'फाइल नसलेली गाणी काढून टाका';

  @override
  String setCleanupDone(int count) {
    return '$count गायब फाइल काढल्या.';
  }

  @override
  String get setExport => 'माझी आवड दुसऱ्या डिव्हाइसवर पाठवा';

  @override
  String get setExportSub =>
      'तुमचे लाइक, प्ले आणि AI ने शिकलेले सर्व काही एका फाइलमध्ये सेव्ह करते';

  @override
  String get setImportTaste => 'दुसऱ्या डिव्हाइसवरून आवड लोड करा';

  @override
  String get setImportTasteSub =>
      'सेव्ह केलेली आवड फाइल निवडा आणि विलीन करा — पुन्हा केले तरी सुरक्षित';

  @override
  String get setAbout => 'विषयी';

  @override
  String get setAboutBody =>
      'YouTube आणि तुमच्या स्वतःच्या फाइलमधील संगीत. AI पूर्णपणे या डिव्हाइसवर चालते — काहीही बाहेर जात नाही.';

  @override
  String get setSource => 'सोर्स कोड';

  @override
  String get importTitle => 'संगीत जोडा';

  @override
  String get importPickFolder => 'फोल्डर निवडा';

  @override
  String get importPickFiles => 'फाइल निवडा';

  @override
  String importScanning(Object file) {
    return '$file स्कॅन करत आहे';
  }

  @override
  String importAdded(int count) {
    return '$count जोडली';
  }

  @override
  String get importDenied => 'परवानगी नाकारली — तुमचे संगीत वाचता येत नाही.';

  @override
  String get importWatched => 'निरीक्षण केले जाणारे फोल्डर';

  @override
  String get importIosHint =>
      'Files अ‍ॅप उघडा, On My iPhone → TuneBox मध्ये जा आणि तिथे संगीत टाका.';

  @override
  String get playerQueue => 'रांग';

  @override
  String get playerUpNext => 'पुढे';

  @override
  String get playerLyrics => 'गीत';

  @override
  String get playerNoLyrics => 'या गाण्याचे गीत उपलब्ध नाही.';

  @override
  String get playerRepeat => 'रिपीट';

  @override
  String get playerShuffle => 'शफल';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" प्ले करता आले नाही';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" वगळत आहे — स्ट्रीम उघडला नाही.';
  }

  @override
  String get undo => 'पूर्ववत करा';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'सध्या: $tags, आघाडीवर $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'सध्या: $tags.';
  }

  @override
  String get setColour => 'रंग';

  @override
  String get setColourSub => 'संपूर्ण अ‍ॅप याचे अनुसरण करते';

  @override
  String get setCoverArt => 'कव्हर आर्ट';

  @override
  String get setMyColour => 'माझा रंग';

  @override
  String get setCoverArtSub =>
      'प्रत्येक गाणे अ‍ॅपला आपल्या कव्हरच्या रंगात रंगवते.';

  @override
  String get setMyColourSub => 'एक रंग, सर्वत्र, नेहमी.';

  @override
  String get setPickColour => 'कोणताही रंग निवडा';

  @override
  String get setWifiOnlyTitle => 'फक्त Wi-Fi वर डाउनलोड करा';

  @override
  String get setDownloadLikes => 'मला आवडणारे सर्व डाउनलोड करा';

  @override
  String get setDownloadLikesSub => 'हार्ट बटण फाइलही सेव्ह करते';

  @override
  String get setAiInstall => 'AI ने निवडलेले संगीत स्वतः इन्स्टॉल करू द्या';

  @override
  String get setSkipSilenceSub =>
      'फक्त Android. शांत इंट्रो, फेड आणि हळू भाग कापू शकते — संगीत अडखळल्यास बंद ठेवा';

  @override
  String get setStorageUsed => 'डाउनलोडसाठी वापरलेले स्टोरेज';

  @override
  String get setLibrary => 'लायब्ररी';

  @override
  String get setUpdates => 'अपडेट';

  @override
  String get setAutoUpdate => 'अपडेट आपोआप तपासा';

  @override
  String get setAutoUpdateSub =>
      'दर काही तासांनी शांतपणे, आणि Wi-Fi वर डाउनलोड करते. इन्स्टॉल करताना तरीही विचारते.';

  @override
  String setUpdateReady(Object version) {
    return '$version चे अपडेट तयार आहे';
  }

  @override
  String get setUpdateReadySub => 'डाउनलोड झाले — इन्स्टॉल करण्यासाठी टॅप करा';

  @override
  String get setUpdateAvailableSub =>
      'रिलीज पेजवरून मिळवा — लिंक कॉपी करण्यासाठी टॅप करा';

  @override
  String get setLinkCopied => 'लिंक कॉपी केली';

  @override
  String get setCheckNow => 'आत्ता तपासा';

  @override
  String get setUpToDate => 'TuneBox अद्ययावत आहे';

  @override
  String get setChecking => 'नवीन आवृत्ती शोधत आहे…';
}
