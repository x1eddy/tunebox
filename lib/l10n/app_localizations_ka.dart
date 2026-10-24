// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class LKa extends L {
  LKa([String locale = 'ka']) : super(locale);

  @override
  String get navHome => 'მთავარი';

  @override
  String get navExplore => 'აღმოჩენა';

  @override
  String get navLibrary => 'ბიბლიოთეკა';

  @override
  String get navTaste => 'შენი გემოვნება';

  @override
  String get actionDone => 'მზადაა';

  @override
  String get actionCancel => 'გაუქმება';

  @override
  String get actionCreate => 'შექმნა';

  @override
  String get actionPlay => 'დაკვრა';

  @override
  String get actionShuffle => 'არევა';

  @override
  String get actionPlayAll => 'ყველას დაკვრა';

  @override
  String get actionAdd => 'დამატება';

  @override
  String get actionRemove => 'წაშლა';

  @override
  String get actionName => 'სახელი';

  @override
  String get greetingNight => 'ჯერ არ გძინავს?';

  @override
  String get greetingMorning => 'დილა მშვიდობისა';

  @override
  String get greetingAfternoon => 'შუადღე მშვიდობისა';

  @override
  String get greetingEvening => 'საღამო მშვიდობისა';

  @override
  String get homeBuilding => 'AI შენს თაროებს აგებს…';

  @override
  String get homeOffline => 'ოფლაინ — ნაჩვენებია მოწყობილობაზე არსებული';

  @override
  String get homeNothingYet => 'ჯერ საჩვენებელი არაფერია';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count თარო, ახლახან განახლდა',
      one: '$count თარო, ახლახან განახლდა',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'თაროების თავიდან აგება';

  @override
  String get homeAddMusic => 'მუსიკის დამატება ამ მოწყობილობიდან';

  @override
  String get homeQuickPicks => 'სწრაფი არჩევანი';

  @override
  String get homeQuickPicksSub => 'პირდაპირ იქ, სადაც გაჩერდი';

  @override
  String get homeEmptyTitle => 'შენი ბიბლიოთეკა ცარიელია';

  @override
  String get homeEmptyBody =>
      'მოძებნე რამე ან დაამატე ამ მოწყობილობაზე არსებული მუსიკა. AI სწავლას პირველივე დაკვრიდან იწყებს.';

  @override
  String get homeAddMyMusic => 'ჩემი მუსიკის დამატება';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube-თან დაკავშირება ვერ მოხერხდა: $error';
  }

  @override
  String get moodFocus => 'ფოკუსი';

  @override
  String get moodWorkout => 'ვარჯიში';

  @override
  String get moodChill => 'რელაქსი';

  @override
  String get moodCommute => 'გზაში';

  @override
  String get moodParty => 'წვეულება';

  @override
  String moodBuilding(Object mood) {
    return 'იქმნება $mood მიქსი…';
  }

  @override
  String moodFailed(Object error) {
    return 'არ გამოვიდა: $error';
  }

  @override
  String get shelfRepeat => 'გამეორებაზე';

  @override
  String get shelfRepeatSub => 'ბოლო ორი კვირა';

  @override
  String get shelfForgotten => 'დავიწყებული ჰიტები, რომლებიც მოგწონდა';

  @override
  String get shelfForgottenSub =>
      'ოდესღაც საყვარელი, დიდი ხანია აღარ მოგისმენია';

  @override
  String get shelfNew => 'ახალი';

  @override
  String get shelfNewSub => 'ახალი ტრეკები, რომლებიც AI-ის აზრით შენთვისაა';

  @override
  String shelfBecause(Object artist) {
    return 'რადგან უსმინე: $artist';
  }

  @override
  String get shelfBecauseSub => 'შენი გემოვნების იგივე კუთხე';

  @override
  String get shelfDeep => 'თითქმის შეუხებელი';

  @override
  String get shelfDeepSub => 'შენს ბიბლიოთეკაშია, მაგრამ თითქმის არ გისმენია';

  @override
  String get shelfMix => 'შენი მიქსი';

  @override
  String get shelfMixSub => 'ახლდება აპის ყოველ გახსნაზე';

  @override
  String get shelfAdded => 'ახლახან დამატებული';

  @override
  String get shelfAddedSub => 'გადმოწერილი და იმპორტირებული ფაილები';

  @override
  String get shelfStarter => 'დაიწყე აქედან';

  @override
  String get shelfStarterSub =>
      'დაუკარი რამდენიმე და AI მაშინვე დაიწყებს სწავლას';

  @override
  String reasonPlays(int count) {
    return '$count დაკვრა';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'მოგეწონა, ბოლოს დაკრულია $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count დაკვრა, ბოლოს $when';
  }

  @override
  String get reasonTopArtist =>
      'ერთ-ერთი ყველაზე ხშირად მოსმენილი შემსრულებელი';

  @override
  String reasonMore(Object artist) {
    return 'მეტი: $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return '$artist-ს ისევ და ისევ უბრუნდები';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'შენი სტილის $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ბოლო დროს ბევრი $tag';
  }

  @override
  String get reasonOutThisYear => 'ამ წლის გამოშვება';

  @override
  String get reasonReleasedRecently => 'ახლახან გამოვიდა';

  @override
  String get reasonClose => 'ახლოსაა იმასთან, რასაც უსმენდი';

  @override
  String reasonNear(Object artist) {
    return '$artist-ს ახლოსაა';
  }

  @override
  String get reasonNeverPlayed => 'არასდროს დაკრულა';

  @override
  String get reasonPlayedOnce => 'ერთხელ დაკრულა';

  @override
  String get reasonPopular => 'ახლა პოპულარულია';

  @override
  String whenYearsAgo(int count) {
    return '$count წლის წინ';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count თვის წინ';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count დღის წინ';
  }

  @override
  String get searchHint => 'სიმღერები, შემსრულებლები, ალბომები';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count შედეგი',
      one: '$count შედეგი',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'ბოლო ძიებები';

  @override
  String get searchEmptyTitle => 'ვერაფერი მოიძებნა';

  @override
  String get searchEmptyBody =>
      'სცადე სხვა მართლწერა ან მხოლოდ შემსრულებლის სახელი.';

  @override
  String get searchStartTitle => 'იპოვე რამე დასაკრავად';

  @override
  String get searchStartBody =>
      'ეძებე YouTube Music-ში — მხოლოდ სიმღერები გამოჩნდება, სხვა ვიდეოები არა.';

  @override
  String get libPlaylists => 'პლეილისტები';

  @override
  String get libSongs => 'სიმღერები';

  @override
  String get libArtists => 'შემსრულებლები';

  @override
  String get libLiked => 'მოწონებული';

  @override
  String get libDownloads => 'გადმოწერილი';

  @override
  String get libImported => 'იმპორტირებული';

  @override
  String get libLikedSongs => 'მოწონებული სიმღერები';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count სიმღერა',
      one: '$count სიმღერა',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ოფლაინ';
  }

  @override
  String get libMyFiles => 'ჩემი ფაილები';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ფაილი',
      one: '$count ფაილი',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'ახალი პლეილისტი';

  @override
  String get libMakeOne => 'შექმნა';

  @override
  String get libSortRecent => 'ახლახან დამატებული';

  @override
  String get libSortTitle => 'სათაური';

  @override
  String get libSortArtist => 'შემსრულებელი';

  @override
  String get libSortPlays => 'ყველაზე ხშირად მოსმენილი';

  @override
  String get sheetNotForMe => 'ჩემთვის არ არის';

  @override
  String get sheetNotForMeSub => 'ამას აღარასდროს შემომთავაზებ';

  @override
  String get sheetBlocked => 'დაბლოკილია — შეეხე ხელახლა დასაშვებად';

  @override
  String get sheetBlockedSub => 'შეიძლება ისევ გამოჩნდეს რეკომენდაციებში';

  @override
  String get sheetPlayNext => 'შემდეგში დაკვრა';

  @override
  String get sheetAddToPlaylist => 'პლეილისტში დამატება';

  @override
  String get sheetDownloaded => 'გადმოწერილია';

  @override
  String get sheetRemoveFile => 'შეეხე ფაილის წასაშლელად';

  @override
  String get sheetDownload => 'გადმოწერა';

  @override
  String get sheetKeepOffline => 'ოფლაინ გამოსაყენებლად შენახვა';

  @override
  String get sheetRadio => 'რადიოს დაწყება';

  @override
  String get sheetRadioSub => 'რიგი ამ სიმღერის მიხედვით';

  @override
  String get sheetQueue => 'რიგი';

  @override
  String get sheetSleepTimer => 'ძილის ტაიმერი';

  @override
  String get sheetSleepOff => 'გამორთულია';

  @override
  String sheetSleepMinutes(int count) {
    return '$count წუთი';
  }

  @override
  String get sheetSleepEndOfTrack => 'ამ სიმღერის ბოლოს';

  @override
  String sheetSleepSet(int count) {
    return 'მუსიკა გაჩერდება $count წუთში';
  }

  @override
  String get tasteTitle => 'შენი გემოვნება';

  @override
  String get tasteRetrain => 'ხელახლა გაწვრთნა';

  @override
  String get tasteRetraining => 'ხელახლა ვსწავლობ შენი ისტორიიდან…';

  @override
  String get tasteRetrained => 'AI-მ მოდელი თავიდან ააგო.';

  @override
  String tasteConfidence(int percent) {
    return 'სიზუსტე $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays დაკვრა · $skips გამოტოვება · $likes მოწონება';
  }

  @override
  String get tasteEmptySummary => 'დაუკარი რამდენიმე სიმღერა და ეს ივსება.';

  @override
  String get tasteKeepLearning => 'სწავლა გაგრძელდეს, სანამ ვუსმენ';

  @override
  String get tasteKeepLearningSub => 'გამორთე მიმდინარე პროფილის გასაყინად';

  @override
  String get tasteDownloadsTitle => 'გადმოწერები, რომლებსაც AI მართავს';

  @override
  String get tasteDownloadsSub =>
      'მუსიკა მოწყობილობაზე შენი თხოვნის გარეშე ჩნდება';

  @override
  String get tasteDownloadLikes => 'ყველაფრის გადმოწერა, რაც მომწონს';

  @override
  String get tasteDownloadLikesSub =>
      'დააჭირე გულს და ფაილი ოფლაინ გამოსაყენებლად შეინახება';

  @override
  String get tasteAiInstall => 'AI-მ თვითონ დააყენოს არჩეული მუსიკა';

  @override
  String get tasteAiInstallSub =>
      'ის გადმოწერს ტრეკებს, რომლებშიც დარწმუნებულია';

  @override
  String get tasteWhatItThinks => 'რა მოგწონს მისი აზრით';

  @override
  String get tasteWhatItThinksSub =>
      'ნასწავლია დაკვრებიდან, გამოტოვებიდან, მოწონებებიდან და გამეორებებიდან';

  @override
  String get tasteArtists => 'შემსრულებლები, რომლებსაც ეყრდნობა';

  @override
  String get tasteWhenYouListen => 'როდის უსმენ';

  @override
  String get tasteWhenYouListenSub =>
      'დაკვრები საათში — მიმდინარე საათს მეტი წონა აქვს';

  @override
  String get tasteDecades => 'ათწლეულები';

  @override
  String get tasteTune => 'რეკომენდაციების მორგება';

  @override
  String get tasteTuneSub => 'ძალაში შევა მთავარი გვერდის შემდეგ განახლებაზე';

  @override
  String get tasteDiscovery => 'აღმოჩენა';

  @override
  String get tasteDiscoverySub => 'ნაცნობი ↔ ის, რაც არასდროს გსმენია';

  @override
  String get tasteEnergy => 'ენერგია';

  @override
  String get tasteEnergySub => 'მშვიდი ↔ ხმამაღალი';

  @override
  String get tasteRecency => 'სიახლე';

  @override
  String get tasteRecencySub => 'ტრადიციული ↔ სულ ახალი';

  @override
  String get tasteNostalgia => 'ნოსტალგია';

  @override
  String get tasteNostalgiaSub =>
      'რამდენი ხნის შემდეგ ითვლება ძველი ფავორიტი დავიწყებულად';

  @override
  String get tasteSignals => 'სიგნალები, რომლებიც შეუძლია გამოიყენოს';

  @override
  String get tasteSignalsSub => 'ყველაფერი ამ მოწყობილობაზე რჩება';

  @override
  String get tasteUseHistory => 'რაც დავუკარი';

  @override
  String get tasteUseSkips => 'რასაც ვტოვებ';

  @override
  String get tasteUseTime => 'დღის დრო';

  @override
  String get tasteUseYouTube => 'YouTube-ის შეთავაზებები';

  @override
  String get tasteAlwaysMore => 'ყოველთვის მეტი';

  @override
  String get tasteNeverAgain => 'აღარასდროს';

  @override
  String get tasteAddArtist => 'შემსრულებლის დამატება';

  @override
  String get tasteMoreOfPrompt => 'ყოველთვის მეტი…';

  @override
  String get tasteNeverAgainPrompt => 'აღარასდროს…';

  @override
  String get tasteReset => 'ნასწავლის განულება';

  @override
  String get tasteResetSub => 'შენი მუსიკა რჩება; პროფილი ნულიდან იწყება';

  @override
  String get trainCard => 'გაწვრთნე შეფასებით';

  @override
  String get trainCardSub =>
      'გადაფურცლე ნამდვილი სიმღერები. მარჯვნივ — მეტი ასეთი, მარცხნივ — აღარასდროს. ორი წუთი აქ ერთ კვირა მოსმენას სჯობს.';

  @override
  String get trainStart => 'ვარჯიშის რაუნდის დაწყება';

  @override
  String get trainTitle => 'ვარჯიშის რაუნდი';

  @override
  String get trainQuestion => 'გინდა ეს შენს მთავარ გვერდზე?';

  @override
  String get trainMoreLikeThis => 'მეტი ასეთი';

  @override
  String get trainNeverAgain => 'აღარასდროს';

  @override
  String get trainDone => 'რაუნდი დასრულდა';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked დარჩა · $blocked დაიბლოკა. სიზუსტე $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'შენს გემოვნებაზე დაბრუნება';

  @override
  String get trainNothingTitle => 'შესაფასებელი ჯერ არაფერია';

  @override
  String get trainNothingBody =>
      'დაამატე მუსიკა ან ჯერ AI-ს გადმოაწერინე კანდიდატები და მერე დაბრუნდი.';

  @override
  String get trainLeaveTitle => 'ვარჯიშის რაუნდიდან გასვლა?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'თუ ახლა გახვალ, AI გააუქმებს ამ რაუნდის ყველაფერს — ყველა $count სიმღერას, რომელიც ახლახან შეაფასე.',
      one:
          'თუ ახლა გახვალ, AI გააუქმებს ამ რაუნდის ყველაფერს — $count სიმღერას, რომელიც ახლახან შეაფასე.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'ვარჯიშის გაგრძელება';

  @override
  String get trainDiscard => 'გაუქმება და გასვლა';

  @override
  String get setTitle => 'პარამეტრები';

  @override
  String get setAppearance => 'გარეგნობა';

  @override
  String get setTheme => 'თემა';

  @override
  String get setThemeSystem => 'სისტემის მიხედვით';

  @override
  String get setThemeLight => 'ღია';

  @override
  String get setThemeDark => 'მუქი';

  @override
  String get setPureBlack => 'წმინდა შავი';

  @override
  String get setPureBlackSub => 'ზოგავს ენერგიას OLED ეკრანზე';

  @override
  String get setAccent => 'აქცენტის ფერი';

  @override
  String get setAccentArtwork => 'გარეკანიდან';

  @override
  String get setAccentFixed => 'ერთი ფერი, რომელიც მე ავირჩიე';

  @override
  String get setLanguage => 'ენა';

  @override
  String get setLanguageSystem => 'სისტემის მიხედვით';

  @override
  String get setAccessibility => 'მისაწვდომობა';

  @override
  String get setTextSize => 'ტექსტის ზომა';

  @override
  String get setTextSizeSub => 'სისტემის პარამეტრის გარდა';

  @override
  String get setReduceMotion => 'მოძრაობის შემცირება';

  @override
  String get setReduceMotionSub =>
      'აჩერებს ზოლებს, ვიზუალიზატორს, ხტუნვით გადახვევას, ზამბარისებრ შეხებებს და გვერდების გადასვლებს';

  @override
  String get setHighContrast => 'მაღალი კონტრასტი';

  @override
  String get setHighContrastSub => 'უფრო მკაფიო გამიჯვნა და ხილული კონტურები';

  @override
  String get setBoldText => 'მუქი ტექსტი';

  @override
  String get setPlayback => 'დაკვრა';

  @override
  String get setAutoRadio => 'მუსიკა არ შეწყდეს';

  @override
  String get setAutoRadioSub =>
      'რიგის დასრულებისას გაგრძელდეს რადიო ბოლო სიმღერის მიხედვით';

  @override
  String get setSmartShuffle => 'ჭკვიანი არევა';

  @override
  String get setSmartShuffleSub =>
      'ერევა გემოვნების მიხედვით, შემთხვევითად კი არა';

  @override
  String get setResume => 'გაგრძელება იქიდან, სადაც გავჩერდი';

  @override
  String get setResumeSub => 'აპის გახსნისას აღადგენს რიგს, პაუზაზე';

  @override
  String get setDataSaver => 'ტრაფიკის დაზოგვა Wi-Fi-ს გარეშე';

  @override
  String get setDataSaverSub =>
      'მობილურ ინტერნეტში ზღუდავს სტრიმინგს და გადმოწერებს 128 კბ/წმ-ზე';

  @override
  String get setHaptics => 'ვიბრაციული გამოხმაურება';

  @override
  String get setShowReasons => 'ნაჩვენები იყოს, რატომ შემოგთავაზეს';

  @override
  String get setSkipSilence => 'სიჩუმის გამოტოვება';

  @override
  String get setQuality => 'აუდიოს ხარისხი';

  @override
  String get setQualityLow => 'დაბალი · 64 კბ/წმ';

  @override
  String get setQualityNormal => 'ნორმალური · 128 კბ/წმ';

  @override
  String get setQualityHigh => 'მაღალი · 192 კბ/წმ';

  @override
  String get setQualityBest => 'საუკეთესო ხელმისაწვდომი';

  @override
  String get setStorage => 'გადმოწერები და მეხსიერება';

  @override
  String get setWifiOnly => 'გადმოწერა მხოლოდ Wi-Fi-ით';

  @override
  String get setDailyLimit => 'AI-ის დღიური ლიმიტი';

  @override
  String setDailyLimitSub(int count) {
    return 'დღეში $count სიმღერა';
  }

  @override
  String get setBudget => 'მეხსიერება, რომელიც AI-მ შეიძლება გამოიყენოს';

  @override
  String setUsed(Object size) {
    return '$size გამოყენებულია გადმოწერებით';
  }

  @override
  String get setYourMusic => 'შენი მუსიკა';

  @override
  String get setImport => 'მუსიკის დამატება ამ მოწყობილობიდან';

  @override
  String get setImportSub => 'აირჩიე საქაღალდეები ან ცალკეული ფაილები';

  @override
  String get setCleanup => 'დაკარგული ფაილების გასუფთავება';

  @override
  String get setCleanupSub => 'წაშალე სიმღერები, რომელთა ფაილი აღარ არსებობს';

  @override
  String setCleanupDone(int count) {
    return 'წაიშალა $count დაკარგული ფაილი.';
  }

  @override
  String get setExport => 'ჩემი გემოვნების გაგზავნა სხვა მოწყობილობაზე';

  @override
  String get setExportSub =>
      'ინახავს ფაილს შენი მოწონებებით, დაკვრებით და ყველაფრით, რაც AI-მ ისწავლა';

  @override
  String get setImportTaste => 'გემოვნების ჩატვირთვა სხვა მოწყობილობიდან';

  @override
  String get setImportTasteSub =>
      'აირჩიე შენახული გემოვნების ფაილი და გააერთიანე — განმეორება უსაფრთხოა';

  @override
  String get setAbout => 'შესახებ';

  @override
  String get setAboutBody =>
      'მუსიკა YouTube-იდან და შენი ფაილებიდან. AI მთლიანად ამ მოწყობილობაზე მუშაობს — არაფერი გადის გარეთ.';

  @override
  String get setSource => 'საწყისი კოდი';

  @override
  String get importTitle => 'მუსიკის დამატება';

  @override
  String get importPickFolder => 'აირჩიე საქაღალდე';

  @override
  String get importPickFiles => 'აირჩიე ფაილები';

  @override
  String importScanning(Object file) {
    return 'სკანირდება $file';
  }

  @override
  String importAdded(int count) {
    return 'დაემატა $count';
  }

  @override
  String get importDenied =>
      'ნებართვა უარყოფილია — მუსიკის წაკითხვა შეუძლებელია.';

  @override
  String get importWatched => 'საქაღალდეები, რომლებსაც აკვირდება';

  @override
  String get importIosHint =>
      'გახსენი აპი „ფაილები“, გადადი: ჩემს iPhone-ში → TuneBox და იქ ჩააგდე მუსიკა.';

  @override
  String get playerQueue => 'რიგი';

  @override
  String get playerUpNext => 'შემდეგი';

  @override
  String get playerLyrics => 'ტექსტი';

  @override
  String get playerNoLyrics => 'ამ სიმღერას ტექსტი არ აქვს.';

  @override
  String get playerRepeat => 'გამეორება';

  @override
  String get playerShuffle => 'არევა';

  @override
  String errorPlayback(Object title) {
    return 'ვერ დაიკვრა „$title“';
  }

  @override
  String errorSkipping(Object title) {
    return 'გამოტოვებულია „$title“ — ნაკადი ვერ გაიხსნა.';
  }

  @override
  String get undo => 'დაბრუნება';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ახლა: $tags, წინ არის $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ახლა: $tags.';
  }

  @override
  String get setColour => 'ფერი';

  @override
  String get setColourSub => 'მთელი აპი ამას მიჰყვება';

  @override
  String get setCoverArt => 'გარეკანი';

  @override
  String get setMyColour => 'ჩემი ფერი';

  @override
  String get setCoverArtSub =>
      'ყოველი სიმღერა აპს გარეკანის მიხედვით ხელახლა აფერადებს.';

  @override
  String get setMyColourSub => 'ერთი ფერი, ყველგან და ყოველთვის.';

  @override
  String get setPickColour => 'აირჩიე ნებისმიერი ფერი';

  @override
  String get setWifiOnlyTitle => 'გადმოწერა მხოლოდ Wi-Fi-ით';

  @override
  String get setDownloadLikes => 'ყველაფრის გადმოწერა, რაც მომწონს';

  @override
  String get setDownloadLikesSub => 'გულის ღილაკი ფაილსაც ინახავს';

  @override
  String get setAiInstall => 'AI-მ თვითონ დააყენოს არჩეული მუსიკა';

  @override
  String get setSkipSilenceSub =>
      'მხოლოდ Android-ზე. შეიძლება მოჭრას ჩუმი შესავალი, მინელება და რბილი ნაწილები — გამორთე, თუ მუსიკა ხტება';

  @override
  String get setStorageUsed => 'გადმოწერებით დაკავებული მეხსიერება';

  @override
  String get setLibrary => 'ბიბლიოთეკა';

  @override
  String get setUpdates => 'განახლებები';

  @override
  String get setAutoUpdate => 'განახლებების ავტომატური შემოწმება';

  @override
  String get setAutoUpdateSub =>
      'ყოველ რამდენიმე საათში, ჩუმად, და Wi-Fi-ით იწერება. დაყენებისას მაინც გკითხავს.';

  @override
  String setUpdateReady(Object version) {
    return 'განახლება $version-ზე მზადაა';
  }

  @override
  String get setUpdateReadySub => 'გადმოწერილია — შეეხე დასაყენებლად';

  @override
  String get setUpdateAvailableSub =>
      'აიღე გამოშვებების გვერდიდან — შეეხე ბმულის დასაკოპირებლად';

  @override
  String get setLinkCopied => 'ბმული დაკოპირდა';

  @override
  String get setCheckNow => 'ახლავე შემოწმება';

  @override
  String get setUpToDate => 'TuneBox განახლებულია';

  @override
  String get setChecking => 'ახალი ვერსიის ძიება…';

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
