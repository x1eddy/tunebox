// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class LBn extends L {
  LBn([String locale = 'bn']) : super(locale);

  @override
  String get navHome => 'হোম';

  @override
  String get navExplore => 'এক্সপ্লোর';

  @override
  String get navLibrary => 'লাইব্রেরি';

  @override
  String get navTaste => 'আপনার পছন্দ';

  @override
  String get actionDone => 'সম্পন্ন';

  @override
  String get actionCancel => 'বাতিল';

  @override
  String get actionCreate => 'তৈরি করুন';

  @override
  String get actionPlay => 'চালান';

  @override
  String get actionShuffle => 'শাফল';

  @override
  String get actionPlayAll => 'সব চালান';

  @override
  String get actionAdd => 'যোগ করুন';

  @override
  String get actionRemove => 'সরান';

  @override
  String get actionName => 'নাম';

  @override
  String get greetingNight => 'এখনও জেগে?';

  @override
  String get greetingMorning => 'সুপ্রভাত';

  @override
  String get greetingAfternoon => 'শুভ অপরাহ্ণ';

  @override
  String get greetingEvening => 'শুভ সন্ধ্যা';

  @override
  String get homeBuilding => 'এআই আপনার তাক সাজাচ্ছে…';

  @override
  String get homeOffline => 'অফলাইন — ডিভাইসে যা আছে তাই দেখানো হচ্ছে';

  @override
  String get homeNothingYet => 'এখনও দেখানোর কিছু নেই';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি তাক, এইমাত্র আপডেট হয়েছে',
      one: '১টি তাক, এইমাত্র আপডেট হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'তাক নতুন করে সাজান';

  @override
  String get homeAddMusic => 'এই ডিভাইস থেকে গান যোগ করুন';

  @override
  String get homeQuickPicks => 'দ্রুত বাছাই';

  @override
  String get homeQuickPicksSub => 'যেখানে ছিলেন সরাসরি সেখানে ফিরুন';

  @override
  String get homeEmptyTitle => 'আপনার লাইব্রেরি খালি';

  @override
  String get homeEmptyBody =>
      'কিছু খুঁজুন, অথবা এই ডিভাইসে থাকা গান যোগ করুন। একদম প্রথম গান চালানো থেকেই এআই শেখা শুরু করে।';

  @override
  String get homeAddMyMusic => 'আমার গান যোগ করুন';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube-এ পৌঁছানো যায়নি: $error';
  }

  @override
  String get moodFocus => 'ফোকাস';

  @override
  String get moodWorkout => 'ওয়ার্কআউট';

  @override
  String get moodChill => 'চিল';

  @override
  String get moodCommute => 'যাতায়াত';

  @override
  String get moodParty => 'পার্টি';

  @override
  String moodBuilding(Object mood) {
    return '$mood মিক্স তৈরি হচ্ছে…';
  }

  @override
  String moodFailed(Object error) {
    return 'হলো না: $error';
  }

  @override
  String get shelfRepeat => 'বারবার শোনা';

  @override
  String get shelfRepeatSub => 'আপনার গত দুই সপ্তাহ';

  @override
  String get shelfForgotten => 'ভুলে যাওয়া পুরনো পছন্দের গান';

  @override
  String get shelfForgottenSub => 'একসময় প্রিয় ছিল, অনেকদিন শোনা হয়নি';

  @override
  String get shelfNew => 'নতুন';

  @override
  String get shelfNewSub => 'এআই-এর মনে হচ্ছে এই নতুন গানগুলো আপনার জন্য';

  @override
  String shelfBecause(Object artist) {
    return 'কারণ আপনি $artist শুনেছেন';
  }

  @override
  String get shelfBecauseSub => 'আপনার পছন্দের একই কোণ থেকে';

  @override
  String get shelfDeep => 'প্রায় অচেনা';

  @override
  String get shelfDeepSub => 'লাইব্রেরিতে আছে, কিন্তু প্রায় কখনও শোনা হয়নি';

  @override
  String get shelfMix => 'আপনার মিক্স';

  @override
  String get shelfMixSub => 'অ্যাপ খুললেই নতুন করে তৈরি হয়';

  @override
  String get shelfAdded => 'সম্প্রতি যোগ করা';

  @override
  String get shelfAddedSub => 'ডাউনলোড এবং ইমপোর্ট করা ফাইল';

  @override
  String get shelfStarter => 'এখান থেকে শুরু করুন';

  @override
  String get shelfStarterSub => 'কয়েকটা চালান, এআই সঙ্গে সঙ্গে শেখা শুরু করবে';

  @override
  String reasonPlays(int count) {
    return '$count বার চালানো';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'পছন্দের, শেষবার চালানো $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count বার চালানো, শেষবার $when';
  }

  @override
  String get reasonTopArtist => 'আপনার সবচেয়ে বেশি শোনা শিল্পীদের একজন';

  @override
  String reasonMore(Object artist) {
    return 'আরও $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'আপনি বারবার $artist-এর কাছে ফিরে আসেন';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'আপনার ধরনের $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ইদানীং অনেক $tag';
  }

  @override
  String get reasonOutThisYear => 'এ বছর মুক্তি পেয়েছে';

  @override
  String get reasonReleasedRecently => 'সম্প্রতি মুক্তি পেয়েছে';

  @override
  String get reasonClose => 'আপনি যা শুনছেন তার কাছাকাছি';

  @override
  String reasonNear(Object artist) {
    return '$artist-এর কাছাকাছি';
  }

  @override
  String get reasonNeverPlayed => 'কখনও চালানো হয়নি';

  @override
  String get reasonPlayedOnce => 'একবার চালানো হয়েছে';

  @override
  String get reasonPopular => 'এখন জনপ্রিয়';

  @override
  String whenYearsAgo(int count) {
    return '$count বছর আগে';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count মাস আগে';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count দিন আগে';
  }

  @override
  String get searchHint => 'গান, শিল্পী, অ্যালবাম';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি ফলাফল',
      one: '১টি ফলাফল',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'সাম্প্রতিক অনুসন্ধান';

  @override
  String get searchEmptyTitle => 'কিছু পাওয়া যায়নি';

  @override
  String get searchEmptyBody =>
      'অন্যভাবে বানান করে দেখুন, অথবা শুধু শিল্পীর নাম লিখুন।';

  @override
  String get searchStartTitle => 'চালানোর মতো কিছু খুঁজুন';

  @override
  String get searchStartBody =>
      'YouTube Music-এ খুঁজুন — শুধু গান আসবে, অন্য কিছুর ভিডিও নয়।';

  @override
  String get libPlaylists => 'প্লেলিস্ট';

  @override
  String get libSongs => 'গান';

  @override
  String get libArtists => 'শিল্পী';

  @override
  String get libLiked => 'পছন্দের';

  @override
  String get libDownloads => 'ডাউনলোড';

  @override
  String get libImported => 'ইমপোর্ট করা';

  @override
  String get libLikedSongs => 'পছন্দের গান';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি গান',
      one: '১টি গান',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$countটি অফলাইন';
  }

  @override
  String get libMyFiles => 'আমার নিজের ফাইল';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি ফাইল',
      one: '১টি ফাইল',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'নতুন প্লেলিস্ট';

  @override
  String get libMakeOne => 'একটি বানান';

  @override
  String get libSortRecent => 'সম্প্রতি যোগ করা';

  @override
  String get libSortTitle => 'শিরোনাম';

  @override
  String get libSortArtist => 'শিল্পী';

  @override
  String get libSortPlays => 'সবচেয়ে বেশি শোনা';

  @override
  String get sheetNotForMe => 'আমার জন্য নয়';

  @override
  String get sheetNotForMeSub => 'এটি আর কখনও সুপারিশ করবেন না';

  @override
  String get sheetBlocked => 'ব্লক করা — আবার অনুমতি দিতে ট্যাপ করুন';

  @override
  String get sheetBlockedSub => 'এটি আবার সুপারিশে আসতে পারবে';

  @override
  String get sheetPlayNext => 'পরেরটা চালান';

  @override
  String get sheetAddToPlaylist => 'প্লেলিস্টে যোগ করুন';

  @override
  String get sheetDownloaded => 'ডাউনলোড হয়েছে';

  @override
  String get sheetRemoveFile => 'ফাইলটি সরাতে ট্যাপ করুন';

  @override
  String get sheetDownload => 'ডাউনলোড';

  @override
  String get sheetKeepOffline => 'অফলাইনের জন্য রাখুন';

  @override
  String get sheetRadio => 'রেডিও শুরু করুন';

  @override
  String get sheetRadioSub => 'এই গানকে ঘিরে তৈরি একটি কিউ';

  @override
  String get sheetQueue => 'কিউ';

  @override
  String get sheetSleepTimer => 'স্লিপ টাইমার';

  @override
  String get sheetSleepOff => 'বন্ধ';

  @override
  String sheetSleepMinutes(int count) {
    return '$count মিনিট';
  }

  @override
  String get sheetSleepEndOfTrack => 'এই গানের শেষে';

  @override
  String sheetSleepSet(int count) {
    return '$count মিনিট পরে গান থামবে';
  }

  @override
  String get tasteTitle => 'আপনার পছন্দ';

  @override
  String get tasteRetrain => 'আবার শেখান';

  @override
  String get tasteRetraining => 'আপনার ইতিহাস থেকে আবার শেখানো হচ্ছে…';

  @override
  String get tasteRetrained => 'এআই তার মডেল নতুন করে তৈরি করেছে।';

  @override
  String tasteConfidence(int percent) {
    return 'আত্মবিশ্বাস $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays বার চালানো · $skips বার এড়ানো · $likes পছন্দ';
  }

  @override
  String get tasteEmptySummary => 'কয়েকটি গান চালান, তাহলে এটি ভরে উঠবে।';

  @override
  String get tasteKeepLearning => 'শোনার সময় শিখতে থাকুন';

  @override
  String get tasteKeepLearningSub => 'বর্তমান প্রোফাইল স্থির রাখতে বন্ধ করুন';

  @override
  String get tasteDownloadsTitle => 'এআই যে ডাউনলোড করে';

  @override
  String get tasteDownloadsSub => 'আপনি না চাইলেও গান ডিভাইসে চলে আসে';

  @override
  String get tasteDownloadLikes => 'আমার পছন্দের সব ডাউনলোড করুন';

  @override
  String get tasteDownloadLikesSub =>
      'হার্ট চাপলে ফাইলটি অফলাইনের জন্য সেভ হবে';

  @override
  String get tasteAiInstall => 'এআই-কে তার বাছাই করা গান ইনস্টল করতে দিন';

  @override
  String get tasteAiInstallSub => 'যেসব গান নিয়ে সে নিশ্চিত সেগুলো আনবে';

  @override
  String get tasteWhatItThinks => 'সে ভাবছে আপনি কী পছন্দ করেন';

  @override
  String get tasteWhatItThinksSub =>
      'গান চালানো, এড়ানো, পছন্দ ও বারবার শোনা থেকে শেখা';

  @override
  String get tasteArtists => 'যেসব শিল্পীর ওপর সে ভরসা করে';

  @override
  String get tasteWhenYouListen => 'আপনি কখন শোনেন';

  @override
  String get tasteWhenYouListenSub =>
      'ঘণ্টা অনুযায়ী গান চালানো — বর্তমান ঘণ্টা বেশি গুরুত্ব পায়';

  @override
  String get tasteDecades => 'দশক';

  @override
  String get tasteTune => 'সুপারিশ ঠিক করুন';

  @override
  String get tasteTuneSub => 'পরের হোম রিফ্রেশ থেকে কার্যকর হবে';

  @override
  String get tasteDiscovery => 'আবিষ্কার';

  @override
  String get tasteDiscoverySub => 'চেনা ↔ যা কখনও শোনেননি';

  @override
  String get tasteEnergy => 'এনার্জি';

  @override
  String get tasteEnergySub => 'শান্ত ↔ জোরালো';

  @override
  String get tasteRecency => 'নতুনত্ব';

  @override
  String get tasteRecencySub => 'চিরন্তন ↔ একেবারে নতুন';

  @override
  String get tasteNostalgia => 'নস্টালজিয়া';

  @override
  String get tasteNostalgiaSub =>
      'কতদিন আগের পুরনো প্রিয় গান ভুলে যাওয়া ধরা হবে';

  @override
  String get tasteSignals => 'যেসব সংকেত সে ব্যবহার করতে পারে';

  @override
  String get tasteSignalsSub => 'সবকিছু এই ডিভাইসেই থাকে';

  @override
  String get tasteUseHistory => 'আমি যা চালিয়েছি';

  @override
  String get tasteUseSkips => 'আমি যা এড়িয়ে যাই';

  @override
  String get tasteUseTime => 'দিনের সময়';

  @override
  String get tasteUseYouTube => 'YouTube-এর পরামর্শ';

  @override
  String get tasteAlwaysMore => 'সবসময় আরও';

  @override
  String get tasteNeverAgain => 'আর কখনও না';

  @override
  String get tasteAddArtist => 'শিল্পী যোগ করুন';

  @override
  String get tasteMoreOfPrompt => 'সবসময় আরও…';

  @override
  String get tasteNeverAgainPrompt => 'আর কখনও না…';

  @override
  String get tasteReset => 'যা শিখেছে তা মুছুন';

  @override
  String get tasteResetSub => 'আপনার গান থাকবে; প্রোফাইল শূন্য থেকে শুরু হবে';

  @override
  String get trainCard => 'রেটিং দিয়ে শেখান';

  @override
  String get trainCardSub =>
      'আসল গানগুলো স্বাইপ করুন। এমন আরও চাইলে ডানে, আর কখনও না চাইলে বামে। এখানে দুই মিনিট এক সপ্তাহ শোনার চেয়ে ভালো।';

  @override
  String get trainStart => 'প্রশিক্ষণ রাউন্ড শুরু করুন';

  @override
  String get trainTitle => 'প্রশিক্ষণ রাউন্ড';

  @override
  String get trainQuestion => 'এটি কি আপনার হোমে চান?';

  @override
  String get trainMoreLikeThis => 'এমন আরও';

  @override
  String get trainNeverAgain => 'আর কখনও না';

  @override
  String get trainDone => 'রাউন্ড শেষ';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$likedটি রাখা হয়েছে · $blockedটি ব্লক। আত্মবিশ্বাস $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'আপনার পছন্দে ফিরুন';

  @override
  String get trainNothingTitle => 'রেট করার মতো কিছু এখনও নেই';

  @override
  String get trainNothingBody =>
      'আগে কিছু গান যোগ করুন বা এআই-কে প্রার্থী আনতে দিন, তারপর ফিরে আসুন।';

  @override
  String get trainLeaveTitle => 'প্রশিক্ষণ রাউন্ড ছেড়ে যাবেন?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'এখন ছেড়ে গেলে এআই এই রাউন্ডের সবকিছু বাদ দেবে — আপনার এইমাত্র রেট করা সব $countটি গান।',
      one:
          'এখন ছেড়ে গেলে এআই এই রাউন্ডের সবকিছু বাদ দেবে — আপনার এইমাত্র রেট করা ১টি গান।',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'প্রশিক্ষণ চালিয়ে যান';

  @override
  String get trainDiscard => 'বাদ দিয়ে বেরিয়ে যান';

  @override
  String get setTitle => 'সেটিংস';

  @override
  String get setAppearance => 'চেহারা';

  @override
  String get setTheme => 'থিম';

  @override
  String get setThemeSystem => 'সিস্টেম অনুসরণ করুন';

  @override
  String get setThemeLight => 'হালকা';

  @override
  String get setThemeDark => 'গাঢ়';

  @override
  String get setPureBlack => 'খাঁটি কালো';

  @override
  String get setPureBlackSub => 'OLED স্ক্রিনে বিদ্যুৎ বাঁচায়';

  @override
  String get setAccent => 'অ্যাকসেন্ট রং';

  @override
  String get setAccentArtwork => 'কভার আর্ট থেকে';

  @override
  String get setAccentFixed => 'আমার বেছে নেওয়া একটি রং';

  @override
  String get setLanguage => 'ভাষা';

  @override
  String get setLanguageSystem => 'সিস্টেম অনুসরণ করুন';

  @override
  String get setAccessibility => 'অ্যাক্সেসিবিলিটি';

  @override
  String get setTextSize => 'লেখার আকার';

  @override
  String get setTextSizeSub => 'আপনার সিস্টেম সেটিংয়ের ওপরে';

  @override
  String get setReduceMotion => 'নড়াচড়া কমান';

  @override
  String get setReduceMotionSub =>
      'বার, ভিজ্যুয়ালাইজার, বাউন্সি স্ক্রল, স্প্রিংয়ের মতো ট্যাপ এবং পেজ ট্রানজিশন বন্ধ করে';

  @override
  String get setHighContrast => 'উচ্চ কনট্রাস্ট';

  @override
  String get setHighContrastSub => 'আরও স্পষ্ট পার্থক্য এবং দৃশ্যমান আউটলাইন';

  @override
  String get setBoldText => 'গাঢ় লেখা';

  @override
  String get setPlayback => 'প্লেব্যাক';

  @override
  String get setAutoRadio => 'গান চলতে থাকুক';

  @override
  String get setAutoRadioSub =>
      'কিউ শেষ হলে শেষ গান থেকে তৈরি রেডিও দিয়ে চালিয়ে যান';

  @override
  String get setSmartShuffle => 'স্মার্ট শাফল';

  @override
  String get setSmartShuffleSub => 'এলোমেলোভাবে নয়, পছন্দ অনুযায়ী শাফল করে';

  @override
  String get setResume => 'যেখানে থেমেছিলাম সেখান থেকে শুরু';

  @override
  String get setResumeSub => 'অ্যাপ খুললে কিউ ফিরিয়ে আনে, থামানো অবস্থায়';

  @override
  String get setDataSaver => 'ওয়াই-ফাই ছাড়া ডেটা সেভার';

  @override
  String get setDataSaverSub =>
      'মোবাইল ডেটায় স্ট্রিম ও ডাউনলোড ১২৮ kbps-এ সীমিত করে';

  @override
  String get setHaptics => 'হ্যাপটিক ফিডব্যাক';

  @override
  String get setShowReasons => 'কেন সুপারিশ করা হলো তা দেখান';

  @override
  String get setSkipSilence => 'নীরবতা এড়িয়ে যান';

  @override
  String get setQuality => 'অডিও মান';

  @override
  String get setQualityLow => 'কম · ৬৪ kbps';

  @override
  String get setQualityNormal => 'সাধারণ · ১২৮ kbps';

  @override
  String get setQualityHigh => 'উচ্চ · ১৯২ kbps';

  @override
  String get setQualityBest => 'সর্বোত্তম যা পাওয়া যায়';

  @override
  String get setStorage => 'ডাউনলোড ও স্টোরেজ';

  @override
  String get setWifiOnly => 'শুধু ওয়াই-ফাইয়ে ডাউনলোড';

  @override
  String get setDailyLimit => 'এআই-এর দৈনিক সীমা';

  @override
  String setDailyLimitSub(int count) {
    return 'দিনে $countটি গান';
  }

  @override
  String get setBudget => 'এআই যে স্টোরেজ ব্যবহার করতে পারে';

  @override
  String setUsed(Object size) {
    return 'ডাউনলোডে $size ব্যবহৃত';
  }

  @override
  String get setYourMusic => 'আপনার গান';

  @override
  String get setImport => 'এই ডিভাইস থেকে গান যোগ করুন';

  @override
  String get setImportSub => 'ফোল্ডার বা আলাদা ফাইল বেছে নিন';

  @override
  String get setCleanup => 'হারানো ফাইল পরিষ্কার করুন';

  @override
  String get setCleanupSub => 'যেসব গানের ফাইল নেই সেগুলো বাদ দিন';

  @override
  String setCleanupDone(int count) {
    return '$countটি হারানো ফাইল সরানো হয়েছে।';
  }

  @override
  String get setExport => 'আমার পছন্দ অন্য ডিভাইসে পাঠান';

  @override
  String get setExportSub =>
      'আপনার পছন্দ, চালানো গান এবং এআই যা শিখেছে তার একটি ফাইল সেভ করে';

  @override
  String get setImportTaste => 'অন্য ডিভাইস থেকে পছন্দ লোড করুন';

  @override
  String get setImportTasteSub =>
      'সেভ করা পছন্দের ফাইল বেছে মিলিয়ে নিন — বারবার করলেও সমস্যা নেই';

  @override
  String get setAbout => 'সম্পর্কে';

  @override
  String get setAboutBody =>
      'YouTube এবং আপনার নিজের ফাইলের গান। এআই পুরোপুরি এই ডিভাইসেই চলে — কিছুই বাইরে যায় না।';

  @override
  String get setSource => 'সোর্স কোড';

  @override
  String get importTitle => 'গান যোগ করুন';

  @override
  String get importPickFolder => 'ফোল্ডার বেছে নিন';

  @override
  String get importPickFiles => 'ফাইল বেছে নিন';

  @override
  String importScanning(Object file) {
    return '$file স্ক্যান হচ্ছে';
  }

  @override
  String importAdded(int count) {
    return '$countটি যোগ হয়েছে';
  }

  @override
  String get importDenied => 'অনুমতি দেওয়া হয়নি — আপনার গান পড়া যাচ্ছে না।';

  @override
  String get importWatched => 'যেসব ফোল্ডার নজরে রাখে';

  @override
  String get importIosHint =>
      'Files অ্যাপ খুলুন, On My iPhone → TuneBox-এ যান এবং সেখানে গান ফেলুন।';

  @override
  String get playerQueue => 'কিউ';

  @override
  String get playerUpNext => 'এরপর';

  @override
  String get playerLyrics => 'লিরিক্স';

  @override
  String get playerNoLyrics => 'এটির লিরিক্স নেই।';

  @override
  String get playerRepeat => 'রিপিট';

  @override
  String get playerShuffle => 'শাফল';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" চালানো যায়নি';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" এড়িয়ে যাওয়া হচ্ছে — স্ট্রিম খোলেনি।';
  }

  @override
  String get undo => 'পূর্বাবস্থা';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'এখন: $tags, নেতৃত্বে $artist।';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'এখন: $tags।';
  }

  @override
  String get setColour => 'রং';

  @override
  String get setColourSub => 'পুরো অ্যাপ এটি অনুসরণ করে';

  @override
  String get setCoverArt => 'কভার আর্ট';

  @override
  String get setMyColour => 'আমার রং';

  @override
  String get setCoverArtSub =>
      'প্রতিটি গান তার কভার থেকে অ্যাপের রং বদলে দেয়।';

  @override
  String get setMyColourSub => 'একটি রং, সবখানে, সবসময়।';

  @override
  String get setPickColour => 'যেকোনো রং বেছে নিন';

  @override
  String get setWifiOnlyTitle => 'শুধু ওয়াই-ফাইয়ে ডাউনলোড';

  @override
  String get setDownloadLikes => 'আমার পছন্দের সব ডাউনলোড করুন';

  @override
  String get setDownloadLikesSub => 'হার্ট বোতাম ফাইলও সেভ করে';

  @override
  String get setAiInstall => 'এআই-কে তার বাছাই করা গান ইনস্টল করতে দিন';

  @override
  String get setSkipSilenceSub =>
      'শুধু অ্যান্ড্রয়েডে। শান্ত ইন্ট্রো, ফেড ও মৃদু অংশ কেটে ফেলতে পারে — গান লাফালে বন্ধ রাখুন';

  @override
  String get setStorageUsed => 'ডাউনলোডে ব্যবহৃত স্টোরেজ';

  @override
  String get setLibrary => 'লাইব্রেরি';

  @override
  String get setUpdates => 'আপডেট';

  @override
  String get setAutoUpdate => 'নিজে থেকে আপডেট খুঁজুন';

  @override
  String get setAutoUpdateSub =>
      'কয়েক ঘণ্টা পরপর, নীরবে, এবং ওয়াই-ফাইয়ে ডাউনলোড করে। ইনস্টলের আগে তবুও জিজ্ঞেস করবে।';

  @override
  String setUpdateReady(Object version) {
    return '$version-এ আপডেট প্রস্তুত';
  }

  @override
  String get setUpdateReadySub => 'ডাউনলোড হয়েছে — ইনস্টল করতে ট্যাপ করুন';

  @override
  String get setUpdateAvailableSub =>
      'রিলিজ পেজ থেকে নিন — লিংক কপি করতে ট্যাপ করুন';

  @override
  String get setLinkCopied => 'লিংক কপি হয়েছে';

  @override
  String get setCheckNow => 'এখনই দেখুন';

  @override
  String get setUpToDate => 'TuneBox আপ টু ডেট';

  @override
  String get setChecking => 'নতুন সংস্করণ খোঁজা হচ্ছে…';
}
