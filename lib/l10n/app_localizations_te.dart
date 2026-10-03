// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class LTe extends L {
  LTe([String locale = 'te']) : super(locale);

  @override
  String get navHome => 'హోమ్';

  @override
  String get navExplore => 'అన్వేషించు';

  @override
  String get navLibrary => 'లైబ్రరీ';

  @override
  String get navTaste => 'మీ అభిరుచి';

  @override
  String get actionDone => 'పూర్తయింది';

  @override
  String get actionCancel => 'రద్దు చేయి';

  @override
  String get actionCreate => 'సృష్టించు';

  @override
  String get actionPlay => 'ప్లే చేయి';

  @override
  String get actionShuffle => 'షఫుల్';

  @override
  String get actionPlayAll => 'అన్నీ ప్లే చేయి';

  @override
  String get actionAdd => 'జోడించు';

  @override
  String get actionRemove => 'తీసివేయి';

  @override
  String get actionName => 'పేరు';

  @override
  String get greetingNight => 'ఇంకా మేల్కొని ఉన్నారా?';

  @override
  String get greetingMorning => 'శుభోదయం';

  @override
  String get greetingAfternoon => 'శుభ మధ్యాహ్నం';

  @override
  String get greetingEvening => 'శుభ సాయంత్రం';

  @override
  String get homeBuilding => 'AI మీ అరలను నిర్మిస్తోంది…';

  @override
  String get homeOffline => 'ఆఫ్‌లైన్ — పరికరంలో ఉన్నవి చూపిస్తున్నాం';

  @override
  String get homeNothingYet => 'ఇంకా చూపించడానికి ఏమీ లేదు';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count అరలు, ఇప్పుడే రిఫ్రెష్ అయ్యాయి',
      one: '1 అర, ఇప్పుడే రిఫ్రెష్ అయింది',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'అరలను మళ్లీ నిర్మించు';

  @override
  String get homeAddMusic => 'ఈ పరికరం నుండి సంగీతాన్ని జోడించు';

  @override
  String get homeQuickPicks => 'త్వరిత ఎంపికలు';

  @override
  String get homeQuickPicksSub => 'మీరు వింటున్న దానికే తిరిగి వెళ్ళండి';

  @override
  String get homeEmptyTitle => 'మీ లైబ్రరీ ఖాళీగా ఉంది';

  @override
  String get homeEmptyBody =>
      'ఏదైనా వెతకండి, లేదా ఈ పరికరంలో ఇప్పటికే ఉన్న సంగీతాన్ని జోడించండి. మీ మొదటి పాట నుండే AI నేర్చుకోవడం ప్రారంభిస్తుంది.';

  @override
  String get homeAddMyMusic => 'నా సంగీతాన్ని జోడించు';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube ను చేరుకోలేకపోయింది: $error';
  }

  @override
  String get moodFocus => 'ఏకాగ్రత';

  @override
  String get moodWorkout => 'వర్కౌట్';

  @override
  String get moodChill => 'రిలాక్స్';

  @override
  String get moodCommute => 'ప్రయాణం';

  @override
  String get moodParty => 'పార్టీ';

  @override
  String moodBuilding(Object mood) {
    return '$mood మిక్స్ తయారవుతోంది…';
  }

  @override
  String moodFailed(Object error) {
    return 'కుదరలేదు: $error';
  }

  @override
  String get shelfRepeat => 'మళ్లీ మళ్లీ';

  @override
  String get shelfRepeatSub => 'మీ గత రెండు వారాలు';

  @override
  String get shelfForgotten => 'మీరు ఇష్టపడిన మరచిపోయిన పాత హిట్లు';

  @override
  String get shelfForgottenSub => 'ఒకప్పుడు ఇష్టం, కొంతకాలంగా వినలేదు';

  @override
  String get shelfNew => 'కొత్తవి';

  @override
  String get shelfNewSub => 'మీకు నచ్చుతాయని AI భావించే కొత్త పాటలు';

  @override
  String shelfBecause(Object artist) {
    return 'మీరు $artist విన్నందున';
  }

  @override
  String get shelfBecauseSub => 'మీ అభిరుచిలోని అదే మూల';

  @override
  String get shelfDeep => 'అరుదుగా తాకినవి';

  @override
  String get shelfDeepSub => 'మీ లైబ్రరీలో ఉన్నాయి, కానీ దాదాపు ప్లే చేయలేదు';

  @override
  String get shelfMix => 'మీ మిక్స్';

  @override
  String get shelfMixSub => 'మీరు యాప్ తెరిచిన ప్రతిసారీ మళ్లీ తయారవుతుంది';

  @override
  String get shelfAdded => 'ఇటీవల జోడించినవి';

  @override
  String get shelfAddedSub => 'డౌన్‌లోడ్‌లు మరియు దిగుమతి చేసిన ఫైళ్లు';

  @override
  String get shelfStarter => 'ఇక్కడ నుండి ప్రారంభించండి';

  @override
  String get shelfStarterSub =>
      'కొన్ని పాటలు ప్లే చేయండి, AI వెంటనే నేర్చుకోవడం మొదలుపెడుతుంది';

  @override
  String reasonPlays(int count) {
    return '$count సార్లు ప్లే చేశారు';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ఇష్టపడ్డారు, చివరిగా $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count సార్లు ప్లే చేశారు, చివరిగా $when';
  }

  @override
  String get reasonTopArtist => 'మీరు ఎక్కువగా విన్న కళాకారులలో ఒకరు';

  @override
  String reasonMore(Object artist) {
    return 'మరిన్ని $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'మీరు మళ్లీ మళ్లీ $artist దగ్గరకు వస్తున్నారు';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'మీకు నచ్చే $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ఇటీవల $tag ఎక్కువ';
  }

  @override
  String get reasonOutThisYear => 'ఈ ఏడాది విడుదలైంది';

  @override
  String get reasonReleasedRecently => 'ఇటీవల విడుదలైంది';

  @override
  String get reasonClose => 'మీరు వింటున్న వాటికి దగ్గరగా';

  @override
  String reasonNear(Object artist) {
    return '$artist కి దగ్గరగా';
  }

  @override
  String get reasonNeverPlayed => 'ఎప్పుడూ ప్లే చేయలేదు';

  @override
  String get reasonPlayedOnce => 'ఒక్కసారి ప్లే చేశారు';

  @override
  String get reasonPopular => 'ఇప్పుడు ప్రాచుర్యంలో ఉంది';

  @override
  String whenYearsAgo(int count) {
    return '$count ఏళ్ల క్రితం';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count నెలల క్రితం';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count రోజుల క్రితం';
  }

  @override
  String get searchHint => 'పాటలు, కళాకారులు, ఆల్బమ్‌లు';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ఫలితాలు',
      one: '1 ఫలితం',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'ఇటీవలి శోధనలు';

  @override
  String get searchEmptyTitle => 'ఏమీ దొరకలేదు';

  @override
  String get searchEmptyBody =>
      'మరో స్పెల్లింగ్ ప్రయత్నించండి, లేదా కళాకారుడి పేరు మాత్రమే వెతకండి.';

  @override
  String get searchStartTitle => 'ప్లే చేయడానికి ఏదైనా వెతకండి';

  @override
  String get searchStartBody =>
      'YouTube Music లో వెతకండి — పాటలు మాత్రమే వస్తాయి, ఇతర విషయాల వీడియోలు ఎప్పుడూ రావు.';

  @override
  String get libPlaylists => 'ప్లేలిస్ట్‌లు';

  @override
  String get libSongs => 'పాటలు';

  @override
  String get libArtists => 'కళాకారులు';

  @override
  String get libLiked => 'ఇష్టమైనవి';

  @override
  String get libDownloads => 'డౌన్‌లోడ్‌లు';

  @override
  String get libImported => 'దిగుమతి చేసినవి';

  @override
  String get libLikedSongs => 'ఇష్టమైన పాటలు';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count పాటలు',
      one: '1 పాట',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ఆఫ్‌లైన్';
  }

  @override
  String get libMyFiles => 'నా సొంత ఫైళ్లు';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ఫైళ్లు',
      one: '1 ఫైల్',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'కొత్త ప్లేలిస్ట్';

  @override
  String get libMakeOne => 'ఒకటి చేయండి';

  @override
  String get libSortRecent => 'ఇటీవల జోడించినవి';

  @override
  String get libSortTitle => 'శీర్షిక';

  @override
  String get libSortArtist => 'కళాకారుడు';

  @override
  String get libSortPlays => 'ఎక్కువగా ప్లే చేసినవి';

  @override
  String get sheetNotForMe => 'నాకు వద్దు';

  @override
  String get sheetNotForMeSub => 'దీన్ని మళ్లీ ఎప్పుడూ సూచించవద్దు';

  @override
  String get sheetBlocked => 'బ్లాక్ చేశారు — మళ్లీ అనుమతించడానికి నొక్కండి';

  @override
  String get sheetBlockedSub => 'ఇది మళ్లీ సూచనల్లో కనిపించవచ్చు';

  @override
  String get sheetPlayNext => 'తర్వాత ప్లే చేయి';

  @override
  String get sheetAddToPlaylist => 'ప్లేలిస్ట్‌కు జోడించు';

  @override
  String get sheetDownloaded => 'డౌన్‌లోడ్ అయింది';

  @override
  String get sheetRemoveFile => 'ఫైల్ తీసివేయడానికి నొక్కండి';

  @override
  String get sheetDownload => 'డౌన్‌లోడ్';

  @override
  String get sheetKeepOffline => 'ఆఫ్‌లైన్ కోసం ఉంచు';

  @override
  String get sheetRadio => 'రేడియో ప్రారంభించు';

  @override
  String get sheetRadioSub => 'ఈ పాట చుట్టూ రూపొందిన క్యూ';

  @override
  String get sheetQueue => 'క్యూ';

  @override
  String get sheetSleepTimer => 'స్లీప్ టైమర్';

  @override
  String get sheetSleepOff => 'ఆఫ్';

  @override
  String sheetSleepMinutes(int count) {
    return '$count నిమిషాలు';
  }

  @override
  String get sheetSleepEndOfTrack => 'ఈ పాట ముగింపులో';

  @override
  String sheetSleepSet(int count) {
    return '$count నిమిషాల్లో సంగీతం ఆగుతుంది';
  }

  @override
  String get tasteTitle => 'మీ అభిరుచి';

  @override
  String get tasteRetrain => 'మళ్లీ శిక్షణ';

  @override
  String get tasteRetraining => 'మీ చరిత్రపై మళ్లీ శిక్షణ జరుగుతోంది…';

  @override
  String get tasteRetrained => 'AI తన మోడల్‌ను మళ్లీ నిర్మించింది.';

  @override
  String tasteConfidence(int percent) {
    return 'నమ్మకం $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays ప్లేలు · $skips స్కిప్‌లు · $likes లైక్‌లు';
  }

  @override
  String get tasteEmptySummary => 'కొన్ని పాటలు ప్లే చేయండి, ఇది నిండుతుంది.';

  @override
  String get tasteKeepLearning => 'నేను వింటున్నప్పుడు నేర్చుకుంటూ ఉండు';

  @override
  String get tasteKeepLearningSub =>
      'ప్రస్తుత ప్రొఫైల్‌ను స్థిరపరచడానికి ఆఫ్ చేయండి';

  @override
  String get tasteDownloadsTitle => 'AI నిర్వహించే డౌన్‌లోడ్‌లు';

  @override
  String get tasteDownloadsSub => 'మీరు అడగకుండానే సంగీతం పరికరంలోకి వస్తుంది';

  @override
  String get tasteDownloadLikes => 'నాకు నచ్చినవన్నీ డౌన్‌లోడ్ చేయి';

  @override
  String get tasteDownloadLikesSub =>
      'హార్ట్ నొక్కితే ఫైల్ ఆఫ్‌లైన్ కోసం సేవ్ అవుతుంది';

  @override
  String get tasteAiInstall => 'AI ఎంచుకున్న సంగీతాన్ని ఇన్‌స్టాల్ చేయనివ్వు';

  @override
  String get tasteAiInstallSub => 'దానికి నమ్మకం ఉన్న పాటలను తెస్తుంది';

  @override
  String get tasteWhatItThinks => 'మీకు నచ్చుతాయని అది అనుకునేవి';

  @override
  String get tasteWhatItThinksSub =>
      'ప్లేలు, స్కిప్‌లు, లైక్‌లు, రిపీట్‌ల నుండి నేర్చుకున్నది';

  @override
  String get tasteArtists => 'అది ఆధారపడే కళాకారులు';

  @override
  String get tasteWhenYouListen => 'మీరు వినే సమయం';

  @override
  String get tasteWhenYouListenSub =>
      'గంటకు ప్లేలు — ప్రస్తుత గంటకు ఎక్కువ బరువు';

  @override
  String get tasteDecades => 'దశాబ్దాలు';

  @override
  String get tasteTune => 'సిఫార్సులను సర్దుబాటు చేయండి';

  @override
  String get tasteTuneSub => 'తదుపరి హోమ్ రిఫ్రెష్‌లో అమలవుతుంది';

  @override
  String get tasteDiscovery => 'అన్వేషణ';

  @override
  String get tasteDiscoverySub => 'తెలిసినవి ↔ ఎప్పుడూ వినని వి';

  @override
  String get tasteEnergy => 'శక్తి';

  @override
  String get tasteEnergySub => 'ప్రశాంతం ↔ గట్టిగా';

  @override
  String get tasteRecency => 'కొత్తదనం';

  @override
  String get tasteRecencySub => 'కాలాతీతం ↔ సరికొత్తవి';

  @override
  String get tasteNostalgia => 'నాస్టాల్జియా';

  @override
  String get tasteNostalgiaSub =>
      'పాత ఇష్టమైనది ఎంత పాతదైతే మరచిపోయినదిగా లెక్క';

  @override
  String get tasteSignals => 'అది ఉపయోగించగల సంకేతాలు';

  @override
  String get tasteSignalsSub => 'అన్నీ ఈ పరికరంలోనే ఉంటాయి';

  @override
  String get tasteUseHistory => 'నేను ప్లే చేసినవి';

  @override
  String get tasteUseSkips => 'నేను స్కిప్ చేసేవి';

  @override
  String get tasteUseTime => 'రోజులోని సమయం';

  @override
  String get tasteUseYouTube => 'YouTube నుండి సూచనలు';

  @override
  String get tasteAlwaysMore => 'ఎప్పుడూ ఇంకా ఎక్కువ';

  @override
  String get tasteNeverAgain => 'మళ్లీ ఎప్పుడూ వద్దు';

  @override
  String get tasteAddArtist => 'కళాకారుడిని జోడించండి';

  @override
  String get tasteMoreOfPrompt => 'ఎప్పుడూ ఇంకా ఎక్కువ…';

  @override
  String get tasteNeverAgainPrompt => 'మళ్లీ ఎప్పుడూ వద్దు…';

  @override
  String get tasteReset => 'నేర్చుకున్నదాన్ని రీసెట్ చేయి';

  @override
  String get tasteResetSub =>
      'మీ సంగీతం అలాగే ఉంటుంది; ప్రొఫైల్ మొదటి నుండి మొదలవుతుంది';

  @override
  String get trainCard => 'రేటింగ్‌తో శిక్షణ ఇవ్వండి';

  @override
  String get trainCardSub =>
      'నిజమైన పాటల మీద స్వైప్ చేయండి. ఇలాంటివి ఇంకా కావాలంటే కుడివైపు, మళ్లీ వద్దంటే ఎడమవైపు. ఇక్కడ రెండు నిమిషాలు ఒక వారం వినడం కన్నా మేలు.';

  @override
  String get trainStart => 'శిక్షణ రౌండ్ ప్రారంభించు';

  @override
  String get trainTitle => 'శిక్షణ రౌండ్';

  @override
  String get trainQuestion => 'ఇది మీ హోమ్‌లో కావాలా?';

  @override
  String get trainMoreLikeThis => 'ఇలాంటివి ఇంకా';

  @override
  String get trainNeverAgain => 'మళ్లీ ఎప్పుడూ వద్దు';

  @override
  String get trainDone => 'రౌండ్ పూర్తయింది';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked ఉంచారు · $blocked బ్లాక్ చేశారు. నమ్మకం $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'మీ అభిరుచికి తిరిగి వెళ్ళు';

  @override
  String get trainNothingTitle => 'ఇంకా రేట్ చేయడానికి ఏమీ లేదు';

  @override
  String get trainNothingBody =>
      'ముందు కొంత సంగీతం జోడించండి లేదా AI అభ్యర్థులను తేనివ్వండి, తర్వాత తిరిగి రండి.';

  @override
  String get trainLeaveTitle => 'శిక్షణ రౌండ్ నుండి బయటకు వెళ్లాలా?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ఇప్పుడు వెళ్తే, ఈ రౌండ్‌లోని ప్రతిదాన్ని AI పక్కన పెడుతుంది — మీరు ఇప్పుడే రేట్ చేసిన మొత్తం $count పాటలు.',
      one:
          'ఇప్పుడు వెళ్తే, ఈ రౌండ్‌లోని ప్రతిదాన్ని AI పక్కన పెడుతుంది — మీరు ఇప్పుడే రేట్ చేసిన 1 పాట.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'శిక్షణ కొనసాగించు';

  @override
  String get trainDiscard => 'వదిలేసి బయటకు వెళ్ళు';

  @override
  String get setTitle => 'సెట్టింగ్‌లు';

  @override
  String get setAppearance => 'రూపం';

  @override
  String get setTheme => 'థీమ్';

  @override
  String get setThemeSystem => 'సిస్టమ్‌ను అనుసరించు';

  @override
  String get setThemeLight => 'లైట్';

  @override
  String get setThemeDark => 'డార్క్';

  @override
  String get setPureBlack => 'స్వచ్ఛమైన నలుపు';

  @override
  String get setPureBlackSub => 'OLED స్క్రీన్‌పై విద్యుత్తు ఆదా చేస్తుంది';

  @override
  String get setAccent => 'యాక్సెంట్ రంగు';

  @override
  String get setAccentArtwork => 'కవర్ ఆర్ట్ నుండి';

  @override
  String get setAccentFixed => 'నేను ఎంచుకున్న ఒక రంగు';

  @override
  String get setLanguage => 'భాష';

  @override
  String get setLanguageSystem => 'సిస్టమ్‌ను అనుసరించు';

  @override
  String get setAccessibility => 'యాక్సెసిబిలిటీ';

  @override
  String get setTextSize => 'టెక్స్ట్ పరిమాణం';

  @override
  String get setTextSizeSub => 'మీ సిస్టమ్ సెట్టింగ్‌కు అదనంగా';

  @override
  String get setReduceMotion => 'కదలికను తగ్గించు';

  @override
  String get setReduceMotionSub =>
      'బార్‌లు, విజువలైజర్, బౌన్సీ స్క్రోలింగ్, స్ప్రింగీ ట్యాప్‌లు, పేజీ ట్రాన్సిషన్‌లను ఆపుతుంది';

  @override
  String get setHighContrast => 'అధిక కాంట్రాస్ట్';

  @override
  String get setHighContrastSub => 'బలమైన విభజన మరియు కనిపించే అవుట్‌లైన్‌లు';

  @override
  String get setBoldText => 'బోల్డ్ టెక్స్ట్';

  @override
  String get setPlayback => 'ప్లేబ్యాక్';

  @override
  String get setAutoRadio => 'సంగీతం ఆగకుండా కొనసాగించు';

  @override
  String get setAutoRadioSub =>
      'క్యూ ముగిశాక, చివరి పాట ఆధారంగా రేడియోతో కొనసాగుతుంది';

  @override
  String get setSmartShuffle => 'స్మార్ట్ షఫుల్';

  @override
  String get setSmartShuffleSub =>
      'యాదృచ్ఛికంగా కాకుండా అభిరుచి ప్రకారం షఫుల్ చేస్తుంది';

  @override
  String get setResume => 'ఆపిన చోట నుండి కొనసాగించు';

  @override
  String get setResumeSub =>
      'యాప్ తెరిచినప్పుడు క్యూను పాజ్ స్థితిలో పునరుద్ధరిస్తుంది';

  @override
  String get setDataSaver => 'Wi-Fi లేనప్పుడు డేటా సేవర్';

  @override
  String get setDataSaverSub =>
      'మొబైల్ డేటాలో స్ట్రీమ్‌లు, డౌన్‌లోడ్‌లను 128 kbps కు పరిమితం చేస్తుంది';

  @override
  String get setHaptics => 'హాప్టిక్ ఫీడ్‌బ్యాక్';

  @override
  String get setShowReasons => 'ఎందుకు సిఫార్సు చేశారో చూపించు';

  @override
  String get setSkipSilence => 'నిశ్శబ్దాన్ని దాటవేయి';

  @override
  String get setQuality => 'ఆడియో నాణ్యత';

  @override
  String get setQualityLow => 'తక్కువ · 64 kbps';

  @override
  String get setQualityNormal => 'సాధారణం · 128 kbps';

  @override
  String get setQualityHigh => 'ఎక్కువ · 192 kbps';

  @override
  String get setQualityBest => 'అందుబాటులో ఉన్న ఉత్తమం';

  @override
  String get setStorage => 'డౌన్‌లోడ్‌లు మరియు నిల్వ';

  @override
  String get setWifiOnly => 'Wi-Fi లో మాత్రమే డౌన్‌లోడ్ చేయి';

  @override
  String get setDailyLimit => 'AI కి రోజువారీ పరిమితి';

  @override
  String setDailyLimitSub(int count) {
    return 'రోజుకు $count పాటలు';
  }

  @override
  String get setBudget => 'AI ఉపయోగించగల నిల్వ';

  @override
  String setUsed(Object size) {
    return 'డౌన్‌లోడ్‌లు $size వాడాయి';
  }

  @override
  String get setYourMusic => 'మీ సంగీతం';

  @override
  String get setImport => 'ఈ పరికరం నుండి సంగీతాన్ని జోడించు';

  @override
  String get setImportSub => 'ఫోల్డర్‌లు లేదా ఒక్కొక్క ఫైళ్లను ఎంచుకోండి';

  @override
  String get setCleanup => 'తప్పిపోయిన ఫైళ్లను శుభ్రం చేయి';

  @override
  String get setCleanupSub => 'ఫైల్ లేని పాటలను తొలగించు';

  @override
  String setCleanupDone(int count) {
    return 'తప్పిపోయిన $count ఫైళ్లు తొలగించబడ్డాయి.';
  }

  @override
  String get setExport => 'నా అభిరుచిని మరో పరికరానికి పంపు';

  @override
  String get setExportSub =>
      'మీ లైక్‌లు, ప్లేలు, AI నేర్చుకున్నవన్నీ ఉన్న ఫైల్‌ను సేవ్ చేస్తుంది';

  @override
  String get setImportTaste => 'మరో పరికరం నుండి అభిరుచిని లోడ్ చేయి';

  @override
  String get setImportTasteSub =>
      'సేవ్ చేసిన అభిరుచి ఫైల్‌ను ఎంచుకుని విలీనం చేయండి — మళ్లీ చేసినా సురక్షితం';

  @override
  String get setAbout => 'గురించి';

  @override
  String get setAboutBody =>
      'YouTube మరియు మీ సొంత ఫైళ్ల నుండి సంగీతం. AI పూర్తిగా ఈ పరికరంలోనే నడుస్తుంది — ఏదీ బయటకు వెళ్లదు.';

  @override
  String get setSource => 'సోర్స్ కోడ్';

  @override
  String get importTitle => 'సంగీతాన్ని జోడించు';

  @override
  String get importPickFolder => 'ఫోల్డర్‌ను ఎంచుకోండి';

  @override
  String get importPickFiles => 'ఫైళ్లను ఎంచుకోండి';

  @override
  String importScanning(Object file) {
    return '$file స్కాన్ అవుతోంది';
  }

  @override
  String importAdded(int count) {
    return '$count జోడించబడ్డాయి';
  }

  @override
  String get importDenied => 'అనుమతి నిరాకరించబడింది — మీ సంగీతాన్ని చదవలేం.';

  @override
  String get importWatched => 'అది గమనించే ఫోల్డర్‌లు';

  @override
  String get importIosHint =>
      'Files యాప్ తెరిచి, On My iPhone → TuneBox కి వెళ్లి, సంగీతాన్ని అక్కడ ఉంచండి.';

  @override
  String get playerQueue => 'క్యూ';

  @override
  String get playerUpNext => 'తర్వాత';

  @override
  String get playerLyrics => 'సాహిత్యం';

  @override
  String get playerNoLyrics => 'దీనికి సాహిత్యం లేదు.';

  @override
  String get playerRepeat => 'రిపీట్';

  @override
  String get playerShuffle => 'షఫుల్';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" ప్లే చేయలేకపోయింది';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" ని దాటవేస్తున్నాం — స్ట్రీమ్ తెరుచుకోలేదు.';
  }

  @override
  String get undo => 'రద్దు చేయి';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ప్రస్తుతం: $tags, $artist ముందంజలో.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ప్రస్తుతం: $tags.';
  }

  @override
  String get setColour => 'రంగు';

  @override
  String get setColourSub => 'యాప్ మొత్తం దీన్ని అనుసరిస్తుంది';

  @override
  String get setCoverArt => 'కవర్ ఆర్ట్';

  @override
  String get setMyColour => 'నా రంగు';

  @override
  String get setCoverArtSub => 'ప్రతి పాట తన కవర్ నుండి యాప్‌కు రంగు ఇస్తుంది.';

  @override
  String get setMyColourSub => 'ఒకే రంగు, ప్రతిచోటా, ఎల్లప్పుడూ.';

  @override
  String get setPickColour => 'ఏ రంగునైనా ఎంచుకోండి';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi లో మాత్రమే డౌన్‌లోడ్ చేయి';

  @override
  String get setDownloadLikes => 'నాకు నచ్చినవన్నీ డౌన్‌లోడ్ చేయి';

  @override
  String get setDownloadLikesSub => 'హార్ట్ బటన్ ఫైల్‌ను కూడా సేవ్ చేస్తుంది';

  @override
  String get setAiInstall => 'AI ఎంచుకున్న సంగీతాన్ని ఇన్‌స్టాల్ చేయనివ్వు';

  @override
  String get setSkipSilenceSub =>
      'Android మాత్రమే. నిశ్శబ్ద ఇంట్రోలు, ఫేడ్‌లు, మృదువైన భాగాలను కత్తిరించవచ్చు — సంగీతం దాటవేస్తే ఆఫ్‌లో ఉంచండి';

  @override
  String get setStorageUsed => 'డౌన్‌లోడ్‌లు వాడిన నిల్వ';

  @override
  String get setLibrary => 'లైబ్రరీ';

  @override
  String get setUpdates => 'అప్‌డేట్‌లు';

  @override
  String get setAutoUpdate => 'అప్‌డేట్‌లను దానంతట అదే తనిఖీ చేయి';

  @override
  String get setAutoUpdateSub =>
      'ప్రతి కొన్ని గంటలకు, నిశ్శబ్దంగా, Wi-Fi లో డౌన్‌లోడ్ చేస్తుంది. ఇన్‌స్టాల్ చేయడానికి ఇప్పటికీ మిమ్మల్ని అడుగుతుంది.';

  @override
  String setUpdateReady(Object version) {
    return '$version కు అప్‌డేట్ సిద్ధంగా ఉంది';
  }

  @override
  String get setUpdateReadySub =>
      'డౌన్‌లోడ్ అయింది — ఇన్‌స్టాల్ చేయడానికి నొక్కండి';

  @override
  String get setUpdateAvailableSub =>
      'రిలీజ్‌ల పేజీ నుండి పొందండి — లింక్ కాపీ చేయడానికి నొక్కండి';

  @override
  String get setLinkCopied => 'లింక్ కాపీ అయింది';

  @override
  String get setCheckNow => 'ఇప్పుడు తనిఖీ చేయి';

  @override
  String get setUpToDate => 'TuneBox తాజాగా ఉంది';

  @override
  String get setChecking => 'కొత్త వెర్షన్ కోసం చూస్తోంది…';
}
