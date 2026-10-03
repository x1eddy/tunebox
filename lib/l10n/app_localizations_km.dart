// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class LKm extends L {
  LKm([String locale = 'km']) : super(locale);

  @override
  String get navHome => 'ដើម';

  @override
  String get navExplore => 'ស្វែងរក';

  @override
  String get navLibrary => 'បណ្ណាល័យ';

  @override
  String get navTaste => 'ចំណូលចិត្តរបស់អ្នក';

  @override
  String get actionDone => 'រួចរាល់';

  @override
  String get actionCancel => 'បោះបង់';

  @override
  String get actionCreate => 'បង្កើត';

  @override
  String get actionPlay => 'ចាក់';

  @override
  String get actionShuffle => 'ចាក់ចៃដន្យ';

  @override
  String get actionPlayAll => 'ចាក់ទាំងអស់';

  @override
  String get actionAdd => 'បន្ថែម';

  @override
  String get actionRemove => 'លុបចេញ';

  @override
  String get actionName => 'ឈ្មោះ';

  @override
  String get greetingNight => 'នៅភ្ញាក់ទៀតឬ?';

  @override
  String get greetingMorning => 'អរុណសួស្តី';

  @override
  String get greetingAfternoon => 'ទិវាសួស្តី';

  @override
  String get greetingEvening => 'សាយ័ណ្ហសួស្តី';

  @override
  String get homeBuilding => 'AI កំពុងរៀបចំធ្នើររបស់អ្នក…';

  @override
  String get homeOffline => 'ក្រៅបណ្តាញ — កំពុងបង្ហាញអ្វីដែលមានក្នុងឧបករណ៍';

  @override
  String get homeNothingYet => 'មិនទាន់មានអ្វីបង្ហាញទេ';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ធ្នើ $count ទើបតែធ្វើបច្ចុប្បន្នភាព',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'បង្កើតធ្នើឡើងវិញ';

  @override
  String get homeAddMusic => 'បន្ថែមតន្ត្រីពីឧបករណ៍នេះ';

  @override
  String get homeQuickPicks => 'ជ្រើសរើសរហ័ស';

  @override
  String get homeQuickPicksSub => 'ត្រឡប់ទៅកន្លែងដែលអ្នកកំពុងស្តាប់វិញ';

  @override
  String get homeEmptyTitle => 'បណ្ណាល័យរបស់អ្នកទទេ';

  @override
  String get homeEmptyBody =>
      'ស្វែងរកអ្វីមួយ ឬបន្ថែមតន្ត្រីដែលមានស្រាប់ក្នុងឧបករណ៍នេះ។ AI ចាប់ផ្តើមរៀនតាំងពីការចាក់លើកដំបូង។';

  @override
  String get homeAddMyMusic => 'បន្ថែមតន្ត្រីរបស់ខ្ញុំ';

  @override
  String homeCouldNotReach(Object error) {
    return 'មិនអាចភ្ជាប់ទៅ YouTube បានទេ៖ $error';
  }

  @override
  String get moodFocus => 'ផ្តោតអារម្មណ៍';

  @override
  String get moodWorkout => 'ហាត់ប្រាណ';

  @override
  String get moodChill => 'សម្រាក';

  @override
  String get moodCommute => 'ធ្វើដំណើរ';

  @override
  String get moodParty => 'ពិធីជប់លៀង';

  @override
  String moodBuilding(Object mood) {
    return 'កំពុងបង្កើតបន្ទះចម្រៀង $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'មិនជោគជ័យទេ៖ $error';
  }

  @override
  String get shelfRepeat => 'ស្តាប់ម្តងហើយម្តងទៀត';

  @override
  String get shelfRepeatSub => 'ពីរសប្តាហ៍ចុងក្រោយរបស់អ្នក';

  @override
  String get shelfForgotten => 'បទចាស់ៗដែលអ្នកធ្លាប់ចូលចិត្ត';

  @override
  String get shelfForgottenSub => 'ធ្លាប់ស្រលាញ់ តែមិនបានប៉ះយូរហើយ';

  @override
  String get shelfNew => 'ថ្មី';

  @override
  String get shelfNewSub => 'បទថ្មីៗដែល AI គិតថាសម្រាប់អ្នក';

  @override
  String shelfBecause(Object artist) {
    return 'ព្រោះអ្នកបានស្តាប់ $artist';
  }

  @override
  String get shelfBecauseSub => 'ជ្រុងតែមួយនៃចំណូលចិត្តរបស់អ្នក';

  @override
  String get shelfDeep => 'ស្ទើរតែមិនបានប៉ះ';

  @override
  String get shelfDeepSub => 'ក្នុងបណ្ណាល័យរបស់អ្នក ស្ទើរតែមិនធ្លាប់ចាក់';

  @override
  String get shelfMix => 'បន្ទះចម្រៀងរបស់អ្នក';

  @override
  String get shelfMixSub => 'បង្កើតឡើងវិញរាល់ពេលអ្នកបើកកម្មវិធី';

  @override
  String get shelfAdded => 'បានបន្ថែមថ្មីៗ';

  @override
  String get shelfAddedSub => 'ឯកសារដែលបានទាញយក និងនាំចូល';

  @override
  String get shelfStarter => 'ចាប់ផ្តើមនៅទីនេះ';

  @override
  String get shelfStarterSub => 'ចាក់បីបួនបទ នោះ AI នឹងចាប់ផ្តើមរៀនភ្លាមៗ';

  @override
  String reasonPlays(int count) {
    return 'ចាក់ $count ដង';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ចូលចិត្ត ចាក់ចុងក្រោយ $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'ចាក់ $count ដង ចុងក្រោយ $when';
  }

  @override
  String get reasonTopArtist =>
      'ម្នាក់ក្នុងចំណោមសិល្បករដែលអ្នកស្តាប់ច្រើនបំផុត';

  @override
  String reasonMore(Object artist) {
    return '$artist បន្ថែមទៀត';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'អ្នកតែងត្រឡប់ទៅរក $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return '$tag ដែលត្រូវនឹងចិត្តអ្នក';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ថ្មីៗនេះស្តាប់ $tag ច្រើន';
  }

  @override
  String get reasonOutThisYear => 'ចេញនៅឆ្នាំនេះ';

  @override
  String get reasonReleasedRecently => 'ចេញផ្សាយថ្មីៗ';

  @override
  String get reasonClose => 'ជិតនឹងអ្វីដែលអ្នកកំពុងស្តាប់';

  @override
  String reasonNear(Object artist) {
    return 'ជិតនឹង $artist';
  }

  @override
  String get reasonNeverPlayed => 'មិនធ្លាប់ចាក់';

  @override
  String get reasonPlayedOnce => 'ចាក់ម្តង';

  @override
  String get reasonPopular => 'កំពុងពេញនិយម';

  @override
  String whenYearsAgo(int count) {
    return '$count ឆ្នាំមុន';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ខែមុន';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count ថ្ងៃមុន';
  }

  @override
  String get searchHint => 'បទចម្រៀង សិល្បករ អាល់ប៊ុម';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'លទ្ធផល $count',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'ការស្វែងរកថ្មីៗ';

  @override
  String get searchEmptyTitle => 'រកមិនឃើញអ្វីទេ';

  @override
  String get searchEmptyBody =>
      'សាកល្បងអក្ខរាវិរុទ្ធផ្សេង ឬគ្រាន់តែឈ្មោះសិល្បករ។';

  @override
  String get searchStartTitle => 'រកអ្វីមួយដើម្បីចាក់';

  @override
  String get searchStartBody =>
      'ស្វែងរកក្នុង YouTube Music — មានតែបទចម្រៀងប៉ុណ្ណោះ គ្មានវីដេអូផ្សេងទេ។';

  @override
  String get libPlaylists => 'បញ្ជីចាក់';

  @override
  String get libSongs => 'បទចម្រៀង';

  @override
  String get libArtists => 'សិល្បករ';

  @override
  String get libLiked => 'ចូលចិត្ត';

  @override
  String get libDownloads => 'ទាញយក';

  @override
  String get libImported => 'បាននាំចូល';

  @override
  String get libLikedSongs => 'បទដែលបានចូលចិត្ត';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count បទ',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ក្រៅបណ្តាញ';
  }

  @override
  String get libMyFiles => 'ឯកសាររបស់ខ្ញុំផ្ទាល់';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ឯកសារ',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'បញ្ជីចាក់ថ្មី';

  @override
  String get libMakeOne => 'បង្កើតមួយ';

  @override
  String get libSortRecent => 'បានបន្ថែមថ្មីៗ';

  @override
  String get libSortTitle => 'ចំណងជើង';

  @override
  String get libSortArtist => 'សិល្បករ';

  @override
  String get libSortPlays => 'ចាក់ច្រើនបំផុត';

  @override
  String get sheetNotForMe => 'មិនសម្រាប់ខ្ញុំ';

  @override
  String get sheetNotForMeSub => 'កុំណែនាំបទនេះទៀត';

  @override
  String get sheetBlocked => 'បានទប់ស្កាត់ — ចុចដើម្បីអនុញ្ញាតវិញ';

  @override
  String get sheetBlockedSub => 'វាអាចលេចឡើងក្នុងការណែនាំម្តងទៀត';

  @override
  String get sheetPlayNext => 'ចាក់បន្ទាប់';

  @override
  String get sheetAddToPlaylist => 'បន្ថែមទៅបញ្ជីចាក់';

  @override
  String get sheetDownloaded => 'បានទាញយក';

  @override
  String get sheetRemoveFile => 'ចុចដើម្បីលុបឯកសារ';

  @override
  String get sheetDownload => 'ទាញយក';

  @override
  String get sheetKeepOffline => 'រក្សាទុកសម្រាប់ក្រៅបណ្តាញ';

  @override
  String get sheetRadio => 'ចាប់ផ្តើមវិទ្យុ';

  @override
  String get sheetRadioSub => 'ជួរចាក់ដែលបង្កើតជុំវិញបទនេះ';

  @override
  String get sheetQueue => 'ជួរចាក់';

  @override
  String get sheetSleepTimer => 'កំណត់ម៉ោងគេង';

  @override
  String get sheetSleepOff => 'បិទ';

  @override
  String sheetSleepMinutes(int count) {
    return '$count នាទី';
  }

  @override
  String get sheetSleepEndOfTrack => 'ចុងបទនេះ';

  @override
  String sheetSleepSet(int count) {
    return 'តន្ត្រីនឹងឈប់ក្នុង $count នាទី';
  }

  @override
  String get tasteTitle => 'ចំណូលចិត្តរបស់អ្នក';

  @override
  String get tasteRetrain => 'បង្ហាត់ឡើងវិញ';

  @override
  String get tasteRetraining => 'កំពុងបង្ហាត់ឡើងវិញតាមប្រវត្តិរបស់អ្នក…';

  @override
  String get tasteRetrained => 'AI បានបង្កើតម៉ូដែលរបស់វាឡើងវិញ។';

  @override
  String tasteConfidence(int percent) {
    return 'ទំនុកចិត្ត $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'ចាក់ $plays · រំលង $skips · ចូលចិត្ត $likes';
  }

  @override
  String get tasteEmptySummary => 'ចាក់បទបន្តិចបន្តួច នោះផ្នែកនេះនឹងពេញ។';

  @override
  String get tasteKeepLearning => 'បន្តរៀនពេលខ្ញុំស្តាប់';

  @override
  String get tasteKeepLearningSub => 'បិទដើម្បីបង្កកទម្រង់បច្ចុប្បន្ន';

  @override
  String get tasteDownloadsTitle => 'ការទាញយកដែល AI គ្រប់គ្រង';

  @override
  String get tasteDownloadsSub => 'តន្ត្រីចូលក្នុងឧបករណ៍ដោយអ្នកមិនបាច់សុំ';

  @override
  String get tasteDownloadLikes => 'ទាញយកអ្វីៗដែលខ្ញុំចូលចិត្ត';

  @override
  String get tasteDownloadLikesSub =>
      'ចុចបេះដូង ហើយឯកសារត្រូវបានរក្សាទុកសម្រាប់ក្រៅបណ្តាញ';

  @override
  String get tasteAiInstall => 'ឲ្យ AI ដំឡើងតន្ត្រីដែលវាជ្រើស';

  @override
  String get tasteAiInstallSub => 'វានឹងទាញយកបទដែលវាមានទំនុកចិត្ត';

  @override
  String get tasteWhatItThinks => 'អ្វីដែលវាគិតថាអ្នកចូលចិត្ត';

  @override
  String get tasteWhatItThinksSub =>
      'រៀនពីការចាក់ ការរំលង ការចូលចិត្ត និងការស្តាប់ម្តងទៀត';

  @override
  String get tasteArtists => 'សិល្បករដែលវាពឹងលើ';

  @override
  String get tasteWhenYouListen => 'ពេលអ្នកស្តាប់';

  @override
  String get tasteWhenYouListenSub =>
      'ការចាក់ក្នុងមួយម៉ោង — ម៉ោងបច្ចុប្បន្នមានទម្ងន់ច្រើនជាង';

  @override
  String get tasteDecades => 'ទសវត្សរ៍';

  @override
  String get tasteTune => 'កែសម្រួលការណែនាំ';

  @override
  String get tasteTuneSub => 'មានប្រសិទ្ធភាពពេលផ្ទុកទំព័រដើមឡើងវិញលើកក្រោយ';

  @override
  String get tasteDiscovery => 'ការរកឃើញ';

  @override
  String get tasteDiscoverySub => 'ធ្លាប់ស្គាល់ ↔ អ្វីដែលអ្នកមិនធ្លាប់ស្តាប់';

  @override
  String get tasteEnergy => 'ថាមពល';

  @override
  String get tasteEnergySub => 'ស្ងប់ ↔ ខ្លាំង';

  @override
  String get tasteRecency => 'ភាពថ្មី';

  @override
  String get tasteRecencySub => 'មិនចាស់ ↔ ថ្មីស្រឡាង';

  @override
  String get tasteNostalgia => 'ការនឹកឃើញអតីតកាល';

  @override
  String get tasteNostalgiaSub =>
      'តើបទចូលចិត្តចាស់ៗរយៈពេលប៉ុន្មាន ទើបរាប់ថាត្រូវបានភ្លេច';

  @override
  String get tasteSignals => 'សញ្ញាដែលវាអាចប្រើ';

  @override
  String get tasteSignalsSub => 'អ្វីៗទាំងអស់នៅក្នុងឧបករណ៍នេះ';

  @override
  String get tasteUseHistory => 'អ្វីដែលខ្ញុំបានចាក់';

  @override
  String get tasteUseSkips => 'អ្វីដែលខ្ញុំរំលង';

  @override
  String get tasteUseTime => 'ពេលវេលាក្នុងថ្ងៃ';

  @override
  String get tasteUseYouTube => 'ការណែនាំពី YouTube';

  @override
  String get tasteAlwaysMore => 'ច្រើនជានិច្ចអំពី';

  @override
  String get tasteNeverAgain => 'កុំទៀត';

  @override
  String get tasteAddArtist => 'បន្ថែមសិល្បករ';

  @override
  String get tasteMoreOfPrompt => 'ច្រើនជានិច្ចអំពី…';

  @override
  String get tasteNeverAgainPrompt => 'កុំទៀត…';

  @override
  String get tasteReset => 'កំណត់អ្វីដែលវារៀនឡើងវិញ';

  @override
  String get tasteResetSub => 'តន្ត្រីរបស់អ្នកនៅដដែល តែទម្រង់ចាប់ផ្តើមពីសូន្យ';

  @override
  String get trainCard => 'បង្ហាត់វាដោយការវាយតម្លៃ';

  @override
  String get trainCardSub =>
      'អូសមើលបទពិតៗ។ ស្តាំសម្រាប់បទបែបនេះច្រើនទៀត ឆ្វេងសម្រាប់កុំទៀត។ ពីរនាទីនៅទីនេះប្រសើរជាងស្តាប់មួយសប្តាហ៍។';

  @override
  String get trainStart => 'ចាប់ផ្តើមជុំបង្ហាត់';

  @override
  String get trainTitle => 'ជុំបង្ហាត់';

  @override
  String get trainQuestion => 'តើអ្នកចង់បានបទនេះនៅទំព័រដើមរបស់អ្នកទេ?';

  @override
  String get trainMoreLikeThis => 'បែបនេះច្រើនទៀត';

  @override
  String get trainNeverAgain => 'កុំទៀត';

  @override
  String get trainDone => 'ជុំបានបញ្ចប់';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'រក្សា $liked · ទប់ស្កាត់ $blocked។ ទំនុកចិត្ត $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'ត្រឡប់ទៅចំណូលចិត្តរបស់អ្នក';

  @override
  String get trainNothingTitle => 'មិនទាន់មានអ្វីត្រូវវាយតម្លៃទេ';

  @override
  String get trainNothingBody =>
      'បន្ថែមតន្ត្រី ឬឲ្យ AI ទាញយកបេក្ខជនសិន រួចត្រឡប់មកវិញ។';

  @override
  String get trainLeaveTitle => 'ចាកចេញពីជុំបង្ហាត់?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ប្រសិនបើអ្នកចាកចេញឥឡូវនេះ AI នឹងបោះបង់អ្វីៗទាំងអស់ពីជុំនេះ — បទទាំង $count ដែលអ្នកទើបតែវាយតម្លៃ។',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'បន្តបង្ហាត់';

  @override
  String get trainDiscard => 'បោះបង់ហើយចាកចេញ';

  @override
  String get setTitle => 'ការកំណត់';

  @override
  String get setAppearance => 'រូបរាង';

  @override
  String get setTheme => 'ស្បែក';

  @override
  String get setThemeSystem => 'តាមប្រព័ន្ធ';

  @override
  String get setThemeLight => 'ភ្លឺ';

  @override
  String get setThemeDark => 'ងងឹត';

  @override
  String get setPureBlack => 'ខ្មៅសុទ្ធ';

  @override
  String get setPureBlackSub => 'សន្សំថាមពលលើអេក្រង់ OLED';

  @override
  String get setAccent => 'ពណ៌សង្កត់ធ្ងន់';

  @override
  String get setAccentArtwork => 'ពីរូបក្រប';

  @override
  String get setAccentFixed => 'ពណ៌មួយដែលខ្ញុំជ្រើស';

  @override
  String get setLanguage => 'ភាសា';

  @override
  String get setLanguageSystem => 'តាមប្រព័ន្ធ';

  @override
  String get setAccessibility => 'ភាពងាយស្រួលប្រើ';

  @override
  String get setTextSize => 'ទំហំអក្សរ';

  @override
  String get setTextSizeSub => 'បន្ថែមលើការកំណត់ប្រព័ន្ធរបស់អ្នក';

  @override
  String get setReduceMotion => 'កាត់បន្ថយចលនា';

  @override
  String get setReduceMotionSub =>
      'បញ្ឈប់របារ ភាពបង្ហាញរូបភាព ការរមូរលោតផ្លោះ ការចុចបត់បែន និងការផ្លាស់ប្តូរទំព័រ';

  @override
  String get setHighContrast => 'កម្រិតភាពផ្ទុយខ្ពស់';

  @override
  String get setHighContrastSub => 'ការញែកកាន់តែច្បាស់ និងគ្រោងមើលឃើញ';

  @override
  String get setBoldText => 'អក្សរដិត';

  @override
  String get setPlayback => 'ការចាក់';

  @override
  String get setAutoRadio => 'បន្តចាក់តន្ត្រី';

  @override
  String get setAutoRadioSub =>
      'ពេលជួរចាក់ចប់ បន្តជាមួយវិទ្យុដែលបង្កើតពីបទចុងក្រោយ';

  @override
  String get setSmartShuffle => 'ចាក់ចៃដន្យឆ្លាត';

  @override
  String get setSmartShuffleSub =>
      'ចាក់ចៃដន្យតាមចំណូលចិត្ត ជំនួសឲ្យចៃដន្យសុទ្ធ';

  @override
  String get setResume => 'បន្តពីកន្លែងដែលខ្ញុំឈប់';

  @override
  String get setResumeSub => 'ស្ដារជួរចាក់ពេលបើកកម្មវិធី ក្នុងស្ថានភាពផ្អាក';

  @override
  String get setDataSaver => 'សន្សំទិន្នន័យពេលមិនប្រើ Wi-Fi';

  @override
  String get setDataSaverSub =>
      'កំណត់ការចាក់ និងការទាញយកត្រឹម 128 kbps លើទិន្នន័យទូរសព្ទ';

  @override
  String get setHaptics => 'ការឆ្លើយតបដោយការញ័រ';

  @override
  String get setShowReasons => 'បង្ហាញមូលហេតុដែលបានណែនាំ';

  @override
  String get setSkipSilence => 'រំលងភាពស្ងាត់';

  @override
  String get setQuality => 'គុណភាពសំឡេង';

  @override
  String get setQualityLow => 'ទាប · 64 kbps';

  @override
  String get setQualityNormal => 'ធម្មតា · 128 kbps';

  @override
  String get setQualityHigh => 'ខ្ពស់ · 192 kbps';

  @override
  String get setQualityBest => 'ល្អបំផុតដែលមាន';

  @override
  String get setStorage => 'ការទាញយក និងទំហំផ្ទុក';

  @override
  String get setWifiOnly => 'ទាញយកតែលើ Wi-Fi';

  @override
  String get setDailyLimit => 'ដែនកំណត់ប្រចាំថ្ងៃសម្រាប់ AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count បទក្នុងមួយថ្ងៃ';
  }

  @override
  String get setBudget => 'ទំហំផ្ទុកដែល AI អាចប្រើ';

  @override
  String setUsed(Object size) {
    return '$size ត្រូវបានប្រើដោយការទាញយក';
  }

  @override
  String get setYourMusic => 'តន្ត្រីរបស់អ្នក';

  @override
  String get setImport => 'បន្ថែមតន្ត្រីពីឧបករណ៍នេះ';

  @override
  String get setImportSub => 'ជ្រើសថត ឬឯកសារតែមួយ';

  @override
  String get setCleanup => 'សម្អាតឯកសារដែលបាត់';

  @override
  String get setCleanupSub => 'លុបបទដែលឯកសារបាត់';

  @override
  String setCleanupDone(int count) {
    return 'បានលុបឯកសារដែលបាត់ $count។';
  }

  @override
  String get setExport => 'ផ្ញើចំណូលចិត្តរបស់ខ្ញុំទៅឧបករណ៍ផ្សេង';

  @override
  String get setExportSub =>
      'រក្សាទុកឯកសារដែលមានការចូលចិត្ត ការចាក់ និងអ្វីៗដែល AI បានរៀន';

  @override
  String get setImportTaste => 'ផ្ទុកចំណូលចិត្តពីឧបករណ៍ផ្សេង';

  @override
  String get setImportTasteSub =>
      'ជ្រើសឯកសារចំណូលចិត្តដែលបានរក្សាទុក ហើយបញ្ចូលគ្នា — ធ្វើម្តងទៀតបានដោយសុវត្ថិភាព';

  @override
  String get setAbout => 'អំពី';

  @override
  String get setAboutBody =>
      'តន្ត្រីពី YouTube និងឯកសាររបស់អ្នកផ្ទាល់។ AI ដំណើរការទាំងស្រុងលើឧបករណ៍នេះ — គ្មានអ្វីចេញពីវាទេ។';

  @override
  String get setSource => 'កូដប្រភព';

  @override
  String get importTitle => 'បន្ថែមតន្ត្រី';

  @override
  String get importPickFolder => 'ជ្រើសថត';

  @override
  String get importPickFiles => 'ជ្រើសឯកសារ';

  @override
  String importScanning(Object file) {
    return 'កំពុងស្កេន $file';
  }

  @override
  String importAdded(int count) {
    return 'បានបន្ថែម $count';
  }

  @override
  String get importDenied =>
      'ការអនុញ្ញាតត្រូវបានបដិសេធ — មិនអាចអានតន្ត្រីរបស់អ្នកបានទេ។';

  @override
  String get importWatched => 'ថតដែលវាតាមដាន';

  @override
  String get importIosHint =>
      'បើកកម្មវិធី Files ចូលទៅ On My iPhone → TuneBox ហើយទម្លាក់តន្ត្រីនៅទីនោះ។';

  @override
  String get playerQueue => 'ជួរចាក់';

  @override
  String get playerUpNext => 'បន្ទាប់';

  @override
  String get playerLyrics => 'ទំនុកច្រៀង';

  @override
  String get playerNoLyrics => 'គ្មានទំនុកច្រៀងសម្រាប់បទនេះទេ។';

  @override
  String get playerRepeat => 'ធ្វើម្តងទៀត';

  @override
  String get playerShuffle => 'ចាក់ចៃដន្យ';

  @override
  String errorPlayback(Object title) {
    return 'មិនអាចចាក់ \"$title\" បានទេ';
  }

  @override
  String errorSkipping(Object title) {
    return 'កំពុងរំលង \"$title\" — ស្ទ្រីមមិនអាចបើកបាន។';
  }

  @override
  String get undo => 'មិនធ្វើវិញ';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ឥឡូវនេះ៖ $tags ដឹកនាំដោយ $artist។';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ឥឡូវនេះ៖ $tags។';
  }

  @override
  String get setColour => 'ពណ៌';

  @override
  String get setColourSub => 'កម្មវិធីទាំងមូលតាមពណ៌នេះ';

  @override
  String get setCoverArt => 'រូបក្រប';

  @override
  String get setMyColour => 'ពណ៌របស់ខ្ញុំ';

  @override
  String get setCoverArtSub => 'រាល់បទផ្លាស់ប្តូរពណ៌កម្មវិធីតាមរូបក្របរបស់វា។';

  @override
  String get setMyColourSub => 'ពណ៌តែមួយ គ្រប់ទីកន្លែង គ្រប់ពេល។';

  @override
  String get setPickColour => 'ជ្រើសពណ៌ណាក៏បាន';

  @override
  String get setWifiOnlyTitle => 'ទាញយកតែលើ Wi-Fi';

  @override
  String get setDownloadLikes => 'ទាញយកអ្វីៗដែលខ្ញុំចូលចិត្ត';

  @override
  String get setDownloadLikesSub => 'ប៊ូតុងបេះដូងក៏រក្សាទុកឯកសារដែរ';

  @override
  String get setAiInstall => 'ឲ្យ AI ដំឡើងតន្ត្រីដែលវាជ្រើស';

  @override
  String get setSkipSilenceSub =>
      'សម្រាប់តែ Android។ អាចកាត់ផ្នែកដើមស្ងាត់ ការស្រាលចុះ និងផ្នែកទន់ — បិទវាបើតន្ត្រីរំលង';

  @override
  String get setStorageUsed => 'ទំហំផ្ទុកដែលប្រើដោយការទាញយក';

  @override
  String get setLibrary => 'បណ្ណាល័យ';

  @override
  String get setUpdates => 'ការអាប់ដេត';

  @override
  String get setAutoUpdate => 'ពិនិត្យរកការអាប់ដេតដោយខ្លួនឯង';

  @override
  String get setAutoUpdateSub =>
      'រាល់ពីរបីម៉ោង ដោយស្ងៀមស្ងាត់ ហើយទាញយកលើ Wi-Fi។ ការដំឡើងនៅតែសួរអ្នក។';

  @override
  String setUpdateReady(Object version) {
    return 'ការអាប់ដេតទៅ $version រួចរាល់';
  }

  @override
  String get setUpdateReadySub => 'បានទាញយក — ចុចដើម្បីដំឡើង';

  @override
  String get setUpdateAvailableSub =>
      'យកវាពីទំព័រការចេញផ្សាយ — ចុចដើម្បីចម្លងតំណ';

  @override
  String get setLinkCopied => 'បានចម្លងតំណ';

  @override
  String get setCheckNow => 'ពិនិត្យឥឡូវនេះ';

  @override
  String get setUpToDate => 'TuneBox ទាន់សម័យហើយ';

  @override
  String get setChecking => 'កំពុងរកកំណែថ្មីជាង…';
}
