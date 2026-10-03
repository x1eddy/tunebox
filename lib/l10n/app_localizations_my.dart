// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class LMy extends L {
  LMy([String locale = 'my']) : super(locale);

  @override
  String get navHome => 'ပင်မ';

  @override
  String get navExplore => 'ရှာဖွေရန်';

  @override
  String get navLibrary => 'စာကြည့်တိုက်';

  @override
  String get navTaste => 'သင့်ဝါသနာ';

  @override
  String get actionDone => 'ပြီးပြီ';

  @override
  String get actionCancel => 'မလုပ်တော့ပါ';

  @override
  String get actionCreate => 'ဖန်တီးရန်';

  @override
  String get actionPlay => 'ဖွင့်ရန်';

  @override
  String get actionShuffle => 'ရောဖွင့်ရန်';

  @override
  String get actionPlayAll => 'အားလုံးဖွင့်ရန်';

  @override
  String get actionAdd => 'ထည့်ရန်';

  @override
  String get actionRemove => 'ဖယ်ရှားရန်';

  @override
  String get actionName => 'အမည်';

  @override
  String get greetingNight => 'မအိပ်သေးဘူးလား။';

  @override
  String get greetingMorning => 'မင်္ဂလာနံနက်ခင်းပါ';

  @override
  String get greetingAfternoon => 'မင်္ဂလာနေ့လယ်ခင်းပါ';

  @override
  String get greetingEvening => 'မင်္ဂလာညနေခင်းပါ';

  @override
  String get homeBuilding => 'AI က သင့်စင်များကို ပြင်ဆင်နေသည်…';

  @override
  String get homeOffline => 'အော့ဖ်လိုင်း — စက်ထဲရှိသည်များကို ပြထားသည်';

  @override
  String get homeNothingYet => 'ပြစရာ မရှိသေးပါ';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'စင် $count ခု၊ ယခုမှ အပ်ဒိတ်လုပ်ထားသည်',
      one: 'စင် ၁ ခု၊ ယခုမှ အပ်ဒိတ်လုပ်ထားသည်',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'စင်များကို ပြန်ပြင်ရန်';

  @override
  String get homeAddMusic => 'ဤစက်မှ ဂီတထည့်ရန်';

  @override
  String get homeQuickPicks => 'အမြန်ရွေးချယ်မှု';

  @override
  String get homeQuickPicksSub => 'နားထောင်နေသည့်နေရာသို့ တန်းပြန်သွားပါ';

  @override
  String get homeEmptyTitle => 'သင့်စာကြည့်တိုက်သည် ဗလာဖြစ်နေသည်';

  @override
  String get homeEmptyBody =>
      'တစ်ခုခုရှာပါ၊ သို့မဟုတ် ဤစက်ထဲရှိပြီးသား ဂီတကို ထည့်ပါ။ ပထမဆုံးဖွင့်ချိန်မှစ၍ AI သင်ယူလာမည်။';

  @override
  String get homeAddMyMusic => 'ကျွန်ုပ်၏ဂီတ ထည့်ရန်';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube သို့ မရောက်နိုင်ပါ- $error';
  }

  @override
  String get moodFocus => 'အာရုံစူးစိုက်';

  @override
  String get moodWorkout => 'လေ့ကျင့်ခန်း';

  @override
  String get moodChill => 'အေးချမ်း';

  @override
  String get moodCommute => 'ခရီးသွား';

  @override
  String get moodParty => 'ပါတီ';

  @override
  String moodBuilding(Object mood) {
    return '$mood မစ်စ် ပြင်ဆင်နေသည်…';
  }

  @override
  String moodFailed(Object error) {
    return 'မအောင်မြင်ပါ- $error';
  }

  @override
  String get shelfRepeat => 'ထပ်ခါထပ်ခါ';

  @override
  String get shelfRepeatSub => 'လွန်ခဲ့သော နှစ်ပတ်';

  @override
  String get shelfForgotten => 'သင်ကြိုက်ခဲ့ဖူးသော မေ့နေသည့် ဟစ်များ';

  @override
  String get shelfForgottenSub => 'တစ်ချိန်က ချစ်ခဲ့ပြီး ကြာကြာ မထိရသေး';

  @override
  String get shelfNew => 'အသစ်';

  @override
  String get shelfNewSub => 'သင့်အတွက်ဟု AI ထင်သော သီချင်းအသစ်များ';

  @override
  String shelfBecause(Object artist) {
    return 'သင် $artist ကို ဖွင့်ခဲ့သောကြောင့်';
  }

  @override
  String get shelfBecauseSub => 'သင့်ဝါသနာနှင့် တူသည့်နေရာ';

  @override
  String get shelfDeep => 'မထိရသေးသည်များ';

  @override
  String get shelfDeepSub =>
      'စာကြည့်တိုက်ထဲတွင် ရှိသော်လည်း ရှားရှားပါးပါးသာ ဖွင့်ဖူးသည်';

  @override
  String get shelfMix => 'သင့်မစ်စ်';

  @override
  String get shelfMixSub => 'အက်ပ်ဖွင့်တိုင်း ပြန်လည်ပြင်ဆင်သည်';

  @override
  String get shelfAdded => 'မကြာသေးမီက ထည့်ထားသည်';

  @override
  String get shelfAddedSub => 'ဒေါင်းလုဒ်များနှင့် တင်သွင်းထားသော ဖိုင်များ';

  @override
  String get shelfStarter => 'ဤနေရာမှ စပါ';

  @override
  String get shelfStarterSub =>
      'အနည်းငယ်ဖွင့်ကြည့်ပါ၊ AI က ချက်ချင်း သင်ယူလာမည်';

  @override
  String reasonPlays(int count) {
    return 'ဖွင့်ခြင်း $count ကြိမ်';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ကြိုက်သည်၊ နောက်ဆုံးဖွင့်ချိန် $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'ဖွင့်ခြင်း $count ကြိမ်၊ နောက်ဆုံး $when';
  }

  @override
  String get reasonTopArtist =>
      'သင် အများဆုံးဖွင့်သော အနုပညာရှင်များထဲမှ တစ်ဦး';

  @override
  String reasonMore(Object artist) {
    return '$artist ထပ်မံ';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'သင်သည် $artist ဆီသို့ ထပ်ခါထပ်ခါ ပြန်လာသည်';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'သင်နှစ်သက်သော $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ဆက်တိုက် $tag များများ';
  }

  @override
  String get reasonOutThisYear => 'ဤနှစ်တွင် ထွက်ရှိ';

  @override
  String get reasonReleasedRecently => 'မကြာသေးမီက ထွက်ရှိ';

  @override
  String get reasonClose => 'သင်ဖွင့်နေသည်များနှင့် နီးစပ်သည်';

  @override
  String reasonNear(Object artist) {
    return '$artist နှင့် နီးစပ်သည်';
  }

  @override
  String get reasonNeverPlayed => 'တစ်ခါမှ မဖွင့်ဖူးပါ';

  @override
  String get reasonPlayedOnce => 'တစ်ကြိမ်ဖွင့်ဖူးသည်';

  @override
  String get reasonPopular => 'ယခု ရေပန်းစားနေသည်';

  @override
  String whenYearsAgo(int count) {
    return 'လွန်ခဲ့သော $count နှစ်';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'လွန်ခဲ့သော $count လ';
  }

  @override
  String whenDaysAgo(int count) {
    return 'လွန်ခဲ့သော $count ရက်';
  }

  @override
  String get searchHint => 'သီချင်းများ၊ အနုပညာရှင်များ၊ အယ်လ်ဘမ်များ';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ရလဒ် $count ခု',
      one: 'ရလဒ် ၁ ခု',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'မကြာသေးမီက ရှာဖွေမှုများ';

  @override
  String get searchEmptyTitle => 'ဘာမှ မတွေ့ပါ';

  @override
  String get searchEmptyBody =>
      'အခြားစာလုံးပေါင်းဖြင့် ကြိုးစားကြည့်ပါ၊ သို့မဟုတ် အနုပညာရှင်အမည်ကိုသာ ရိုက်ပါ။';

  @override
  String get searchStartTitle => 'ဖွင့်ရန် တစ်ခုခုရှာပါ';

  @override
  String get searchStartBody =>
      'YouTube Music တွင် ရှာပါ — သီချင်းများသာ ပြန်လာမည်၊ အခြားအရာများ၏ ဗီဒီယိုများ မပါပါ။';

  @override
  String get libPlaylists => 'ပလေးလစ်များ';

  @override
  String get libSongs => 'သီချင်းများ';

  @override
  String get libArtists => 'အနုပညာရှင်များ';

  @override
  String get libLiked => 'ကြိုက်သည်များ';

  @override
  String get libDownloads => 'ဒေါင်းလုဒ်များ';

  @override
  String get libImported => 'တင်သွင်းထားသည်';

  @override
  String get libLikedSongs => 'ကြိုက်သော သီချင်းများ';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'သီချင်း $count ပုဒ်',
      one: 'သီချင်း ၁ ပုဒ်',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return 'အော့ဖ်လိုင်း $count';
  }

  @override
  String get libMyFiles => 'ကျွန်ုပ်၏ ကိုယ်ပိုင်ဖိုင်များ';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ဖိုင် $count ခု',
      one: 'ဖိုင် ၁ ခု',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'ပလေးလစ်အသစ်';

  @override
  String get libMakeOne => 'တစ်ခုဖန်တီးပါ';

  @override
  String get libSortRecent => 'မကြာသေးမီက ထည့်ထားသည်';

  @override
  String get libSortTitle => 'ခေါင်းစဉ်';

  @override
  String get libSortArtist => 'အနုပညာရှင်';

  @override
  String get libSortPlays => 'အများဆုံးဖွင့်သည်';

  @override
  String get sheetNotForMe => 'ကျွန်ုပ်အတွက် မဟုတ်';

  @override
  String get sheetNotForMeSub => '၎င်းကို နောက်ထပ် မအကြံပြုပါနှင့်';

  @override
  String get sheetBlocked => 'ပိတ်ထားသည် — ပြန်ခွင့်ပြုရန် နှိပ်ပါ';

  @override
  String get sheetBlockedSub => 'အကြံပြုချက်များတွင် ပြန်ပေါ်လာနိုင်သည်';

  @override
  String get sheetPlayNext => 'နောက်တစ်ပုဒ်ဖွင့်ရန်';

  @override
  String get sheetAddToPlaylist => 'ပလေးလစ်သို့ ထည့်ရန်';

  @override
  String get sheetDownloaded => 'ဒေါင်းလုဒ်လုပ်ပြီး';

  @override
  String get sheetRemoveFile => 'ဖိုင်ကို ဖယ်ရှားရန် နှိပ်ပါ';

  @override
  String get sheetDownload => 'ဒေါင်းလုဒ်';

  @override
  String get sheetKeepOffline => 'အော့ဖ်လိုင်းအတွက် သိမ်းထားရန်';

  @override
  String get sheetRadio => 'ရေဒီယို စတင်ရန်';

  @override
  String get sheetRadioSub => 'ဤသီချင်းကို အခြေခံ၍ ပြင်ဆင်ထားသော စာရင်း';

  @override
  String get sheetQueue => 'စာရင်း';

  @override
  String get sheetSleepTimer => 'အိပ်ချိန်ကိုက်နာရီ';

  @override
  String get sheetSleepOff => 'ပိတ်';

  @override
  String sheetSleepMinutes(int count) {
    return '$count မိနစ်';
  }

  @override
  String get sheetSleepEndOfTrack => 'ဤသီချင်းအဆုံး';

  @override
  String sheetSleepSet(int count) {
    return 'ဂီတသည် $count မိနစ်အတွင်း ရပ်မည်';
  }

  @override
  String get tasteTitle => 'သင့်ဝါသနာ';

  @override
  String get tasteRetrain => 'ပြန်လေ့ကျင့်ရန်';

  @override
  String get tasteRetraining => 'သင့်မှတ်တမ်းဖြင့် ပြန်လေ့ကျင့်နေသည်…';

  @override
  String get tasteRetrained => 'AI က မော်ဒယ်ကို ပြန်လည်တည်ဆောက်ပြီးပြီ။';

  @override
  String tasteConfidence(int percent) {
    return 'ယုံကြည်မှု $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'ဖွင့်ခြင်း $plays · ကျော်ခြင်း $skips · ကြိုက်ခြင်း $likes';
  }

  @override
  String get tasteEmptySummary => 'သီချင်းအနည်းငယ်ဖွင့်ပါ၊ ဤနေရာ ပြည့်လာမည်။';

  @override
  String get tasteKeepLearning => 'ကျွန်ုပ်နားထောင်စဉ် ဆက်သင်ယူပါ';

  @override
  String get tasteKeepLearningSub => 'လက်ရှိပရိုဖိုင်ကို ရပ်တန့်ရန် ပိတ်ပါ';

  @override
  String get tasteDownloadsTitle => 'AI ကိုင်တွယ်သော ဒေါင်းလုဒ်များ';

  @override
  String get tasteDownloadsSub => 'သင်မတောင်းဘဲ ဂီတသည် စက်ထဲသို့ ရောက်လာမည်';

  @override
  String get tasteDownloadLikes => 'ကျွန်ုပ်ကြိုက်သမျှ ဒေါင်းလုဒ်လုပ်ရန်';

  @override
  String get tasteDownloadLikesSub =>
      'နှလုံးသားကိုနှိပ်လျှင် ဖိုင်ကို အော့ဖ်လိုင်းအတွက် သိမ်းမည်';

  @override
  String get tasteAiInstall => 'AI ရွေးထားသော ဂီတကို ထည့်သွင်းခွင့်ပြုရန်';

  @override
  String get tasteAiInstallSub => 'ယုံကြည်မှုရှိသော သီချင်းများကို ယူလာမည်';

  @override
  String get tasteWhatItThinks => 'သင်ကြိုက်သည်ဟု ၎င်းထင်သည်များ';

  @override
  String get tasteWhatItThinksSub =>
      'ဖွင့်ခြင်း၊ ကျော်ခြင်း၊ ကြိုက်ခြင်းနှင့် ထပ်ဖွင့်ခြင်းများမှ သင်ယူထားသည်';

  @override
  String get tasteArtists => '၎င်းအားကိုးသော အနုပညာရှင်များ';

  @override
  String get tasteWhenYouListen => 'သင်နားထောင်သည့်အချိန်';

  @override
  String get tasteWhenYouListenSub =>
      'တစ်နာရီလျှင် ဖွင့်ခြင်း — လက်ရှိနာရီကို ပိုအလေးထားသည်';

  @override
  String get tasteDecades => 'ဆယ်စုနှစ်များ';

  @override
  String get tasteTune => 'အကြံပြုချက်များကို ညှိရန်';

  @override
  String get tasteTuneSub =>
      'နောက်ပင်မစာမျက်နှာ ပြန်လည်ဖြည့်သည့်အခါ ထိရောက်မည်';

  @override
  String get tasteDiscovery => 'ရှာဖွေတွေ့ရှိမှု';

  @override
  String get tasteDiscoverySub => 'ရင်းနှီးသည် ↔ တစ်ခါမှ မကြားဖူးသည်';

  @override
  String get tasteEnergy => 'စွမ်းအင်';

  @override
  String get tasteEnergySub => 'တည်ငြိမ် ↔ ကျယ်လောင်';

  @override
  String get tasteRecency => 'အသစ်အဆန်း';

  @override
  String get tasteRecencySub => 'ကာလမဲ့ ↔ အသစ်စက်စက်';

  @override
  String get tasteNostalgia => 'ရှေးဦးသတိရမှု';

  @override
  String get tasteNostalgiaSub =>
      'ယခင်ကြိုက်သည့်အရာကို မည်မျှကြာလျှင် မေ့သွားပြီဟု သတ်မှတ်မည်နည်း';

  @override
  String get tasteSignals => 'အသုံးပြုနိုင်သော အချက်ပြမှုများ';

  @override
  String get tasteSignalsSub => 'အားလုံးသည် ဤစက်ထဲတွင်သာ ရှိနေမည်';

  @override
  String get tasteUseHistory => 'ကျွန်ုပ်ဖွင့်ခဲ့သည်များ';

  @override
  String get tasteUseSkips => 'ကျွန်ုပ်ကျော်သည်များ';

  @override
  String get tasteUseTime => 'နေ့ရက်အချိန်';

  @override
  String get tasteUseYouTube => 'YouTube မှ အကြံပြုချက်များ';

  @override
  String get tasteAlwaysMore => 'အမြဲ ပိုများများ';

  @override
  String get tasteNeverAgain => 'နောက်ထပ် မလိုပါ';

  @override
  String get tasteAddArtist => 'အနုပညာရှင် ထည့်ရန်';

  @override
  String get tasteMoreOfPrompt => 'အမြဲ ပိုများများ…';

  @override
  String get tasteNeverAgainPrompt => 'နောက်ထပ် မလိုပါ…';

  @override
  String get tasteReset => 'သင်ယူထားသည်များကို ပြန်လည်သတ်မှတ်ရန်';

  @override
  String get tasteResetSub => 'သင့်ဂီတ ကျန်ရှိမည်၊ ပရိုဖိုင်သည် သုညမှ ပြန်စမည်';

  @override
  String get trainCard => 'အမှတ်ပေး၍ လေ့ကျင့်ပေးပါ';

  @override
  String get trainCardSub =>
      'သီချင်းအစစ်များကို ပွတ်ဆွဲကြည့်ပါ။ ဒီလိုပိုလိုချင်လျှင် ညာဘက်၊ နောက်ထပ်မလိုလျှင် ဘယ်ဘက်။ ဤနေရာတွင် နှစ်မိနစ်သည် တစ်ပတ်လုံး နားထောင်ခြင်းထက် ပိုကောင်းသည်။';

  @override
  String get trainStart => 'လေ့ကျင့်မှုအဆင့် စတင်ရန်';

  @override
  String get trainTitle => 'လေ့ကျင့်မှုအဆင့်';

  @override
  String get trainQuestion =>
      'ဤသီချင်းကို သင့်ပင်မစာမျက်နှာတွင် လိုချင်ပါသလား။';

  @override
  String get trainMoreLikeThis => 'ဒီလိုပိုလိုချင်';

  @override
  String get trainNeverAgain => 'နောက်ထပ် မလိုပါ';

  @override
  String get trainDone => 'အဆင့် ပြီးမြောက်ပါပြီ';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked ခု ထားမည် · $blocked ခု ပိတ်မည်။ ယုံကြည်မှု $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'သင့်ဝါသနာသို့ ပြန်သွားရန်';

  @override
  String get trainNothingTitle => 'အမှတ်ပေးစရာ မရှိသေးပါ';

  @override
  String get trainNothingBody =>
      'ဂီတအနည်းငယ် ထည့်ပါ သို့မဟုတ် AI အား ရွေးချယ်စရာများ အရင်ယူခိုင်းပြီးမှ ပြန်လာခဲ့ပါ။';

  @override
  String get trainLeaveTitle => 'လေ့ကျင့်မှုအဆင့်မှ ထွက်မလား။';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ယခုထွက်လျှင် ဤအဆင့်မှ အားလုံးကို AI က ပယ်ဖျက်မည် — သင်ယခု အမှတ်ပေးခဲ့သော သီချင်း $count ပုဒ်လုံး။',
      one:
          'ယခုထွက်လျှင် ဤအဆင့်မှ အားလုံးကို AI က ပယ်ဖျက်မည် — သင်ယခု အမှတ်ပေးခဲ့သော သီချင်း ၁ ပုဒ်။',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'လေ့ကျင့်မှု ဆက်လုပ်ရန်';

  @override
  String get trainDiscard => 'ပယ်ဖျက်၍ ထွက်ရန်';

  @override
  String get setTitle => 'ဆက်တင်များ';

  @override
  String get setAppearance => 'ပုံပန်းသဏ္ဍာန်';

  @override
  String get setTheme => 'အပြင်အဆင်';

  @override
  String get setThemeSystem => 'စနစ်အတိုင်းလိုက်ရန်';

  @override
  String get setThemeLight => 'အလင်း';

  @override
  String get setThemeDark => 'အမှောင်';

  @override
  String get setPureBlack => 'စစ်မှန်သော အနက်ရောင်';

  @override
  String get setPureBlackSub => 'OLED မျက်နှာပြင်တွင် ဓာတ်အားချွေတာသည်';

  @override
  String get setAccent => 'အဓိကအရောင်';

  @override
  String get setAccentArtwork => 'ကာဗာပုံမှ';

  @override
  String get setAccentFixed => 'ကျွန်ုပ်ရွေးထားသော အရောင်တစ်ခု';

  @override
  String get setLanguage => 'ဘာသာစကား';

  @override
  String get setLanguageSystem => 'စနစ်အတိုင်းလိုက်ရန်';

  @override
  String get setAccessibility => 'အသုံးပြုရလွယ်ကူမှု';

  @override
  String get setTextSize => 'စာလုံးအရွယ်အစား';

  @override
  String get setTextSizeSub => 'သင့်စနစ်ဆက်တင်အပေါ်တွင် ထပ်ပေါင်း၍';

  @override
  String get setReduceMotion => 'လှုပ်ရှားမှု လျှော့ရန်';

  @override
  String get setReduceMotionSub =>
      'ဘားများ၊ ဗီဇူလိုက်ဇာ၊ ကွေ့ပြန်ဆွဲခြင်း၊ စပရိန်ထိတွေ့မှုနှင့် စာမျက်နှာအကူးအပြောင်းများကို ရပ်တန့်သည်';

  @override
  String get setHighContrast => 'ကွဲလွဲမှုမြင့်';

  @override
  String get setHighContrastSub =>
      'ပိုမိုပြတ်သားသော ခွဲခြားမှုနှင့် မြင်သာသော ဘောင်များ';

  @override
  String get setBoldText => 'စာလုံးထူ';

  @override
  String get setPlayback => 'ဖွင့်ခြင်း';

  @override
  String get setAutoRadio => 'ဂီတ ဆက်လက်ဖွင့်ထားရန်';

  @override
  String get setAutoRadioSub =>
      'စာရင်းပြီးသွားလျှင် နောက်ဆုံးသီချင်းအပေါ်အခြေခံသော ရေဒီယိုဖြင့် ဆက်သွားမည်';

  @override
  String get setSmartShuffle => 'စမတ်ရောဖွင့်ခြင်း';

  @override
  String get setSmartShuffleSub => 'ကျပန်းမဟုတ်ဘဲ ဝါသနာအလိုက် ရောဖွင့်သည်';

  @override
  String get setResume => 'ရပ်ခဲ့သည့်နေရာမှ ဆက်ရန်';

  @override
  String get setResumeSub =>
      'အက်ပ်ဖွင့်သည့်အခါ စာရင်းကို ရပ်ထားသည့်အတိုင်း ပြန်ယူသည်';

  @override
  String get setDataSaver => 'Wi-Fi မဟုတ်လျှင် ဒေတာချွေတာရန်';

  @override
  String get setDataSaverSub =>
      'မိုဘိုင်းဒေတာတွင် စီးဆင်းမှုနှင့် ဒေါင်းလုဒ်များကို 128 kbps သို့ ကန့်သတ်သည်';

  @override
  String get setHaptics => 'တုန်ခါမှု တုံ့ပြန်ချက်';

  @override
  String get setShowReasons => 'အကြံပြုရသည့် အကြောင်းရင်း ပြရန်';

  @override
  String get setSkipSilence => 'တိတ်ဆိတ်မှု ကျော်ရန်';

  @override
  String get setQuality => 'အသံအရည်အသွေး';

  @override
  String get setQualityLow => 'နိမ့် · 64 kbps';

  @override
  String get setQualityNormal => 'ပုံမှန် · 128 kbps';

  @override
  String get setQualityHigh => 'မြင့် · 192 kbps';

  @override
  String get setQualityBest => 'ရနိုင်သမျှ အကောင်းဆုံး';

  @override
  String get setStorage => 'ဒေါင်းလုဒ်များနှင့် သိုလှောင်ခန်း';

  @override
  String get setWifiOnly => 'Wi-Fi ဖြင့်သာ ဒေါင်းလုဒ်လုပ်ရန်';

  @override
  String get setDailyLimit => 'AI အတွက် နေ့စဉ်ကန့်သတ်ချက်';

  @override
  String setDailyLimitSub(int count) {
    return 'တစ်နေ့ သီချင်း $count ပုဒ်';
  }

  @override
  String get setBudget => 'AI သုံးခွင့်ရှိသော သိုလှောင်ခန်း';

  @override
  String setUsed(Object size) {
    return 'ဒေါင်းလုဒ်များက $size သုံးထားသည်';
  }

  @override
  String get setYourMusic => 'သင့်ဂီတ';

  @override
  String get setImport => 'ဤစက်မှ ဂီတထည့်ရန်';

  @override
  String get setImportSub => 'ဖိုလ်ဒါများ သို့မဟုတ် ဖိုင်တစ်ခုချင်း ရွေးပါ';

  @override
  String get setCleanup => 'ပျောက်နေသော ဖိုင်များကို ရှင်းလင်းရန်';

  @override
  String get setCleanupSub => 'ဖိုင်ပျောက်သွားသော သီချင်းများကို ဖယ်ရှားရန်';

  @override
  String setCleanupDone(int count) {
    return 'ပျောက်နေသော ဖိုင် $count ခု ဖယ်ရှားပြီးပါပြီ။';
  }

  @override
  String get setExport => 'ကျွန်ုပ်၏ဝါသနာကို အခြားစက်သို့ ပို့ရန်';

  @override
  String get setExportSub =>
      'သင့်ကြိုက်သည်များ၊ ဖွင့်ခဲ့သည်များနှင့် AI သင်ယူထားသမျှကို ဖိုင်တစ်ခုအဖြစ် သိမ်းသည်';

  @override
  String get setImportTaste => 'အခြားစက်မှ ဝါသနာကို ယူရန်';

  @override
  String get setImportTasteSub =>
      'သိမ်းထားသော ဝါသနာဖိုင်ကို ရွေး၍ ပေါင်းထည့်ပါ — ထပ်လုပ်လည်း ဘေးကင်းသည်';

  @override
  String get setAbout => 'အကြောင်း';

  @override
  String get setAboutBody =>
      'YouTube နှင့် သင့်ကိုယ်ပိုင်ဖိုင်များမှ ဂီတ။ AI သည် ဤစက်ထဲတွင်သာ အပြည့်အဝ အလုပ်လုပ်သည် — ဘာမှ ပြင်ပသို့ မထွက်ပါ။';

  @override
  String get setSource => 'ရင်းမြစ်ကုဒ်';

  @override
  String get importTitle => 'ဂီတထည့်ရန်';

  @override
  String get importPickFolder => 'ဖိုလ်ဒါရွေးရန်';

  @override
  String get importPickFiles => 'ဖိုင်များရွေးရန်';

  @override
  String importScanning(Object file) {
    return '$file ကို စကင်န်လုပ်နေသည်';
  }

  @override
  String importAdded(int count) {
    return '$count ခု ထည့်ပြီး';
  }

  @override
  String get importDenied =>
      'ခွင့်ပြုချက် ငြင်းပယ်ခံရသည် — သင့်ဂီတကို မဖတ်နိုင်ပါ။';

  @override
  String get importWatched => 'စောင့်ကြည့်သော ဖိုလ်ဒါများ';

  @override
  String get importIosHint =>
      'Files အက်ပ်ကိုဖွင့်ပြီး On My iPhone → TuneBox သို့သွား၍ ဂီတကို ထိုနေရာတွင် ထည့်ပါ။';

  @override
  String get playerQueue => 'စာရင်း';

  @override
  String get playerUpNext => 'နောက်တစ်ပုဒ်';

  @override
  String get playerLyrics => 'စာသား';

  @override
  String get playerNoLyrics => 'ဤသီချင်းအတွက် စာသား မရှိပါ။';

  @override
  String get playerRepeat => 'ထပ်ဖွင့်ရန်';

  @override
  String get playerShuffle => 'ရောဖွင့်ရန်';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" ကို မဖွင့်နိုင်ပါ';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" ကို ကျော်နေသည် — စီးဆင်းမှု မပွင့်ပါ။';
  }

  @override
  String get undo => 'ပြန်ဖျက်ရန်';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ယခု- $tags၊ $artist ဦးဆောင်သည်။';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ယခု- $tags။';
  }

  @override
  String get setColour => 'အရောင်';

  @override
  String get setColourSub => 'အက်ပ်တစ်ခုလုံး ဤအရောင်ကို လိုက်မည်';

  @override
  String get setCoverArt => 'ကာဗာပုံ';

  @override
  String get setMyColour => 'ကျွန်ုပ်၏အရောင်';

  @override
  String get setCoverArtSub =>
      'သီချင်းတစ်ပုဒ်ချင်းစီ၏ ကာဗာအရောင်ဖြင့် အက်ပ်ကို ပြောင်းမည်။';

  @override
  String get setMyColourSub => 'အရောင်တစ်ခု၊ နေရာတိုင်း၊ အချိန်တိုင်း။';

  @override
  String get setPickColour => 'နှစ်သက်ရာအရောင် ရွေးပါ';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi ဖြင့်သာ ဒေါင်းလုဒ်လုပ်ရန်';

  @override
  String get setDownloadLikes => 'ကျွန်ုပ်ကြိုက်သမျှ ဒေါင်းလုဒ်လုပ်ရန်';

  @override
  String get setDownloadLikesSub => 'နှလုံးသားခလုတ်က ဖိုင်ကိုပါ သိမ်းပေးသည်';

  @override
  String get setAiInstall => 'AI ရွေးထားသော ဂီတကို ထည့်သွင်းခွင့်ပြုရန်';

  @override
  String get setSkipSilenceSub =>
      'Android တွင်သာ။ တိတ်ဆိတ်သော အစပိုင်း၊ အသံဖျော့ခြင်းနှင့် နူးညံ့သောအပိုင်းများကို ဖြတ်တောက်နိုင်သည် — ဂီတ ကျော်နေလျှင် ပိတ်ထားပါ';

  @override
  String get setStorageUsed => 'ဒေါင်းလုဒ်များ သုံးထားသော သိုလှောင်ခန်း';

  @override
  String get setLibrary => 'စာကြည့်တိုက်';

  @override
  String get setUpdates => 'အပ်ဒိတ်များ';

  @override
  String get setAutoUpdate => 'အပ်ဒိတ်များကို ကိုယ်တိုင်စစ်ရန်';

  @override
  String get setAutoUpdateSub =>
      'နာရီအနည်းငယ်ခြား တိတ်တဆိတ်စစ်ပြီး Wi-Fi ဖြင့် ဒေါင်းလုဒ်လုပ်သည်။ ထည့်သွင်းရန်မူ သင့်ကို မေးဆဲဖြစ်သည်။';

  @override
  String setUpdateReady(Object version) {
    return '$version သို့ အပ်ဒိတ် အဆင်သင့်ဖြစ်ပါပြီ';
  }

  @override
  String get setUpdateReadySub => 'ဒေါင်းလုဒ်လုပ်ပြီး — ထည့်သွင်းရန် နှိပ်ပါ';

  @override
  String get setUpdateAvailableSub =>
      'ထုတ်ဝေမှုစာမျက်နှာမှ ရယူပါ — လင့်ခ်ကူးရန် နှိပ်ပါ';

  @override
  String get setLinkCopied => 'လင့်ခ် ကူးယူပြီး';

  @override
  String get setCheckNow => 'ယခုစစ်ရန်';

  @override
  String get setUpToDate => 'TuneBox သည် နောက်ဆုံးဗားရှင်းဖြစ်သည်';

  @override
  String get setChecking => 'ဗားရှင်းအသစ် ရှာနေသည်…';
}
