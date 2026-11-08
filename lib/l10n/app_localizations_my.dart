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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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
