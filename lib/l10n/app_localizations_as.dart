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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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

  @override
  String get stMirror => 'Mirror';

  @override
  String get stLine2 => 'Curve';

  @override
  String get stDots => 'Dots';

  @override
  String get stLive => 'Live visualiser';

  @override
  String get stLiveSub =>
      'Moves with the real music. Android asks for the microphone permission for this, but only TuneBox\'s own sound is read, never the microphone.';

  @override
  String get stLiveDenied =>
      'Without the permission the visualiser keeps its own animation.';
}
