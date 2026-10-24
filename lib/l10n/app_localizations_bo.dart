// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tibetan (`bo`).
class LBo extends L {
  LBo([String locale = 'bo']) : super(locale);

  @override
  String get navHome => 'ཁྱིམ།';

  @override
  String get navExplore => 'ཞིབ་བཤེར།';

  @override
  String get navLibrary => 'དཔེ་མཛོད།';

  @override
  String get navTaste => 'ཁྱེད་ཀྱི་དགའ་སྤོབས།';

  @override
  String get actionDone => 'ཚར།';

  @override
  String get actionCancel => 'ཕྱིར་འཐེན།';

  @override
  String get actionCreate => 'གསར་བསྐྲུན།';

  @override
  String get actionPlay => 'གཏོང་།';

  @override
  String get actionShuffle => 'ལྷུག་རིས།';

  @override
  String get actionPlayAll => 'ཚང་མ་གཏོང་།';

  @override
  String get actionAdd => 'སྣོན།';

  @override
  String get actionRemove => 'སུབ།';

  @override
  String get actionName => 'མིང་།';

  @override
  String get greetingNight => 'ད་དུང་མ་ཉལ་ཡ།';

  @override
  String get greetingMorning => 'ཐུགས་རྗེ་ཆེ། ཞོགས་པ་བདེ་ལེགས།';

  @override
  String get greetingAfternoon => 'ཉིན་གུང་བདེ་ལེགས།';

  @override
  String get greetingEvening => 'དགོང་མོ་བདེ་ལེགས།';

  @override
  String get homeBuilding => 'AI གིས་ཁྱེད་ཀྱི་ཤིང་སྒམ་བཟོ་བཞིན་ཡོད…';

  @override
  String get homeOffline =>
      'དྲ་མེད། — སྒྲིག་ཆས་ཀྱི་ནང་གི་དངོས་པོ་སྟོན་བཞིན་ཡོད།';

  @override
  String get homeNothingYet => 'ད་ལྟ་སྟོན་རྒྱུ་ཅི་ཡང་མེད།';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཤིང་སྒམ་ $count, ད་ལྟ་གསར་བརྗེ་བྱས།',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'ཤིང་སྒམ་བསྐྱར་བཟོ།';

  @override
  String get homeAddMusic => 'སྒྲིག་ཆས་འདི་ནས་རོལ་མོ་སྣོན།';

  @override
  String get homeQuickPicks => 'མྱུར་འདེམས།';

  @override
  String get homeQuickPicksSub => 'ཁྱེད་གཏན་པའི་ཐད་ཀར་ཕྱིར་ལོག';

  @override
  String get homeEmptyTitle => 'ཁྱེད་ཀྱི་དཔེ་མཛོད་སྟོང་པ་རེད།';

  @override
  String get homeEmptyBody =>
      'ཅི་ཞིག་འཚོལ། ཡང་ན་སྒྲིག་ཆས་འདིའི་ནང་ཡོད་པའི་རོལ་མོ་སྣོན། AI གིས་ཁྱེད་ཀྱི་ཐེངས་དང་པོ་གཏོང་བའི་ཚེ་ནས་སློབ་འགོ་ཚུགས།';

