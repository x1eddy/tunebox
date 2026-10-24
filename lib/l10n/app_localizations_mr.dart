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
