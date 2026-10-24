// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class LAm extends L {
  LAm([String locale = 'am']) : super(locale);

  @override
  String get navHome => 'መነሻ';

  @override
  String get navExplore => 'አስስ';

  @override
  String get navLibrary => 'ቤተ-መጻሕፍት';

  @override
  String get navTaste => 'ምርጫዎችዎ';

  @override
  String get actionDone => 'ተጠናቋል';

  @override
  String get actionCancel => 'ተወው';

  @override
  String get actionCreate => 'ፍጠር';

  @override
  String get actionPlay => 'አጫውት';

  @override
  String get actionShuffle => 'አቀላቅል';

  @override
  String get actionPlayAll => 'ሁሉንም አጫውት';

  @override
  String get actionAdd => 'ጨምር';

  @override
  String get actionRemove => 'አስወግድ';

  @override
  String get actionName => 'ስም';

  @override
  String get greetingNight => 'አሁንም ንቁ ነዎት?';

  @override
  String get greetingMorning => 'እንደምን አደሩ';

  @override
  String get greetingAfternoon => 'እንደምን ዋሉ';

  @override
  String get greetingEvening => 'እንደምን አመሹ';

  @override
  String get homeBuilding => 'AI መደርደሪያዎችዎን እየገነባ ነው…';

  @override
  String get homeOffline => 'ከመስመር ውጭ — በመሣሪያው ላይ ያለውን በማሳየት ላይ';

  @override
  String get homeNothingYet => 'እስካሁን የሚታይ ነገር የለም';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count መደርደሪያዎች፣ አሁን የታደሱ',
      one: '1 መደርደሪያ፣ አሁን የታደሰ',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'መደርደሪያዎችን እንደገና ገንባ';

  @override
  String get homeAddMusic => 'ከዚህ መሣሪያ ሙዚቃ ጨምር';

  @override
  String get homeQuickPicks => 'ፈጣን ምርጫዎች';

  @override
  String get homeQuickPicksSub => 'በቀጥታ ወደ ሰሙት ይመለሱ';

  @override
  String get homeEmptyTitle => 'ቤተ-መጻሕፍትዎ ባዶ ነው';

  @override
  String get homeEmptyBody =>
      'የሆነ ነገር ይፈልጉ፣ ወይም በዚህ መሣሪያ ላይ ያለውን ሙዚቃ ይጨምሩ። AI ከመጀመሪያው ጨዋታዎ ጀምሮ መማር ይጀምራል።';

  @override
  String get homeAddMyMusic => 'ሙዚቃዬን ጨምር';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube ላይ መድረስ አልተቻለም፦ $error';
  }

  @override
  String get moodFocus => 'ትኩረት';

  @override
  String get moodWorkout => 'ስፖርት';

  @override
  String get moodChill => 'ዕረፍት';

  @override
  String get moodCommute => 'ጉዞ';

  @override
  String get moodParty => 'ድግስ';

  @override
  String moodBuilding(Object mood) {
    return 'የ$mood ቅልቅል በመገንባት ላይ…';
  }

  @override
  String moodFailed(Object error) {
    return 'አልተሳካም፦ $error';
  }

  @override
  String get shelfRepeat => 'በተደጋጋሚ የሚጫወት';

  @override
  String get shelfRepeatSub => 'ያለፉት ሁለት ሳምንታትዎ';

  @override
  String get shelfForgotten => 'የወደዷቸው የተረሱ የቆዩ ተወዳጆች';

  @override
  String get shelfForgottenSub => 'በአንድ ወቅት የተወደዱ፣ ለተወሰነ ጊዜ ያልተነኩ';

  @override
  String get shelfNew => 'አዲስ';

  @override
  String get shelfNewSub => 'AI ለእርስዎ ናቸው ብሎ የሚያስባቸው አዳዲስ ዘፈኖች';

  @override
  String shelfBecause(Object artist) {
    return '$artistን ስላጫወቱ';
  }

  @override
  String get shelfBecauseSub => 'ከምርጫዎ ተመሳሳይ ጥግ';

  @override
  String get shelfDeep => 'እምብዛም ያልተነኩ';

  @override
  String get shelfDeepSub => 'በቤተ-መጻሕፍትዎ ውስጥ፣ ብዙም ያልተጫወቱ';

  @override
  String get shelfMix => 'የእርስዎ ቅልቅል';

  @override
  String get shelfMixSub => 'መተግበሪያውን በከፈቱ ቁጥር እንደገና ይገነባል';

  @override
  String get shelfAdded => 'በቅርቡ የተጨመሩ';

  @override
  String get shelfAddedSub => 'የወረዱ እና ያስገቧቸው ፋይሎች';

  @override
  String get shelfStarter => 'ከዚህ ይጀምሩ';

  @override
  String get shelfStarterSub => 'ጥቂቶችን ያጫውቱ እና AI ወዲያውኑ መማር ይጀምራል';

  @override
  String reasonPlays(int count) {
    return '$count ጊዜ ተጫውቷል';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ተወዷል፣ መጨረሻ የተጫወተው $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count ጊዜ ተጫውቷል፣ መጨረሻ $when';
  }

  @override
  String get reasonTopArtist => 'ከብዙ ጊዜ ከሚያጫውቷቸው ሙዚቀኞች አንዱ';

  @override
  String reasonMore(Object artist) {
    return 'ተጨማሪ $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'ወደ $artist ደጋግመው ይመለሳሉ';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'የእርስዎ አይነት $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'በቅርቡ ብዙ $tag';
  }

  @override
  String get reasonOutThisYear => 'በዚህ ዓመት የወጣ';

  @override
  String get reasonReleasedRecently => 'በቅርቡ የተለቀቀ';

  @override
  String get reasonClose => 'ሲያጫውቱት ከነበረው ጋር የሚቀራረብ';

  @override
  String reasonNear(Object artist) {
    return 'ከ$artist ጋር ይቀራረባል';
  }

  @override
  String get reasonNeverPlayed => 'ተጫውቶ አያውቅም';

  @override
  String get reasonPlayedOnce => 'አንድ ጊዜ ተጫውቷል';

  @override
  String get reasonPopular => 'አሁን ተወዳጅ';

  @override
  String whenYearsAgo(int count) {
    return 'ከ$count ዓመት በፊት';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'ከ$count ወር በፊት';
  }

  @override
  String whenDaysAgo(int count) {
    return 'ከ$count ቀን በፊት';
  }

  @override
  String get searchHint => 'ዘፈኖች፣ ሙዚቀኞች፣ አልበሞች';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ውጤቶች',
      one: '1 ውጤት',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'የቅርብ ጊዜ ፍለጋዎች';

  @override
  String get searchEmptyTitle => 'ምንም አልተገኘም';

  @override
  String get searchEmptyBody => 'ሌላ የፊደል አጻጻፍ ወይም የሙዚቀኛውን ስም ብቻ ይሞክሩ።';

  @override
  String get searchStartTitle => 'የሚጫወት ነገር ያግኙ';

  @override
  String get searchStartBody =>
      'YouTube Musicን ይፈልጉ — ዘፈኖች ብቻ ይመለሳሉ፣ የሌሎች ነገሮች ቪዲዮዎች በጭራሽ።';

  @override
  String get libPlaylists => 'አጫዋች ዝርዝሮች';

  @override
  String get libSongs => 'ዘፈኖች';

  @override
  String get libArtists => 'ሙዚቀኞች';

  @override
  String get libLiked => 'የተወደዱ';

  @override
  String get libDownloads => 'የወረዱ';

  @override
  String get libImported => 'የገቡ';

  @override
  String get libLikedSongs => 'የተወደዱ ዘፈኖች';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ዘፈኖች',
      one: '1 ዘፈን',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ከመስመር ውጭ';
  }

  @override
  String get libMyFiles => 'የራሴ ፋይሎች';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ፋይሎች',
      one: '1 ፋይል',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'አዲስ አጫዋች ዝርዝር';

  @override
  String get libMakeOne => 'አንድ ይስሩ';

  @override
  String get libSortRecent => 'በቅርቡ የተጨመሩ';

  @override
  String get libSortTitle => 'ርዕስ';

  @override
  String get libSortArtist => 'ሙዚቀኛ';

  @override
  String get libSortPlays => 'ብዙ የተጫወቱ';

  @override
  String get sheetNotForMe => 'ለእኔ አይደለም';

  @override
  String get sheetNotForMeSub => 'ይህንን ዳግመኛ አትጠቁም';

  @override
  String get sheetBlocked => 'ታግዷል — እንደገና ለመፍቀድ ይንኩ';

  @override
  String get sheetBlockedSub => 'በምክሮች ውስጥ እንደገና ሊታይ ይችላል';

  @override
  String get sheetPlayNext => 'ቀጥሎ አጫውት';

  @override
  String get sheetAddToPlaylist => 'ወደ አጫዋች ዝርዝር ጨምር';

  @override
  String get sheetDownloaded => 'ወርዷል';

  @override
  String get sheetRemoveFile => 'ፋይሉን ለማስወገድ ይንኩ';

  @override
  String get sheetDownload => 'አውርድ';

  @override
  String get sheetKeepOffline => 'ከመስመር ውጭ እንዲቆይ አድርግ';

  @override
  String get sheetRadio => 'ሬዲዮ ጀምር';

  @override
  String get sheetRadioSub => 'በዚህ ዘፈን ዙሪያ የተገነባ ወረፋ';

  @override
  String get sheetQueue => 'ወረፋ';

  @override
  String get sheetSleepTimer => 'የእንቅልፍ ሰዓት ቆጣሪ';

  @override
  String get sheetSleepOff => 'ጠፍቷል';

  @override
  String sheetSleepMinutes(int count) {
    return '$count ደቂቃዎች';
  }

  @override
  String get sheetSleepEndOfTrack => 'የዚህ ዘፈን መጨረሻ';

  @override
  String sheetSleepSet(int count) {
    return 'ሙዚቃ በ$count ደቂቃ ውስጥ ይቆማል';
  }

  @override
  String get tasteTitle => 'ምርጫዎችዎ';

  @override
  String get tasteRetrain => 'እንደገና አሰልጥን';

  @override
  String get tasteRetraining => 'በታሪክዎ ላይ እንደገና በማሰልጠን ላይ…';

  @override
  String get tasteRetrained => 'AI ሞዴሉን እንደገና ገንብቷል።';

  @override
  String tasteConfidence(int percent) {
    return ' እርግጠኝነት $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays ጨዋታዎች · $skips ዝለሎች · $likes ወዶች';
  }

  @override
  String get tasteEmptySummary => 'ጥቂት ዘፈኖችን ያጫውቱ እና ይህ ይሞላል።';

  @override
  String get tasteKeepLearning => 'ስሰማ መማሩን ቀጥል';

  @override
  String get tasteKeepLearningSub => 'አሁን ያለውን መገለጫ ለማቀዝቀዝ ያጥፉ';

  @override
  String get tasteDownloadsTitle => 'AI የሚያስተናግዳቸው ውርዶች';

  @override
  String get tasteDownloadsSub => 'ሙዚቃ ሳይጠይቁ በመሣሪያው ላይ ይቀመጣል';

  @override
  String get tasteDownloadLikes => 'የምወደውን ሁሉ አውርድ';

  @override
  String get tasteDownloadLikesSub => 'ልቡን ይንኩ እና ፋይሉ ከመስመር ውጭ ይቀመጣል';

  @override
  String get tasteAiInstall => 'AI የመረጠውን ሙዚቃ እንዲጭን ፍቀድ';

  @override
  String get tasteAiInstallSub => 'እርግጠኛ የሆነባቸውን ዘፈኖች ያመጣል';

  @override
  String get tasteWhatItThinks => 'የሚወዱት ይመስለዋል';

  @override
  String get tasteWhatItThinksSub => 'ከጨዋታዎች፣ ዝለሎች፣ ወዶች እና ድግግሞሾች የተማረ';

  @override
  String get tasteArtists => 'የሚተማመንባቸው ሙዚቀኞች';

  @override
  String get tasteWhenYouListen => 'ሲያዳምጡ';

  @override
  String get tasteWhenYouListenSub => 'በሰዓት ጨዋታዎች — የአሁኑ ሰዓት ክብደት ይሰጠዋል';

  @override
  String get tasteDecades => 'አሥርተ ዓመታት';

  @override
  String get tasteTune => 'ምክሮችን አስተካክል';

  @override
  String get tasteTuneSub => 'ከሚቀጥለው የመነሻ ማደስ ጋር ተግባራዊ ይሆናል';

  @override
  String get tasteDiscovery => 'ግኝት';

  @override
  String get tasteDiscoverySub => 'የለመዱት ↔ ሰምተውት የማያውቁት';

  @override
  String get tasteEnergy => 'ጉልበት';

  @override
  String get tasteEnergySub => 'ረጋ ያለ ↔ ጮክ ያለ';

  @override
  String get tasteRecency => 'አዲስነት';

  @override
  String get tasteRecencySub => 'ጊዜ የማይሽረው ↔ ፍጹም አዲስ';

  @override
  String get tasteNostalgia => 'ናፍቆት';

  @override
  String get tasteNostalgiaSub => 'የቆየ ተወዳጅ እንደተረሳ የሚቆጠረው ምን ያህል ወደ ኋላ ነው';

  @override
  String get tasteSignals => 'ሊጠቀምባቸው የሚችላቸው ምልክቶች';

  @override
  String get tasteSignalsSub => 'ሁሉም ነገር በዚህ መሣሪያ ላይ ይቆያል';

  @override
  String get tasteUseHistory => 'ያጫወትኩት';

  @override
  String get tasteUseSkips => 'የምዘልለው';

  @override
  String get tasteUseTime => 'የቀኑ ሰዓት';

  @override
  String get tasteUseYouTube => 'ከYouTube የሚመጡ ጥቆማዎች';

  @override
  String get tasteAlwaysMore => 'ሁልጊዜ ተጨማሪ';

  @override
  String get tasteNeverAgain => 'ዳግመኛ በጭራሽ';

  @override
  String get tasteAddArtist => 'ሙዚቀኛ ጨምር';

  @override
  String get tasteMoreOfPrompt => 'ሁልጊዜ ተጨማሪ…';

  @override
  String get tasteNeverAgainPrompt => 'ዳግመኛ በጭራሽ…';

  @override
  String get tasteReset => 'የተማረውን ዳግም አስጀምር';

  @override
  String get tasteResetSub => 'ሙዚቃዎ ይቆያል፤ መገለጫው ከባዶ ይጀምራል';

  @override
  String get trainCard => 'በደረጃ መስጠት አሰልጥነው';

  @override
  String get trainCardSub =>
      'በእውነተኛ ዘፈኖች ውስጥ ያንሸራትቱ። ወደ ቀኝ ለተጨማሪ እንዲህ ያሉ፣ ወደ ግራ ለዳግመኛ በጭራሽ። እዚህ ሁለት ደቂቃ ከአንድ ሳምንት ማዳመጥ ይበልጣል።';

  @override
  String get trainStart => 'የሥልጠና ዙር ጀምር';

  @override
  String get trainTitle => 'የሥልጠና ዙር';

  @override
  String get trainQuestion => 'ይህ በመነሻዎ ላይ እንዲሆን ይፈልጋሉ?';

  @override
  String get trainMoreLikeThis => 'ተጨማሪ እንዲህ ያሉ';

  @override
  String get trainNeverAgain => 'ዳግመኛ በጭራሽ';

  @override
  String get trainDone => 'ዙሩ ተጠናቋል';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked ተይዘዋል · $blocked ታግደዋል። እርግጠኝነት $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'ወደ ምርጫዎችዎ ተመለስ';

  @override
  String get trainNothingTitle => 'እስካሁን ደረጃ የሚሰጥ ነገር የለም';

  @override
  String get trainNothingBody =>
      'መጀመሪያ ሙዚቃ ይጨምሩ ወይም AI እጩዎችን እንዲያመጣ ያድርጉ፣ ከዚያ ይመለሱ።';

  @override
  String get trainLeaveTitle => 'የሥልጠና ዙሩን ይተዉ?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'አሁን ከወጡ AI ከዚህ ዙር ሁሉንም ይጥላል — ደረጃ የሰጧቸውን ሁሉንም $count ዘፈኖች።',
      one: 'አሁን ከወጡ AI ከዚህ ዙር ሁሉንም ይጥላል — ደረጃ የሰጡትን 1 ዘፈን።',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'ሥልጠናውን ቀጥል';

  @override
  String get trainDiscard => 'ጣል እና ውጣ';

  @override
  String get setTitle => 'ቅንብሮች';

  @override
  String get setAppearance => 'ገጽታ';

  @override
  String get setTheme => 'ጭብጥ';

  @override
  String get setThemeSystem => 'ስርዓቱን ተከተል';

  @override
  String get setThemeLight => 'ብሩህ';

  @override
  String get setThemeDark => 'ጨለማ';

  @override
  String get setPureBlack => 'ንጹህ ጥቁር';

  @override
  String get setPureBlackSub => 'በOLED ማያ ላይ ኃይል ይቆጥባል';

  @override
  String get setAccent => 'የአጽንዖት ቀለም';

  @override
  String get setAccentArtwork => 'ከሽፋን ጥበብ';

  @override
  String get setAccentFixed => 'የመረጥኩት አንድ ቀለም';

  @override
  String get setLanguage => 'ቋንቋ';

  @override
  String get setLanguageSystem => 'ስርዓቱን ተከተል';

  @override
  String get setAccessibility => 'ተደራሽነት';

  @override
  String get setTextSize => 'የጽሑፍ መጠን';

  @override
  String get setTextSizeSub => 'ከስርዓት ቅንብርዎ በላይ';

  @override
  String get setReduceMotion => 'እንቅስቃሴን ቀንስ';

  @override
  String get setReduceMotionSub =>
      'አሞሌዎችን፣ ቪዥዋላይዘሩን፣ ተንሳፋፊ ማሸብለልን፣ ተለጣጣሽ ንክኪዎችን እና የገጽ ሽግግሮችን ያቆማል';

  @override
  String get setHighContrast => 'ከፍተኛ ንፅፅር';

  @override
  String get setHighContrastSub => 'ጠንካራ ልዩነት እና የሚታዩ ዝርዝር ድንበሮች';

  @override
  String get setBoldText => 'ደማቅ ጽሑፍ';

  @override
  String get setPlayback => 'መልሶ ማጫወት';

  @override
  String get setAutoRadio => 'ሙዚቃው እንዲቀጥል አድርግ';

  @override
  String get setAutoRadioSub => 'ወረፋው ሲያልቅ ከመጨረሻው ዘፈን በተገነባ ሬዲዮ ይቀጥሉ';

  @override
  String get setSmartShuffle => 'ብልህ ማቀላቀል';

  @override
  String get setSmartShuffleSub => 'በዘፈቀደ ሳይሆን በምርጫ ያቀላቅላል';

  @override
  String get setResume => 'ካቆምኩበት ቀጥል';

  @override
  String get setResumeSub => 'መተግበሪያው ሲከፈት ወረፋውን ባለበት ቆሞ ይመልሳል';

  @override
  String get setDataSaver => 'ከWi-Fi ውጭ ዳታ ቆጣቢ';

  @override
  String get setDataSaverSub => 'በሞባይል ዳታ ላይ ዥረቶችን እና ውርዶችን በ128 kbps ይገድባል';

  @override
  String get setHaptics => 'የንዝረት ምላሽ';

  @override
  String get setShowReasons => 'ለምን እንደተመከረ አሳይ';

  @override
  String get setSkipSilence => 'ዝምታን ዝለል';

  @override
  String get setQuality => 'የድምፅ ጥራት';

  @override
  String get setQualityLow => 'ዝቅተኛ · 64 kbps';

  @override
  String get setQualityNormal => 'መደበኛ · 128 kbps';

  @override
  String get setQualityHigh => 'ከፍተኛ · 192 kbps';

  @override
  String get setQualityBest => 'ያለው ምርጥ';

  @override
  String get setStorage => 'ውርዶች እና ማከማቻ';

  @override
  String get setWifiOnly => 'በWi-Fi ብቻ አውርድ';

  @override
  String get setDailyLimit => 'ለAI ዕለታዊ ገደብ';

  @override
  String setDailyLimitSub(int count) {
    return 'በቀን $count ዘፈኖች';
  }

  @override
  String get setBudget => 'AI ሊጠቀምበት የሚችል ማከማቻ';

  @override
  String setUsed(Object size) {
    return 'በውርዶች $size ጥቅም ላይ ውሏል';
  }

  @override
  String get setYourMusic => 'ሙዚቃዎ';

  @override
  String get setImport => 'ከዚህ መሣሪያ ሙዚቃ ጨምር';

  @override
  String get setImportSub => 'አቃፊዎችን ወይም ነጠላ ፋይሎችን ይምረጡ';

  @override
  String get setCleanup => 'የጠፉ ፋይሎችን አጽዳ';

  @override
  String get setCleanupSub => 'ፋይላቸው የጠፋ ዘፈኖችን አስወግድ';

  @override
  String setCleanupDone(int count) {
    return '$count የጠፉ ፋይሎች ተወግደዋል።';
  }

  @override
  String get setExport => 'ምርጫዬን ወደ ሌላ መሣሪያ ላክ';

  @override
  String get setExportSub => 'ወዶችዎን፣ ጨዋታዎችዎን እና AI የተማረውን ሁሉ የያዘ ፋይል ያስቀምጣል';

  @override
  String get setImportTaste => 'ምርጫን ከሌላ መሣሪያ ጫን';

  @override
  String get setImportTasteSub =>
      'የተቀመጠ የምርጫ ፋይል ይምረጡ እና ያዋህዱት — መድገም ደህንነቱ የተጠበቀ ነው';

  @override
  String get setAbout => 'ስለ';

  @override
  String get setAboutBody =>
      'ከYouTube እና ከራስዎ ፋይሎች የሚመጣ ሙዚቃ። AI ሙሉ በሙሉ በዚህ መሣሪያ ላይ ይሰራል — ምንም ነገር አይወጣም።';

  @override
  String get setSource => 'የምንጭ ኮድ';

  @override
  String get importTitle => 'ሙዚቃ ጨምር';

  @override
  String get importPickFolder => 'አቃፊ ይምረጡ';

  @override
  String get importPickFiles => 'ፋይሎችን ይምረጡ';

  @override
  String importScanning(Object file) {
    return '$file በመቃኘት ላይ';
  }

  @override
  String importAdded(int count) {
    return '$count ተጨምሯል';
  }

  @override
  String get importDenied => 'ፈቃድ ተከልክሏል — ሙዚቃዎን ማንበብ አይቻልም።';

  @override
  String get importWatched => 'የሚከታተላቸው አቃፊዎች';

  @override
  String get importIosHint =>
      'የፋይሎች መተግበሪያን ይክፈቱ፣ በዚህ አይፎን ላይ → TuneBox ይሂዱ እና ሙዚቃውን እዚያ ይጣሉ።';

  @override
  String get playerQueue => 'ወረፋ';

  @override
  String get playerUpNext => 'ቀጥሎ';

  @override
  String get playerLyrics => 'ግጥም';

  @override
  String get playerNoLyrics => 'ለዚህ ግጥም የለም።';

  @override
  String get playerRepeat => 'ድገም';

  @override
  String get playerShuffle => 'አቀላቅል';

  @override
  String errorPlayback(Object title) {
    return '\"$title\"ን ማጫወት አልተቻለም';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\"ን በመዝለል ላይ — ዥረቱ አልተከፈተም።';
  }

  @override
  String get undo => 'ቀልብስ';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'አሁን፦ $tags፣ በ$artist እየተመራ።';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'አሁን፦ $tags።';
  }

  @override
  String get setColour => 'ቀለም';

  @override
  String get setColourSub => 'መተግበሪያው በሙሉ ይህንን ይከተላል';

  @override
  String get setCoverArt => 'የሽፋን ጥበብ';

  @override
  String get setMyColour => 'የእኔ ቀለም';

  @override
  String get setCoverArtSub => 'እያንዳንዱ ዘፈን መተግበሪያውን ከሽፋኑ ቀለም ያስቀባል።';

  @override
  String get setMyColourSub => 'አንድ ቀለም፣ በሁሉም ቦታ፣ ሁልጊዜ።';

  @override
  String get setPickColour => 'ማንኛውንም ቀለም ይምረጡ';

  @override
  String get setWifiOnlyTitle => 'በWi-Fi ብቻ አውርድ';

  @override
  String get setDownloadLikes => 'የምወደውን ሁሉ አውርድ';

  @override
  String get setDownloadLikesSub => 'የልብ አዝራሩ ፋይሉንም ያስቀምጣል';

  @override
  String get setAiInstall => 'AI የመረጠውን ሙዚቃ እንዲጭን ፍቀድ';

  @override
  String get setSkipSilenceSub =>
      'አንድሮይድ ብቻ። ጸጥ ያሉ መግቢያዎችን፣ ማደብዘዣዎችን እና ለስላሳ ክፍሎችን ሊቆርጥ ይችላል — ሙዚቃ የሚዘል ከሆነ ያጥፉት';

  @override
  String get setStorageUsed => 'በውርዶች ጥቅም ላይ የዋለ ማከማቻ';

  @override
  String get setLibrary => 'ቤተ-መጻሕፍት';

  @override
  String get setUpdates => 'ዝማኔዎች';

  @override
  String get setAutoUpdate => 'ዝማኔዎችን በራሱ ፈትሽ';

  @override
  String get setAutoUpdateSub =>
      'በየጥቂት ሰዓታት፣ በጸጥታ፣ እና በWi-Fi ያወርዳል። መጫን አሁንም ይጠይቅዎታል።';

  @override
  String setUpdateReady(Object version) {
    return 'ወደ $version ዝማኔ ዝግጁ ነው';
  }

  @override
  String get setUpdateReadySub => 'ወርዷል — ለመጫን ይንኩ';

  @override
  String get setUpdateAvailableSub => 'ከመልቀቂያዎች ገጽ ያግኙት — አገናኙን ለመቅዳት ይንኩ';

  @override
  String get setLinkCopied => 'አገናኝ ተቀድቷል';

  @override
  String get setCheckNow => 'አሁን ፈትሽ';

  @override
  String get setUpToDate => 'TuneBox የተዘመነ ነው';

  @override
  String get setChecking => 'አዲስ ስሪት በመፈለግ ላይ…';

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
