// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class LCy extends L {
  LCy([String locale = 'cy']) : super(locale);

  @override
  String get navHome => 'Hafan';

  @override
  String get navExplore => 'Darganfod';

  @override
  String get navLibrary => 'Llyfrgell';

  @override
  String get navTaste => 'Eich chwaeth';

  @override
  String get actionDone => 'Wedi gorffen';

  @override
  String get actionCancel => 'Diddymu';

  @override
  String get actionCreate => 'Creu';

  @override
  String get actionPlay => 'Chwarae';

  @override
  String get actionShuffle => 'Cymysgu';

  @override
  String get actionPlayAll => 'Chwarae popeth';

  @override
  String get actionAdd => 'Ychwanegu';

  @override
  String get actionRemove => 'Dileu';

  @override
  String get actionName => 'Enw';

  @override
  String get greetingNight => 'Dal ar ddihun?';

  @override
  String get greetingMorning => 'Bore da';

  @override
  String get greetingAfternoon => 'Prynhawn da';

  @override
  String get greetingEvening => 'Noswaith dda';

  @override
  String get homeBuilding => 'Mae\'r AI yn adeiladu eich silffoedd…';

  @override
  String get homeOffline => 'All-lein – yn dangos beth sydd ar y ddyfais';

  @override
  String get homeNothingYet => 'Dim byd i\'w ddangos eto';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count silff, newydd eu diweddaru',
      many: '$count silff, newydd eu diweddaru',
      few: '$count silff, newydd eu diweddaru',
      two: '2 silff, newydd eu diweddaru',
      one: '1 silff, newydd ei diweddaru',
      zero: '0 silff, newydd ei diweddaru',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Ailadeiladu\'r silffoedd';

  @override
  String get homeAddMusic => 'Ychwanegu cerddoriaeth o\'r ddyfais hon';

  @override
  String get homeQuickPicks => 'Dewisiadau cyflym';

  @override
  String get homeQuickPicksSub =>
      'Yn syth yn ôl at yr hyn roeddech chi\'n ei wrando arno';

  @override
  String get homeEmptyTitle => 'Mae eich llyfrgell yn wag';

  @override
  String get homeEmptyBody =>
      'Chwiliwch am rywbeth, neu ychwanegwch y gerddoriaeth sydd eisoes ar y ddyfais hon. Mae\'r AI yn dechrau dysgu o\'ch chwarae cyntaf un.';

  @override
  String get homeAddMyMusic => 'Ychwanegu fy ngherddoriaeth';

  @override
  String homeCouldNotReach(Object error) {
    return 'Methu cyrraedd YouTube: $error';
  }

  @override
  String get moodFocus => 'Ffocws';

  @override
  String get moodWorkout => 'Ymarfer';

  @override
  String get moodChill => 'Ymlacio';

  @override
  String get moodCommute => 'Cymudo';

  @override
  String get moodParty => 'Parti';

  @override
  String moodBuilding(Object mood) {
    return 'Yn adeiladu cymysgedd $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Dim lwc: $error';
  }

  @override
  String get shelfRepeat => 'Ar ailadrodd';

  @override
  String get shelfRepeatSub => 'Eich pythefnos diwethaf';

  @override
  String get shelfForgotten => 'Hen ganeuon anghofiedig roeddech yn eu hoffi';

  @override
  String get shelfForgottenSub => 'Hoff gân unwaith, heb ei chyffwrdd ers tro';

  @override
  String get shelfNew => 'Newydd';

  @override
  String get shelfNewSub =>
      'Traciau ffres y mae\'r AI yn meddwl sy\'n addas i chi';

  @override
  String shelfBecause(Object artist) {
    return 'Oherwydd i chi chwarae $artist';
  }

  @override
  String get shelfBecauseSub => 'Yr un gornel o\'ch chwaeth';

  @override
  String get shelfDeep => 'Prin eu cyffwrdd';

  @override
  String get shelfDeepSub => 'Yn eich llyfrgell, prin iawn wedi\'u chwarae';

  @override
  String get shelfMix => 'Eich cymysgedd';

  @override
  String get shelfMixSub =>
      'Wedi\'i ailadeiladu bob tro y byddwch yn agor yr ap';

  @override
  String get shelfAdded => 'Ychwanegwyd yn ddiweddar';

  @override
  String get shelfAddedSub =>
      'Lawrlwythiadau a ffeiliau y gwnaethoch eu mewnforio';

  @override
  String get shelfStarter => 'Dechreuwch yma';

  @override
  String get shelfStarterSub =>
      'Chwaraewch ychydig ac mae\'r AI yn dechrau dysgu ar unwaith';

  @override
  String reasonPlays(int count) {
    return '$count chwarae';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Hoffwyd, chwaraewyd ddiwethaf $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count chwarae, diwethaf $when';
  }

  @override
  String get reasonTopArtist =>
      'Un o\'r artistiaid rydych chi\'n gwrando fwyaf arnynt';

  @override
  String reasonMore(Object artist) {
    return 'Mwy o $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Rydych chi\'n dal i ddychwelyd at $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Eich math chi o $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Llawer o $tag yn ddiweddar';
  }

  @override
  String get reasonOutThisYear => 'Allan eleni';

  @override
  String get reasonReleasedRecently => 'Rhyddhawyd yn ddiweddar';

  @override
  String get reasonClose =>
      'Yn agos at yr hyn rydych chi wedi bod yn ei chwarae';

  @override
  String reasonNear(Object artist) {
    return 'Yn agos at $artist';
  }

  @override
  String get reasonNeverPlayed => 'Heb ei chwarae erioed';

  @override
  String get reasonPlayedOnce => 'Chwaraewyd unwaith';

  @override
  String get reasonPopular => 'Poblogaidd ar hyn o bryd';

  @override
  String whenYearsAgo(int count) {
    return '$count mlynedd yn ôl';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count mis yn ôl';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count diwrnod yn ôl';
  }

  @override
  String get searchHint => 'Caneuon, artistiaid, albymau';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count canlyniad',
      many: '$count canlyniad',
      few: '$count chanlyniad',
      two: '2 ganlyniad',
      one: '1 canlyniad',
      zero: '0 canlyniad',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Chwiliadau diweddar';

  @override
  String get searchEmptyTitle => 'Dim wedi\'i ganfod';

  @override
  String get searchEmptyBody =>
      'Rhowch gynnig ar sillafiad arall, neu enw\'r artist yn unig.';

  @override
  String get searchStartTitle => 'Dewch o hyd i rywbeth i\'w chwarae';

  @override
  String get searchStartBody =>
      'Chwiliwch YouTube Music – dim ond caneuon sy\'n dod yn ôl, byth fideos o bethau eraill.';

  @override
  String get libPlaylists => 'Rhestri chwarae';

  @override
  String get libSongs => 'Caneuon';

  @override
  String get libArtists => 'Artistiaid';

  @override
  String get libLiked => 'Hoff';

  @override
  String get libDownloads => 'Lawrlwythiadau';

  @override
  String get libImported => 'Mewnforiwyd';

  @override
  String get libLikedSongs => 'Hoff ganeuon';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cân',
      many: '$count cân',
      few: '$count cân',
      two: '2 gân',
      one: '1 gân',
      zero: '0 cân',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count all-lein';
  }

  @override
  String get libMyFiles => 'Fy ffeiliau fy hun';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ffeil',
      many: '$count ffeil',
      few: '$count ffeil',
      two: '2 ffeil',
      one: '1 ffeil',
      zero: '0 ffeil',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Rhestr chwarae newydd';

  @override
  String get libMakeOne => 'Creu un';

  @override
  String get libSortRecent => 'Ychwanegwyd yn ddiweddar';

  @override
  String get libSortTitle => 'Teitl';

  @override
  String get libSortArtist => 'Artist';

  @override
  String get libSortPlays => 'Mwyaf chwaraeedig';

  @override
  String get sheetNotForMe => 'Dim i mi';

  @override
  String get sheetNotForMeSub => 'Peidiwch â\'i argymell byth eto';

  @override
  String get sheetBlocked => 'Wedi\'i flocio – tapiwch i ganiatáu eto';

  @override
  String get sheetBlockedSub => 'Gall ymddangos mewn argymhellion eto';

  @override
  String get sheetPlayNext => 'Chwarae nesaf';

  @override
  String get sheetAddToPlaylist => 'Ychwanegu at restr chwarae';

  @override
  String get sheetDownloaded => 'Wedi\'i lawrlwytho';

  @override
  String get sheetRemoveFile => 'Tapiwch i ddileu\'r ffeil';

  @override
  String get sheetDownload => 'Lawrlwytho';

  @override
  String get sheetKeepOffline => 'Cadw ar gyfer all-lein';

  @override
  String get sheetRadio => 'Dechrau radio';

  @override
  String get sheetRadioSub => 'Ciw wedi\'i adeiladu o amgylch y gân hon';

  @override
  String get sheetQueue => 'Ciw';

  @override
  String get sheetSleepTimer => 'Amserydd cysgu';

  @override
  String get sheetSleepOff => 'I ffwrdd';

  @override
  String sheetSleepMinutes(int count) {
    return '$count munud';
  }

  @override
  String get sheetSleepEndOfTrack => 'Diwedd y gân hon';

  @override
  String sheetSleepSet(int count) {
    return 'Mae\'r gerddoriaeth yn stopio ymhen $count munud';
  }

  @override
  String get tasteTitle => 'Eich chwaeth';

  @override
  String get tasteRetrain => 'Ailhyfforddi';

  @override
  String get tasteRetraining => 'Yn ailhyfforddi ar eich hanes…';

  @override
  String get tasteRetrained => 'Mae\'r AI wedi ailadeiladu ei fodel.';

  @override
  String tasteConfidence(int percent) {
    return 'Hyder $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays chwarae · $skips hepgor · $likes hoffi';
  }

  @override
  String get tasteEmptySummary =>
      'Chwaraewch ychydig o ganeuon ac fe fydd hwn yn llenwi.';

  @override
  String get tasteKeepLearning => 'Parhau i ddysgu wrth i mi wrando';

  @override
  String get tasteKeepLearningSub => 'Diffoddwch i rewi\'r proffil presennol';

  @override
  String get tasteDownloadsTitle => 'Lawrlwythiadau mae\'r AI yn eu trin';

  @override
  String get tasteDownloadsSub =>
      'Mae cerddoriaeth yn cyrraedd y ddyfais heb i chi ofyn';

  @override
  String get tasteDownloadLikes => 'Lawrlwytho popeth rwy\'n ei hoffi';

  @override
  String get tasteDownloadLikesSub =>
      'Tapiwch y galon a chaiff y ffeil ei chadw ar gyfer all-lein';

  @override
  String get tasteAiInstall =>
      'Gadael i\'r AI osod cerddoriaeth y mae\'n ei dewis';

  @override
  String get tasteAiInstallSub =>
      'Bydd yn nôl traciau y mae\'n hyderus amdanynt';

  @override
  String get tasteWhatItThinks => 'Beth mae\'n meddwl rydych chi\'n ei hoffi';

  @override
  String get tasteWhatItThinksSub =>
      'Wedi\'i ddysgu o chwaraeon, hepgoriadau, hoffiadau ac ailadroddiadau';

  @override
  String get tasteArtists => 'Artistiaid mae\'n pwyso arnynt';

  @override
  String get tasteWhenYouListen => 'Pryd rydych chi\'n gwrando';

  @override
  String get tasteWhenYouListenSub =>
      'Chwaraeon yr awr – mae\'r awr bresennol yn cael mwy o bwys';

  @override
  String get tasteDecades => 'Degawdau';

  @override
  String get tasteTune => 'Tiwnio\'r argymhellion';

  @override
  String get tasteTuneSub => 'Daw i rym wrth adnewyddu\'r Hafan nesaf';

  @override
  String get tasteDiscovery => 'Darganfod';

  @override
  String get tasteDiscoverySub => 'Cyfarwydd ↔ pethau na chlywsoch erioed';

  @override
  String get tasteEnergy => 'Egni';

  @override
  String get tasteEnergySub => 'Tawel ↔ uchel';

  @override
  String get tasteRecency => 'Newydd-deb';

  @override
  String get tasteRecencySub => 'Oesol ↔ newydd sbon';

  @override
  String get tasteNostalgia => 'Hiraeth';

  @override
  String get tasteNostalgiaSub =>
      'Pa mor bell yn ôl mae hen ffefryn yn cyfrif fel un anghofiedig';

  @override
  String get tasteSignals => 'Arwyddion y caiff eu defnyddio';

  @override
  String get tasteSignalsSub => 'Mae popeth yn aros ar y ddyfais hon';

  @override
  String get tasteUseHistory => 'Yr hyn rwyf wedi\'i chwarae';

  @override
  String get tasteUseSkips => 'Yr hyn rwy\'n ei hepgor';

  @override
  String get tasteUseTime => 'Amser o\'r dydd';

  @override
  String get tasteUseYouTube => 'Awgrymiadau gan YouTube';

  @override
  String get tasteAlwaysMore => 'Mwy o hyn bob amser';

  @override
  String get tasteNeverAgain => 'Byth eto';

  @override
  String get tasteAddArtist => 'Ychwanegu artist';

  @override
  String get tasteMoreOfPrompt => 'Mwy o hyn bob amser…';

  @override
  String get tasteNeverAgainPrompt => 'Byth eto…';

  @override
  String get tasteReset => 'Ailosod yr hyn a ddysgodd';

  @override
  String get tasteResetSub =>
      'Mae eich cerddoriaeth yn aros; mae\'r proffil yn dechrau o\'r newydd';

  @override
  String get trainCard => 'Ei hyfforddi drwy raddio';

  @override
  String get trainCardSub =>
      'Swipiwch drwy ganeuon go iawn. Dde am fwy fel hyn, chwith am byth eto. Mae dwy funud yma\'n well nag wythnos o wrando.';

  @override
  String get trainStart => 'Dechrau rownd hyfforddi';

  @override
  String get trainTitle => 'Rownd hyfforddi';

  @override
  String get trainQuestion => 'Hoffech chi hon ar eich Hafan?';

  @override
  String get trainMoreLikeThis => 'Mwy fel hyn';

  @override
  String get trainNeverAgain => 'Byth eto';

  @override
  String get trainDone => 'Rownd wedi\'i chwblhau';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked wedi\'u cadw · $blocked wedi\'u blocio. Hyder $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Yn ôl at eich chwaeth';

  @override
  String get trainNothingTitle => 'Dim byd i\'w raddio eto';

  @override
  String get trainNothingBody =>
      'Ychwanegwch gerddoriaeth neu gadewch i\'r AI nôl ymgeiswyr yn gyntaf, yna dewch yn ôl.';

  @override
  String get trainLeaveTitle => 'Gadael y rownd hyfforddi?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Os gadewch nawr, mae\'r AI yn taflu popeth o\'r rownd hon – y $count cân y gwnaethoch eu graddio.',
      many:
          'Os gadewch nawr, mae\'r AI yn taflu popeth o\'r rownd hon – y $count cân y gwnaethoch eu graddio.',
      few:
          'Os gadewch nawr, mae\'r AI yn taflu popeth o\'r rownd hon – y $count cân y gwnaethoch eu graddio.',
      two:
          'Os gadewch nawr, mae\'r AI yn taflu popeth o\'r rownd hon – y 2 gân y gwnaethoch eu graddio.',
      one:
          'Os gadewch nawr, mae\'r AI yn taflu popeth o\'r rownd hon – yr 1 gân y gwnaethoch ei graddio.',
      zero: 'Os gadewch nawr, mae\'r AI yn taflu popeth o\'r rownd hon.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Parhau i hyfforddi';

  @override
  String get trainDiscard => 'Taflu a gadael';

  @override
  String get setTitle => 'Gosodiadau';

  @override
  String get setAppearance => 'Golwg';

  @override
  String get setTheme => 'Thema';

  @override
  String get setThemeSystem => 'Dilyn y system';

  @override
  String get setThemeLight => 'Golau';

  @override
  String get setThemeDark => 'Tywyll';

  @override
  String get setPureBlack => 'Du pur';

  @override
  String get setPureBlackSub => 'Yn arbed pŵer ar sgrin OLED';

  @override
  String get setAccent => 'Lliw acen';

  @override
  String get setAccentArtwork => 'O gelf y clawr';

  @override
  String get setAccentFixed => 'Un lliw a ddewisais';

  @override
  String get setLanguage => 'Iaith';

  @override
  String get setLanguageSystem => 'Dilyn y system';

  @override
  String get setAccessibility => 'Hygyrchedd';

  @override
  String get setTextSize => 'Maint testun';

  @override
  String get setTextSizeSub => 'Ar ben gosodiad eich system';

  @override
  String get setReduceMotion => 'Lleihau symudiad';

  @override
  String get setReduceMotionSub =>
      'Yn atal y bariau, y delweddydd, sgrolio bownsio, tapiau sbring a thrawsnewidiadau tudalen';

  @override
  String get setHighContrast => 'Cyferbyniad uchel';

  @override
  String get setHighContrastSub => 'Gwahanu cryfach a chyfuchliniau gweladwy';

  @override
  String get setBoldText => 'Testun trwm';

  @override
  String get setPlayback => 'Chwarae';

  @override
  String get setAutoRadio => 'Cadw\'r gerddoriaeth i fynd';

  @override
  String get setAutoRadioSub =>
      'Pan fydd y ciw\'n gorffen, parhau gyda radio wedi\'i adeiladu o\'r gân ddiwethaf';

  @override
  String get setSmartShuffle => 'Cymysgu clyfar';

  @override
  String get setSmartShuffleSub =>
      'Yn cymysgu yn ôl chwaeth yn hytrach nag ar hap';

  @override
  String get setResume => 'Ailgychwyn lle gadewais';

  @override
  String get setResumeSub => 'Yn adfer y ciw pan agorir yr ap, wedi\'i oedi';

  @override
  String get setDataSaver => 'Arbed data oddi ar Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Yn cyfyngu ffrydiau a lawrlwythiadau i 128 kbps ar ddata symudol';

  @override
  String get setHaptics => 'Adborth haptig';

  @override
  String get setShowReasons => 'Dangos pam yr argymhellwyd rhywbeth';

  @override
  String get setSkipSilence => 'Hepgor tawelwch';

  @override
  String get setQuality => 'Ansawdd sain';

  @override
  String get setQualityLow => 'Isel · 64 kbps';

  @override
  String get setQualityNormal => 'Arferol · 128 kbps';

  @override
  String get setQualityHigh => 'Uchel · 192 kbps';

  @override
  String get setQualityBest => 'Y gorau sydd ar gael';

  @override
  String get setStorage => 'Lawrlwythiadau a storfa';

  @override
  String get setWifiOnly => 'Lawrlwytho ar Wi-Fi yn unig';

  @override
  String get setDailyLimit => 'Terfyn dyddiol i\'r AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count cân y dydd';
  }

  @override
  String get setBudget => 'Storfa y caiff yr AI ei defnyddio';

  @override
  String setUsed(Object size) {
    return '$size wedi\'i ddefnyddio gan lawrlwythiadau';
  }

  @override
  String get setYourMusic => 'Eich cerddoriaeth';

  @override
  String get setImport => 'Ychwanegu cerddoriaeth o\'r ddyfais hon';

  @override
  String get setImportSub => 'Dewiswch ffolderi neu ffeiliau unigol';

  @override
  String get setCleanup => 'Glanhau ffeiliau coll';

  @override
  String get setCleanupSub => 'Gollwng caneuon y mae eu ffeil wedi mynd';

  @override
  String setCleanupDone(int count) {
    return 'Dilëwyd $count ffeil goll.';
  }

  @override
  String get setExport => 'Anfon fy chwaeth i ddyfais arall';

  @override
  String get setExportSub =>
      'Yn cadw ffeil gyda\'ch hoffiadau, eich chwaraeon a phopeth a ddysgodd yr AI';

  @override
  String get setImportTaste => 'Llwytho chwaeth o ddyfais arall';

  @override
  String get setImportTasteSub =>
      'Dewiswch ffeil chwaeth wedi\'i chadw a\'i huno – diogel i\'w hailadrodd';

  @override
  String get setAbout => 'Ynghylch';

  @override
  String get setAboutBody =>
      'Cerddoriaeth o YouTube a\'ch ffeiliau eich hun. Mae\'r AI yn rhedeg yn gyfan gwbl ar y ddyfais hon – does dim byd yn ei gadael.';

  @override
  String get setSource => 'Cod ffynhonnell';

  @override
  String get importTitle => 'Ychwanegu cerddoriaeth';

  @override
  String get importPickFolder => 'Dewis ffolder';

  @override
  String get importPickFiles => 'Dewis ffeiliau';

  @override
  String importScanning(Object file) {
    return 'Yn sganio $file';
  }

  @override
  String importAdded(int count) {
    return '$count wedi\'u hychwanegu';
  }

  @override
  String get importDenied =>
      'Caniatâd wedi\'i wrthod – methu darllen eich cerddoriaeth.';

  @override
  String get importWatched => 'Ffolderi mae\'n eu gwylio';

  @override
  String get importIosHint =>
      'Agorwch yr ap Files, ewch i On My iPhone → TuneBox, a gollyngwch gerddoriaeth yno.';

  @override
  String get playerQueue => 'Ciw';

  @override
  String get playerUpNext => 'Nesaf';

  @override
  String get playerLyrics => 'Geiriau';

  @override
  String get playerNoLyrics => 'Dim geiriau ar gyfer yr un hon.';

  @override
  String get playerRepeat => 'Ailadrodd';

  @override
  String get playerShuffle => 'Cymysgu';

  @override
  String errorPlayback(Object title) {
    return 'Methu chwarae \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Yn hepgor \"$title\" – ni agorodd y ffrwd.';
  }

  @override
  String get undo => 'Dadwneud';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Ar hyn o bryd: $tags, dan arweiniad $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Ar hyn o bryd: $tags.';
  }

  @override
  String get setColour => 'Lliw';

  @override
  String get setColourSub => 'Mae\'r ap cyfan yn dilyn hyn';

  @override
  String get setCoverArt => 'Celf y clawr';

  @override
  String get setMyColour => 'Fy lliw i';

  @override
  String get setCoverArtSub => 'Mae pob cân yn ail-liwio\'r ap o\'i chlawr.';

  @override
  String get setMyColourSub => 'Un lliw, ym mhobman, drwy\'r amser.';

  @override
  String get setPickColour => 'Dewis unrhyw liw';

  @override
  String get setWifiOnlyTitle => 'Lawrlwytho ar Wi-Fi yn unig';

  @override
  String get setDownloadLikes => 'Lawrlwytho popeth rwy\'n ei hoffi';

  @override
  String get setDownloadLikesSub => 'Mae\'r botwm calon hefyd yn cadw\'r ffeil';

  @override
  String get setAiInstall =>
      'Gadael i\'r AI osod cerddoriaeth y mae\'n ei dewis';

  @override
  String get setSkipSilenceSub =>
      'Android yn unig. Gall dorri rhagarweiniadau tawel, pylu a rhannau meddal – gadewch i ffwrdd os yw\'r gerddoriaeth yn neidio';

  @override
  String get setStorageUsed => 'Storfa a ddefnyddir gan lawrlwythiadau';

  @override
  String get setLibrary => 'Llyfrgell';

  @override
  String get setUpdates => 'Diweddariadau';

  @override
  String get setAutoUpdate => 'Gwirio am ddiweddariadau yn awtomatig';

  @override
  String get setAutoUpdateSub =>
      'Bob ychydig oriau, yn dawel, ac yn lawrlwytho ar Wi-Fi. Mae gosod yn dal i ofyn i chi.';

  @override
  String setUpdateReady(Object version) {
    return 'Mae\'r diweddariad i $version yn barod';
  }

  @override
  String get setUpdateReadySub => 'Wedi\'i lawrlwytho – tapiwch i osod';

  @override
  String get setUpdateAvailableSub =>
      'Cewch ef o\'r dudalen ryddhau – tapiwch i gopïo\'r ddolen';

  @override
  String get setLinkCopied => 'Dolen wedi\'i chopïo';

  @override
  String get setCheckNow => 'Gwirio nawr';

  @override
  String get setUpToDate => 'Mae TuneBox yn gyfredol';

  @override
  String get setChecking => 'Yn chwilio am fersiwn newyddach…';

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
