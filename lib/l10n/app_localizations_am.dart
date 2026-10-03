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
}
