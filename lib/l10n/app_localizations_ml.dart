// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class LMl extends L {
  LMl([String locale = 'ml']) : super(locale);

  @override
  String get navHome => 'ഹോം';

  @override
  String get navExplore => 'പര്യവേക്ഷണം';

  @override
  String get navLibrary => 'ലൈബ്രറി';

  @override
  String get navTaste => 'നിങ്ങളുടെ അഭിരുചി';

  @override
  String get actionDone => 'പൂർത്തിയായി';

  @override
  String get actionCancel => 'റദ്ദാക്കുക';

  @override
  String get actionCreate => 'സൃഷ്ടിക്കുക';

  @override
  String get actionPlay => 'പ്ലേ ചെയ്യുക';

  @override
  String get actionShuffle => 'ഷഫിൾ';

  @override
  String get actionPlayAll => 'എല്ലാം പ്ലേ ചെയ്യുക';

  @override
  String get actionAdd => 'ചേർക്കുക';

  @override
  String get actionRemove => 'നീക്കം ചെയ്യുക';

  @override
  String get actionName => 'പേര്';

  @override
  String get greetingNight => 'ഇനിയും ഉറങ്ങിയില്ലേ?';

  @override
  String get greetingMorning => 'സുപ്രഭാതം';

  @override
  String get greetingAfternoon => 'ശുഭ മധ്യാഹ്നം';

  @override
  String get greetingEvening => 'ശുഭ സായാഹ്നം';

  @override
  String get homeBuilding => 'AI നിങ്ങളുടെ ഷെൽഫുകൾ ഒരുക്കുന്നു…';

  @override
  String get homeOffline => 'ഓഫ്‌ലൈൻ — ഉപകരണത്തിലുള്ളത് കാണിക്കുന്നു';

  @override
  String get homeNothingYet => 'ഇതുവരെ ഒന്നും കാണിക്കാനില്ല';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഷെൽഫുകൾ, ഇപ്പോൾ പുതുക്കി',
      one: '1 ഷെൽഫ്, ഇപ്പോൾ പുതുക്കി',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'ഷെൽഫുകൾ വീണ്ടും ഒരുക്കുക';

  @override
  String get homeAddMusic => 'ഈ ഉപകരണത്തിൽ നിന്ന് സംഗീതം ചേർക്കുക';

  @override
  String get homeQuickPicks => 'ക്വിക്ക് പിക്കുകൾ';

  @override
  String get homeQuickPicksSub => 'കേട്ടുകൊണ്ടിരുന്നതിലേക്ക് നേരെ മടങ്ങാം';

  @override
  String get homeEmptyTitle => 'നിങ്ങളുടെ ലൈബ്രറി ശൂന്യമാണ്';

  @override
  String get homeEmptyBody =>
      'എന്തെങ്കിലും തിരയുക, അല്ലെങ്കിൽ ഈ ഉപകരണത്തിലുള്ള സംഗീതം ചേർക്കുക. ആദ്യ പ്ലേ മുതൽ തന്നെ AI പഠിച്ചു തുടങ്ങും.';

  @override
  String get homeAddMyMusic => 'എന്റെ സംഗീതം ചേർക്കുക';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube-ൽ എത്താനായില്ല: $error';
  }

  @override
  String get moodFocus => 'ഫോക്കസ്';

  @override
  String get moodWorkout => 'വർക്കൗട്ട്';

  @override
  String get moodChill => 'ചിൽ';

  @override
  String get moodCommute => 'യാത്ര';

  @override
  String get moodParty => 'പാർട്ടി';

  @override
  String moodBuilding(Object mood) {
    return '$mood മിക്സ് ഒരുക്കുന്നു…';
  }

  @override
  String moodFailed(Object error) {
    return 'നടന്നില്ല: $error';
  }

  @override
  String get shelfRepeat => 'ആവർത്തിച്ച്';

  @override
  String get shelfRepeatSub => 'കഴിഞ്ഞ രണ്ടാഴ്ച';

  @override
  String get shelfForgotten => 'നിങ്ങൾക്കിഷ്ടപ്പെട്ടിരുന്ന മറന്ന ഹിറ്റുകൾ';

  @override
  String get shelfForgottenSub =>
      'ഒരിക്കൽ ഇഷ്ടപ്പെട്ടു, കുറച്ചുകാലമായി തൊട്ടിട്ടില്ല';

  @override
  String get shelfNew => 'പുതിയത്';

  @override
  String get shelfNewSub => 'നിങ്ങൾക്കുള്ളതെന്ന് AI കരുതുന്ന പുതിയ ട്രാക്കുകൾ';

  @override
  String shelfBecause(Object artist) {
    return 'നിങ്ങൾ $artist കേട്ടതിനാൽ';
  }

  @override
  String get shelfBecauseSub => 'നിങ്ങളുടെ അഭിരുചിയുടെ അതേ കോണിൽ';

  @override
  String get shelfDeep => 'അധികം തൊടാത്തവ';

  @override
  String get shelfDeepSub => 'ലൈബ്രറിയിലുണ്ട്, അപൂർവമായേ പ്ലേ ചെയ്തിട്ടുള്ളൂ';

  @override
  String get shelfMix => 'നിങ്ങളുടെ മിക്സ്';

  @override
  String get shelfMixSub => 'ആപ്പ് തുറക്കുമ്പോഴെല്ലാം പുതുതായി ഒരുക്കും';

  @override
  String get shelfAdded => 'അടുത്തിടെ ചേർത്തത്';

  @override
  String get shelfAddedSub => 'ഡൗൺലോഡുകളും ഇമ്പോർട്ട് ചെയ്ത ഫയലുകളും';

  @override
  String get shelfStarter => 'ഇവിടെ തുടങ്ങൂ';

  @override
  String get shelfStarterSub => 'കുറച്ച് പ്ലേ ചെയ്യൂ, AI ഉടൻ പഠിച്ചു തുടങ്ങും';

  @override
  String reasonPlays(int count) {
    return '$count പ്ലേ';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ഇഷ്ടപ്പെട്ടു, അവസാനം പ്ലേ ചെയ്തത് $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count പ്ലേ, അവസാനം $when';
  }

  @override
  String get reasonTopArtist => 'നിങ്ങൾ ഏറ്റവുമധികം കേട്ട കലാകാരന്മാരിൽ ഒരാൾ';

  @override
  String reasonMore(Object artist) {
    return '$artist കൂടുതൽ';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'നിങ്ങൾ വീണ്ടും വീണ്ടും $artist-ലേക്ക് മടങ്ങുന്നു';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'നിങ്ങളുടെ ഇഷ്ടത്തിലുള്ള $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ഈയിടെ $tag ധാരാളം';
  }

  @override
  String get reasonOutThisYear => 'ഈ വർഷം പുറത്തിറങ്ങി';

  @override
  String get reasonReleasedRecently => 'അടുത്തിടെ റിലീസ് ചെയ്തത്';

  @override
  String get reasonClose => 'നിങ്ങൾ കേട്ടുകൊണ്ടിരുന്നതിനോട് അടുത്തത്';

  @override
  String reasonNear(Object artist) {
    return '$artist-നോട് ചേർന്നത്';
  }

  @override
  String get reasonNeverPlayed => 'ഒരിക്കലും പ്ലേ ചെയ്തിട്ടില്ല';

  @override
  String get reasonPlayedOnce => 'ഒരു തവണ പ്ലേ ചെയ്തു';

  @override
  String get reasonPopular => 'ഇപ്പോൾ ജനപ്രിയം';

  @override
  String whenYearsAgo(int count) {
    return '$count വർഷം മുമ്പ്';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count മാസം മുമ്പ്';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count ദിവസം മുമ്പ്';
  }

  @override
  String get searchHint => 'പാട്ടുകൾ, കലാകാരന്മാർ, ആൽബങ്ങൾ';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഫലങ്ങൾ',
      one: '1 ഫലം',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'സമീപകാല തിരച്ചിലുകൾ';

  @override
  String get searchEmptyTitle => 'ഒന്നും കണ്ടെത്തിയില്ല';

  @override
  String get searchEmptyBody =>
      'മറ്റൊരു അക്ഷരവിന്യാസം ശ്രമിക്കൂ, അല്ലെങ്കിൽ കലാകാരന്റെ പേര് മാത്രം തിരയൂ.';

  @override
  String get searchStartTitle => 'പ്ലേ ചെയ്യാൻ എന്തെങ്കിലും കണ്ടെത്തൂ';

  @override
  String get searchStartBody =>
      'YouTube Music-ൽ തിരയുക — പാട്ടുകൾ മാത്രമേ വരൂ, മറ്റ് കാര്യങ്ങളുടെ വീഡിയോകൾ വരില്ല.';

  @override
  String get libPlaylists => 'പ്ലേലിസ്റ്റുകൾ';

  @override
  String get libSongs => 'പാട്ടുകൾ';

  @override
  String get libArtists => 'കലാകാരന്മാർ';

  @override
  String get libLiked => 'ഇഷ്ടപ്പെട്ടവ';

  @override
  String get libDownloads => 'ഡൗൺലോഡുകൾ';

  @override
  String get libImported => 'ഇമ്പോർട്ട് ചെയ്തത്';

  @override
  String get libLikedSongs => 'ഇഷ്ടപ്പെട്ട പാട്ടുകൾ';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count പാട്ടുകൾ',
      one: '1 പാട്ട്',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ഓഫ്‌ലൈൻ';
  }

  @override
  String get libMyFiles => 'എന്റെ സ്വന്തം ഫയലുകൾ';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഫയലുകൾ',
      one: '1 ഫയൽ',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'പുതിയ പ്ലേലിസ്റ്റ്';

  @override
  String get libMakeOne => 'ഒന്ന് ഉണ്ടാക്കൂ';

  @override
  String get libSortRecent => 'അടുത്തിടെ ചേർത്തത്';

  @override
  String get libSortTitle => 'ശീർഷകം';

  @override
  String get libSortArtist => 'കലാകാരൻ';

  @override
  String get libSortPlays => 'ഏറ്റവുമധികം പ്ലേ ചെയ്തത്';

  @override
  String get sheetNotForMe => 'എനിക്ക് വേണ്ട';

  @override
  String get sheetNotForMeSub => 'ഇത് ഇനി ഒരിക്കലും നിർദ്ദേശിക്കരുത്';

  @override
  String get sheetBlocked =>
      'തടഞ്ഞിരിക്കുന്നു — വീണ്ടും അനുവദിക്കാൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get sheetBlockedSub => 'ഇത് വീണ്ടും നിർദ്ദേശങ്ങളിൽ വന്നേക്കാം';

  @override
  String get sheetPlayNext => 'അടുത്തതായി പ്ലേ ചെയ്യുക';

  @override
  String get sheetAddToPlaylist => 'പ്ലേലിസ്റ്റിലേക്ക് ചേർക്കുക';

  @override
  String get sheetDownloaded => 'ഡൗൺലോഡ് ചെയ്തു';

  @override
  String get sheetRemoveFile => 'ഫയൽ നീക്കം ചെയ്യാൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get sheetDownload => 'ഡൗൺലോഡ്';

  @override
  String get sheetKeepOffline => 'ഓഫ്‌ലൈനിനായി സൂക്ഷിക്കുക';

  @override
  String get sheetRadio => 'റേഡിയോ തുടങ്ങുക';

  @override
  String get sheetRadioSub => 'ഈ പാട്ടിനെ ചുറ്റിപ്പറ്റി ഒരുക്കിയ ക്യൂ';

  @override
  String get sheetQueue => 'ക്യൂ';

  @override
  String get sheetSleepTimer => 'സ്ലീപ് ടൈമർ';

  @override
  String get sheetSleepOff => 'ഓഫ്';

  @override
  String sheetSleepMinutes(int count) {
    return '$count മിനിറ്റ്';
  }

  @override
  String get sheetSleepEndOfTrack => 'ഈ പാട്ടിന്റെ അവസാനം';

  @override
  String sheetSleepSet(int count) {
    return '$count മിനിറ്റിൽ സംഗീതം നിൽക്കും';
  }

  @override
  String get tasteTitle => 'നിങ്ങളുടെ അഭിരുചി';

  @override
  String get tasteRetrain => 'വീണ്ടും പരിശീലിപ്പിക്കുക';

  @override
  String get tasteRetraining =>
      'നിങ്ങളുടെ ചരിത്രത്തിൽ വീണ്ടും പരിശീലിപ്പിക്കുന്നു…';

  @override
  String get tasteRetrained => 'AI അതിന്റെ മോഡൽ പുനർനിർമ്മിച്ചു.';

  @override
  String tasteConfidence(int percent) {
    return 'ആത്മവിശ്വാസം $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays പ്ലേ · $skips സ്കിപ്പ് · $likes ലൈക്ക്';
  }

  @override
  String get tasteEmptySummary => 'കുറച്ച് പാട്ടുകൾ പ്ലേ ചെയ്യൂ, ഇത് നിറയും.';

  @override
  String get tasteKeepLearning => 'ഞാൻ കേൾക്കുമ്പോൾ പഠിച്ചുകൊണ്ടിരിക്കുക';

  @override
  String get tasteKeepLearningSub => 'നിലവിലെ പ്രൊഫൈൽ മരവിപ്പിക്കാൻ ഓഫ് ആക്കുക';

  @override
  String get tasteDownloadsTitle => 'AI കൈകാര്യം ചെയ്യുന്ന ഡൗൺലോഡുകൾ';

  @override
  String get tasteDownloadsSub =>
      'നിങ്ങൾ ആവശ്യപ്പെടാതെ തന്നെ സംഗീതം ഉപകരണത്തിലെത്തും';

  @override
  String get tasteDownloadLikes => 'എനിക്കിഷ്ടപ്പെട്ടതെല്ലാം ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get tasteDownloadLikesSub =>
      'ഹൃദയത്തിൽ ടാപ്പ് ചെയ്താൽ ഫയൽ ഓഫ്‌ലൈനിനായി സേവ് ചെയ്യും';

  @override
  String get tasteAiInstall =>
      'AI തിരഞ്ഞെടുക്കുന്ന സംഗീതം ഇൻസ്റ്റാൾ ചെയ്യാൻ അനുവദിക്കുക';

  @override
  String get tasteAiInstallSub => 'ഉറപ്പുള്ള ട്രാക്കുകൾ അത് സ്വയം എടുക്കും';

  @override
  String get tasteWhatItThinks => 'നിങ്ങൾക്കിഷ്ടമെന്ന് അത് കരുതുന്നത്';

  @override
  String get tasteWhatItThinksSub =>
      'പ്ലേ, സ്കിപ്പ്, ലൈക്ക്, ആവർത്തനങ്ങൾ എന്നിവയിൽ നിന്ന് പഠിച്ചത്';

  @override
  String get tasteArtists => 'അത് ആശ്രയിക്കുന്ന കലാകാരന്മാർ';

  @override
  String get tasteWhenYouListen => 'നിങ്ങൾ കേൾക്കുന്ന സമയം';

  @override
  String get tasteWhenYouListenSub =>
      'മണിക്കൂറിലെ പ്ലേകൾ — ഇപ്പോഴത്തെ മണിക്കൂറിന് കൂടുതൽ പരിഗണന';

  @override
  String get tasteDecades => 'ദശകങ്ങൾ';

  @override
  String get tasteTune => 'നിർദ്ദേശങ്ങൾ ക്രമീകരിക്കുക';

  @override
  String get tasteTuneSub => 'അടുത്ത ഹോം പുതുക്കലിൽ പ്രാബല്യത്തിൽ വരും';

  @override
  String get tasteDiscovery => 'പുതുമ കണ്ടെത്തൽ';

  @override
  String get tasteDiscoverySub => 'പരിചിതം ↔ ഒരിക്കലും കേൾക്കാത്തവ';

  @override
  String get tasteEnergy => 'ഊർജ്ജം';

  @override
  String get tasteEnergySub => 'ശാന്തം ↔ ഉച്ചത്തിൽ';

  @override
  String get tasteRecency => 'പുതുമ';

  @override
  String get tasteRecencySub => 'കാലാതീതം ↔ തീർത്തും പുതിയത്';

  @override
  String get tasteNostalgia => 'ഗൃഹാതുരത';

  @override
  String get tasteNostalgiaSub =>
      'പഴയ പ്രിയപ്പെട്ടത് എത്ര പഴക്കത്തിൽ മറന്നതായി കണക്കാക്കണം';

  @override
  String get tasteSignals => 'ഉപയോഗിക്കാവുന്ന സൂചനകൾ';

  @override
  String get tasteSignalsSub => 'എല്ലാം ഈ ഉപകരണത്തിൽ തന്നെ തുടരും';

  @override
  String get tasteUseHistory => 'ഞാൻ പ്ലേ ചെയ്തത്';

  @override
  String get tasteUseSkips => 'ഞാൻ സ്കിപ്പ് ചെയ്യുന്നത്';

  @override
  String get tasteUseTime => 'ദിവസത്തിലെ സമയം';

  @override
  String get tasteUseYouTube => 'YouTube-ൽ നിന്നുള്ള നിർദ്ദേശങ്ങൾ';

  @override
  String get tasteAlwaysMore => 'എപ്പോഴും കൂടുതൽ';

  @override
  String get tasteNeverAgain => 'ഇനി ഒരിക്കലും വേണ്ട';

  @override
  String get tasteAddArtist => 'ഒരു കലാകാരനെ ചേർക്കുക';

  @override
  String get tasteMoreOfPrompt => 'എപ്പോഴും കൂടുതൽ…';

  @override
  String get tasteNeverAgainPrompt => 'ഇനി ഒരിക്കലും വേണ്ട…';

  @override
  String get tasteReset => 'പഠിച്ചത് റീസെറ്റ് ചെയ്യുക';

  @override
  String get tasteResetSub =>
      'നിങ്ങളുടെ സംഗീതം തുടരും; പ്രൊഫൈൽ പൂജ്യത്തിൽ നിന്ന് തുടങ്ങും';

  @override
  String get trainCard => 'റേറ്റ് ചെയ്ത് പരിശീലിപ്പിക്കുക';

  @override
  String get trainCardSub =>
      'യഥാർത്ഥ പാട്ടുകളിലൂടെ സ്വൈപ്പ് ചെയ്യൂ. ഇതുപോലെ കൂടുതൽ വേണമെങ്കിൽ വലത്തേക്ക്, ഇനി വേണ്ടെങ്കിൽ ഇടത്തേക്ക്. ഇവിടെ രണ്ട് മിനിറ്റ് ഒരാഴ്ചത്തെ കേൾവിയെക്കാൾ മികച്ചതാണ്.';

  @override
  String get trainStart => 'പരിശീലന റൗണ്ട് തുടങ്ങുക';

  @override
  String get trainTitle => 'പരിശീലന റൗണ്ട്';

  @override
  String get trainQuestion => 'ഇത് നിങ്ങളുടെ ഹോമിൽ വേണോ?';

  @override
  String get trainMoreLikeThis => 'ഇതുപോലെ കൂടുതൽ';

  @override
  String get trainNeverAgain => 'ഇനി ഒരിക്കലും വേണ്ട';

  @override
  String get trainDone => 'റൗണ്ട് പൂർത്തിയായി';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked സൂക്ഷിച്ചു · $blocked തടഞ്ഞു. ആത്മവിശ്വാസം $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'നിങ്ങളുടെ അഭിരുചിയിലേക്ക് മടങ്ങുക';

  @override
  String get trainNothingTitle => 'റേറ്റ് ചെയ്യാൻ ഇതുവരെ ഒന്നുമില്ല';

  @override
  String get trainNothingBody =>
      'കുറച്ച് സംഗീതം ചേർക്കൂ, അല്ലെങ്കിൽ ആദ്യം AI-യെ നിർദ്ദേശങ്ങൾ എടുക്കാൻ അനുവദിക്കൂ, എന്നിട്ട് തിരികെ വരൂ.';

  @override
  String get trainLeaveTitle => 'പരിശീലന റൗണ്ട് വിടണോ?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ഇപ്പോൾ വിട്ടാൽ ഈ റൗണ്ടിലെ എല്ലാം AI ഉപേക്ഷിക്കും — നിങ്ങൾ ഇപ്പോൾ റേറ്റ് ചെയ്ത $count പാട്ടുകളും.',
      one:
          'ഇപ്പോൾ വിട്ടാൽ ഈ റൗണ്ടിലെ എല്ലാം AI ഉപേക്ഷിക്കും — നിങ്ങൾ ഇപ്പോൾ റേറ്റ് ചെയ്ത 1 പാട്ട്.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'പരിശീലനം തുടരുക';

  @override
  String get trainDiscard => 'ഉപേക്ഷിച്ച് വിടുക';

  @override
  String get setTitle => 'ക്രമീകരണങ്ങൾ';

  @override
  String get setAppearance => 'രൂപഭാവം';

  @override
  String get setTheme => 'തീം';

  @override
  String get setThemeSystem => 'സിസ്റ്റത്തെ പിന്തുടരുക';

  @override
  String get setThemeLight => 'ലൈറ്റ്';

  @override
  String get setThemeDark => 'ഡാർക്ക്';

  @override
  String get setPureBlack => 'ശുദ്ധ കറുപ്പ്';

  @override
  String get setPureBlackSub => 'OLED സ്ക്രീനിൽ ബാറ്ററി ലാഭിക്കുന്നു';

  @override
  String get setAccent => 'ആക്സന്റ് നിറം';

  @override
  String get setAccentArtwork => 'കവർ ആർട്ടിൽ നിന്ന്';

  @override
  String get setAccentFixed => 'ഞാൻ തിരഞ്ഞെടുത്ത ഒരു നിറം';

  @override
  String get setLanguage => 'ഭാഷ';

  @override
  String get setLanguageSystem => 'സിസ്റ്റത്തെ പിന്തുടരുക';

  @override
  String get setAccessibility => 'ആക്സസിബിലിറ്റി';

  @override
  String get setTextSize => 'അക്ഷര വലിപ്പം';

  @override
  String get setTextSizeSub => 'നിങ്ങളുടെ സിസ്റ്റം ക്രമീകരണത്തിന് പുറമേ';

  @override
  String get setReduceMotion => 'ചലനം കുറയ്ക്കുക';

  @override
  String get setReduceMotionSub =>
      'ബാറുകൾ, വിഷ്വലൈസർ, ബൗൺസി സ്ക്രോളിംഗ്, സ്പ്രിംഗ് ടാപ്പുകൾ, പേജ് ട്രാൻസിഷനുകൾ എന്നിവ നിർത്തുന്നു';

  @override
  String get setHighContrast => 'ഉയർന്ന കോൺട്രാസ്റ്റ്';

  @override
  String get setHighContrastSub => 'ശക്തമായ വേർതിരിവും ദൃശ്യമായ അതിരുകളും';

  @override
  String get setBoldText => 'കട്ടിയുള്ള അക്ഷരങ്ങൾ';

  @override
  String get setPlayback => 'പ്ലേബാക്ക്';

  @override
  String get setAutoRadio => 'സംഗീതം തുടരാൻ അനുവദിക്കുക';

  @override
  String get setAutoRadioSub =>
      'ക്യൂ തീർന്നാൽ, അവസാന പാട്ടിനെ അടിസ്ഥാനമാക്കിയ റേഡിയോയുമായി തുടരും';

  @override
  String get setSmartShuffle => 'സ്മാർട്ട് ഷഫിൾ';

  @override
  String get setSmartShuffleSub =>
      'ക്രമരഹിതമായല്ല, അഭിരുചി അനുസരിച്ച് ഷഫിൾ ചെയ്യുന്നു';

  @override
  String get setResume => 'നിർത്തിയിടത്ത് നിന്ന് തുടരുക';

  @override
  String get setResumeSub =>
      'ആപ്പ് തുറക്കുമ്പോൾ ക്യൂ പുനഃസ്ഥാപിക്കും, പോസ് ചെയ്ത നിലയിൽ';

  @override
  String get setDataSaver => 'Wi-Fi ഇല്ലാത്തപ്പോൾ ഡാറ്റ സേവർ';

  @override
  String get setDataSaverSub =>
      'മൊബൈൽ ഡാറ്റയിൽ സ്ട്രീമുകളും ഡൗൺലോഡുകളും 128 kbps-ൽ പരിമിതപ്പെടുത്തുന്നു';

  @override
  String get setHaptics => 'ഹാപ്റ്റിക് ഫീഡ്‌ബാക്ക്';

  @override
  String get setShowReasons => 'എന്തുകൊണ്ട് നിർദ്ദേശിച്ചു എന്ന് കാണിക്കുക';

  @override
  String get setSkipSilence => 'നിശബ്ദത ഒഴിവാക്കുക';

  @override
  String get setQuality => 'ഓഡിയോ നിലവാരം';

  @override
  String get setQualityLow => 'കുറഞ്ഞത് · 64 kbps';

  @override
  String get setQualityNormal => 'സാധാരണം · 128 kbps';

  @override
  String get setQualityHigh => 'ഉയർന്നത് · 192 kbps';

  @override
  String get setQualityBest => 'ലഭ്യമായതിൽ മികച്ചത്';

  @override
  String get setStorage => 'ഡൗൺലോഡുകളും സ്റ്റോറേജും';

  @override
  String get setWifiOnly => 'Wi-Fi-യിൽ മാത്രം ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get setDailyLimit => 'AI-യുടെ ദൈനംദിന പരിധി';

  @override
  String setDailyLimitSub(int count) {
    return 'ദിവസം $count പാട്ടുകൾ';
  }

  @override
  String get setBudget => 'AI-ക്ക് ഉപയോഗിക്കാവുന്ന സ്റ്റോറേജ്';

  @override
  String setUsed(Object size) {
    return 'ഡൗൺലോഡുകൾ $size ഉപയോഗിച്ചു';
  }

  @override
  String get setYourMusic => 'നിങ്ങളുടെ സംഗീതം';

  @override
  String get setImport => 'ഈ ഉപകരണത്തിൽ നിന്ന് സംഗീതം ചേർക്കുക';

  @override
  String get setImportSub => 'ഫോൾഡറുകളോ ഒറ്റ ഫയലുകളോ തിരഞ്ഞെടുക്കുക';

  @override
  String get setCleanup => 'നഷ്ടപ്പെട്ട ഫയലുകൾ വൃത്തിയാക്കുക';

  @override
  String get setCleanupSub => 'ഫയൽ ഇല്ലാതായ പാട്ടുകൾ ഒഴിവാക്കുക';

  @override
  String setCleanupDone(int count) {
    return 'നഷ്ടപ്പെട്ട $count ഫയലുകൾ നീക്കം ചെയ്തു.';
  }

  @override
  String get setExport => 'എന്റെ അഭിരുചി മറ്റൊരു ഉപകരണത്തിലേക്ക് അയയ്ക്കുക';

  @override
  String get setExportSub =>
      'നിങ്ങളുടെ ലൈക്കുകൾ, പ്ലേകൾ, AI പഠിച്ചതെല്ലാം ഒരു ഫയലായി സേവ് ചെയ്യുന്നു';

  @override
  String get setImportTaste => 'മറ്റൊരു ഉപകരണത്തിൽ നിന്ന് അഭിരുചി ലോഡ് ചെയ്യുക';

  @override
  String get setImportTasteSub =>
      'സേവ് ചെയ്ത അഭിരുചി ഫയൽ തിരഞ്ഞെടുത്ത് ലയിപ്പിക്കുക — ആവർത്തിക്കുന്നത് സുരക്ഷിതം';

  @override
  String get setAbout => 'കുറിച്ച്';

  @override
  String get setAboutBody =>
      'YouTube-ൽ നിന്നും നിങ്ങളുടെ സ്വന്തം ഫയലുകളിൽ നിന്നുമുള്ള സംഗീതം. AI പൂർണ്ണമായും ഈ ഉപകരണത്തിൽ തന്നെ പ്രവർത്തിക്കുന്നു — ഒന്നും പുറത്തുപോകുന്നില്ല.';

  @override
  String get setSource => 'സോഴ്സ് കോഡ്';

  @override
  String get importTitle => 'സംഗീതം ചേർക്കുക';

  @override
  String get importPickFolder => 'ഒരു ഫോൾഡർ തിരഞ്ഞെടുക്കുക';

  @override
  String get importPickFiles => 'ഫയലുകൾ തിരഞ്ഞെടുക്കുക';

  @override
  String importScanning(Object file) {
    return '$file സ്കാൻ ചെയ്യുന്നു';
  }

  @override
  String importAdded(int count) {
    return '$count ചേർത്തു';
  }

  @override
  String get importDenied =>
      'അനുമതി നിഷേധിച്ചു — നിങ്ങളുടെ സംഗീതം വായിക്കാനാകില്ല.';

  @override
  String get importWatched => 'നിരീക്ഷിക്കുന്ന ഫോൾഡറുകൾ';

  @override
  String get importIosHint =>
      'Files ആപ്പ് തുറന്ന് On My iPhone → TuneBox എന്നതിലേക്ക് പോയി സംഗീതം അവിടെ ഇടുക.';

  @override
  String get playerQueue => 'ക്യൂ';

  @override
  String get playerUpNext => 'അടുത്തത്';

  @override
  String get playerLyrics => 'വരികൾ';

  @override
  String get playerNoLyrics => 'ഇതിന് വരികളില്ല.';

  @override
  String get playerRepeat => 'ആവർത്തിക്കുക';

  @override
  String get playerShuffle => 'ഷഫിൾ';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" പ്ലേ ചെയ്യാനായില്ല';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" ഒഴിവാക്കുന്നു — സ്ട്രീം തുറക്കുന്നില്ല.';
  }

  @override
  String get undo => 'തിരിച്ചാക്കുക';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ഇപ്പോൾ: $tags, നയിക്കുന്നത് $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ഇപ്പോൾ: $tags.';
  }

  @override
  String get setColour => 'നിറം';

  @override
  String get setColourSub => 'ആപ്പ് മുഴുവൻ ഇത് പിന്തുടരും';

  @override
  String get setCoverArt => 'കവർ ആർട്ട്';

  @override
  String get setMyColour => 'എന്റെ നിറം';

  @override
  String get setCoverArtSub =>
      'ഓരോ പാട്ടും അതിന്റെ കവറിൽ നിന്ന് ആപ്പിന്റെ നിറം മാറ്റുന്നു.';

  @override
  String get setMyColourSub => 'ഒരു നിറം, എല്ലായിടത്തും, എപ്പോഴും.';

  @override
  String get setPickColour => 'ഏതെങ്കിലും നിറം തിരഞ്ഞെടുക്കുക';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi-യിൽ മാത്രം ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get setDownloadLikes => 'എനിക്കിഷ്ടപ്പെട്ടതെല്ലാം ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get setDownloadLikesSub => 'ഹൃദയ ബട്ടൺ ഫയലും സേവ് ചെയ്യും';

  @override
  String get setAiInstall =>
      'AI തിരഞ്ഞെടുക്കുന്ന സംഗീതം ഇൻസ്റ്റാൾ ചെയ്യാൻ അനുവദിക്കുക';

  @override
  String get setSkipSilenceSub =>
      'Android-ൽ മാത്രം. നിശബ്ദമായ ആമുഖങ്ങൾ, ഫേഡുകൾ, മൃദുവായ ഭാഗങ്ങൾ എന്നിവ മുറിച്ചേക്കാം — സംഗീതം ഒഴിവായിപ്പോകുന്നെങ്കിൽ ഓഫ് ആക്കുക';

  @override
  String get setStorageUsed => 'ഡൗൺലോഡുകൾ ഉപയോഗിച്ച സ്റ്റോറേജ്';

  @override
  String get setLibrary => 'ലൈബ്രറി';

  @override
  String get setUpdates => 'അപ്ഡേറ്റുകൾ';

  @override
  String get setAutoUpdate => 'അപ്ഡേറ്റുകൾ സ്വയം പരിശോധിക്കുക';

  @override
  String get setAutoUpdateSub =>
      'ഏതാനും മണിക്കൂറുകൾ കൂടുമ്പോൾ, നിശബ്ദമായി, Wi-Fi-യിൽ ഡൗൺലോഡ് ചെയ്യും. ഇൻസ്റ്റാൾ ചെയ്യാൻ ഇപ്പോഴും നിങ്ങളോട് ചോദിക്കും.';

  @override
  String setUpdateReady(Object version) {
    return '$version ലേക്കുള്ള അപ്ഡേറ്റ് തയ്യാറാണ്';
  }

  @override
  String get setUpdateReadySub =>
      'ഡൗൺലോഡ് ചെയ്തു — ഇൻസ്റ്റാൾ ചെയ്യാൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get setUpdateAvailableSub =>
      'റിലീസ് പേജിൽ നിന്ന് നേടുക — ലിങ്ക് പകർത്താൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get setLinkCopied => 'ലിങ്ക് പകർത്തി';

  @override
  String get setCheckNow => 'ഇപ്പോൾ പരിശോധിക്കുക';

  @override
  String get setUpToDate => 'TuneBox ഏറ്റവും പുതിയ പതിപ്പിലാണ്';

  @override
  String get setChecking => 'പുതിയ പതിപ്പ് തിരയുന്നു…';
}