  @override
  String get homeAddMyMusic => 'ངའི་རོལ་མོ་སྣོན།';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube ལ་འབྲེལ་མ་ཐུབ། $error';
  }

  @override
  String get moodFocus => 'དམིགས་ཚུགས།';

  @override
  String get moodWorkout => 'ལུས་རྩལ།';

  @override
  String get moodChill => 'ལྷོད་གཡེང་།';

  @override
  String get moodCommute => 'ལམ་འགྲོ།';

  @override
  String get moodParty => 'ཚོགས་འདུ།';

  @override
  String moodBuilding(Object mood) {
    return '$mood ཕྱེ་མ་བཟོ་བཞིན་ཡོད…';
  }

  @override
  String moodFailed(Object error) {
    return 'མ་འགྲིག། $error';
  }

  @override
  String get shelfRepeat => 'བསྐྱར་ཟློས།';

  @override
  String get shelfRepeatSub => 'ཁྱེད་ཀྱི་བདུན་ཕྲག་གཉིས་སྔོན།';

  @override
  String get shelfForgotten => 'ཁྱེད་དགའ་བའི་བརྗེད་པའི་གླུ་རྙིང་།';

  @override
  String get shelfForgottenSub => 'སྔོན་དགའ་མོས་བྱས་ཀྱང་ཡུན་རིང་མ་བཀོལ།';

  @override
  String get shelfNew => 'གསར་པ།';

  @override
  String get shelfNewSub => 'AI གིས་ཁྱེད་ལ་འོས་སྙམ་པའི་གླུ་གསར་པ།';

  @override
  String shelfBecause(Object artist) {
    return 'ཁྱེད་ཀྱིས་ $artist བཏང་བའི་རྐྱེན་གྱིས།';
  }

  @override
  String get shelfBecauseSub => 'ཁྱེད་ཀྱི་དགའ་སྤོབས་ཀྱི་ཟུར་གཅིག་ནས།';

  @override
  String get shelfDeep => 'ཐེག་པ་ཉུང་ཉུང་།';

  @override
  String get shelfDeepSub =>
      'ཁྱེད་ཀྱི་དཔེ་མཛོད་ནང་ཡོད། འོན་ཀྱང་ཐེངས་ཉུང་ཉུང་ཁོ་ན་བཏང་།';

  @override
  String get shelfMix => 'ཁྱེད་ཀྱི་ཕྱེ་མ།';

  @override
  String get shelfMixSub => 'ཉེར་སྤྱོད་ཕྱེ་ཚར་རེར་བསྐྱར་བཟོ་བྱེད།';

  @override
  String get shelfAdded => 'ཉེ་ཆར་བསྣན་པ།';

  @override
  String get shelfAddedSub => 'ཕབ་ལེན་དང་ནང་འདྲེན་བྱས་པའི་ཡིག་ཆ།';

  @override
  String get shelfStarter => 'འདི་ནས་འགོ་འཛུགས།';

  @override
  String get shelfStarterSub => 'ཉུང་ཙམ་བཏང་ན་ AI གིས་ཐད་ཀར་སློབ་འགོ་འཛུགས།';

  @override
  String reasonPlays(int count) {
    return 'ཐེངས་ $count བཏང་།';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'དགའ་མོས། མཐའ་མཇུག་བཏང་བ། $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'ཐེངས་ $count བཏང་། མཐའ་མཇུག $when';
  }

  @override
  String get reasonTopArtist => 'ཁྱེད་ཀྱིས་མང་ཤོས་བཏང་བའི་གཞས་མཁན་གཅིག';

  @override
  String reasonMore(Object artist) {
    return '$artist འདི་ལས་མང་།';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'ཁྱེད་ཀྱིས་ $artist ལ་བསྐྱར་དུ་ལོག་གི་འདུག';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'ཁྱེད་ཀྱི་རིགས་ $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ཉེ་ཆར་ $tag ཧ་ཅང་མང་།';
  }

  @override
  String get reasonOutThisYear => 'ལོ་འདིར་ཐོན་པ།';

  @override
  String get reasonReleasedRecently => 'ཉེ་ཆར་ཐོན་པ།';

  @override
  String get reasonClose => 'ཁྱེད་ཀྱིས་བཏང་བ་དང་ཉེ་བ།';

  @override
  String reasonNear(Object artist) {
    return '$artist དང་ཉེ་བ།';
  }

  @override
  String get reasonNeverPlayed => 'ནམ་ཡང་མ་བཏང་།';

  @override
  String get reasonPlayedOnce => 'ཐེངས་གཅིག་བཏང་།';

  @override
  String get reasonPopular => 'ད་ལྟ་གྲགས་ཆེ།';

  @override
  String whenYearsAgo(int count) {
    return 'ལོ་ $count སྔོན།';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'ཟླ་བ་ $count སྔོན།';
  }

  @override
  String whenDaysAgo(int count) {
    return 'ཉིན་ $count སྔོན།';
  }

  @override
  String get searchHint => 'གླུ། གཞས་མཁན། ཤོག་སྒྲིལ།';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'འབྲས་བུ་ $count',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'ཉེ་ཆར་གྱི་འཚོལ་བཤེར།';

  @override
  String get searchEmptyTitle => 'ཅི་ཡང་མ་རྙེད།';

  @override
  String get searchEmptyBody =>
      'ཡིག་གཟུགས་གཞན་ཞིག་ལོག་ཅིག མ་ཡིན་ན་གཞས་མཁན་གྱི་མིང་ཁོ་ན་ཚུགས།';

  @override
  String get searchStartTitle => 'གཏོང་རྒྱུ་ཞིག་འཚོལ།';

  @override
  String get searchStartBody =>
      'YouTube Music ནང་འཚོལ། གླུ་ཁོ་ན་ཐོན། དངོས་པོ་གཞན་གྱི་བརྙན་ཟློས་ནམ་ཡང་མི་ཐོན།';

  @override
  String get libPlaylists => 'གཏོང་ཐོ།';

  @override
  String get libSongs => 'གླུ།';

  @override
  String get libArtists => 'གཞས་མཁན།';

  @override
  String get libLiked => 'དགའ་བ།';

  @override
  String get libDownloads => 'ཕབ་ལེན།';

  @override
  String get libImported => 'ནང་འདྲེན།';

  @override
  String get libLikedSongs => 'དགའ་བའི་གླུ།';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'གླུ་ $count',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return 'དྲ་མེད་ $count';
  }

  @override
  String get libMyFiles => 'ངའི་རང་གི་ཡིག་ཆ།';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ཡིག་ཆ་ $count',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'གཏོང་ཐོ་གསར་པ།';

  @override
  String get libMakeOne => 'གཅིག་བཟོ།';

  @override
  String get libSortRecent => 'ཉེ་ཆར་བསྣན་པ།';

  @override
  String get libSortTitle => 'ཁ་བྱང་།';

  @override
  String get libSortArtist => 'གཞས་མཁན།';

  @override
  String get libSortPlays => 'མང་ཤོས་བཏང་བ།';

  @override
  String get sheetNotForMe => 'ངའི་དོན་མིན།';

  @override
  String get sheetNotForMeSub => 'འདི་ནམ་ཡང་བསྐྱར་དུ་མ་འོས།';

  @override
  String get sheetBlocked => 'བཀག་ཟིན། — ཐལ་ནས་བསྐྱར་དུ་གནང་།';

  @override
  String get sheetBlockedSub => 'འདི་བསྐྱར་དུ་འོས་སྦྱོར་ནང་ཐོན་སྲིད།';

  @override
  String get sheetPlayNext => 'རྗེས་མར་གཏོང་།';

  @override
  String get sheetAddToPlaylist => 'གཏོང་ཐོར་སྣོན།';

  @override
  String get sheetDownloaded => 'ཕབ་ལེན་བྱས་ཟིན།';

  @override
  String get sheetRemoveFile => 'ཡིག་ཆ་སུབ་ཆེད་ཐལ།';

  @override
  String get sheetDownload => 'ཕབ་ལེན།';

  @override
  String get sheetKeepOffline => 'དྲ་མེད་ཆེད་སྲུངས།';

  @override
  String get sheetRadio => 'རླུང་འཕྲིན་འགོ་འཛུགས།';

  @override
  String get sheetRadioSub => 'གླུ་འདིའི་མཐའ་འཁོར་ནས་བཟོས་པའི་གྲལ་རིམ།';

  @override
  String get sheetQueue => 'གྲལ་རིམ།';

  @override
  String get sheetSleepTimer => 'གཉིད་དུས་ཚོད།';

  @override
  String get sheetSleepOff => 'སྒོ་བརྒྱབ།';

  @override
  String sheetSleepMinutes(int count) {
    return 'སྐར་མ་ $count';
  }

  @override
  String get sheetSleepEndOfTrack => 'གླུ་འདིའི་མཇུག';

  @override
  String sheetSleepSet(int count) {
    return 'སྐར་མ་ $count ནང་རོལ་མོ་མཚམས་འཇོག་བྱེད།';
  }

  @override
  String get tasteTitle => 'ཁྱེད་ཀྱི་དགའ་སྤོབས།';

  @override
  String get tasteRetrain => 'བསྐྱར་སློབ།';

  @override
  String get tasteRetraining =>
      'ཁྱེད་ཀྱི་ལོ་རྒྱུས་ལ་བརྟེན་ནས་བསྐྱར་སློབ་བཞིན་ཡོད…';

  @override
  String get tasteRetrained => 'AI གིས་རང་གི་དཔེ་དབྱིབས་བསྐྱར་བཟོ་བྱས།';

  @override
  String tasteConfidence(int percent) {
    return 'ཡིད་ཆེས་ $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'བཏང་བ་ $plays · མཆོངས་པ་ $skips · དགའ་བ་ $likes';
  }

  @override
  String get tasteEmptySummary => 'གླུ་ཁ་ཤས་བཏང་ན་འདི་ཁེངས་འོང་།';

  @override
  String get tasteKeepLearning => 'ཉན་སྐབས་སློབ་མཁོ་མུ་མཐུད།';

  @override
  String get tasteKeepLearningSub =>
      'ད་ལྟའི་ཡིག་རིགས་གཏན་འཇགས་བྱེད་ཆེད་སྒོ་བརྒྱབ།';

  @override
  String get tasteDownloadsTitle => 'AI གིས་ཕབ་ལེན་བྱེད་པ།';

  @override
  String get tasteDownloadsSub =>
      'ཁྱེད་ཀྱིས་མ་སྨྲས་པར་རོལ་མོ་སྒྲིག་ཆས་ཐོག་ལ་ཐོན།';

  @override
  String get tasteDownloadLikes => 'ངས་དགའ་བ་ཚང་མ་ཕབ་ལེན་བྱོས།';

  @override
  String get tasteDownloadLikesSub =>
      'སྙིང་ལ་ཐལ་ན་ཡིག་ཆ་དྲ་མེད་ཆེད་ཉར་ཚགས་བྱེད།';

  @override
  String get tasteAiInstall => 'AI ལ་རང་གིས་འདེམས་པའི་རོལ་མོ་སྒྲིག་འཇུག་གནང་།';

  @override
  String get tasteAiInstallSub => 'ཁོས་ཡིད་ཆེས་པའི་གླུ་རྣམས་ལེན་འོང་།';

  @override
  String get tasteWhatItThinks => 'ཁྱེད་ཅི་ལ་དགའ་བར་ཁོས་བསམས།';

  @override
  String get tasteWhatItThinksSub =>
      'བཏང་བ། མཆོངས་པ། དགའ་བ། བསྐྱར་ཟློས་ལས་སློབ་པ།';

  @override
  String get tasteArtists => 'ཁོས་བརྟེན་པའི་གཞས་མཁན།';

  @override
  String get tasteWhenYouListen => 'ཁྱེད་ཉན་པའི་དུས།';

  @override
  String get tasteWhenYouListenSub =>
      'ཆུ་ཚོད་རེའི་བཏང་བ། — ད་ལྟའི་ཆུ་ཚོད་ལ་ལྗིད་ཆེ།';

  @override
  String get tasteDecades => 'ལོ་བཅུ་རེ།';

  @override
  String get tasteTune => 'འོས་སྦྱོར་ཞིབ་བཅོས།';

  @override
  String get tasteTuneSub => 'ཁྱིམ་གསར་འདྲེན་རྗེས་མར་ནུས་པ་ཐོན།';

  @override
  String get tasteDiscovery => 'རྙེད་པ།';

  @override
  String get tasteDiscoverySub => 'ཤེས་པ། ↔ ནམ་ཡང་མ་ཐོས་པ།';

  @override
  String get tasteEnergy => 'ནུས་ཤུགས།';

  @override
  String get tasteEnergySub => 'ཞི་བ། ↔ སྒྲ་ཆེ།';

  @override
  String get tasteRecency => 'གསར་ཆ།';

  @override
  String get tasteRecencySub => 'དུས་མཐའ་མེད་པ། ↔ གསར་པ་ཐོག་མ།';

  @override
  String get tasteNostalgia => 'དྲན་སེམས།';

  @override
  String get tasteNostalgiaSub =>
      'སྔར་གྱི་དགའ་ཤོས་ཅིག་ཇི་ཙམ་རིང་ན་བརྗེད་པར་བརྩི།';

  @override
  String get tasteSignals => 'ཁོས་བེད་སྤྱོད་བྱེད་ཆོག་པའི་བརྡ་རྟགས།';

  @override
  String get tasteSignalsSub => 'ཚང་མ་སྒྲིག་ཆས་འདི་ཁོ་ན་ལ་ལུས།';

  @override
  String get tasteUseHistory => 'ངས་བཏང་བ།';

  @override
  String get tasteUseSkips => 'ངས་མཆོངས་པ།';

  @override
  String get tasteUseTime => 'ཉིན་མའི་དུས་ཚོད།';

  @override
  String get tasteUseYouTube => 'YouTube ནས་འོས་སྦྱོར།';

  @override
  String get tasteAlwaysMore => 'རྟག་ཏུ་མང་དུ།';

  @override
  String get tasteNeverAgain => 'ནམ་ཡང་མི་དགོས།';

  @override
  String get tasteAddArtist => 'གཞས་མཁན་སྣོན།';

  @override
  String get tasteMoreOfPrompt => 'རྟག་ཏུ་མང་དུ…';

  @override
  String get tasteNeverAgainPrompt => 'ནམ་ཡང་མི་དགོས…';

  @override
  String get tasteReset => 'སློབ་པ་དག་བསྐྱར་སྒྲིག';

  @override
  String get tasteResetSub =>
      'ཁྱེད་ཀྱི་རོལ་མོ་ལུས། ཡིག་རིགས་ཀླད་ཀོར་ནས་འགོ་འཛུགས།';

  @override
  String get trainCard => 'སྐར་མ་སྤྲོད་ནས་སློབ།';

  @override
  String get trainCardSub =>
      'གླུ་ངོ་མ་རྣམས་བསྒྲིལ། གཡས་ལ་འདི་འདྲ་མང་དུ། གཡོན་ལ་ནམ་ཡང་མི་དགོས། ཉིན་མོ་གཅིག་ཉན་པ་ལས་འདིར་སྐར་མ་གཉིས་ཀྱིས་ཕན།';

  @override
  String get trainStart => 'སློབ་སྦྱོང་སྐོར་འགོ་འཛུགས།';

  @override
  String get trainTitle => 'སློབ་སྦྱོང་སྐོར།';

  @override
  String get trainQuestion => 'འདི་ཁྱེད་ཀྱི་ཁྱིམ་ལ་དགོས་སམ།';

  @override
  String get trainMoreLikeThis => 'འདི་འདྲ་མང་དུ།';

  @override
  String get trainNeverAgain => 'ནམ་ཡང་མི་དགོས།';

  @override
  String get trainDone => 'སྐོར་ཚར།';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked བཞག །$blocked བཀག །ཡིད་ཆེས་ $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'ཁྱེད་ཀྱི་དགའ་སྤོབས་ལ་ལོག';

  @override
  String get trainNothingTitle => 'ད་ལྟ་སྐར་མ་སྤྲོད་རྒྱུ་མེད།';

  @override
  String get trainNothingBody =>
      'སྔོན་ལ་རོལ་མོ་སྣོན་ནམ་ AI ལ་འོས་མི་ལེན་དུ་གཞུག །དེ་རྗེས་ལོག་ཤོག';

  @override
  String get trainLeaveTitle => 'སློབ་སྦྱོང་སྐོར་ནས་ཐོན་ནམ།';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ད་ཐོན་ན། AI གིས་སྐོར་འདིའི་ཚང་མ་བཀོག་འོང་། ཁྱེད་ཀྱིས་ད་ལྟ་སྐར་མ་བྱིན་པའི་གླུ་ $count ཀ་ཡིན།',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'སློབ་སྦྱོང་མུ་མཐུད།';

  @override
  String get trainDiscard => 'བཀོག་ནས་ཐོན།';

  @override
  String get setTitle => 'སྒྲིག་འགོད།';

  @override
  String get setAppearance => 'ཕྱི་ཚུལ།';

  @override
  String get setTheme => 'བརྗོད་གཞི།';

  @override
  String get setThemeSystem => 'མ་ལག་ལ་རྗེས་འབྲང་།';

  @override
  String get setThemeLight => 'འོད་ཆེ།';

  @override
  String get setThemeDark => 'མུན་ཆེ།';

  @override
  String get setPureBlack => 'ནག་པོ་རྣམ་དག';

  @override
  String get setPureBlackSub => 'OLED བརྙན་ཁྱེར་ལ་གློག་ཉར།';

  @override
  String get setAccent => 'གཙོ་མདོག';

  @override
  String get setAccentArtwork => 'ཁ་ཤོག་གི་རིས་ནས།';

  @override
  String get setAccentFixed => 'ངས་བདམས་པའི་མདོག་གཅིག';

  @override
  String get setLanguage => 'སྐད་ཡིག';

  @override
  String get setLanguageSystem => 'མ་ལག་ལ་རྗེས་འབྲང་།';

  @override
  String get setAccessibility => 'འཛུལ་སྤྱོད་སྟབས་བདེ།';

  @override
  String get setTextSize => 'ཡི་གེའི་ཆེ་ཚད།';

  @override
  String get setTextSizeSub => 'ཁྱེད་ཀྱི་མ་ལག་གི་སྒྲིག་འགོད་ཐོག་ལ།';

  @override
  String get setReduceMotion => 'གཡོ་འགུལ་ཉུང་དུ་ཐོངས།';

  @override
  String get setReduceMotionSub =>
      'ཐིག་ཁྲམ། སྣང་བརྙན། མཆོང་བྱེད་ཀྱི་འགུལ། ལྡེམ་པའི་ཐལ། ཤོག་ངོས་བརྗེ་སྐབས་ཀྱི་འགུལ་སྟངས་རྣམས་བཀག་གི།';

  @override
  String get setHighContrast => 'མདོག་ཁྱད་ཆེ།';

  @override
  String get setHighContrastSub => 'ཁྱད་པར་གསལ་པོ་དང་མཐའ་ཐིག་མཐོང་བ།';

  @override
  String get setBoldText => 'ཡི་གེ་སྦོམ་པོ།';

  @override
  String get setPlayback => 'གཏོང་བ།';

  @override
  String get setAutoRadio => 'རོལ་མོ་མུ་མཐུད།';

  @override
  String get setAutoRadioSub =>
      'གྲལ་རིམ་ཚར་ན། གླུ་མཐའ་མའི་རླུང་འཕྲིན་གྱིས་མུ་མཐུད།';

  @override
  String get setSmartShuffle => 'ཤེས་རིག་ལྷུག་རིས།';

  @override
  String get setSmartShuffleSub => 'ཚོད་མེད་མིན་པར་དགའ་སྤོབས་ལྟར་ལྷུག་རིས།';

  @override
  String get setResume => 'བཞག་ས་ནས་མུ་མཐུད།';

  @override
  String get setResumeSub => 'ཉེར་སྤྱོད་ཕྱེ་སྐབས་གྲལ་རིམ་མཚམས་འཇོག་ཏུ་སླར་གསོ།';

  @override
  String get setDataSaver => 'Wi-Fi མེད་ན་གྲངས་ཀ་ཉར།';

  @override
  String get setDataSaverSub =>
      'ལག་འཁྱེར་གྲངས་ཀའི་ཐོག་རྒྱུན་འབོར་དང་ཕབ་ལེན་ 128 kbps ལ་ཚད་བཀག';

  @override
  String get setHaptics => 'ཐུག་རེག་ལན།';

  @override
  String get setShowReasons => 'ཅིའི་ཕྱིར་འོས་པ་སྟོན།';

  @override
  String get setSkipSilence => 'ཁ་ཅོམ་མཆོང་།';

  @override
  String get setQuality => 'སྒྲའི་ཚད་ལྡན།';

  @override
  String get setQualityLow => 'དམའ་བ། · 64 kbps';

  @override
  String get setQualityNormal => 'ཐུན་མོང་། · 128 kbps';

  @override
  String get setQualityHigh => 'མཐོ་བ། · 192 kbps';

  @override
  String get setQualityBest => 'ཐོབ་ཐུབ་ཀྱི་ཆེས་ལེགས།';

  @override
  String get setStorage => 'ཕབ་ལེན་དང་ཉར་ཚགས།';

  @override
  String get setWifiOnly => 'Wi-Fi ཁོ་ནར་ཕབ་ལེན།';

  @override
  String get setDailyLimit => 'AI ཆེད་ཉིན་རེའི་ཚད།';

  @override
  String setDailyLimitSub(int count) {
    return 'ཉིན་རེར་གླུ་ $count';
  }

  @override
  String get setBudget => 'AI གིས་བེད་སྤྱོད་ཆོག་པའི་ཉར་ཚགས།';

  @override
  String setUsed(Object size) {
    return 'ཕབ་ལེན་གྱིས་ $size བེད་སྤྱད།';
  }

  @override
  String get setYourMusic => 'ཁྱེད་ཀྱི་རོལ་མོ།';

  @override
  String get setImport => 'སྒྲིག་ཆས་འདི་ནས་རོལ་མོ་སྣོན།';

  @override
  String get setImportSub => 'ཡིག་སྣོད་དང་ཡིག་ཆ་རེ་རེ་བདམས།';

  @override
  String get setCleanup => 'བརླག་པའི་ཡིག་ཆ་གཙང་སྦྲ།';

  @override
  String get setCleanupSub => 'ཡིག་ཆ་མེད་པའི་གླུ་རྣམས་སུབ།';

  @override
  String setCleanupDone(int count) {
    return 'བརླག་པའི་ཡིག་ཆ་ $count བསུབས།';
  }

  @override
  String get setExport => 'ངའི་དགའ་སྤོབས་སྒྲིག་ཆས་གཞན་ལ་སྐུར།';

  @override
  String get setExportSub =>
      'ཁྱེད་ཀྱི་དགའ་བ། བཏང་བ། དང་ AI གིས་སློབ་པའི་ཚང་མ་ཡིག་ཆར་ཉར།';

  @override
  String get setImportTaste => 'སྒྲིག་ཆས་གཞན་ནས་དགའ་སྤོབས་ལེན།';

  @override
  String get setImportTasteSub =>
      'ཉར་ཟིན་པའི་དགའ་སྤོབས་ཡིག་ཆ་བདམས་ནས་སྦྲེལ། — བསྐྱར་ཟློས་ཀྱང་བདེ་འཇགས།';

  @override
  String get setAbout => 'སྐོར།';

  @override
  String get setAboutBody =>
      'YouTube དང་ཁྱེད་རང་གི་ཡིག་ཆའི་རོལ་མོ། AI ཚང་མ་སྒྲིག་ཆས་འདི་ཁོ་ནར་འཁོར། ཅི་ཡང་ཕྱིར་མི་འགྲོ།';

  @override
  String get setSource => 'འབྱུང་ཁུངས་ཀྱི་ཨང་རྟགས།';

  @override
  String get importTitle => 'རོལ་མོ་སྣོན།';

  @override
  String get importPickFolder => 'ཡིག་སྣོད་བདམས།';

  @override
  String get importPickFiles => 'ཡིག་ཆ་བདམས།';

  @override
  String importScanning(Object file) {
    return '$file ཞིབ་བཤེར་བཞིན་ཡོད།';
  }

  @override
  String importAdded(int count) {
    return '$count བསྣན།';
  }

  @override
  String get importDenied => 'ཆོག་མཆན་མ་ཐོབ། — ཁྱེད་ཀྱི་རོལ་མོ་ཀློག་མི་ཐུབ།';

  @override
  String get importWatched => 'ཁོས་ལྟ་སྐུལ་བྱེད་པའི་ཡིག་སྣོད།';

  @override
  String get importIosHint =>
      'Files ཉེར་སྤྱོད་ཕྱེ། On My iPhone → TuneBox ལ་སོང་ནས་རོལ་མོ་དེར་འཇོག';

  @override
  String get playerQueue => 'གྲལ་རིམ།';

  @override
  String get playerUpNext => 'རྗེས་མ།';

  @override
  String get playerLyrics => 'གླུ་ཚིག';

  @override
  String get playerNoLyrics => 'འདིའི་གླུ་ཚིག་མེད།';

  @override
  String get playerRepeat => 'བསྐྱར་ཟློས།';

  @override
  String get playerShuffle => 'ལྷུག་རིས།';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" གཏོང་མ་ཐུབ།';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" མཆོངས་བཞིན་ཡོད། — རྒྱུན་འབོར་ཕྱེ་མ་ཐུབ།';
  }

  @override
  String get undo => 'ཕྱིར་ལོག';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ད་ལྟ། $tags། ཁྲོད་ནས་ $artist གཙོ་བོ།';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ད་ལྟ། $tags།';
  }

  @override
  String get setColour => 'མདོག';

  @override
  String get setColourSub => 'ཉེར་སྤྱོད་ཡོངས་རྫོགས་འདིའི་རྗེས་སུ་འབྲང་།';

  @override
  String get setCoverArt => 'ཁ་ཤོག་རིས།';

  @override
  String get setMyColour => 'ངའི་མདོག';

  @override
  String get setCoverArtSub =>
      'གླུ་རེ་རེས་རང་གི་ཁ་ཤོག་ལྟར་ཉེར་སྤྱོད་ཀྱི་མདོག་བརྗེ།';

  @override
  String get setMyColourSub => 'མདོག་གཅིག། གང་དུ་ཡང་། རྟག་ཏུ།';

  @override
  String get setPickColour => 'མདོག་གང་འདོད་བདམས།';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi ཁོ་ནར་ཕབ་ལེན།';

  @override
  String get setDownloadLikes => 'ངས་དགའ་བ་ཚང་མ་ཕབ་ལེན་བྱོས།';

  @override
  String get setDownloadLikesSub => 'སྙིང་གི་མཐེབ་ཀྱིས་ཡིག་ཆ་ཡང་ཉར།';

  @override
  String get setAiInstall => 'AI ལ་རང་གིས་འདེམས་པའི་རོལ་མོ་སྒྲིག་འཇུག་གནང་།';

  @override
  String get setSkipSilenceSub =>
      'Android ཁོ་ན། ཞི་བའི་འགོ་འཛུགས། ཞན་བ། འཇམ་པའི་ཆ་ཤས་གཅོད་སྲིད། རོལ་མོ་མཆོངས་ན་སྒོ་བརྒྱབ།';

  @override
  String get setStorageUsed => 'ཕབ་ལེན་གྱིས་བེད་སྤྱད་པའི་ཉར་ཚགས།';

  @override
  String get setLibrary => 'དཔེ་མཛོད།';

  @override
  String get setUpdates => 'གསར་བརྗེ།';

  @override
  String get setAutoUpdate => 'རང་འགུལ་གྱིས་གསར་བརྗེ་ཞིབ་བཤེར།';

  @override
  String get setAutoUpdateSub =>
      'ཆུ་ཚོད་ཁ་ཤས་རེར་ཁ་ཐུམ་ནས། Wi-Fi ཐོག་ཕབ་ལེན་བྱེད། སྒྲིག་འཇུག་ལ་ད་དུང་ཁྱེད་ལ་འདྲི།';

  @override
  String setUpdateReady(Object version) {
    return '$version ལ་གསར་བརྗེ་གྲ་སྒྲིག་ཚར།';
  }

  @override
  String get setUpdateReadySub => 'ཕབ་ལེན་བྱས་ཟིན། — སྒྲིག་འཇུག་ཆེད་ཐལ།';

  @override
  String get setUpdateAvailableSub =>
      'འགྲེམས་སྤེལ་ཤོག་ངོས་ནས་ལེན། — སྦྲེལ་ཐག་འདྲ་བཤུ་ཆེད་ཐལ།';

  @override
  String get setLinkCopied => 'སྦྲེལ་ཐག་འདྲ་བཤུས་ཟིན།';

  @override
  String get setCheckNow => 'ད་ལྟ་ཞིབ་བཤེར།';

  @override
  String get setUpToDate => 'TuneBox གསར་ཤོས་ཡིན།';

  @override
  String get setChecking => 'ཐོན་རིམ་གསར་བ་འཚོལ་བཞིན་ཡོད…';

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
}
