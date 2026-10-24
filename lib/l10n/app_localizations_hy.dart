// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class LHy extends L {
  LHy([String locale = 'hy']) : super(locale);

  @override
  String get navHome => 'Գլխավոր';

  @override
  String get navExplore => 'Բացահայտել';

  @override
  String get navLibrary => 'Գրադարան';

  @override
  String get navTaste => 'Քո ճաշակը';

  @override
  String get actionDone => 'Պատրաստ է';

  @override
  String get actionCancel => 'Չեղարկել';

  @override
  String get actionCreate => 'Ստեղծել';

  @override
  String get actionPlay => 'Նվագարկել';

  @override
  String get actionShuffle => 'Խառնել';

  @override
  String get actionPlayAll => 'Նվագարկել բոլորը';

  @override
  String get actionAdd => 'Ավելացնել';

  @override
  String get actionRemove => 'Հեռացնել';

  @override
  String get actionName => 'Անուն';

  @override
  String get greetingNight => 'Դեռ արթո՞ւն ես';

  @override
  String get greetingMorning => 'Բարի լույս';

  @override
  String get greetingAfternoon => 'Բարի օր';

  @override
  String get greetingEvening => 'Բարի երեկո';

  @override
  String get homeBuilding =>
      'Արհեստական բանականությունը կառուցում է քո դարակները…';

  @override
  String get homeOffline => 'Անցանց — ցուցադրվում է սարքում եղածը';

  @override
  String get homeNothingYet => 'Դեռ ցույց տալու բան չկա';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count դարակ, հենց նոր թարմացված',
      one: '1 դարակ, հենց նոր թարմացված',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Վերակառուցել դարակները';

  @override
  String get homeAddMusic => 'Ավելացնել երաժշտություն այս սարքից';

  @override
  String get homeQuickPicks => 'Արագ ընտրանի';

  @override
  String get homeQuickPicksSub => 'Ուղիղ վերադարձ այն ամենին, ինչ լսում էիր';

  @override
  String get homeEmptyTitle => 'Քո գրադարանը դատարկ է';

  @override
  String get homeEmptyBody =>
      'Որևէ բան որոնիր կամ ավելացրու արդեն այս սարքում եղած երաժշտությունը։ Արհեստական բանականությունը սկսում է սովորել քո առաջին նվագարկումից։';

  @override
  String get homeAddMyMusic => 'Ավելացնել իմ երաժշտությունը';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube-ին հնարավոր չեղավ միանալ՝ $error';
  }

  @override
  String get moodFocus => 'Կենտրոնացում';

  @override
  String get moodWorkout => 'Մարզում';

  @override
  String get moodChill => 'Հանգստություն';

  @override
  String get moodCommute => 'Ճանապարհ';

  @override
  String get moodParty => 'Երեկույթ';

  @override
  String moodBuilding(Object mood) {
    return 'Կառուցվում է $mood միքս…';
  }

  @override
  String moodFailed(Object error) {
    return 'Չստացվեց՝ $error';
  }

  @override
  String get shelfRepeat => 'Կրկնության մեջ';

  @override
  String get shelfRepeatSub => 'Քո վերջին երկու շաբաթը';

  @override
  String get shelfForgotten => 'Հին մոռացված հիթեր, որ քեզ դուր էին գալիս';

  @override
  String get shelfForgottenSub => 'Մի ժամանակ սիրված, երկար ժամանակ չլսված';

  @override
  String get shelfNew => 'Նոր';

  @override
  String get shelfNewSub =>
      'Թարմ կտորներ, որ, ըստ արհեստական բանականության, քեզ համար են';

  @override
  String shelfBecause(Object artist) {
    return 'Որովհետև լսեցիր $artist-ին';
  }

  @override
  String get shelfBecauseSub => 'Քո ճաշակի նույն անկյունից';

  @override
  String get shelfDeep => 'Հազիվ դիպչած';

  @override
  String get shelfDeepSub => 'Քո գրադարանում, գրեթե երբեք չնվագարկված';

  @override
  String get shelfMix => 'Քո միքսը';

  @override
  String get shelfMixSub =>
      'Վերակառուցվում է ամեն անգամ, երբ բացում ես հավելվածը';

  @override
  String get shelfAdded => 'Վերջերս ավելացված';

  @override
  String get shelfAddedSub => 'Ներբեռնումներ և ներմուծված ֆայլեր';

  @override
  String get shelfStarter => 'Սկսիր այստեղից';

  @override
  String get shelfStarterSub =>
      'Նվագարկիր մի քանիսը, և արհեստական բանականությունը անմիջապես կսկսի սովորել';

  @override
  String reasonPlays(int count) {
    return '$count նվագարկում';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Հավանած, վերջին անգամ նվագարկվել է $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count նվագարկում, վերջինը՝ $when';
  }

  @override
  String get reasonTopArtist => 'Քո ամենաշատ լսած արտիստներից մեկը';

  @override
  String reasonMore(Object artist) {
    return 'Ավելին՝ $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Անընդհատ վերադառնում ես $artist-ին';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Քո տեսակի $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Վերջերս շատ $tag';
  }

  @override
  String get reasonOutThisYear => 'Լույս է տեսել այս տարի';

  @override
  String get reasonReleasedRecently => 'Վերջերս թողարկված';

  @override
  String get reasonClose => 'Մոտ է այն ամենին, ինչ լսում էիր';

  @override
  String reasonNear(Object artist) {
    return '$artist-ի մոտ';
  }

  @override
  String get reasonNeverPlayed => 'Երբեք չնվագարկված';

  @override
  String get reasonPlayedOnce => 'Նվագարկվել է մեկ անգամ';

  @override
  String get reasonPopular => 'Հիմա հայտնի է';

  @override
  String whenYearsAgo(int count) {
    return '$count տարի առաջ';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ամիս առաջ';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count օր առաջ';
  }

  @override
  String get searchHint => 'Երգեր, արտիստներ, ալբոմներ';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count արդյունք',
      one: '1 արդյունք',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Վերջին որոնումները';

  @override
  String get searchEmptyTitle => 'Ոչինչ չգտնվեց';

  @override
  String get searchEmptyBody =>
      'Փորձիր այլ ուղղագրություն կամ միայն արտիստի անունը։';

  @override
  String get searchStartTitle => 'Գտիր ինչ-որ բան նվագարկելու համար';

  @override
  String get searchStartBody =>
      'Որոնիր YouTube Music-ում — վերադարձվում են միայն երգեր, երբեք՝ այլ բաների տեսանյութեր։';

  @override
  String get libPlaylists => 'Նվագացանկեր';

  @override
  String get libSongs => 'Երգեր';

  @override
  String get libArtists => 'Արտիստներ';

  @override
  String get libLiked => 'Հավանածներ';

  @override
  String get libDownloads => 'Ներբեռնումներ';

  @override
  String get libImported => 'Ներմուծված';

  @override
  String get libLikedSongs => 'Հավանած երգեր';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count երգ',
      one: '1 երգ',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count անցանց';
  }

  @override
  String get libMyFiles => 'Իմ սեփական ֆայլերը';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ֆայլ',
      one: '1 ֆայլ',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Նոր նվագացանկ';

  @override
  String get libMakeOne => 'Ստեղծել մեկը';

  @override
  String get libSortRecent => 'Վերջերս ավելացված';

  @override
  String get libSortTitle => 'Վերնագիր';

  @override
  String get libSortArtist => 'Արտիստ';

  @override
  String get libSortPlays => 'Ամենաշատ նվագարկված';

  @override
  String get sheetNotForMe => 'Ինձ համար չէ';

  @override
  String get sheetNotForMeSub => 'Այլևս երբեք չառաջարկել սա';

  @override
  String get sheetBlocked => 'Արգելափակված է — հպիր՝ նորից թույլ տալու համար';

  @override
  String get sheetBlockedSub => 'Կարող է նորից հայտնվել առաջարկներում';

  @override
  String get sheetPlayNext => 'Նվագարկել հաջորդը';

  @override
  String get sheetAddToPlaylist => 'Ավելացնել նվագացանկում';

  @override
  String get sheetDownloaded => 'Ներբեռնված է';

  @override
  String get sheetRemoveFile => 'Հպիր՝ ֆայլը հեռացնելու համար';

  @override
  String get sheetDownload => 'Ներբեռնել';

  @override
  String get sheetKeepOffline => 'Պահել անցանց օգտագործման համար';

  @override
  String get sheetRadio => 'Սկսել ռադիո';

  @override
  String get sheetRadioSub => 'Այս երգի շուրջ կառուցված հերթ';

  @override
  String get sheetQueue => 'Հերթ';

  @override
  String get sheetSleepTimer => 'Քնի ժմչփ';

  @override
  String get sheetSleepOff => 'Անջատված';

  @override
  String sheetSleepMinutes(int count) {
    return '$count րոպե';
  }

  @override
  String get sheetSleepEndOfTrack => 'Այս երգի ավարտը';

  @override
  String sheetSleepSet(int count) {
    return 'Երաժշտությունը կանգ կառնի $count րոպեից';
  }

  @override
  String get tasteTitle => 'Քո ճաշակը';

  @override
  String get tasteRetrain => 'Վերաուսուցանել';

  @override
  String get tasteRetraining => 'Վերաուսուցանում է քո պատմության հիման վրա…';

  @override
  String get tasteRetrained =>
      'Արհեստական բանականությունը վերակառուցեց իր մոդելը։';

  @override
  String tasteConfidence(int percent) {
    return 'Վստահություն՝ $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays նվագարկում · $skips բաց թողնում · $likes հավանում';
  }

  @override
  String get tasteEmptySummary => 'Նվագարկիր մի քանի երգ, և սա կլցվի։';

  @override
  String get tasteKeepLearning => 'Շարունակել սովորել, մինչ լսում եմ';

  @override
  String get tasteKeepLearningSub =>
      'Անջատիր՝ ընթացիկ պրոֆիլը սառեցնելու համար';

  @override
  String get tasteDownloadsTitle =>
      'Ներբեռնումներ, որ կառավարում է արհեստական բանականությունը';

  @override
  String get tasteDownloadsSub =>
      'Երաժշտությունը հայտնվում է սարքում առանց քո խնդրանքի';

  @override
  String get tasteDownloadLikes => 'Ներբեռնել այն ամենը, ինչ հավանում եմ';

  @override
  String get tasteDownloadLikesSub =>
      'Սեղմիր սրտիկը, և ֆայլը կպահվի անցանց օգտագործման համար';

  @override
  String get tasteAiInstall =>
      'Թույլ տալ արհեստական բանականությանը տեղադրել իր ընտրած երաժշտությունը';

  @override
  String get tasteAiInstallSub => 'Այն կբեռնի այն կտորները, որոնցում վստահ է';

  @override
  String get tasteWhatItThinks => 'Ինչ է կարծում, թե քեզ դուր է գալիս';

  @override
  String get tasteWhatItThinksSub =>
      'Սովորած նվագարկումներից, բաց թողնումներից, հավանումներից և կրկնություններից';

  @override
  String get tasteArtists => 'Արտիստներ, որոնց վրա հիմնվում է';

  @override
  String get tasteWhenYouListen => 'Երբ լսում ես';

  @override
  String get tasteWhenYouListenSub =>
      'Նվագարկումներ ժամում — ընթացիկ ժամը ավելի մեծ կշիռ ունի';

  @override
  String get tasteDecades => 'Տասնամյակներ';

  @override
  String get tasteTune => 'Կարգավորել առաջարկները';

  @override
  String get tasteTuneSub => 'Ուժի մեջ կմտնի Գլխավորի հաջորդ թարմացման ժամանակ';

  @override
  String get tasteDiscovery => 'Բացահայտում';

  @override
  String get tasteDiscoverySub => 'Ծանոթ ↔ այն, ինչ երբեք չես լսել';

  @override
  String get tasteEnergy => 'Էներգիա';

  @override
  String get tasteEnergySub => 'Հանգիստ ↔ բարձրաձայն';

  @override
  String get tasteRecency => 'Թարմություն';

  @override
  String get tasteRecencySub => 'Ժամանակից դուրս ↔ բոլորովին նոր';

  @override
  String get tasteNostalgia => 'Նոստալգիա';

  @override
  String get tasteNostalgiaSub =>
      'Որքան հետ պետք է լինի հին սիրածը, որպեսզի համարվի մոռացված';

  @override
  String get tasteSignals => 'Ազդանշաններ, որ կարող է օգտագործել';

  @override
  String get tasteSignalsSub => 'Ամեն ինչ մնում է այս սարքում';

  @override
  String get tasteUseHistory => 'Ինչ եմ նվագարկել';

  @override
  String get tasteUseSkips => 'Ինչ եմ բաց թողնում';

  @override
  String get tasteUseTime => 'Օրվա ժամը';

  @override
  String get tasteUseYouTube => 'Առաջարկներ YouTube-ից';

  @override
  String get tasteAlwaysMore => 'Միշտ ավելի շատ';

  @override
  String get tasteNeverAgain => 'Այլևս երբեք';

  @override
  String get tasteAddArtist => 'Ավելացնել արտիստ';

  @override
  String get tasteMoreOfPrompt => 'Միշտ ավելի շատ…';

  @override
  String get tasteNeverAgainPrompt => 'Այլևս երբեք…';

  @override
  String get tasteReset => 'Զրոյացնել սովորածը';

  @override
  String get tasteResetSub => 'Քո երաժշտությունը կմնա, պրոֆիլը կսկսվի զրոյից';

  @override
  String get trainCard => 'Ուսուցանիր գնահատելով';

  @override
  String get trainCardSub =>
      'Սահեցրու իրական երգերի միջով։ Աջ՝ ավելի շատ այսպիսիք, ձախ՝ այլևս երբեք։ Երկու րոպեն այստեղ արժե մեկ շաբաթ լսելուց ավելի։';

  @override
  String get trainStart => 'Սկսել ուսուցման փուլ';

  @override
  String get trainTitle => 'Ուսուցման փուլ';

  @override
  String get trainQuestion => 'Կուզե՞ս սա քո Գլխավորում';

  @override
  String get trainMoreLikeThis => 'Ավելի շատ այսպիսիք';

  @override
  String get trainNeverAgain => 'Այլևս երբեք';

  @override
  String get trainDone => 'Փուլն ավարտվեց';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked պահված · $blocked արգելափակված։ Վստահություն $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Վերադառնալ քո ճաշակին';

  @override
  String get trainNothingTitle => 'Դեռ գնահատելու բան չկա';

  @override
  String get trainNothingBody =>
      'Նախ ավելացրու երաժշտություն կամ թող արհեստական բանականությունը թեկնածուներ բերի, ապա վերադարձիր։';

  @override
  String get trainLeaveTitle => 'Լքե՞լ ուսուցման փուլը';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Եթե հիմա դուրս գաս, արհեստական բանականությունը կմերժի այս փուլի ամեն ինչ՝ քո հենց նոր գնահատած բոլոր $count երգերը։',
      one:
          'Եթե հիմա դուրս գաս, արհեստական բանականությունը կմերժի այս փուլի ամեն ինչ՝ քո հենց նոր գնահատած 1 երգը։',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Շարունակել ուսուցումը';

  @override
  String get trainDiscard => 'Մերժել և դուրս գալ';

  @override
  String get setTitle => 'Կարգավորումներ';

  @override
  String get setAppearance => 'Արտաքին տեսք';

  @override
  String get setTheme => 'Թեմա';

  @override
  String get setThemeSystem => 'Հետևել համակարգին';

  @override
  String get setThemeLight => 'Լուսավոր';

  @override
  String get setThemeDark => 'Մութ';

  @override
  String get setPureBlack => 'Մաքուր սև';

  @override
  String get setPureBlackSub => 'Խնայում է էներգիա OLED էկրանի վրա';

  @override
  String get setAccent => 'Շեշտադրման գույն';

  @override
  String get setAccentArtwork => 'Շապիկից';

  @override
  String get setAccentFixed => 'Իմ ընտրած մեկ գույնը';

  @override
  String get setLanguage => 'Լեզու';

  @override
  String get setLanguageSystem => 'Հետևել համակարգին';

  @override
  String get setAccessibility => 'Հասանելիություն';

  @override
  String get setTextSize => 'Տեքստի չափ';

  @override
  String get setTextSizeSub => 'Քո համակարգի կարգավորումից բացի';

  @override
  String get setReduceMotion => 'Նվազեցնել շարժումը';

  @override
  String get setReduceMotionSub =>
      'Կանգնեցնում է գծերը, վիզուալիզատորը, ցատկոտող ոլորումը, զսպանակավոր հպումները և էջերի անցումները';

  @override
  String get setHighContrast => 'Բարձր կոնտրաստ';

  @override
  String get setHighContrastSub =>
      'Ավելի ուժեղ տարանջատում և տեսանելի եզրագծեր';

  @override
  String get setBoldText => 'Թավ տեքստ';

  @override
  String get setPlayback => 'Նվագարկում';

  @override
  String get setAutoRadio => 'Շարունակել երաժշտությունը';

  @override
  String get setAutoRadioSub =>
      'Երբ հերթը ավարտվի, կշարունակի վերջին երգից կառուցված ռադիոյով';

  @override
  String get setSmartShuffle => 'Խելացի խառնում';

  @override
  String get setSmartShuffleSub => 'Խառնում է ըստ ճաշակի՝ պատահականի փոխարեն';

  @override
  String get setResume => 'Շարունակել այնտեղից, որտեղ կանգնել եմ';

  @override
  String get setResumeSub =>
      'Հավելվածը բացելիս վերականգնում է հերթը՝ դադարի վիճակում';

  @override
  String get setDataSaver => 'Տվյալների խնայում առանց Wi-Fi-ի';

  @override
  String get setDataSaverSub =>
      'Բջջային ինտերնետի դեպքում սահմանափակում է հոսքերն ու ներբեռնումները 128 կբ/վ-ով';

  @override
  String get setHaptics => 'Haptic արձագանք';

  @override
  String get setShowReasons => 'Ցույց տալ՝ ինչու է ինչ-որ բան առաջարկվել';

  @override
  String get setSkipSilence => 'Բաց թողնել լռությունը';

  @override
  String get setQuality => 'Ձայնի որակ';

  @override
  String get setQualityLow => 'Ցածր · 64 կբ/վ';

  @override
  String get setQualityNormal => 'Նորմալ · 128 կբ/վ';

  @override
  String get setQualityHigh => 'Բարձր · 192 կբ/վ';

  @override
  String get setQualityBest => 'Լավագույնը հասանելիներից';

  @override
  String get setStorage => 'Ներբեռնումներ և հիշողություն';

  @override
  String get setWifiOnly => 'Ներբեռնել միայն Wi-Fi-ով';

  @override
  String get setDailyLimit => 'Օրական սահման արհեստական բանականության համար';

  @override
  String setDailyLimitSub(int count) {
    return 'օրական $count երգ';
  }

  @override
  String get setBudget =>
      'Հիշողություն, որ կարող է օգտագործել արհեստական բանականությունը';

  @override
  String setUsed(Object size) {
    return 'Ներբեռնումները զբաղեցնում են $size';
  }

  @override
  String get setYourMusic => 'Քո երաժշտությունը';

  @override
  String get setImport => 'Ավելացնել երաժշտություն այս սարքից';

  @override
  String get setImportSub => 'Ընտրիր թղթապանակներ կամ առանձին ֆայլեր';

  @override
  String get setCleanup => 'Մաքրել բացակայող ֆայլերը';

  @override
  String get setCleanupSub => 'Հեռացնել այն երգերը, որոնց ֆայլը չկա';

  @override
  String setCleanupDone(int count) {
    return 'Հեռացվեց $count բացակայող ֆայլ։';
  }

  @override
  String get setExport => 'Ուղարկել իմ ճաշակը մեկ այլ սարքի';

  @override
  String get setExportSub =>
      'Պահում է ֆայլ քո հավանումներով, նվագարկումներով և այն ամենով, ինչ սովորել է արհեստական բանականությունը';

  @override
  String get setImportTaste => 'Բեռնել ճաշակը մեկ այլ սարքից';

  @override
  String get setImportTasteSub =>
      'Ընտրիր պահված ճաշակի ֆայլ և միավորիր՝ անվտանգ է կրկնելը';

  @override
  String get setAbout => 'Տեղեկություն';

  @override
  String get setAboutBody =>
      'Երաժշտություն YouTube-ից և քո սեփական ֆայլերից։ Արհեստական բանականությունը աշխատում է ամբողջությամբ այս սարքում՝ ոչինչ դուրս չի գալիս դրանից։';

  @override
  String get setSource => 'Սկզբնական կոդ';

  @override
  String get importTitle => 'Ավելացնել երաժշտություն';

  @override
  String get importPickFolder => 'Ընտրել թղթապանակ';

  @override
  String get importPickFiles => 'Ընտրել ֆայլեր';

  @override
  String importScanning(Object file) {
    return 'Սկանավորվում է $file';
  }

  @override
  String importAdded(int count) {
    return '$count ավելացվեց';
  }

  @override
  String get importDenied =>
      'Թույլտվությունը մերժված է՝ քո երաժշտությունը հնարավոր չէ կարդալ։';

  @override
  String get importWatched => 'Թղթապանակներ, որոնց հետևում է';

  @override
  String get importIosHint =>
      'Բացիր Files հավելվածը, գնա On My iPhone → TuneBox և այնտեղ գցիր երաժշտությունը։';

  @override
  String get playerQueue => 'Հերթ';

  @override
  String get playerUpNext => 'Հաջորդը';

  @override
  String get playerLyrics => 'Երգի տեքստ';

  @override
  String get playerNoLyrics => 'Սրա համար տեքստ չկա։';

  @override
  String get playerRepeat => 'Կրկնել';

  @override
  String get playerShuffle => 'Խառնել';

  @override
  String errorPlayback(Object title) {
    return 'Չհաջողվեց նվագարկել «$title»';
  }

  @override
  String errorSkipping(Object title) {
    return '«$title»-ը բաց է թողնվում՝ հոսքը չբացվեց։';
  }

  @override
  String get undo => 'Հետարկել';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Հիմա՝ $tags, առաջատար՝ $artist։';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Հիմա՝ $tags։';
  }

  @override
  String get setColour => 'Գույն';

  @override
  String get setColourSub => 'Ամբողջ հավելվածը հետևում է սրան';

  @override
  String get setCoverArt => 'Շապիկ';

  @override
  String get setMyColour => 'Իմ գույնը';

  @override
  String get setCoverArtSub =>
      'Յուրաքանչյուր երգ հավելվածը վերագունավորում է իր շապիկով։';

  @override
  String get setMyColourSub => 'Մեկ գույն՝ ամենուր և միշտ։';

  @override
  String get setPickColour => 'Ընտրել ցանկացած գույն';

  @override
  String get setWifiOnlyTitle => 'Ներբեռնել միայն Wi-Fi-ով';

  @override
  String get setDownloadLikes => 'Ներբեռնել այն ամենը, ինչ հավանում եմ';

  @override
  String get setDownloadLikesSub => 'Սրտիկի կոճակը նաև պահում է ֆայլը';

  @override
  String get setAiInstall =>
      'Թույլ տալ արհեստական բանականությանը տեղադրել իր ընտրած երաժշտությունը';

  @override
  String get setSkipSilenceSub =>
      'Միայն Android-ում։ Կարող է կտրել հանգիստ սկզբները, մարումները և մեղմ հատվածները՝ անջատիր, եթե երաժշտությունը կտրտվում է';

  @override
  String get setStorageUsed => 'Ներբեռնումների զբաղեցրած հիշողություն';

  @override
  String get setLibrary => 'Գրադարան';

  @override
  String get setUpdates => 'Թարմացումներ';

  @override
  String get setAutoUpdate => 'Ինքնուրույն ստուգել թարմացումները';

  @override
  String get setAutoUpdateSub =>
      'Մի քանի ժամը մեկ, լուռ, և ներբեռնում է Wi-Fi-ով։ Տեղադրելուց առաջ դեռ հարցնում է։';

  @override
  String setUpdateReady(Object version) {
    return '$version թարմացումը պատրաստ է';
  }

  @override
  String get setUpdateReadySub => 'Ներբեռնված է՝ հպիր տեղադրելու համար';

  @override
  String get setUpdateAvailableSub =>
      'Վերցրու թողարկումների էջից՝ հպիր հղումը պատճենելու համար';

  @override
  String get setLinkCopied => 'Հղումը պատճենվեց';

  @override
  String get setCheckNow => 'Ստուգել հիմա';

  @override
  String get setUpToDate => 'TuneBox-ը թարմ է';

  @override
  String get setChecking => 'Նոր տարբերակ է փնտրվում…';

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
