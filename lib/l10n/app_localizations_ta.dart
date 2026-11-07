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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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
