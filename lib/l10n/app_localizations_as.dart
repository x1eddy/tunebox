// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class LAs extends L {
  LAs([String locale = 'as']) : super(locale);

  @override
  String get navHome => 'হোম';

  @override
  String get navExplore => 'অন্বেষণ';

  @override
  String get navLibrary => 'লাইব্ৰেৰী';

  @override
  String get navTaste => 'আপোনাৰ পছন্দ';

  @override
  String get actionDone => 'হ\'ল';

  @override
  String get actionCancel => 'বাতিল';

  @override
  String get actionCreate => 'সৃষ্টি কৰক';

  @override
  String get actionPlay => 'বজাওক';

  @override
  String get actionShuffle => 'শ্বাফল';

  @override
  String get actionPlayAll => 'সকলো বজাওক';

  @override
  String get actionAdd => 'যোগ কৰক';

  @override
  String get actionRemove => 'আঁতৰাওক';

  @override
  String get actionName => 'নাম';

  @override
  String get greetingNight => 'এতিয়াও সাৰে আছেনে?';

  @override
  String get greetingMorning => 'শুভ সকাল';

  @override
  String get greetingAfternoon => 'শুভ অপৰাহ্ন';

  @override
  String get greetingEvening => 'শুভ সন্ধিয়া';

  @override
  String get homeBuilding => 'AI-এ আপোনাৰ শ্বেল্ফবোৰ বনাইছে…';

  @override
  String get homeOffline => 'অফলাইন — ডিভাইচত থকাবোৰ দেখুওৱা হৈছে';

  @override
  String get homeNothingYet => 'এতিয়ালৈ দেখুৱাবলৈ একো নাই';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা শ্বেল্ফ, এই মাত্ৰ ৰিফ্ৰেচ কৰা হৈছে',
      one: '১টা শ্বেল্ফ, এই মাত্ৰ ৰিফ্ৰেচ কৰা হৈছে',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'শ্বেল্ফবোৰ পুনৰ বনাওক';

  @override
  String get homeAddMusic => 'এই ডিভাইচৰ পৰা সংগীত যোগ কৰক';

  @override
  String get homeQuickPicks => 'দ্ৰুত বাছনি';

  @override
  String get homeQuickPicksSub => 'আপুনি যিটো শুনি আছিল তালৈ পোনপটীয়াকৈ উভতক';

  @override
  String get homeEmptyTitle => 'আপোনাৰ লাইব্ৰেৰী খালী';

  @override
  String get homeEmptyBody =>
      'কিবা বিচাৰক, বা এই ডিভাইচত থকা সংগীত যোগ কৰক। আপোনাৰ প্ৰথমটো প্লেৰ পৰাই AI-এ শিকিবলৈ আৰম্ভ কৰে।';

  @override
  String get homeAddMyMusic => 'মোৰ সংগীত যোগ কৰক';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube-ত সংযোগ কৰিব পৰা নগ\'ল: $error';
  }

  @override
  String get moodFocus => 'মনোযোগ';

  @override
  String get moodWorkout => 'ব্যায়াম';

  @override
  String get moodChill => 'শান্ত';

  @override
  String get moodCommute => 'যাতায়াত';

  @override
  String get moodParty => 'পাৰ্টি';

  @override
  String moodBuilding(Object mood) {
    return '$mood মিক্স বনাই আছে…';
  }

  @override
  String moodFailed(Object error) {
    return 'সফল নহ\'ল: $error';
  }

  @override
  String get shelfRepeat => 'বাৰে বাৰে';

  @override
  String get shelfRepeatSub => 'আপোনাৰ যোৱা দুসপ্তাহ';

  @override
  String get shelfForgotten => 'আপুনি ভাল পোৱা পুৰণি পাহৰি যোৱা হিট';

  @override
  String get shelfForgottenSub =>
      'এসময়ত ভাল পাইছিল, কিছুদিনৰ পৰা শুনা হোৱা নাই';

  @override
  String get shelfNew => 'নতুন';

  @override
  String get shelfNewSub => 'AI-এ আপোনাৰ বাবে ভবা নতুন গান';

  @override
  String shelfBecause(Object artist) {
    return 'কাৰণ আপুনি $artist শুনিছিল';
  }

  @override
  String get shelfBecauseSub => 'আপোনাৰ পছন্দৰ একেটা কোণ';

  @override
  String get shelfDeep => 'প্ৰায় নুশুনা';

  @override
  String get shelfDeepSub => 'আপোনাৰ লাইব্ৰেৰীত আছে, কমেইহে শুনিছে';

  @override
  String get shelfMix => 'আপোনাৰ মিক্স';

  @override
  String get shelfMixSub => 'এপ খুলিলে প্ৰতিবাৰ পুনৰ বনোৱা হয়';

  @override
  String get shelfAdded => 'শেহতীয়াকৈ যোগ কৰা';

  @override
  String get shelfAddedSub => 'ডাউনলোড আৰু আপুনি আমদানি কৰা ফাইল';

  @override
  String get shelfStarter => 'ইয়াৰ পৰা আৰম্ভ কৰক';

  @override
  String get shelfStarterSub =>
      'কেইটামান বজাওক আৰু AI-এ লগে লগে শিকিবলৈ আৰম্ভ কৰিব';

  @override
  String reasonPlays(int count) {
    return '$count বাৰ বজোৱা হৈছে';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ভাল লাগিছে, শেষবাৰ বজোৱা $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count বাৰ বজোৱা, শেষবাৰ $when';
  }

  @override
  String get reasonTopArtist => 'আপুনি আটাইতকৈ বেছি শুনা শিল্পীৰ এজন';

  @override
  String reasonMore(Object artist) {
    return '$artistৰ আৰু';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'আপুনি বাৰে বাৰে $artistলৈ উভতি আহে';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'আপোনাৰ ধৰণৰ $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'শেহতীয়াকৈ বহুত $tag';
  }

  @override
  String get reasonOutThisYear => 'এই বছৰ ওলোৱা';

  @override
  String get reasonReleasedRecently => 'শেহতীয়াকৈ ওলোৱা';

  @override
  String get reasonClose => 'আপুনি শুনি থকাৰ ওচৰৰ';

  @override
  String reasonNear(Object artist) {
    return '$artistৰ ওচৰৰ';
  }

  @override
  String get reasonNeverPlayed => 'কেতিয়াও বজোৱা হোৱা নাই';

  @override
  String get reasonPlayedOnce => 'এবাৰ বজোৱা হৈছে';

  @override
  String get reasonPopular => 'এতিয়া জনপ্ৰিয়';

  @override
  String whenYearsAgo(int count) {
    return '$count বছৰ আগতে';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count মাহ আগতে';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count দিন আগতে';
  }

  @override
  String get searchHint => 'গান, শিল্পী, এলবাম';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা ফলাফল',
      one: '১টা ফলাফল',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'শেহতীয়া সন্ধান';

  @override
  String get searchEmptyTitle => 'একো পোৱা নগ\'ল';

  @override
  String get searchEmptyBody =>
      'অন্য বানানেৰে চেষ্টা কৰক, বা কেৱল শিল্পীৰ নাম লিখক।';

  @override
  String get searchStartTitle => 'বজাবলৈ কিবা বিচাৰি উলিয়াওক';

  @override
  String get searchStartBody =>
      'YouTube Music বিচাৰক — কেৱল গানহে ঘূৰি আহে, আন বস্তুৰ ভিডিঅ\' কেতিয়াও নহয়।';

  @override
  String get libPlaylists => 'প্লেলিষ্ট';

  @override
  String get libSongs => 'গান';

  @override
  String get libArtists => 'শিল্পী';

  @override
  String get libLiked => 'ভাল পোৱা';

  @override
  String get libDownloads => 'ডাউনলোড';

  @override
  String get libImported => 'আমদানি কৰা';

  @override
  String get libLikedSongs => 'ভাল পোৱা গান';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা গান',
      one: '১টা গান',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$countটা অফলাইন';
  }

  @override
  String get libMyFiles => 'মোৰ নিজৰ ফাইল';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা ফাইল',
      one: '১টা ফাইল',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'নতুন প্লেলিষ্ট';

  @override
  String get libMakeOne => 'এটা বনাওক';

  @override
  String get libSortRecent => 'শেহতীয়াকৈ যোগ কৰা';

  @override
  String get libSortTitle => 'শিৰোনাম';

  @override
  String get libSortArtist => 'শিল্পী';

  @override
  String get libSortPlays => 'সৰ্বাধিক বজোৱা';

  @override
  String get sheetNotForMe => 'মোৰ বাবে নহয়';

  @override
  String get sheetNotForMeSub => 'ইয়াক আৰু কেতিয়াও পৰামৰ্শ নিদিব';

  @override
  String get sheetBlocked => 'অৱৰোধিত — পুনৰ অনুমতি দিবলৈ টিপক';

  @override
  String get sheetBlockedSub => 'ইয়াক পুনৰ পৰামৰ্শত দেখা যাব পাৰে';

  @override
  String get sheetPlayNext => 'পিছত বজাওক';

  @override
  String get sheetAddToPlaylist => 'প্লেলিষ্টত যোগ কৰক';

  @override
  String get sheetDownloaded => 'ডাউনলোড হৈছে';

  @override
  String get sheetRemoveFile => 'ফাইলটো আঁতৰাবলৈ টিপক';

  @override
  String get sheetDownload => 'ডাউনলোড';

  @override
  String get sheetKeepOffline => 'অফলাইনৰ বাবে ৰাখক';

  @override
  String get sheetRadio => 'ৰেডিঅ\' আৰম্ভ কৰক';

  @override
  String get sheetRadioSub => 'এই গানটোৰ আশে-পাশে বনোৱা এটা শাৰী';

  @override
  String get sheetQueue => 'শাৰী';

  @override
  String get sheetSleepTimer => 'শোৱাৰ টাইমাৰ';

  @override
  String get sheetSleepOff => 'বন্ধ';

  @override
  String sheetSleepMinutes(int count) {
    return '$count মিনিট';
  }

  @override
  String get sheetSleepEndOfTrack => 'এই গানটোৰ শেষ';

  @override
  String sheetSleepSet(int count) {
    return 'সংগীত $count মিনিটত বন্ধ হ\'ব';
  }

  @override
  String get tasteTitle => 'আপোনাৰ পছন্দ';

  @override
  String get tasteRetrain => 'পুনৰ প্ৰশিক্ষণ';

  @override
  String get tasteRetraining => 'আপোনাৰ ইতিহাসৰ ওপৰত পুনৰ প্ৰশিক্ষণ হৈ আছে…';

  @override
  String get tasteRetrained => 'AI-এ নিজৰ মডেল পুনৰ বনালে।';

  @override
  String tasteConfidence(int percent) {
    return 'আস্থা $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays প্লে · $skips স্কিপ · $likes লাইক';
  }

  @override
  String get tasteEmptySummary => 'কেইটামান গান বজাওক আৰু ইয়াত তথ্য ভৰি পৰিব।';

  @override
  String get tasteKeepLearning => 'মই শুনি থাকোঁতে শিকি থাকক';

  @override
  String get tasteKeepLearningSub => 'বৰ্তমানৰ প্ৰফাইল স্থিৰ কৰিবলৈ বন্ধ কৰক';

  @override
  String get tasteDownloadsTitle => 'AI-এ চম্ভালা ডাউনলোড';

  @override
  String get tasteDownloadsSub => 'আপুনি নোসোধাকৈয়ে সংগীত ডিভাইচত আহি পৰে';

  @override
  String get tasteDownloadLikes => 'মোৰ ভাল লগা সকলো ডাউনলোড কৰক';

  @override
  String get tasteDownloadLikesSub =>
      'হৃদয় টিপিলেই ফাইল অফলাইনৰ বাবে সংৰক্ষিত হয়';

  @override
  String get tasteAiInstall => 'AI-এ বাছনি কৰা সংগীত ইনষ্টল কৰিবলৈ দিয়ক';

  @override
  String get tasteAiInstallSub => 'ই নিশ্চিত হোৱা গানবোৰ আনিব';

  @override
  String get tasteWhatItThinks => 'আপোনাৰ কি ভাল লাগে বুলি ভাবে';

  @override
  String get tasteWhatItThinksSub =>
      'প্লে, স্কিপ, লাইক আৰু পুনৰাবৃত্তিৰ পৰা শিকা';

  @override
  String get tasteArtists => 'ই নিৰ্ভৰ কৰা শিল্পী';

  @override
  String get tasteWhenYouListen => 'আপুনি কেতিয়া শুনে';

  @override
  String get tasteWhenYouListenSub =>
      'প্ৰতি ঘণ্টাত প্লে — বৰ্তমানৰ ঘণ্টাক অধিক গুৰুত্ব দিয়া হয়';

  @override
  String get tasteDecades => 'দশক';

  @override
  String get tasteTune => 'পৰামৰ্শ টিউন কৰক';

  @override
  String get tasteTuneSub => 'পৰৱৰ্তী হোম ৰিফ্ৰেচত কাৰ্যকৰী হ\'ব';

  @override
  String get tasteDiscovery => 'আৱিষ্কাৰ';

  @override
  String get tasteDiscoverySub => 'চিনাকি ↔ আপুনি কেতিয়াও নুশুনা বস্তু';

  @override
  String get tasteEnergy => 'শক্তি';

  @override
  String get tasteEnergySub => 'শান্ত ↔ উচ্চ';

  @override
  String get tasteRecency => 'নতুনত্ব';

  @override
  String get tasteRecencySub => 'কালজয়ী ↔ একেবাৰে নতুন';

  @override
  String get tasteNostalgia => 'নষ্টালজিয়া';

  @override
  String get tasteNostalgiaSub =>
      'পুৰণি প্ৰিয় গান কিমান আগৰ হ\'লে পাহৰি যোৱা বুলি গণ্য হয়';

  @override
  String get tasteSignals => 'ই ব্যৱহাৰ কৰিব পৰা সংকেত';

  @override
  String get tasteSignalsSub => 'সকলো এই ডিভাইচতে থাকে';

  @override
  String get tasteUseHistory => 'মই কি শুনিছো';

  @override
  String get tasteUseSkips => 'মই কি স্কিপ কৰোঁ';

  @override
  String get tasteUseTime => 'দিনৰ সময়';

  @override
  String get tasteUseYouTube => 'YouTube-ৰ পৰামৰ্শ';

  @override
  String get tasteAlwaysMore => 'সদায় আৰু বেছি';

  @override
  String get tasteNeverAgain => 'আৰু কেতিয়াও নহয়';

  @override
  String get tasteAddArtist => 'শিল্পী যোগ কৰক';

  @override
  String get tasteMoreOfPrompt => 'সদায় আৰু বেছি…';

  @override
  String get tasteNeverAgainPrompt => 'আৰু কেতিয়াও নহয়…';

  @override
  String get tasteReset => 'ই শিকাখিনি ৰিছেট কৰক';

  @override
  String get tasteResetSub => 'আপোনাৰ সংগীত থাকে; প্ৰফাইল শূন্যৰ পৰা আৰম্ভ হয়';

  @override
  String get trainCard => 'ৰেটিঙৰ জৰিয়তে প্ৰশিক্ষণ দিয়ক';

  @override
  String get trainCardSub =>
      'প্ৰকৃত গানবোৰৰ মাজেদি স্বাইপ কৰক। এনেকুৱা আৰু বেছিৰ বাবে সোঁফালে, আৰু কেতিয়াও নহয়ৰ বাবে বাঁওফালে। ইয়াত দুমিনিটে এসপ্তাহ শুনাতকৈ ভাল।';

  @override
  String get trainStart => 'প্ৰশিক্ষণ ৰাউণ্ড আৰম্ভ কৰক';

  @override
  String get trainTitle => 'প্ৰশিক্ষণ ৰাউণ্ড';

  @override
  String get trainQuestion => 'আপুনি ইয়াক আপোনাৰ হোমত বিচাৰেনে?';

  @override
  String get trainMoreLikeThis => 'এনেকুৱা আৰু বেছি';

  @override
  String get trainNeverAgain => 'আৰু কেতিয়াও নহয়';

  @override
  String get trainDone => 'ৰাউণ্ড সম্পূৰ্ণ';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$likedটা ৰখা হ\'ল · $blockedটা অৱৰোধ কৰা হ\'ল। আস্থা $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'আপোনাৰ পছন্দলৈ উভতক';

  @override
  String get trainNothingTitle => 'এতিয়ালৈ ৰেট কৰিবলৈ একো নাই';

  @override
  String get trainNothingBody =>
      'কিছু সংগীত যোগ কৰক বা প্ৰথমে AI-ক প্ৰাৰ্থী আনিবলৈ দিয়ক, তাৰ পিছত উভতি আহক।';

  @override
  String get trainLeaveTitle => 'প্ৰশিক্ষণ ৰাউণ্ড এৰিব নেকি?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'আপুনি এতিয়া ওলাই গ\'লে, AI-এ এই ৰাউণ্ডৰ সকলো বাতিল কৰিব — আপুনি এইমাত্ৰ ৰেট কৰা সকলো $countটা গান।',
      one:
          'আপুনি এতিয়া ওলাই গ\'লে, AI-এ এই ৰাউণ্ডৰ সকলো বাতিল কৰিব — আপুনি এইমাত্ৰ ৰেট কৰা ১টা গান।',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'প্ৰশিক্ষণ চলাই থাকক';

  @override
  String get trainDiscard => 'বাতিল কৰি ওলাই যাওক';

  @override
  String get setTitle => 'ছেটিংছ';

  @override
  String get setAppearance => 'চেহেৰা';

  @override
  String get setTheme => 'থীম';

  @override
  String get setThemeSystem => 'ছিষ্টেম অনুসৰণ কৰক';

  @override
  String get setThemeLight => 'পোহৰ';

  @override
  String get setThemeDark => 'ক\'লা';

  @override
  String get setPureBlack => 'বিশুদ্ধ ক\'লা';

  @override
  String get setPureBlackSub => 'OLED স্ক্ৰীনত শক্তি সাঁচে';

  @override
  String get setAccent => 'এক্সেণ্ট ৰং';

  @override
  String get setAccentArtwork => 'কভাৰ আৰ্টৰ পৰা';

  @override
  String get setAccentFixed => 'মই বাছনি কৰা এটা ৰং';

  @override
  String get setLanguage => 'ভাষা';

  @override
  String get setLanguageSystem => 'ছিষ্টেম অনুসৰণ কৰক';

  @override
  String get setAccessibility => 'অভিগম্যতা';

  @override
  String get setTextSize => 'লিখনীৰ আকাৰ';

  @override
  String get setTextSizeSub => 'আপোনাৰ ছিষ্টেম ছেটিঙৰ ওপৰত';

  @override
  String get setReduceMotion => 'গতি কমাওক';

  @override
  String get setReduceMotionSub =>
      'বাৰ, ভিজুৱেলাইজাৰ, লাফি থকা স্ক্ৰ\'লিং, স্প্ৰিংৰ দৰে টেপ আৰু পৃষ্ঠাৰ ট্ৰেঞ্জিচন বন্ধ কৰে';

  @override
  String get setHighContrast => 'উচ্চ কন্ট্ৰাষ্ট';

  @override
  String get setHighContrastSub => 'অধিক স্পষ্ট পৃথকীকৰণ আৰু দৃশ্যমান ৰেখা';

  @override
  String get setBoldText => 'বোল্ড লিখনী';

  @override
  String get setPlayback => 'প্লেবেক';

  @override
  String get setAutoRadio => 'সংগীত চলি থাকিবলৈ দিয়ক';

  @override
  String get setAutoRadioSub =>
      'শাৰী শেষ হ\'লে, শেষৰ গানটোৰ পৰা বনোৱা ৰেডিঅ\'ৰে আগবাঢ়ক';

  @override
  String get setSmartShuffle => 'স্মাৰ্ট শ্বাফল';

  @override
  String get setSmartShuffleSub => 'এলোমেলোকৈ নহৈ পছন্দ অনুসৰি শ্বাফল কৰে';

  @override
  String get setResume => 'য\'ত এৰিছিলোঁ তাৰ পৰা আৰম্ভ কৰক';

  @override
  String get setResumeSub => 'এপ খুলিলে শাৰীটো পজ অৱস্থাত পুনৰুদ্ধাৰ কৰে';

  @override
  String get setDataSaver => 'Wi-Fi নোহোৱাত ডেটা সেভাৰ';

  @override
  String get setDataSaverSub =>
      'মোবাইল ডেটাত ষ্ট্ৰীম আৰু ডাউনলোড 128 kbps-লৈ সীমিত কৰে';

  @override
  String get setHaptics => 'হেপটিক ফিডব্যাক';

  @override
  String get setShowReasons => 'কিয় পৰামৰ্শ দিয়া হ\'ল দেখুৱাওক';

  @override
  String get setSkipSilence => 'নীৰৱতা স্কিপ কৰক';

  @override
  String get setQuality => 'অডিঅ\' মান';

  @override
  String get setQualityLow => 'নিম্ন · 64 kbps';

  @override
  String get setQualityNormal => 'সাধাৰণ · 128 kbps';

  @override
  String get setQualityHigh => 'উচ্চ · 192 kbps';

  @override
  String get setQualityBest => 'উপলব্ধ সৰ্বশ্ৰেষ্ঠ';

  @override
  String get setStorage => 'ডাউনলোড আৰু ষ্ট\'ৰেজ';

  @override
  String get setWifiOnly => 'কেৱল Wi-Fi-ত ডাউনলোড কৰক';

  @override
  String get setDailyLimit => 'AI-ৰ দৈনিক সীমা';

  @override
  String setDailyLimitSub(int count) {
    return 'দিনে $countটা গান';
  }

  @override
  String get setBudget => 'AI-এ ব্যৱহাৰ কৰিব পৰা ষ্ট\'ৰেজ';

  @override
  String setUsed(Object size) {
    return 'ডাউনলোডে $size ব্যৱহাৰ কৰিছে';
  }

  @override
  String get setYourMusic => 'আপোনাৰ সংগীত';

  @override
  String get setImport => 'এই ডিভাইচৰ পৰা সংগীত যোগ কৰক';

  @override
  String get setImportSub => 'ফোল্ডাৰ বা একক ফাইল বাছনি কৰক';

  @override
  String get setCleanup => 'নোহোৱা ফাইল পৰিষ্কাৰ কৰক';

  @override
  String get setCleanupSub => 'ফাইল নোহোৱা গান আঁতৰাওক';

  @override
  String setCleanupDone(int count) {
    return '$countটা নোহোৱা ফাইল আঁতৰোৱা হ\'ল।';
  }

  @override
  String get setExport => 'মোৰ পছন্দ আন ডিভাইচলৈ পঠাওক';

  @override
  String get setExportSub =>
      'আপোনাৰ লাইক, প্লে আৰু AI-এ শিকা সকলো থকা এটা ফাইল সংৰক্ষণ কৰে';

  @override
  String get setImportTaste => 'আন ডিভাইচৰ পৰা পছন্দ লোড কৰক';

  @override
  String get setImportTasteSub =>
      'সংৰক্ষিত পছন্দ ফাইল বাছনি কৰি মিলাওক — পুনৰ কৰিলেও নিৰাপদ';

  @override
  String get setAbout => 'বিষয়ে';

  @override
  String get setAboutBody =>
      'YouTube আৰু আপোনাৰ নিজৰ ফাইলৰ সংগীত। AI সম্পূৰ্ণৰূপে এই ডিভাইচতে চলে — একো বাহিৰলৈ নাযায়।';

  @override
  String get setSource => 'ছ\'ৰ্চ ক\'ড';

  @override
  String get importTitle => 'সংগীত যোগ কৰক';

  @override
  String get importPickFolder => 'ফোল্ডাৰ বাছনি কৰক';

  @override
  String get importPickFiles => 'ফাইল বাছনি কৰক';

  @override
  String importScanning(Object file) {
    return '$file স্কেন কৰি আছে';
  }

  @override
  String importAdded(int count) {
    return '$countটা যোগ কৰা হ\'ল';
  }

  @override
  String get importDenied => 'অনুমতি অস্বীকৃত — আপোনাৰ সংগীত পঢ়িব নোৱাৰি।';

  @override
  String get importWatched => 'ই নজৰ ৰখা ফোল্ডাৰ';

  @override
  String get importIosHint =>
      'Files এপ খোলক, On My iPhone → TuneBox-লৈ যাওক, আৰু তাত সংগীত পেলাওক।';

  @override
  String get playerQueue => 'শাৰী';

  @override
  String get playerUpNext => 'পিছত';

  @override
  String get playerLyrics => 'গীতৰ কথা';

  @override
  String get playerNoLyrics => 'এইটোৰ বাবে গীতৰ কথা নাই।';

  @override
  String get playerRepeat => 'পুনৰাবৃত্তি';

  @override
  String get playerShuffle => 'শ্বাফল';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" বজাব পৰা নগ\'ল';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" স্কিপ কৰি আছে — ষ্ট্ৰীম খোলা নগ\'ল।';
  }

  @override
  String get undo => 'আনডু';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'এতিয়া: $tags, $artistৰ নেতৃত্বত।';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'এতিয়া: $tags।';
  }

  @override
  String get setColour => 'ৰং';

  @override
  String get setColourSub => 'গোটেই এপে ইয়াক অনুসৰণ কৰে';

  @override
  String get setCoverArt => 'কভাৰ আৰ্ট';

  @override
  String get setMyColour => 'মোৰ ৰং';

  @override
  String get setCoverArtSub => 'প্ৰতিটো গানে নিজৰ কভাৰৰ পৰা এপৰ ৰং সলনি কৰে।';

  @override
  String get setMyColourSub => 'এটা ৰং, সকলোতে, সদায়।';

  @override
  String get setPickColour => 'যিকোনো ৰং বাছনি কৰক';

  @override
  String get setWifiOnlyTitle => 'কেৱল Wi-Fi-ত ডাউনলোড কৰক';

  @override
  String get setDownloadLikes => 'মোৰ ভাল লগা সকলো ডাউনলোড কৰক';

  @override
  String get setDownloadLikesSub => 'হৃদয় বুটামে ফাইলো সংৰক্ষণ কৰে';

  @override
  String get setAiInstall => 'AI-এ বাছনি কৰা সংগীত ইনষ্টল কৰিবলৈ দিয়ক';

  @override
  String get setSkipSilenceSub =>
      'কেৱল Android। নীৰৱ ইণ্ট্ৰ\', ফেড আৰু মৃদু অংশ কাটিব পাৰে — সংগীত স্কিপ হ\'লে বন্ধ ৰাখক';

  @override
  String get setStorageUsed => 'ডাউনলোডে ব্যৱহাৰ কৰা ষ্ট\'ৰেজ';

  @override
  String get setLibrary => 'লাইব্ৰেৰী';

  @override
  String get setUpdates => 'আপডেট';

  @override
  String get setAutoUpdate => 'নিজেই আপডেট পৰীক্ষা কৰক';

  @override
  String get setAutoUpdateSub =>
      'প্ৰতি কেইঘণ্টামানত, নীৰৱে, আৰু Wi-Fi-ত ডাউনলোড কৰে। ইনষ্টল কৰোঁতে তথাপি আপোনাক সোধে।';

  @override
  String setUpdateReady(Object version) {
    return '$version-লৈ আপডেট সাজু';
  }

  @override
  String get setUpdateReadySub => 'ডাউনলোড হৈছে — ইনষ্টল কৰিবলৈ টিপক';

  @override
  String get setUpdateAvailableSub =>
      'ৰিলিজ পৃষ্ঠাৰ পৰা লওক — লিংক কপি কৰিবলৈ টিপক';

  @override
  String get setLinkCopied => 'লিংক কপি কৰা হ\'ল';

  @override
  String get setCheckNow => 'এতিয়া পৰীক্ষা কৰক';

  @override
  String get setUpToDate => 'TuneBox আপ টু ডেট';

  @override
  String get setChecking => 'নতুন সংস্কৰণ বিচাৰি আছে…';

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
}
