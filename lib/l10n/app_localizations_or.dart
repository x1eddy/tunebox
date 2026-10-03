// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class LOr extends L {
  LOr([String locale = 'or']) : super(locale);

  @override
  String get navHome => 'ହୋମ୍';

  @override
  String get navExplore => 'ଅନ୍ୱେଷଣ';

  @override
  String get navLibrary => 'ଲାଇବ୍ରେରୀ';

  @override
  String get navTaste => 'ଆପଣଙ୍କ ପସନ୍ଦ';

  @override
  String get actionDone => 'ହୋଇଗଲା';

  @override
  String get actionCancel => 'ବାତିଲ୍';

  @override
  String get actionCreate => 'ତିଆରି କରନ୍ତୁ';

  @override
  String get actionPlay => 'ଚଲାନ୍ତୁ';

  @override
  String get actionShuffle => 'ଶଫଲ୍';

  @override
  String get actionPlayAll => 'ସବୁ ଚଲାନ୍ତୁ';

  @override
  String get actionAdd => 'ଯୋଡ଼ନ୍ତୁ';

  @override
  String get actionRemove => 'ହଟାନ୍ତୁ';

  @override
  String get actionName => 'ନାମ';

  @override
  String get greetingNight => 'ଏବେ ବି ଜାଗିଛନ୍ତି?';

  @override
  String get greetingMorning => 'ସୁପ୍ରଭାତ';

  @override
  String get greetingAfternoon => 'ଶୁଭ ଅପରାହ୍ଣ';

  @override
  String get greetingEvening => 'ଶୁଭ ସନ୍ଧ୍ୟା';

  @override
  String get homeBuilding => 'AI ଆପଣଙ୍କ ସେଲ୍ଫ ତିଆରି କରୁଛି…';

  @override
  String get homeOffline => 'ଅଫଲାଇନ୍ — ଡିଭାଇସରେ ଥିବା ଜିନିଷ ଦେଖାଯାଉଛି';

  @override
  String get homeNothingYet => 'ଏପର୍ଯ୍ୟନ୍ତ ଦେଖାଇବାକୁ କିଛି ନାହିଁ';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ସେଲ୍ଫ, ଏବେ ହିଁ ରିଫ୍ରେଶ୍ ହୋଇଛି',
      one: '୧ ସେଲ୍ଫ, ଏବେ ହିଁ ରିଫ୍ରେଶ୍ ହୋଇଛି',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'ସେଲ୍ଫ ପୁଣି ତିଆରି କରନ୍ତୁ';

  @override
  String get homeAddMusic => 'ଏହି ଡିଭାଇସରୁ ସଙ୍ଗୀତ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get homeQuickPicks => 'ଦ୍ରୁତ ବାଛଣା';

  @override
  String get homeQuickPicksSub => 'ଯାହା ଶୁଣୁଥିଲେ ସିଧା ସେଥିକୁ ଫେରନ୍ତୁ';

  @override
  String get homeEmptyTitle => 'ଆପଣଙ୍କ ଲାଇବ୍ରେରୀ ଖାଲି ଅଛି';

  @override
  String get homeEmptyBody =>
      'କିଛି ଖୋଜନ୍ତୁ, କିମ୍ବା ଏହି ଡିଭାଇସରେ ଥିବା ସଙ୍ଗୀତ ଯୋଡ଼ନ୍ତୁ। ପ୍ରଥମ ଥର ଚଲାଇବା ଠାରୁ ହିଁ AI ଶିଖିବା ଆରମ୍ଭ କରେ।';

  @override
  String get homeAddMyMusic => 'ମୋ ସଙ୍ଗୀତ ଯୋଡ଼ନ୍ତୁ';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube ସହ ସଂଯୋଗ ହୋଇପାରିଲା ନାହିଁ: $error';
  }

  @override
  String get moodFocus => 'ଫୋକସ୍';

  @override
  String get moodWorkout => 'ୱାର୍କଆଉଟ୍';

  @override
  String get moodChill => 'ଚିଲ୍';

  @override
  String get moodCommute => 'ଯାତ୍ରା';

  @override
  String get moodParty => 'ପାର୍ଟି';

  @override
  String moodBuilding(Object mood) {
    return '$mood ମିକ୍ସ ତିଆରି ହେଉଛି…';
  }

  @override
  String moodFailed(Object error) {
    return 'ସଫଳ ହେଲା ନାହିଁ: $error';
  }

  @override
  String get shelfRepeat => 'ବାରମ୍ବାର';

  @override
  String get shelfRepeatSub => 'ଆପଣଙ୍କ ଗତ ଦୁଇ ସପ୍ତାହ';

  @override
  String get shelfForgotten => 'ଆପଣ ପସନ୍ଦ କରିଥିବା ଭୁଲିଯାଇଥିବା ହିଟ୍';

  @override
  String get shelfForgottenSub =>
      'ଥରେ ଭଲ ଲାଗିଥିଲା, କିଛି ସମୟ ହେଲା ଛୁଆଁ ହୋଇନାହିଁ';

  @override
  String get shelfNew => 'ନୂଆ';

  @override
  String get shelfNewSub => 'AI ଆପଣଙ୍କ ପାଇଁ ଭାବୁଥିବା ନୂଆ ଟ୍ରାକ୍';

  @override
  String shelfBecause(Object artist) {
    return 'ଆପଣ $artist ଶୁଣିଥିବାରୁ';
  }

  @override
  String get shelfBecauseSub => 'ଆପଣଙ୍କ ପସନ୍ଦର ସେହି କୋଣରୁ';

  @override
  String get shelfDeep => 'କ୍ୱଚିତ୍ ଛୁଆଁ ହୋଇଛି';

  @override
  String get shelfDeepSub => 'ଲାଇବ୍ରେରୀରେ ଅଛି, କିନ୍ତୁ କ୍ୱଚିତ୍ ଚାଲିଛି';

  @override
  String get shelfMix => 'ଆପଣଙ୍କ ମିକ୍ସ';

  @override
  String get shelfMixSub => 'ଆପ୍ ଖୋଲିଲେ ପ୍ରତିଥର ପୁଣି ତିଆରି ହୁଏ';

  @override
  String get shelfAdded => 'ନିକଟରେ ଯୋଡ଼ାଯାଇଛି';

  @override
  String get shelfAddedSub => 'ଡାଉନଲୋଡ୍ ଓ ଇମ୍ପୋର୍ଟ କରିଥିବା ଫାଇଲ୍';

  @override
  String get shelfStarter => 'ଏଠାରୁ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get shelfStarterSub => 'କିଛି ଚଲାନ୍ତୁ, AI ତୁରନ୍ତ ଶିଖିବା ଆରମ୍ଭ କରିବ';

  @override
  String reasonPlays(int count) {
    return '$count ଥର ଚାଲିଛି';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ପସନ୍ଦ, ଶେଷଥର ଚାଲିଥିଲା $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count ଥର ଚାଲିଛି, ଶେଷଥର $when';
  }

  @override
  String get reasonTopArtist => 'ଆପଣ ସର୍ବାଧିକ ଶୁଣିଥିବା କଳାକାରଙ୍କ ମଧ୍ୟରୁ ଜଣେ';

  @override
  String reasonMore(Object artist) {
    return 'ଅଧିକ $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'ଆପଣ ବାରମ୍ବାର $artist ପାଖକୁ ଫେରନ୍ତି';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'ଆପଣଙ୍କ ପସନ୍ଦର $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ଇଦାନୀଂ $tag ଅଧିକ';
  }

  @override
  String get reasonOutThisYear => 'ଏହି ବର୍ଷ ରିଲିଜ୍';

  @override
  String get reasonReleasedRecently => 'ନିକଟରେ ରିଲିଜ୍ ହୋଇଛି';

  @override
  String get reasonClose => 'ଆପଣ ଶୁଣୁଥିବା ଗୀତ ସହ ନିକଟ';

  @override
  String reasonNear(Object artist) {
    return '$artist ଙ୍କ ପାଖାପାଖି';
  }

  @override
  String get reasonNeverPlayed => 'କେବେ ଚାଲିନାହିଁ';

  @override
  String get reasonPlayedOnce => 'ଥରେ ଚାଲିଛି';

  @override
  String get reasonPopular => 'ଏବେ ଲୋକପ୍ରିୟ';

  @override
  String whenYearsAgo(int count) {
    return '$count ବର୍ଷ ପୂର୍ବେ';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ମାସ ପୂର୍ବେ';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count ଦିନ ପୂର୍ବେ';
  }

  @override
  String get searchHint => 'ଗୀତ, କଳାକାର, ଆଲବମ୍';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଫଳାଫଳ',
      one: '୧ ଫଳାଫଳ',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'ସାମ୍ପ୍ରତିକ ସନ୍ଧାନ';

  @override
  String get searchEmptyTitle => 'କିଛି ମିଳିଲା ନାହିଁ';

  @override
  String get searchEmptyBody =>
      'ଅନ୍ୟ ବନାନ ଚେଷ୍ଟା କରନ୍ତୁ, କିମ୍ବା କେବଳ କଳାକାରଙ୍କ ନାମ ଲେଖନ୍ତୁ।';

  @override
  String get searchStartTitle => 'ଚଲାଇବାକୁ କିଛି ଖୋଜନ୍ତୁ';

  @override
  String get searchStartBody =>
      'YouTube Music ରେ ଖୋଜନ୍ତୁ — କେବଳ ଗୀତ ଆସିବ, ଅନ୍ୟ ଜିନିଷର ଭିଡିଓ ନୁହେଁ।';

  @override
  String get libPlaylists => 'ପ୍ଲେଲିଷ୍ଟ';

  @override
  String get libSongs => 'ଗୀତ';

  @override
  String get libArtists => 'କଳାକାର';

  @override
  String get libLiked => 'ପସନ୍ଦ';

  @override
  String get libDownloads => 'ଡାଉନଲୋଡ୍';

  @override
  String get libImported => 'ଇମ୍ପୋର୍ଟ';

  @override
  String get libLikedSongs => 'ପସନ୍ଦର ଗୀତ';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଗୀତ',
      one: '୧ ଗୀତ',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ଅଫଲାଇନ୍';
  }

  @override
  String get libMyFiles => 'ମୋର ନିଜ ଫାଇଲ୍';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଫାଇଲ୍',
      one: '୧ ଫାଇଲ୍',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'ନୂଆ ପ୍ଲେଲିଷ୍ଟ';

  @override
  String get libMakeOne => 'ଗୋଟିଏ ତିଆରି କରନ୍ତୁ';

  @override
  String get libSortRecent => 'ନିକଟରେ ଯୋଡ଼ାଯାଇଛି';

  @override
  String get libSortTitle => 'ଶୀର୍ଷକ';

  @override
  String get libSortArtist => 'କଳାକାର';

  @override
  String get libSortPlays => 'ସର୍ବାଧିକ ଚାଲିଥିବା';

  @override
  String get sheetNotForMe => 'ମୋ ପାଇଁ ନୁହେଁ';

  @override
  String get sheetNotForMeSub => 'ଏହା ଆଉ କେବେ ସୁପାରିଶ କରନ୍ତୁ ନାହିଁ';

  @override
  String get sheetBlocked => 'ବ୍ଲକ୍ ହୋଇଛି — ପୁଣି ଅନୁମତି ଦେବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get sheetBlockedSub => 'ଏହା ସୁପାରିଶରେ ପୁଣି ଦେଖାଯାଇପାରେ';

  @override
  String get sheetPlayNext => 'ପରବର୍ତ୍ତୀ ଚଲାନ୍ତୁ';

  @override
  String get sheetAddToPlaylist => 'ପ୍ଲେଲିଷ୍ଟରେ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get sheetDownloaded => 'ଡାଉନଲୋଡ୍ ହୋଇଛି';

  @override
  String get sheetRemoveFile => 'ଫାଇଲ୍ ହଟାଇବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get sheetDownload => 'ଡାଉନଲୋଡ୍';

  @override
  String get sheetKeepOffline => 'ଅଫଲାଇନ୍ ପାଇଁ ରଖନ୍ତୁ';

  @override
  String get sheetRadio => 'ରେଡିଓ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get sheetRadioSub => 'ଏହି ଗୀତକୁ ଘେରି ତିଆରି କିଉ';

  @override
  String get sheetQueue => 'କିଉ';

  @override
  String get sheetSleepTimer => 'ସ୍ଲିପ୍ ଟାଇମର୍';

  @override
  String get sheetSleepOff => 'ବନ୍ଦ';

  @override
  String sheetSleepMinutes(int count) {
    return '$count ମିନିଟ୍';
  }

  @override
  String get sheetSleepEndOfTrack => 'ଏହି ଗୀତର ଶେଷ';

  @override
  String sheetSleepSet(int count) {
    return '$count ମିନିଟରେ ସଙ୍ଗୀତ ବନ୍ଦ ହେବ';
  }

  @override
  String get tasteTitle => 'ଆପଣଙ୍କ ପସନ୍ଦ';

  @override
  String get tasteRetrain => 'ପୁଣି ତାଲିମ ଦିଅନ୍ତୁ';

  @override
  String get tasteRetraining => 'ଆପଣଙ୍କ ଇତିହାସରେ ପୁଣି ତାଲିମ ଚାଲିଛି…';

  @override
  String get tasteRetrained => 'AI ନିଜର ମଡେଲ୍ ପୁଣି ତିଆରି କଲା।';

  @override
  String tasteConfidence(int percent) {
    return 'ଆତ୍ମବିଶ୍ୱାସ $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays ଥର ଚାଲିଛି · $skips ସ୍କିପ୍ · $likes ପସନ୍ଦ';
  }

  @override
  String get tasteEmptySummary => 'କିଛି ଗୀତ ଚଲାନ୍ତୁ, ଏହା ଭରିଯିବ।';

  @override
  String get tasteKeepLearning => 'ମୁଁ ଶୁଣୁଥିବା ବେଳେ ଶିଖିବା ଜାରି ରଖନ୍ତୁ';

  @override
  String get tasteKeepLearningSub =>
      'ବର୍ତ୍ତମାନର ପ୍ରୋଫାଇଲ୍ ଫ୍ରିଜ୍ କରିବାକୁ ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get tasteDownloadsTitle => 'AI ସମ୍ଭାଳୁଥିବା ଡାଉନଲୋଡ୍';

  @override
  String get tasteDownloadsSub => 'ଆପଣ ନ କହିଲେ ବି ସଙ୍ଗୀତ ଡିଭାଇସରେ ପହଞ୍ଚିଯାଏ';

  @override
  String get tasteDownloadLikes => 'ମୋର ପସନ୍ଦର ସବୁ ଡାଉନଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get tasteDownloadLikesSub =>
      'ହୃଦୟରେ ଟ୍ୟାପ୍ କଲେ ଫାଇଲ୍ ଅଫଲାଇନ୍ ପାଇଁ ସେଭ୍ ହୁଏ';

  @override
  String get tasteAiInstall =>
      'AI କୁ ନିଜେ ବାଛିଥିବା ସଙ୍ଗୀତ ଇନଷ୍ଟଲ୍ କରିବାକୁ ଦିଅନ୍ତୁ';

  @override
  String get tasteAiInstallSub => 'ଯେଉଁ ଟ୍ରାକ୍ ବିଷୟରେ ନିଶ୍ଚିତ, ସେଗୁଡ଼ିକ ଆଣିବ';

  @override
  String get tasteWhatItThinks => 'ଆପଣଙ୍କୁ କଣ ପସନ୍ଦ ବୋଲି ଏହା ଭାବେ';

  @override
  String get tasteWhatItThinksSub =>
      'ଚଲାଇବା, ସ୍କିପ୍, ପସନ୍ଦ ଓ ପୁନରାବୃତ୍ତିରୁ ଶିଖିଛି';

  @override
  String get tasteArtists => 'ଏହା ଭରସା କରୁଥିବା କଳାକାର';

  @override
  String get tasteWhenYouListen => 'ଆପଣ କେବେ ଶୁଣନ୍ତି';

  @override
  String get tasteWhenYouListenSub =>
      'ଘଣ୍ଟା ପ୍ରତି ଚଲାଇବା — ବର୍ତ୍ତମାନର ଘଣ୍ଟାକୁ ଅଧିକ ଗୁରୁତ୍ୱ ଦିଆଯାଏ';

  @override
  String get tasteDecades => 'ଦଶକ';

  @override
  String get tasteTune => 'ସୁପାରିଶ ଠିକ୍ କରନ୍ତୁ';

  @override
  String get tasteTuneSub => 'ପରବର୍ତ୍ତୀ ହୋମ୍ ରିଫ୍ରେଶରେ ଲାଗୁ ହେବ';

  @override
  String get tasteDiscovery => 'ଆବିଷ୍କାର';

  @override
  String get tasteDiscoverySub => 'ପରିଚିତ ↔ କେବେ ନ ଶୁଣିଥିବା';

  @override
  String get tasteEnergy => 'ଶକ୍ତି';

  @override
  String get tasteEnergySub => 'ଶାନ୍ତ ↔ ଉଚ୍ଚସ୍ୱର';

  @override
  String get tasteRecency => 'ନୂତନତା';

  @override
  String get tasteRecencySub => 'କାଳଜୟୀ ↔ ଏକଦମ୍ ନୂଆ';

  @override
  String get tasteNostalgia => 'ସ୍ମୃତିଚାରଣ';

  @override
  String get tasteNostalgiaSub =>
      'ପୁରୁଣା ପ୍ରିୟ ଗୀତ କେତେ ପୁରୁଣା ହେଲେ ଭୁଲିଯାଇଛି ବୋଲି ଧରାଯିବ';

  @override
  String get tasteSignals => 'ଏହା ବ୍ୟବହାର କରିପାରୁଥିବା ସଂକେତ';

  @override
  String get tasteSignalsSub => 'ସବୁକିଛି ଏହି ଡିଭାଇସରେ ହିଁ ରହେ';

  @override
  String get tasteUseHistory => 'ମୁଁ ଚଲାଇଥିବା ଗୀତ';

  @override
  String get tasteUseSkips => 'ମୁଁ ସ୍କିପ୍ କରୁଥିବା ଗୀତ';

  @override
  String get tasteUseTime => 'ଦିନର ସମୟ';

  @override
  String get tasteUseYouTube => 'YouTube ର ପରାମର୍ଶ';

  @override
  String get tasteAlwaysMore => 'ସବୁବେଳେ ଅଧିକ';

  @override
  String get tasteNeverAgain => 'ଆଉ କେବେ ନୁହେଁ';

  @override
  String get tasteAddArtist => 'କଳାକାର ଯୋଡ଼ନ୍ତୁ';

  @override
  String get tasteMoreOfPrompt => 'ସବୁବେଳେ ଅଧିକ…';

  @override
  String get tasteNeverAgainPrompt => 'ଆଉ କେବେ ନୁହେଁ…';

  @override
  String get tasteReset => 'ଶିଖିଥିବା ସବୁ ରିସେଟ୍ କରନ୍ତୁ';

  @override
  String get tasteResetSub => 'ଆପଣଙ୍କ ସଙ୍ଗୀତ ରହିବ; ପ୍ରୋଫାଇଲ୍ ଶୂନ୍ୟରୁ ଆରମ୍ଭ ହେବ';

  @override
  String get trainCard => 'ରେଟିଂ ଦେଇ ତାଲିମ ଦିଅନ୍ତୁ';

  @override
  String get trainCardSub =>
      'ପ୍ରକୃତ ଗୀତ ସ୍ୱାଇପ୍ କରନ୍ତୁ। ଏହିପରି ଅଧିକ ଚାହିଁଲେ ଡାହାଣକୁ, ଆଉ ନ ଚାହିଁଲେ ବାମକୁ। ଏଠାରେ ଦୁଇ ମିନିଟ୍ ଏକ ସପ୍ତାହର ଶୁଣିବା ଠାରୁ ଭଲ।';

  @override
  String get trainStart => 'ତାଲିମ ରାଉଣ୍ଡ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get trainTitle => 'ତାଲିମ ରାଉଣ୍ଡ';

  @override
  String get trainQuestion => 'ଆପଣ ଏହାକୁ ନିଜ ହୋମ୍‌ରେ ଚାହିଁବେ କି?';

  @override
  String get trainMoreLikeThis => 'ଏହିପରି ଅଧିକ';

  @override
  String get trainNeverAgain => 'ଆଉ କେବେ ନୁହେଁ';

  @override
  String get trainDone => 'ରାଉଣ୍ଡ ସମାପ୍ତ';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked ରଖାଗଲା · $blocked ବ୍ଲକ୍ ହେଲା। ଆତ୍ମବିଶ୍ୱାସ $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'ଆପଣଙ୍କ ପସନ୍ଦକୁ ଫେରନ୍ତୁ';

  @override
  String get trainNothingTitle => 'ରେଟିଂ ଦେବାକୁ ଏପର୍ଯ୍ୟନ୍ତ କିଛି ନାହିଁ';

  @override
  String get trainNothingBody =>
      'କିଛି ସଙ୍ଗୀତ ଯୋଡ଼ନ୍ତୁ କିମ୍ବା ପ୍ରଥମେ AI କୁ ପ୍ରାର୍ଥୀ ଆଣିବାକୁ ଦିଅନ୍ତୁ, ତା\'ପରେ ଫେରନ୍ତୁ।';

  @override
  String get trainLeaveTitle => 'ତାଲିମ ରାଉଣ୍ଡ ଛାଡ଼ିବେ?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ଏବେ ଛାଡ଼ିଲେ AI ଏହି ରାଉଣ୍ଡର ସବୁ ବାତିଲ୍ କରିଦେବ — ଆପଣ ଏବେ ରେଟିଂ ଦେଇଥିବା ସମସ୍ତ $count ଗୀତ।',
      one:
          'ଏବେ ଛାଡ଼ିଲେ AI ଏହି ରାଉଣ୍ଡର ସବୁ ବାତିଲ୍ କରିଦେବ — ଆପଣ ଏବେ ରେଟିଂ ଦେଇଥିବା ୧ ଗୀତ।',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'ତାଲିମ ଜାରି ରଖନ୍ତୁ';

  @override
  String get trainDiscard => 'ବାତିଲ୍ କରି ଛାଡ଼ନ୍ତୁ';

  @override
  String get setTitle => 'ସେଟିଂସ୍';

  @override
  String get setAppearance => 'ଦୃଶ୍ୟ';

  @override
  String get setTheme => 'ଥିମ୍';

  @override
  String get setThemeSystem => 'ସିଷ୍ଟମ୍ ଅନୁସରଣ କରନ୍ତୁ';

  @override
  String get setThemeLight => 'ଲାଇଟ୍';

  @override
  String get setThemeDark => 'ଡାର୍କ';

  @override
  String get setPureBlack => 'ଶୁଦ୍ଧ କଳା';

  @override
  String get setPureBlackSub => 'OLED ସ୍କ୍ରିନ୍‌ରେ ବିଦ୍ୟୁତ୍ ବଞ୍ଚାଏ';

  @override
  String get setAccent => 'ଆକ୍ସେଣ୍ଟ ରଙ୍ଗ';

  @override
  String get setAccentArtwork => 'କଭର୍ ଆର୍ଟରୁ';

  @override
  String get setAccentFixed => 'ମୁଁ ବାଛିଥିବା ଗୋଟିଏ ରଙ୍ଗ';

  @override
  String get setLanguage => 'ଭାଷା';

  @override
  String get setLanguageSystem => 'ସିଷ୍ଟମ୍ ଅନୁସରଣ କରନ୍ତୁ';

  @override
  String get setAccessibility => 'ସୁଗମ୍ୟତା';

  @override
  String get setTextSize => 'ଅକ୍ଷର ଆକାର';

  @override
  String get setTextSizeSub => 'ଆପଣଙ୍କ ସିଷ୍ଟମ୍ ସେଟିଂ ଉପରେ';

  @override
  String get setReduceMotion => 'ଗତି କମ୍ କରନ୍ତୁ';

  @override
  String get setReduceMotionSub =>
      'ବାର୍, ଭିଜୁଆଲାଇଜର୍, ଉଛୁଳା ସ୍କ୍ରୋଲିଂ, ସ୍ପ୍ରିଙ୍ଗି ଟ୍ୟାପ୍ ଓ ପେଜ୍ ଟ୍ରାନ୍ସିସନ୍ ବନ୍ଦ କରେ';

  @override
  String get setHighContrast => 'ଉଚ୍ଚ କଣ୍ଟ୍ରାଷ୍ଟ';

  @override
  String get setHighContrastSub => 'ଅଧିକ ସ୍ପଷ୍ଟ ପୃଥକତା ଓ ଦୃଶ୍ୟମାନ ଧାର';

  @override
  String get setBoldText => 'ମୋଟା ଅକ୍ଷର';

  @override
  String get setPlayback => 'ପ୍ଲେବ୍ୟାକ୍';

  @override
  String get setAutoRadio => 'ସଙ୍ଗୀତ ଚାଲିଥିବାକୁ ଦିଅନ୍ତୁ';

  @override
  String get setAutoRadioSub => 'କିଉ ଶେଷ ହେଲେ, ଶେଷ ଗୀତରୁ ତିଆରି ରେଡିଓ ସହ ଚାଲିବ';

  @override
  String get setSmartShuffle => 'ସ୍ମାର୍ଟ ଶଫଲ୍';

  @override
  String get setSmartShuffleSub => 'ଏଲୋମେଲୋ ନୁହେଁ, ପସନ୍ଦ ଅନୁସାରେ ଶଫଲ୍ କରେ';

  @override
  String get setResume => 'ଛାଡ଼ିଥିବା ସ୍ଥାନରୁ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get setResumeSub => 'ଆପ୍ ଖୋଲିଲେ କିଉ ପଜ୍ ଅବସ୍ଥାରେ ଫେରାଇଆଣେ';

  @override
  String get setDataSaver => 'Wi-Fi ନ ଥିଲେ ଡାଟା ସେଭର୍';

  @override
  String get setDataSaverSub =>
      'ମୋବାଇଲ୍ ଡାଟାରେ ଷ୍ଟ୍ରିମ୍ ଓ ଡାଉନଲୋଡ୍ 128 kbps ରେ ସୀମିତ କରେ';

  @override
  String get setHaptics => 'ହାପ୍ଟିକ୍ ଫିଡବ୍ୟାକ୍';

  @override
  String get setShowReasons => 'କାହିଁକି ସୁପାରିଶ ହେଲା ତାହା ଦେଖାନ୍ତୁ';

  @override
  String get setSkipSilence => 'ନୀରବତା ଛାଡ଼ନ୍ତୁ';

  @override
  String get setQuality => 'ଅଡିଓ ଗୁଣବତ୍ତା';

  @override
  String get setQualityLow => 'କମ୍ · 64 kbps';

  @override
  String get setQualityNormal => 'ସାଧାରଣ · 128 kbps';

  @override
  String get setQualityHigh => 'ଉଚ୍ଚ · 192 kbps';

  @override
  String get setQualityBest => 'ଉପଲବ୍ଧ ସର୍ବୋତ୍ତମ';

  @override
  String get setStorage => 'ଡାଉନଲୋଡ୍ ଓ ଷ୍ଟୋରେଜ୍';

  @override
  String get setWifiOnly => 'କେବଳ Wi-Fi ରେ ଡାଉନଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get setDailyLimit => 'AI ପାଇଁ ଦୈନିକ ସୀମା';

  @override
  String setDailyLimitSub(int count) {
    return 'ଦିନକୁ $count ଗୀତ';
  }

  @override
  String get setBudget => 'AI ବ୍ୟବହାର କରିପାରିବ ଏପରି ଷ୍ଟୋରେଜ୍';

  @override
  String setUsed(Object size) {
    return 'ଡାଉନଲୋଡ୍ ଦ୍ୱାରା $size ବ୍ୟବହୃତ';
  }

  @override
  String get setYourMusic => 'ଆପଣଙ୍କ ସଙ୍ଗୀତ';

  @override
  String get setImport => 'ଏହି ଡିଭାଇସରୁ ସଙ୍ଗୀତ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get setImportSub => 'ଫୋଲ୍ଡର କିମ୍ବା ଏକକ ଫାଇଲ୍ ବାଛନ୍ତୁ';

  @override
  String get setCleanup => 'ହଜିଥିବା ଫାଇଲ୍ ସଫା କରନ୍ତୁ';

  @override
  String get setCleanupSub => 'ଫାଇଲ୍ ନ ଥିବା ଗୀତ ହଟାନ୍ତୁ';

  @override
  String setCleanupDone(int count) {
    return '$count ହଜିଥିବା ଫାଇଲ୍ ହଟାଗଲା।';
  }

  @override
  String get setExport => 'ମୋ ପସନ୍ଦ ଅନ୍ୟ ଡିଭାଇସକୁ ପଠାନ୍ତୁ';

  @override
  String get setExportSub =>
      'ଆପଣଙ୍କ ପସନ୍ଦ, ଚଲାଇବା ଓ AI ଶିଖିଥିବା ସବୁ ସହ ଏକ ଫାଇଲ୍ ସେଭ୍ କରେ';

  @override
  String get setImportTaste => 'ଅନ୍ୟ ଡିଭାଇସରୁ ପସନ୍ଦ ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get setImportTasteSub =>
      'ସେଭ୍ କରିଥିବା ପସନ୍ଦ ଫାଇଲ୍ ବାଛି ମିଶାନ୍ତୁ — ପୁଣି କଲେ ବି ସୁରକ୍ଷିତ';

  @override
  String get setAbout => 'ବିଷୟରେ';

  @override
  String get setAboutBody =>
      'YouTube ଓ ଆପଣଙ୍କ ନିଜ ଫାଇଲ୍‌ରୁ ସଙ୍ଗୀତ। AI ସମ୍ପୂର୍ଣ୍ଣ ଭାବେ ଏହି ଡିଭାଇସରେ ଚାଲେ — କିଛି ବାହାରକୁ ଯାଏ ନାହିଁ।';

  @override
  String get setSource => 'ସୋର୍ସ କୋଡ୍';

  @override
  String get importTitle => 'ସଙ୍ଗୀତ ଯୋଡ଼ନ୍ତୁ';

  @override
  String get importPickFolder => 'ଫୋଲ୍ଡର ବାଛନ୍ତୁ';

  @override
  String get importPickFiles => 'ଫାଇଲ୍ ବାଛନ୍ତୁ';

  @override
  String importScanning(Object file) {
    return '$file ସ୍କାନ୍ ହେଉଛି';
  }

  @override
  String importAdded(int count) {
    return '$count ଯୋଡ଼ାଗଲା';
  }

  @override
  String get importDenied =>
      'ଅନୁମତି ମିଳିଲା ନାହିଁ — ଆପଣଙ୍କ ସଙ୍ଗୀତ ପଢ଼ିହେବ ନାହିଁ।';

  @override
  String get importWatched => 'ନଜର ରଖାଯାଉଥିବା ଫୋଲ୍ଡର';

  @override
  String get importIosHint =>
      'Files ଆପ୍ ଖୋଲନ୍ତୁ, On My iPhone → TuneBox କୁ ଯାଆନ୍ତୁ, ଏବଂ ସେଠାରେ ସଙ୍ଗୀତ ରଖନ୍ତୁ।';

  @override
  String get playerQueue => 'କିଉ';

  @override
  String get playerUpNext => 'ପରବର୍ତ୍ତୀ';

  @override
  String get playerLyrics => 'ଗୀତର ବୋଲ';

  @override
  String get playerNoLyrics => 'ଏଥିପାଇଁ ବୋଲ ନାହିଁ।';

  @override
  String get playerRepeat => 'ପୁନରାବୃତ୍ତି';

  @override
  String get playerShuffle => 'ଶଫଲ୍';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" ଚଲାଇ ହେଲା ନାହିଁ';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" ଛାଡ଼ି ଦିଆଯାଉଛି — ଷ୍ଟ୍ରିମ୍ ଖୋଲିଲା ନାହିଁ।';
  }

  @override
  String get undo => 'ପଛକୁ ଫେରାନ୍ତୁ';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ଏବେ: $tags, $artist ଙ୍କ ନେତୃତ୍ୱରେ।';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ଏବେ: $tags।';
  }

  @override
  String get setColour => 'ରଙ୍ଗ';

  @override
  String get setColourSub => 'ପୂରା ଆପ୍ ଏହାକୁ ଅନୁସରଣ କରେ';

  @override
  String get setCoverArt => 'କଭର୍ ଆର୍ଟ';

  @override
  String get setMyColour => 'ମୋ ରଙ୍ଗ';

  @override
  String get setCoverArtSub => 'ପ୍ରତ୍ୟେକ ଗୀତ ନିଜ କଭରରୁ ଆପ୍‌ର ରଙ୍ଗ ବଦଳାଏ।';

  @override
  String get setMyColourSub => 'ଗୋଟିଏ ରଙ୍ଗ, ସବୁଠି, ସବୁବେଳେ।';

  @override
  String get setPickColour => 'ଯେକୌଣସି ରଙ୍ଗ ବାଛନ୍ତୁ';

  @override
  String get setWifiOnlyTitle => 'କେବଳ Wi-Fi ରେ ଡାଉନଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get setDownloadLikes => 'ମୋର ପସନ୍ଦର ସବୁ ଡାଉନଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get setDownloadLikesSub => 'ହୃଦୟ ବଟନ୍ ଫାଇଲ୍ ମଧ୍ୟ ସେଭ୍ କରେ';

  @override
  String get setAiInstall =>
      'AI କୁ ନିଜେ ବାଛିଥିବା ସଙ୍ଗୀତ ଇନଷ୍ଟଲ୍ କରିବାକୁ ଦିଅନ୍ତୁ';

  @override
  String get setSkipSilenceSub =>
      'କେବଳ Android। ଶାନ୍ତ ଆରମ୍ଭ, ଫେଡ୍ ଓ ମୃଦୁ ଅଂଶ କାଟିପାରେ — ସଙ୍ଗୀତ ଛାଡ଼ି ହେଉଥିଲେ ବନ୍ଦ ରଖନ୍ତୁ';

  @override
  String get setStorageUsed => 'ଡାଉନଲୋଡ୍ ଦ୍ୱାରା ବ୍ୟବହୃତ ଷ୍ଟୋରେଜ୍';

  @override
  String get setLibrary => 'ଲାଇବ୍ରେରୀ';

  @override
  String get setUpdates => 'ଅପଡେଟ୍';

  @override
  String get setAutoUpdate => 'ନିଜେ ନିଜେ ଅପଡେଟ୍ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get setAutoUpdateSub =>
      'ପ୍ରତି କିଛି ଘଣ୍ଟାରେ, ଚୁପଚାପ୍, ଏବଂ Wi-Fi ରେ ଡାଉନଲୋଡ୍ କରେ। ଇନଷ୍ଟଲ୍ ପାଇଁ ତଥାପି ପଚାରେ।';

  @override
  String setUpdateReady(Object version) {
    return '$version ପାଇଁ ଅପଡେଟ୍ ପ୍ରସ୍ତୁତ';
  }

  @override
  String get setUpdateReadySub => 'ଡାଉନଲୋଡ୍ ହୋଇଛି — ଇନଷ୍ଟଲ୍ ପାଇଁ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get setUpdateAvailableSub =>
      'ରିଲିଜ୍ ପେଜ୍‌ରୁ ନିଅନ୍ତୁ — ଲିଙ୍କ୍ କପି କରିବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get setLinkCopied => 'ଲିଙ୍କ୍ କପି ହେଲା';

  @override
  String get setCheckNow => 'ଏବେ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get setUpToDate => 'TuneBox ଅପ-ଟୁ-ଡେଟ୍ ଅଛି';

  @override
  String get setChecking => 'ନୂଆ ସଂସ୍କରଣ ଖୋଜୁଛି…';
}
