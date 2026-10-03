// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class LTa extends L {
  LTa([String locale = 'ta']) : super(locale);

  @override
  String get navHome => 'முகப்பு';

  @override
  String get navExplore => 'ஆராய்';

  @override
  String get navLibrary => 'நூலகம்';

  @override
  String get navTaste => 'உங்கள் ரசனை';

  @override
  String get actionDone => 'முடிந்தது';

  @override
  String get actionCancel => 'ரத்துசெய்';

  @override
  String get actionCreate => 'உருவாக்கு';

  @override
  String get actionPlay => 'இயக்கு';

  @override
  String get actionShuffle => 'கலக்கு';

  @override
  String get actionPlayAll => 'அனைத்தையும் இயக்கு';

  @override
  String get actionAdd => 'சேர்';

  @override
  String get actionRemove => 'நீக்கு';

  @override
  String get actionName => 'பெயர்';

  @override
  String get greetingNight => 'இன்னும் விழித்திருக்கிறீர்களா?';

  @override
  String get greetingMorning => 'காலை வணக்கம்';

  @override
  String get greetingAfternoon => 'மதிய வணக்கம்';

  @override
  String get greetingEvening => 'மாலை வணக்கம்';

  @override
  String get homeBuilding => 'AI உங்கள் அடுக்குகளை உருவாக்குகிறது…';

  @override
  String get homeOffline => 'ஆஃப்லைன் — சாதனத்தில் உள்ளவை காட்டப்படுகின்றன';

  @override
  String get homeNothingYet => 'இன்னும் காட்ட எதுவுமில்லை';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count அடுக்குகள், இப்போதுதான் புதுப்பிக்கப்பட்டன',
      one: '1 அடுக்கு, இப்போதுதான் புதுப்பிக்கப்பட்டது',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'அடுக்குகளை மீண்டும் உருவாக்கு';

  @override
  String get homeAddMusic => 'இந்தச் சாதனத்திலிருந்து இசையைச் சேர்';

  @override
  String get homeQuickPicks => 'விரைவுத் தேர்வுகள்';

  @override
  String get homeQuickPicksSub =>
      'நீங்கள் கேட்டுக்கொண்டிருந்ததற்கே திரும்புங்கள்';

  @override
  String get homeEmptyTitle => 'உங்கள் நூலகம் காலியாக உள்ளது';

  @override
  String get homeEmptyBody =>
      'ஏதாவது தேடுங்கள், அல்லது இந்தச் சாதனத்தில் ஏற்கனவே உள்ள இசையைச் சேருங்கள். உங்கள் முதல் பாடலிலிருந்தே AI கற்கத் தொடங்கும்.';

  @override
  String get homeAddMyMusic => 'என் இசையைச் சேர்';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube ஐ அடைய முடியவில்லை: $error';
  }

  @override
  String get moodFocus => 'கவனம்';

  @override
  String get moodWorkout => 'உடற்பயிற்சி';

  @override
  String get moodChill => 'நிதானம்';

  @override
  String get moodCommute => 'பயணம்';

  @override
  String get moodParty => 'கொண்டாட்டம்';

  @override
  String moodBuilding(Object mood) {
    return '$mood கலவையை உருவாக்குகிறது…';
  }

  @override
  String moodFailed(Object error) {
    return 'முடியவில்லை: $error';
  }

  @override
  String get shelfRepeat => 'மீண்டும் மீண்டும்';

  @override
  String get shelfRepeatSub => 'உங்கள் கடந்த இரண்டு வாரங்கள்';

  @override
  String get shelfForgotten => 'நீங்கள் விரும்பிய மறந்த பழைய பாடல்கள்';

  @override
  String get shelfForgottenSub =>
      'ஒரு காலத்தில் பிடித்தவை, சிறிது காலமாகக் கேட்கவில்லை';

  @override
  String get shelfNew => 'புதியவை';

  @override
  String get shelfNewSub =>
      'உங்களுக்குப் பிடிக்கும் என AI நினைக்கும் புதிய பாடல்கள்';

  @override
  String shelfBecause(Object artist) {
    return 'நீங்கள் $artist கேட்டதால்';
  }

  @override
  String get shelfBecauseSub => 'உங்கள் ரசனையின் அதே மூலை';

  @override
  String get shelfDeep => 'அரிதாகக் கேட்டவை';

  @override
  String get shelfDeepSub =>
      'உங்கள் நூலகத்தில் உள்ளவை, ஆனால் எப்போதாவதுதான் இயக்கப்பட்டவை';

  @override
  String get shelfMix => 'உங்கள் கலவை';

  @override
  String get shelfMixSub =>
      'ஆப்ஸைத் திறக்கும் ஒவ்வொரு முறையும் மீண்டும் உருவாகும்';

  @override
  String get shelfAdded => 'சமீபத்தில் சேர்த்தவை';

  @override
  String get shelfAddedSub =>
      'பதிவிறக்கங்கள் மற்றும் இறக்குமதி செய்த கோப்புகள்';

  @override
  String get shelfStarter => 'இங்கிருந்து தொடங்குங்கள்';

  @override
  String get shelfStarterSub =>
      'சில பாடல்களை இயக்குங்கள், AI உடனே கற்கத் தொடங்கும்';

  @override
  String reasonPlays(int count) {
    return '$count முறை இயக்கப்பட்டது';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'விரும்பியது, கடைசியாக $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count முறை இயக்கப்பட்டது, கடைசியாக $when';
  }

  @override
  String get reasonTopArtist => 'நீங்கள் அதிகம் கேட்ட கலைஞர்களில் ஒருவர்';

  @override
  String reasonMore(Object artist) {
    return 'மேலும் $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'நீங்கள் மீண்டும் மீண்டும் $artist இடம் திரும்புகிறீர்கள்';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'உங்களுக்குப் பிடித்த $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'சமீபத்தில் $tag அதிகம்';
  }

  @override
  String get reasonOutThisYear => 'இந்த ஆண்டு வெளியானது';

  @override
  String get reasonReleasedRecently => 'சமீபத்தில் வெளியானது';

  @override
  String get reasonClose => 'நீங்கள் கேட்டவற்றுக்கு நெருக்கமானது';

  @override
  String reasonNear(Object artist) {
    return '$artist க்கு அருகில்';
  }

  @override
  String get reasonNeverPlayed => 'ஒருபோதும் இயக்கப்படவில்லை';

  @override
  String get reasonPlayedOnce => 'ஒருமுறை இயக்கப்பட்டது';

  @override
  String get reasonPopular => 'இப்போது பிரபலம்';

  @override
  String whenYearsAgo(int count) {
    return '$count ஆண்டுகளுக்கு முன்';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count மாதங்களுக்கு முன்';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count நாட்களுக்கு முன்';
  }

  @override
  String get searchHint => 'பாடல்கள், கலைஞர்கள், ஆல்பங்கள்';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count முடிவுகள்',
      one: '1 முடிவு',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'சமீபத்திய தேடல்கள்';

  @override
  String get searchEmptyTitle => 'எதுவும் கிடைக்கவில்லை';

  @override
  String get searchEmptyBody =>
      'வேறு எழுத்துப்பிழையை முயலுங்கள், அல்லது கலைஞரின் பெயரை மட்டும் தேடுங்கள்.';

  @override
  String get searchStartTitle => 'இயக்க ஏதாவது கண்டுபிடியுங்கள்';

  @override
  String get searchStartBody =>
      'YouTube Music இல் தேடுங்கள் — பாடல்கள் மட்டுமே வரும், பிற விஷயங்களின் வீடியோக்கள் வராது.';

  @override
  String get libPlaylists => 'பிளேலிஸ்ட்கள்';

  @override
  String get libSongs => 'பாடல்கள்';

  @override
  String get libArtists => 'கலைஞர்கள்';

  @override
  String get libLiked => 'விரும்பியவை';

  @override
  String get libDownloads => 'பதிவிறக்கங்கள்';

  @override
  String get libImported => 'இறக்குமதி செய்தவை';

  @override
  String get libLikedSongs => 'விரும்பிய பாடல்கள்';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count பாடல்கள்',
      one: '1 பாடல்',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ஆஃப்லைன்';
  }

  @override
  String get libMyFiles => 'என் சொந்தக் கோப்புகள்';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count கோப்புகள்',
      one: '1 கோப்பு',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'புதிய பிளேலிஸ்ட்';

  @override
  String get libMakeOne => 'ஒன்றை உருவாக்கு';

  @override
  String get libSortRecent => 'சமீபத்தில் சேர்த்தவை';

  @override
  String get libSortTitle => 'தலைப்பு';

  @override
  String get libSortArtist => 'கலைஞர்';

  @override
  String get libSortPlays => 'அதிகம் கேட்டவை';

  @override
  String get sheetNotForMe => 'எனக்குப் பிடிக்கவில்லை';

  @override
  String get sheetNotForMeSub => 'இதை இனி ஒருபோதும் பரிந்துரைக்காதே';

  @override
  String get sheetBlocked => 'தடுக்கப்பட்டது — மீண்டும் அனுமதிக்கத் தட்டவும்';

  @override
  String get sheetBlockedSub => 'இது மீண்டும் பரிந்துரைகளில் தோன்றலாம்';

  @override
  String get sheetPlayNext => 'அடுத்து இயக்கு';

  @override
  String get sheetAddToPlaylist => 'பிளேலிஸ்ட்டில் சேர்';

  @override
  String get sheetDownloaded => 'பதிவிறக்கப்பட்டது';

  @override
  String get sheetRemoveFile => 'கோப்பை நீக்கத் தட்டவும்';

  @override
  String get sheetDownload => 'பதிவிறக்கு';

  @override
  String get sheetKeepOffline => 'ஆஃப்லைனுக்காக வைத்திரு';

  @override
  String get sheetRadio => 'வானொலியைத் தொடங்கு';

  @override
  String get sheetRadioSub => 'இந்தப் பாடலைச் சுற்றி உருவான வரிசை';

  @override
  String get sheetQueue => 'வரிசை';

  @override
  String get sheetSleepTimer => 'உறக்க டைமர்';

  @override
  String get sheetSleepOff => 'அணைந்தது';

  @override
  String sheetSleepMinutes(int count) {
    return '$count நிமிடங்கள்';
  }

  @override
  String get sheetSleepEndOfTrack => 'இந்தப் பாடலின் முடிவில்';

  @override
  String sheetSleepSet(int count) {
    return '$count நிமிடத்தில் இசை நிற்கும்';
  }

  @override
  String get tasteTitle => 'உங்கள் ரசனை';

  @override
  String get tasteRetrain => 'மீண்டும் பயிற்றுவி';

  @override
  String get tasteRetraining => 'உங்கள் வரலாற்றில் மீண்டும் பயிற்சி நடக்கிறது…';

  @override
  String get tasteRetrained => 'AI தன் மாதிரியை மீண்டும் உருவாக்கியது.';

  @override
  String tasteConfidence(int percent) {
    return 'நம்பிக்கை $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays இயக்கங்கள் · $skips தவிர்ப்புகள் · $likes விருப்பங்கள்';
  }

  @override
  String get tasteEmptySummary => 'சில பாடல்களை இயக்குங்கள், இது நிரம்பும்.';

  @override
  String get tasteKeepLearning => 'நான் கேட்கும்போது கற்றுக்கொண்டே இரு';

  @override
  String get tasteKeepLearningSub => 'தற்போதைய சுயவிவரத்தை முடக்க அணைக்கவும்';

  @override
  String get tasteDownloadsTitle => 'AI கையாளும் பதிவிறக்கங்கள்';

  @override
  String get tasteDownloadsSub => 'நீங்கள் கேட்காமலேயே இசை சாதனத்திற்கு வரும்';

  @override
  String get tasteDownloadLikes => 'நான் விரும்புவதை எல்லாம் பதிவிறக்கு';

  @override
  String get tasteDownloadLikesSub =>
      'இதயத்தைத் தட்டினால் கோப்பு ஆஃப்லைனுக்காகச் சேமிக்கப்படும்';

  @override
  String get tasteAiInstall => 'AI தேர்ந்தெடுக்கும் இசையை நிறுவ அனுமதி';

  @override
  String get tasteAiInstallSub => 'அது உறுதியாக உள்ள பாடல்களைக் கொண்டுவரும்';

  @override
  String get tasteWhatItThinks => 'நீங்கள் விரும்புவதாக அது நினைப்பவை';

  @override
  String get tasteWhatItThinksSub =>
      'இயக்கங்கள், தவிர்ப்புகள், விருப்பங்கள், மீள்கேட்புகளிலிருந்து கற்றது';

  @override
  String get tasteArtists => 'அது சார்ந்திருக்கும் கலைஞர்கள்';

  @override
  String get tasteWhenYouListen => 'நீங்கள் கேட்கும் நேரம்';

  @override
  String get tasteWhenYouListenSub =>
      'மணிக்கு இயக்கங்கள் — தற்போதைய மணிக்கு கூடுதல் எடை';

  @override
  String get tasteDecades => 'பத்தாண்டுகள்';

  @override
  String get tasteTune => 'பரிந்துரைகளை சீரமை';

  @override
  String get tasteTuneSub => 'அடுத்த முகப்பு புதுப்பிப்பில் நடைமுறைக்கு வரும்';

  @override
  String get tasteDiscovery => 'கண்டறிதல்';

  @override
  String get tasteDiscoverySub => 'பழக்கமானவை ↔ நீங்கள் கேட்காதவை';

  @override
  String get tasteEnergy => 'ஆற்றல்';

  @override
  String get tasteEnergySub => 'அமைதி ↔ உரத்த';

  @override
  String get tasteRecency => 'புதுமை';

  @override
  String get tasteRecencySub => 'காலம் கடந்தவை ↔ புத்தம் புதியவை';

  @override
  String get tasteNostalgia => 'நினைவேக்கம்';

  @override
  String get tasteNostalgiaSub =>
      'பழைய விருப்பப் பாடல் எவ்வளவு பழையதானால் மறந்ததாகக் கருதப்படும்';

  @override
  String get tasteSignals => 'அது பயன்படுத்தக்கூடிய குறிப்புகள்';

  @override
  String get tasteSignalsSub => 'அனைத்தும் இந்தச் சாதனத்திலேயே இருக்கும்';

  @override
  String get tasteUseHistory => 'நான் இயக்கியவை';

  @override
  String get tasteUseSkips => 'நான் தவிர்ப்பவை';

  @override
  String get tasteUseTime => 'நாளின் நேரம்';

  @override
  String get tasteUseYouTube => 'YouTube இன் பரிந்துரைகள்';

  @override
  String get tasteAlwaysMore => 'எப்போதும் இன்னும்';

  @override
  String get tasteNeverAgain => 'இனி ஒருபோதும் வேண்டாம்';

  @override
  String get tasteAddArtist => 'கலைஞரைச் சேர்';

  @override
  String get tasteMoreOfPrompt => 'எப்போதும் இன்னும்…';

  @override
  String get tasteNeverAgainPrompt => 'இனி ஒருபோதும் வேண்டாம்…';

  @override
  String get tasteReset => 'கற்றதை மீட்டமை';

  @override
  String get tasteResetSub =>
      'உங்கள் இசை அப்படியே இருக்கும்; சுயவிவரம் பூஜ்யத்திலிருந்து தொடங்கும்';

  @override
  String get trainCard => 'மதிப்பிட்டுப் பயிற்றுவியுங்கள்';

  @override
  String get trainCardSub =>
      'உண்மையான பாடல்களை ஸ்வைப் செய்யுங்கள். இது போன்றவை வேண்டுமெனில் வலது, இனி வேண்டாம் எனில் இடது. இங்கே இரண்டு நிமிடம் ஒரு வார கேட்பை விட மேல்.';

  @override
  String get trainStart => 'பயிற்சிச் சுற்றைத் தொடங்கு';

  @override
  String get trainTitle => 'பயிற்சிச் சுற்று';

  @override
  String get trainQuestion => 'இது உங்கள் முகப்பில் வேண்டுமா?';

  @override
  String get trainMoreLikeThis => 'இது போன்றவை இன்னும்';

  @override
  String get trainNeverAgain => 'இனி ஒருபோதும் வேண்டாம்';

  @override
  String get trainDone => 'சுற்று முடிந்தது';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked வைத்தவை · $blocked தடுத்தவை. நம்பிக்கை $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'உங்கள் ரசனைக்குத் திரும்பு';

  @override
  String get trainNothingTitle => 'இன்னும் மதிப்பிட எதுவுமில்லை';

  @override
  String get trainNothingBody =>
      'முதலில் இசையைச் சேருங்கள் அல்லது AI வேட்பாளர்களைக் கொண்டுவரட்டும், பிறகு திரும்பி வாருங்கள்.';

  @override
  String get trainLeaveTitle => 'பயிற்சிச் சுற்றிலிருந்து வெளியேறவா?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'இப்போது வெளியேறினால், இந்தச் சுற்றின் அனைத்தையும் AI நிராகரிக்கும் — நீங்கள் இப்போது மதிப்பிட்ட $count பாடல்கள் அனைத்தும்.',
      one:
          'இப்போது வெளியேறினால், இந்தச் சுற்றின் அனைத்தையும் AI நிராகரிக்கும் — நீங்கள் இப்போது மதிப்பிட்ட 1 பாடல்.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'பயிற்சியைத் தொடர்';

  @override
  String get trainDiscard => 'நிராகரித்து வெளியேறு';

  @override
  String get setTitle => 'அமைப்புகள்';

  @override
  String get setAppearance => 'தோற்றம்';

  @override
  String get setTheme => 'தீம்';

  @override
  String get setThemeSystem => 'கணினியைப் பின்பற்று';

  @override
  String get setThemeLight => 'ஒளி';

  @override
  String get setThemeDark => 'இருள்';

  @override
  String get setPureBlack => 'தூய கருப்பு';

  @override
  String get setPureBlackSub => 'OLED திரையில் மின்சாரத்தைச் சேமிக்கும்';

  @override
  String get setAccent => 'உச்சரிப்பு நிறம்';

  @override
  String get setAccentArtwork => 'அட்டைப் படத்திலிருந்து';

  @override
  String get setAccentFixed => 'நான் தேர்ந்தெடுத்த ஒரு நிறம்';

  @override
  String get setLanguage => 'மொழி';

  @override
  String get setLanguageSystem => 'கணினியைப் பின்பற்று';

  @override
  String get setAccessibility => 'அணுகல்தன்மை';

  @override
  String get setTextSize => 'எழுத்து அளவு';

  @override
  String get setTextSizeSub => 'உங்கள் கணினி அமைப்பிற்கு மேலாக';

  @override
  String get setReduceMotion => 'இயக்கத்தைக் குறை';

  @override
  String get setReduceMotionSub =>
      'பார்கள், விஷுவலைசர், துள்ளும் ஸ்க்ரோலிங், வளையும் தட்டல்கள், பக்க மாற்றங்களை நிறுத்தும்';

  @override
  String get setHighContrast => 'உயர் மாறுபாடு';

  @override
  String get setHighContrastSub =>
      'வலுவான பிரிப்பு மற்றும் தெரியும் வெளிக்கோடுகள்';

  @override
  String get setBoldText => 'தடித்த எழுத்து';

  @override
  String get setPlayback => 'இயக்கம்';

  @override
  String get setAutoRadio => 'இசை தொடர்ந்து ஒலிக்கட்டும்';

  @override
  String get setAutoRadioSub =>
      'வரிசை முடிந்ததும், கடைசிப் பாடலை அடிப்படையாகக் கொண்ட வானொலியுடன் தொடரும்';

  @override
  String get setSmartShuffle => 'ஸ்மார்ட் கலக்கல்';

  @override
  String get setSmartShuffleSub => 'தற்செயலாக இல்லாமல் ரசனையின்படி கலக்கும்';

  @override
  String get setResume => 'நிறுத்திய இடத்திலிருந்து தொடர்';

  @override
  String get setResumeSub =>
      'ஆப்ஸ் திறக்கும்போது வரிசையை இடைநிறுத்திய நிலையில் மீட்டெடுக்கும்';

  @override
  String get setDataSaver => 'Wi-Fi இல்லாதபோது டேட்டா சேமிப்பு';

  @override
  String get setDataSaverSub =>
      'மொபைல் டேட்டாவில் ஸ்ட்ரீம்களையும் பதிவிறக்கங்களையும் 128 kbps ஆக வரையறுக்கும்';

  @override
  String get setHaptics => 'அதிர்வு பின்னூட்டம்';

  @override
  String get setShowReasons => 'ஏன் பரிந்துரைக்கப்பட்டது என்பதைக் காட்டு';

  @override
  String get setSkipSilence => 'அமைதியைத் தவிர்';

  @override
  String get setQuality => 'ஒலித் தரம்';

  @override
  String get setQualityLow => 'குறைவு · 64 kbps';

  @override
  String get setQualityNormal => 'இயல்பு · 128 kbps';

  @override
  String get setQualityHigh => 'உயர்வு · 192 kbps';

  @override
  String get setQualityBest => 'கிடைக்கும் சிறந்தது';

  @override
  String get setStorage => 'பதிவிறக்கங்கள் மற்றும் சேமிப்பு';

  @override
  String get setWifiOnly => 'Wi-Fi இல் மட்டும் பதிவிறக்கு';

  @override
  String get setDailyLimit => 'AI க்கான தினசரி வரம்பு';

  @override
  String setDailyLimitSub(int count) {
    return 'ஒரு நாளைக்கு $count பாடல்கள்';
  }

  @override
  String get setBudget => 'AI பயன்படுத்தக்கூடிய சேமிப்பு';

  @override
  String setUsed(Object size) {
    return 'பதிவிறக்கங்கள் $size பயன்படுத்தியுள்ளன';
  }

  @override
  String get setYourMusic => 'உங்கள் இசை';

  @override
  String get setImport => 'இந்தச் சாதனத்திலிருந்து இசையைச் சேர்';

  @override
  String get setImportSub =>
      'கோப்புறைகள் அல்லது தனிக் கோப்புகளைத் தேர்ந்தெடுக்கவும்';

  @override
  String get setCleanup => 'காணாமல் போன கோப்புகளை அகற்று';

  @override
  String get setCleanupSub => 'கோப்பு இல்லாத பாடல்களை நீக்கு';

  @override
  String setCleanupDone(int count) {
    return 'காணாமல் போன $count கோப்புகள் நீக்கப்பட்டன.';
  }

  @override
  String get setExport => 'என் ரசனையை வேறொரு சாதனத்திற்கு அனுப்பு';

  @override
  String get setExportSub =>
      'உங்கள் விருப்பங்கள், இயக்கங்கள், AI கற்ற அனைத்தும் அடங்கிய கோப்பைச் சேமிக்கும்';

  @override
  String get setImportTaste => 'வேறொரு சாதனத்திலிருந்து ரசனையை ஏற்று';

  @override
  String get setImportTasteSub =>
      'சேமித்த ரசனைக் கோப்பைத் தேர்ந்தெடுத்து இணைக்கவும் — மீண்டும் செய்வது பாதுகாப்பானது';

  @override
  String get setAbout => 'பற்றி';

  @override
  String get setAboutBody =>
      'YouTube மற்றும் உங்கள் சொந்தக் கோப்புகளிலிருந்து இசை. AI முழுவதுமாக இந்தச் சாதனத்திலேயே இயங்குகிறது — எதுவும் வெளியே செல்லாது.';

  @override
  String get setSource => 'மூலக் குறியீடு';

  @override
  String get importTitle => 'இசையைச் சேர்';

  @override
  String get importPickFolder => 'கோப்புறையைத் தேர்ந்தெடு';

  @override
  String get importPickFiles => 'கோப்புகளைத் தேர்ந்தெடு';

  @override
  String importScanning(Object file) {
    return '$file ஸ்கேன் செய்யப்படுகிறது';
  }

  @override
  String importAdded(int count) {
    return '$count சேர்க்கப்பட்டன';
  }

  @override
  String get importDenied =>
      'அனுமதி மறுக்கப்பட்டது — உங்கள் இசையைப் படிக்க முடியாது.';

  @override
  String get importWatched => 'அது கண்காணிக்கும் கோப்புறைகள்';

  @override
  String get importIosHint =>
      'Files ஆப்ஸைத் திறந்து, On My iPhone → TuneBox க்குச் சென்று, இசையை அங்கே போடுங்கள்.';

  @override
  String get playerQueue => 'வரிசை';

  @override
  String get playerUpNext => 'அடுத்து';

  @override
  String get playerLyrics => 'பாடல் வரிகள்';

  @override
  String get playerNoLyrics => 'இதற்குப் பாடல் வரிகள் இல்லை.';

  @override
  String get playerRepeat => 'திரும்பவும்';

  @override
  String get playerShuffle => 'கலக்கு';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" ஐ இயக்க முடியவில்லை';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" தவிர்க்கப்படுகிறது — ஸ்ட்ரீம் திறக்கவில்லை.';
  }

  @override
  String get undo => 'செயல்தவிர்';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'இப்போது: $tags, $artist முன்னிலையில்.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'இப்போது: $tags.';
  }

  @override
  String get setColour => 'நிறம்';

  @override
  String get setColourSub => 'முழு ஆப்ஸும் இதைப் பின்பற்றும்';

  @override
  String get setCoverArt => 'அட்டைப் படம்';

  @override
  String get setMyColour => 'என் நிறம்';

  @override
  String get setCoverArtSub =>
      'ஒவ்வொரு பாடலும் அதன் அட்டையிலிருந்து ஆப்ஸுக்கு நிறம் தரும்.';

  @override
  String get setMyColourSub => 'ஒரே நிறம், எங்கும், எப்போதும்.';

  @override
  String get setPickColour => 'எந்த நிறத்தையும் தேர்ந்தெடு';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi இல் மட்டும் பதிவிறக்கு';

  @override
  String get setDownloadLikes => 'நான் விரும்புவதை எல்லாம் பதிவிறக்கு';

  @override
  String get setDownloadLikesSub => 'இதயப் பொத்தான் கோப்பையும் சேமிக்கும்';

  @override
  String get setAiInstall => 'AI தேர்ந்தெடுக்கும் இசையை நிறுவ அனுமதி';

  @override
  String get setSkipSilenceSub =>
      'Android மட்டும். அமைதியான தொடக்கங்கள், மங்கல்கள், மென்மையான பகுதிகளை வெட்டலாம் — இசை தாவினால் அணைத்து வையுங்கள்';

  @override
  String get setStorageUsed => 'பதிவிறக்கங்கள் பயன்படுத்தும் சேமிப்பு';

  @override
  String get setLibrary => 'நூலகம்';

  @override
  String get setUpdates => 'புதுப்பிப்புகள்';

  @override
  String get setAutoUpdate => 'தானாகவே புதுப்பிப்புகளைச் சரிபார்';

  @override
  String get setAutoUpdateSub =>
      'சில மணி நேரத்திற்கு ஒருமுறை, அமைதியாக, Wi-Fi இல் பதிவிறக்கும். நிறுவ இன்னும் உங்களிடம் கேட்கும்.';

  @override
  String setUpdateReady(Object version) {
    return '$version க்கான புதுப்பிப்பு தயார்';
  }

  @override
  String get setUpdateReadySub => 'பதிவிறக்கப்பட்டது — நிறுவத் தட்டவும்';

  @override
  String get setUpdateAvailableSub =>
      'வெளியீடுகள் பக்கத்திலிருந்து பெறுங்கள் — இணைப்பை நகலெடுக்கத் தட்டவும்';

  @override
  String get setLinkCopied => 'இணைப்பு நகலெடுக்கப்பட்டது';

  @override
  String get setCheckNow => 'இப்போது சரிபார்';

  @override
  String get setUpToDate => 'TuneBox புதுப்பித்த நிலையில் உள்ளது';

  @override
  String get setChecking => 'புதிய பதிப்பைத் தேடுகிறது…';
}
