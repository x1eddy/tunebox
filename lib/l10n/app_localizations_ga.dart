// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class LGa extends L {
  LGa([String locale = 'ga']) : super(locale);

  @override
  String get navHome => 'Baile';

  @override
  String get navExplore => 'Taiscéal';

  @override
  String get navLibrary => 'Leabharlann';

  @override
  String get navTaste => 'Do bhlas';

  @override
  String get actionDone => 'Déanta';

  @override
  String get actionCancel => 'Cealaigh';

  @override
  String get actionCreate => 'Cruthaigh';

  @override
  String get actionPlay => 'Seinn';

  @override
  String get actionShuffle => 'Suaitheadh';

  @override
  String get actionPlayAll => 'Seinn uile';

  @override
  String get actionAdd => 'Cuir leis';

  @override
  String get actionRemove => 'Bain';

  @override
  String get actionName => 'Ainm';

  @override
  String get greetingNight => 'Ar maidin fós?';

  @override
  String get greetingMorning => 'Maidin mhaith';

  @override
  String get greetingAfternoon => 'Tráthnóna maith';

  @override
  String get greetingEvening => 'Tráthnóna maith';

  @override
  String get homeBuilding => 'Tá an AI ag tógáil do sheilfeanna…';

  @override
  String get homeOffline => 'As líne — ag taispeáint an méid atá ar an ngléas';

  @override
  String get homeNothingYet => 'Faic le taispeáint go fóill';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seilf, athnuaite díreach anois',
      many: '$count seilf, athnuaite díreach anois',
      few: '$count seilf, athnuaite díreach anois',
      two: '$count sheilf, athnuaite díreach anois',
      one: '1 seilf, athnuaite díreach anois',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Athchruthaigh na seilfeanna';

  @override
  String get homeAddMusic => 'Cuir ceol leis ón ngléas seo';

  @override
  String get homeQuickPicks => 'Roghanna tapa';

  @override
  String get homeQuickPicksSub =>
      'Díreach ar ais chuig an méid a bhí ar siúl agat';

  @override
  String get homeEmptyTitle => 'Tá do leabharlann folamh';

  @override
  String get homeEmptyBody =>
      'Cuardaigh rud éigin, nó cuir leis an gceol atá ar an ngléas seo cheana. Tosaíonn an AI ag foghlaim ón gcéad seinm.';

  @override
  String get homeAddMyMusic => 'Cuir mo cheol leis';

  @override
  String homeCouldNotReach(Object error) {
    return 'Níorbh fhéidir teacht ar YouTube: $error';
  }

  @override
  String get moodFocus => 'Fócas';

  @override
  String get moodWorkout => 'Aclaíocht';

  @override
  String get moodChill => 'Scíth';

  @override
  String get moodCommute => 'Aistear';

  @override
  String get moodParty => 'Cóisir';

  @override
  String moodBuilding(Object mood) {
    return 'Meascán $mood á thógáil…';
  }

  @override
  String moodFailed(Object error) {
    return 'Níor éirigh leis: $error';
  }

  @override
  String get shelfRepeat => 'Arís is arís';

  @override
  String get shelfRepeatSub => 'Do dhá sheachtain dheireanacha';

  @override
  String get shelfForgotten => 'Seanhiteanna dearmadta ar thaitin siad leat';

  @override
  String get shelfForgottenSub =>
      'Ghráigh tú iad uair, gan teagmháil leo le tamall';

  @override
  String get shelfNew => 'Nua';

  @override
  String get shelfNewSub => 'Rianta úra a cheapann an AI atá duitse';

  @override
  String shelfBecause(Object artist) {
    return 'Toisc gur sheinn tú $artist';
  }

  @override
  String get shelfBecauseSub => 'An chuid chéanna de do bhlas';

  @override
  String get shelfDeep => 'Beagnach gan teagmháil';

  @override
  String get shelfDeepSub => 'I do leabharlann, ar éigean a sheinntear iad';

  @override
  String get shelfMix => 'Do mheascán';

  @override
  String get shelfMixSub => 'Athchruthaithe gach uair a osclaíonn tú an aip';

  @override
  String get shelfAdded => 'Curtha leis le déanaí';

  @override
  String get shelfAddedSub => 'Íoslódálacha agus comhaid a d\'iompórtáil tú';

  @override
  String get shelfStarter => 'Tosaigh anseo';

  @override
  String get shelfStarterSub =>
      'Seinn cúpla ceann agus tosóidh an AI ag foghlaim láithreach';

  @override
  String reasonPlays(int count) {
    return '$count seinm';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Thaitin sé leat, seinnte go deireanach $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count seinm, an ceann deireanach $when';
  }

  @override
  String get reasonTopArtist =>
      'Duine de na healaíontóirí is mó a sheinneann tú';

  @override
  String reasonMore(Object artist) {
    return 'Tuilleadh $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Filleann tú i gcónaí ar $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Do chineál $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Neart $tag le déanaí';
  }

  @override
  String get reasonOutThisYear => 'Eisithe i mbliana';

  @override
  String get reasonReleasedRecently => 'Eisithe le déanaí';

  @override
  String get reasonClose => 'Gar don méid a bhí á sheinm agat';

  @override
  String reasonNear(Object artist) {
    return 'In aice le $artist';
  }

  @override
  String get reasonNeverPlayed => 'Gan seinm riamh';

  @override
  String get reasonPlayedOnce => 'Seinnte uair amháin';

  @override
  String get reasonPopular => 'Tóir air faoi láthair';

  @override
  String whenYearsAgo(int count) {
    return '$count bl. ó shin';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count mhí ó shin';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count lá ó shin';
  }

  @override
  String get searchHint => 'Amhráin, ealaíontóirí, albaim';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count toradh',
      many: '$count dtoradh',
      few: '$count thoradh',
      two: '$count thoradh',
      one: '1 toradh',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Cuardaigh le déanaí';

  @override
  String get searchEmptyTitle => 'Aon rud ar bith';

  @override
  String get searchEmptyBody =>
      'Bain triail as litriú eile, nó ainm an ealaíontóra amháin.';

  @override
  String get searchStartTitle => 'Aimsigh rud éigin le seinm';

  @override
  String get searchStartBody =>
      'Cuardaigh YouTube Music — ní thagann ach amhráin ar ais, ná físeáin de rudaí eile.';

  @override
  String get libPlaylists => 'Seinmliostaí';

  @override
  String get libSongs => 'Amhráin';

  @override
  String get libArtists => 'Ealaíontóirí';

  @override
  String get libLiked => 'Ar thaitin';

  @override
  String get libDownloads => 'Íoslódálacha';

  @override
  String get libImported => 'Iompórtáilte';

  @override
  String get libLikedSongs => 'Amhráin ar thaitin';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count amhrán',
      many: '$count n-amhrán',
      few: '$count amhrán',
      two: '$count amhrán',
      one: '1 amhrán',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count as líne';
  }

  @override
  String get libMyFiles => 'Mo chomhaid féin';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count comhad',
      many: '$count gcomhad',
      few: '$count chomhad',
      two: '$count chomhad',
      one: '1 chomhad',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Seinmliosta nua';

  @override
  String get libMakeOne => 'Cruthaigh ceann';

  @override
  String get libSortRecent => 'Curtha leis le déanaí';

  @override
  String get libSortTitle => 'Teideal';

  @override
  String get libSortArtist => 'Ealaíontóir';

  @override
  String get libSortPlays => 'Is mó seinnte';

  @override
  String get sheetNotForMe => 'Ní domsa é';

  @override
  String get sheetNotForMeSub => 'Ná mol é seo arís go deo';

  @override
  String get sheetBlocked => 'Blocáilte — tapáil chun ligean arís';

  @override
  String get sheetBlockedSub => 'Is féidir leis teacht aníos sna moltaí arís';

  @override
  String get sheetPlayNext => 'Seinn ina dhiaidh seo';

  @override
  String get sheetAddToPlaylist => 'Cuir le seinmliosta';

  @override
  String get sheetDownloaded => 'Íoslódáilte';

  @override
  String get sheetRemoveFile => 'Tapáil chun an comhad a bhaint';

  @override
  String get sheetDownload => 'Íoslódáil';

  @override
  String get sheetKeepOffline => 'Coinnigh é le húsáid as líne';

  @override
  String get sheetRadio => 'Tosaigh raidió';

  @override
  String get sheetRadioSub => 'Scuaine thógtha thart ar an amhrán seo';

  @override
  String get sheetQueue => 'Scuaine';

  @override
  String get sheetSleepTimer => 'Amadóir codlata';

  @override
  String get sheetSleepOff => 'Múchta';

  @override
  String sheetSleepMinutes(int count) {
    return '$count nóiméad';
  }

  @override
  String get sheetSleepEndOfTrack => 'Deireadh an amhráin seo';

  @override
  String sheetSleepSet(int count) {
    return 'Stopfaidh an ceol i gceann $count nóim.';
  }

  @override
  String get tasteTitle => 'Do bhlas';

  @override
  String get tasteRetrain => 'Athoiliúint';

  @override
  String get tasteRetraining => 'Ag athoiliúint ar do stair…';

  @override
  String get tasteRetrained => 'D\'athchruthaigh an AI a mhúnla.';

  @override
  String tasteConfidence(int percent) {
    return 'Muinín $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays seinm · $skips scipeáil · $likes thaitin';
  }

  @override
  String get tasteEmptySummary => 'Seinn cúpla amhrán agus líonfar é seo.';

  @override
  String get tasteKeepLearning => 'Lean ort ag foghlaim agus mé ag éisteacht';

  @override
  String get tasteKeepLearningSub => 'Múch chun an próifíl reatha a reo';

  @override
  String get tasteDownloadsTitle => 'Íoslódálacha a láimhseálann an AI';

  @override
  String get tasteDownloadsSub => 'Tagann ceol ar an ngléas gan iarraidh';

  @override
  String get tasteDownloadLikes => 'Íoslódáil gach rud a thaitníonn liom';

  @override
  String get tasteDownloadLikesSub =>
      'Brúigh an croí agus sábháiltear an comhad le húsáid as líne';

  @override
  String get tasteAiInstall => 'Lig don AI ceol a roghnaíonn sé a shuiteáil';

  @override
  String get tasteAiInstallSub =>
      'Tarraingeoidh sé rianta a bhfuil muinín aige astu';

  @override
  String get tasteWhatItThinks => 'An rud a cheapann sé gur maith leat';

  @override
  String get tasteWhatItThinksSub =>
      'Foghlamtha ó sheinmeanna, scipeálacha, thaitin agus athsheinmeanna';

  @override
  String get tasteArtists => 'Ealaíontóirí a bhfuil sé ag brath orthu';

  @override
  String get tasteWhenYouListen => 'Nuair a éisteann tú';

  @override
  String get tasteWhenYouListenSub =>
      'Seinmeanna in aghaidh na huaire — tugtar tábhacht don uair reatha';

  @override
  String get tasteDecades => 'Deich mbliana';

  @override
  String get tasteTune => 'Cuir na moltaí in oiriúint';

  @override
  String get tasteTuneSub =>
      'Tagann sé i bhfeidhm ag an gcéad athnuachan eile ar an Leathanach Baile';

  @override
  String get tasteDiscovery => 'Fionnachtain';

  @override
  String get tasteDiscoverySub => 'Eolach ↔ rudaí nár chuala tú riamh';

  @override
  String get tasteEnergy => 'Fuinneamh';

  @override
  String get tasteEnergySub => 'Ciúin ↔ glórach';

  @override
  String get tasteRecency => 'Úrnuacht';

  @override
  String get tasteRecencySub => 'Gan aois ↔ úrnua';

  @override
  String get tasteNostalgia => 'Cumha';

  @override
  String get tasteNostalgiaSub =>
      'Cé chomh fada siar a mheastar seanmhóid a bheith dearmadta';

  @override
  String get tasteSignals => 'Comharthaí a fhéadfaidh sé a úsáid';

  @override
  String get tasteSignalsSub => 'Fanann gach rud ar an ngléas seo';

  @override
  String get tasteUseHistory => 'An méid a sheinn mé';

  @override
  String get tasteUseSkips => 'An méid a scipeálaim';

  @override
  String get tasteUseTime => 'Am den lá';

  @override
  String get tasteUseYouTube => 'Moltaí ó YouTube';

  @override
  String get tasteAlwaysMore => 'Tuilleadh i gcónaí de';

  @override
  String get tasteNeverAgain => 'Ná arís go deo';

  @override
  String get tasteAddArtist => 'Cuir ealaíontóir leis';

  @override
  String get tasteMoreOfPrompt => 'Tuilleadh i gcónaí de…';

  @override
  String get tasteNeverAgainPrompt => 'Ná arís go deo…';

  @override
  String get tasteReset => 'Athshocraigh an méid a d\'fhoghlaim sé';

  @override
  String get tasteResetSub => 'Fanann do cheol; tosaíonn an próifíl ón tús';

  @override
  String get trainCard => 'Oiliúin é trí rátáil';

  @override
  String get trainCardSub =>
      'Scuab trí fhíorghamhráin. Ar dheis le haghaidh níos mó mar seo, ar chlé le haghaidh ná arís go deo. Is fearr dhá nóiméad anseo ná seachtain éisteachta.';

  @override
  String get trainStart => 'Tosaigh babhta oiliúna';

  @override
  String get trainTitle => 'Babhta oiliúna';

  @override
  String get trainQuestion => 'Ar mhaith leat é seo ar do Leathanach Baile?';

  @override
  String get trainMoreLikeThis => 'Níos mó mar seo';

  @override
  String get trainNeverAgain => 'Ná arís go deo';

  @override
  String get trainDone => 'Babhta críochnaithe';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked coinnithe · $blocked blocáilte. Muinín $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Ar ais chuig do bhlas';

  @override
  String get trainNothingTitle => 'Faic le rátáil go fóill';

  @override
  String get trainNothingBody =>
      'Cuir ceol leis nó lig don AI iarrthóirí a fháil ar dtús, ansin tar ar ais.';

  @override
  String get trainLeaveTitle => 'An bhfágfaidh tú an babhta oiliúna?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Má fhágann tú anois, caithfidh an AI gach rud ón mbabhta seo uaidh — na $count amhrán a rátáil tú díreach anois.',
      many:
          'Má fhágann tú anois, caithfidh an AI gach rud ón mbabhta seo uaidh — na $count amhrán a rátáil tú díreach anois.',
      few:
          'Má fhágann tú anois, caithfidh an AI gach rud ón mbabhta seo uaidh — na $count amhrán a rátáil tú díreach anois.',
      two:
          'Má fhágann tú anois, caithfidh an AI gach rud ón mbabhta seo uaidh — an $count amhrán a rátáil tú díreach anois.',
      one:
          'Má fhágann tú anois, caithfidh an AI gach rud ón mbabhta seo uaidh — an 1 amhrán a rátáil tú díreach anois.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Lean ort ag oiliúint';

  @override
  String get trainDiscard => 'Caith uait agus fág';

  @override
  String get setTitle => 'Socruithe';

  @override
  String get setAppearance => 'Cuma';

  @override
  String get setTheme => 'Téama';

  @override
  String get setThemeSystem => 'Lean an córas';

  @override
  String get setThemeLight => 'Geal';

  @override
  String get setThemeDark => 'Dorcha';

  @override
  String get setPureBlack => 'Dubh glan';

  @override
  String get setPureBlackSub => 'Sábhálann sé cumhacht ar scáileán OLED';

  @override
  String get setAccent => 'Dath aibhsithe';

  @override
  String get setAccentArtwork => 'Ó chlúdach an albaim';

  @override
  String get setAccentFixed => 'Dath amháin a roghnaigh mé';

  @override
  String get setLanguage => 'Teanga';

  @override
  String get setLanguageSystem => 'Lean an córas';

  @override
  String get setAccessibility => 'Inrochtaineacht';

  @override
  String get setTextSize => 'Méid an téacs';

  @override
  String get setTextSizeSub => 'Anuas ar shocrú do chórais';

  @override
  String get setReduceMotion => 'Laghdaigh gluaiseacht';

  @override
  String get setReduceMotionSub =>
      'Stopann sé na barraí, an físeoir, scrollú preabach, tapáil sprionga agus aistrithe leathanaigh';

  @override
  String get setHighContrast => 'Codarsnacht ard';

  @override
  String get setHighContrastSub =>
      'Deighilt níos láidre agus imlínte infheicthe';

  @override
  String get setBoldText => 'Téacs trom';

  @override
  String get setPlayback => 'Athsheinm';

  @override
  String get setAutoRadio => 'Coinnigh an ceol ar siúl';

  @override
  String get setAutoRadioSub =>
      'Nuair a chríochnaíonn an scuaine, lean ar aghaidh le raidió a tógadh ón amhrán deireanach';

  @override
  String get setSmartShuffle => 'Suaitheadh cliste';

  @override
  String get setSmartShuffleSub =>
      'Suaitheann sé de réir blas in ionad go randamach';

  @override
  String get setResume => 'Lean ar aghaidh ón áit ar stop mé';

  @override
  String get setResumeSub =>
      'Athchuireann sé an scuaine nuair a osclaítear an aip, curtha ar sos';

  @override
  String get setDataSaver => 'Sábhálaí sonraí gan Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Cuireann sé teorainn de 128 kbps ar shruthanna agus ar íoslódálacha ar shonraí soghluaiste';

  @override
  String get setHaptics => 'Aiseolas haptach';

  @override
  String get setShowReasons => 'Taispeáin cén fáth ar moladh rud éigin';

  @override
  String get setSkipSilence => 'Scipeáil ciúnas';

  @override
  String get setQuality => 'Cáilíocht fuaime';

  @override
  String get setQualityLow => 'Íseal · 64 kbps';

  @override
  String get setQualityNormal => 'Gnáth · 128 kbps';

  @override
  String get setQualityHigh => 'Ard · 192 kbps';

  @override
  String get setQualityBest => 'An ceann is fearr atá ar fáil';

  @override
  String get setStorage => 'Íoslódálacha agus stóras';

  @override
  String get setWifiOnly => 'Íoslódáil ar Wi-Fi amháin';

  @override
  String get setDailyLimit => 'Teorainn laethúil don AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count amhrán in aghaidh an lae';
  }

  @override
  String get setBudget => 'Stóras a fhéadfaidh an AI a úsáid';

  @override
  String setUsed(Object size) {
    return '$size in úsáid ag íoslódálacha';
  }

  @override
  String get setYourMusic => 'Do cheol';

  @override
  String get setImport => 'Cuir ceol leis ón ngléas seo';

  @override
  String get setImportSub => 'Roghnaigh fillteáin nó comhaid aonair';

  @override
  String get setCleanup => 'Glan comhaid atá ar iarraidh';

  @override
  String get setCleanupSub => 'Scrios amhráin a bhfuil a gcomhad imithe';

  @override
  String setCleanupDone(int count) {
    return 'Baineadh $count comhad a bhí ar iarraidh.';
  }

  @override
  String get setExport => 'Seol mo bhlas chuig gléas eile';

  @override
  String get setExportSub =>
      'Sábhálann sé comhad le do thaitin, seinmeanna agus gach rud a d\'fhoghlaim an AI';

  @override
  String get setImportTaste => 'Luchtaigh blas ó ghléas eile';

  @override
  String get setImportTasteSub =>
      'Roghnaigh comhad blais sábháilte agus cumasc isteach é — sábháilte le athdhéanamh';

  @override
  String get setAbout => 'Maidir leis';

  @override
  String get setAboutBody =>
      'Ceol ó YouTube agus do chomhaid féin. Ritheann an AI go hiomlán ar an ngléas seo — ní fhágann aon rud é.';

  @override
  String get setSource => 'Cód foinse';

  @override
  String get importTitle => 'Cuir ceol leis';

  @override
  String get importPickFolder => 'Roghnaigh fillteán';

  @override
  String get importPickFiles => 'Roghnaigh comhaid';

  @override
  String importScanning(Object file) {
    return 'Ag scanadh $file';
  }

  @override
  String importAdded(int count) {
    return '$count curtha leis';
  }

  @override
  String get importDenied => 'Cead diúltaithe — ní féidir do cheol a léamh.';

  @override
  String get importWatched => 'Fillteáin a bhreathnaíonn sé orthu';

  @override
  String get importIosHint =>
      'Oscail an aip Files, téigh go On My iPhone → TuneBox, agus scaoil ceol isteach ansin.';

  @override
  String get playerQueue => 'Scuaine';

  @override
  String get playerUpNext => 'Ar siúl ina dhiaidh seo';

  @override
  String get playerLyrics => 'Liricí';

  @override
  String get playerNoLyrics => 'Gan liricí don cheann seo.';

  @override
  String get playerRepeat => 'Athdhéan';

  @override
  String get playerShuffle => 'Suaitheadh';

  @override
  String errorPlayback(Object title) {
    return 'Níorbh fhéidir \"$title\" a sheinm';
  }

  @override
  String errorSkipping(Object title) {
    return 'Ag scipeáil \"$title\" — níor oscail an sruth.';
  }

  @override
  String get undo => 'Cealaigh';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Faoi láthair: $tags, le $artist chun cinn.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Faoi láthair: $tags.';
  }

  @override
  String get setColour => 'Dath';

  @override
  String get setColourSub => 'Leanann an aip ar fad é seo';

  @override
  String get setCoverArt => 'Clúdach albaim';

  @override
  String get setMyColour => 'Mo dhath';

  @override
  String get setCoverArtSub => 'Athdhathaíonn gach amhrán an aip óna chlúdach.';

  @override
  String get setMyColourSub => 'Dath amháin, i ngach áit, i gcónaí.';

  @override
  String get setPickColour => 'Roghnaigh aon dath';

  @override
  String get setWifiOnlyTitle => 'Íoslódáil ar Wi-Fi amháin';

  @override
  String get setDownloadLikes => 'Íoslódáil gach rud a thaitníonn liom';

  @override
  String get setDownloadLikesSub =>
      'Sábhálann an cnaipe croí an comhad freisin';

  @override
  String get setAiInstall => 'Lig don AI ceol a roghnaíonn sé a shuiteáil';

  @override
  String get setSkipSilenceSub =>
      'Android amháin. Is féidir leis réamhrá ciúin, céimniú amach agus codanna bog a ghearradh — fág múchta má scipeálann an ceol';

  @override
  String get setStorageUsed => 'Stóras in úsáid ag íoslódálacha';

  @override
  String get setLibrary => 'Leabharlann';

  @override
  String get setUpdates => 'Nuashonruithe';

  @override
  String get setAutoUpdate =>
      'Seiceáil le haghaidh nuashonruithe go huathoibríoch';

  @override
  String get setAutoUpdateSub =>
      'Gach cúpla uair an chloig, go ciúin, agus íoslódálann sé ar Wi-Fi. Fiafraíonn sé díot fós roimh shuiteáil.';

  @override
  String setUpdateReady(Object version) {
    return 'Tá an nuashonrú go $version réidh';
  }

  @override
  String get setUpdateReadySub => 'Íoslódáilte — tapáil chun suiteáil';

  @override
  String get setUpdateAvailableSub =>
      'Faigh ón leathanach eisiúintí é — tapáil chun an nasc a chóipeáil';

  @override
  String get setLinkCopied => 'Nasc cóipeáilte';

  @override
  String get setCheckNow => 'Seiceáil anois';

  @override
  String get setUpToDate => 'Tá TuneBox cothrom le dáta';

  @override
  String get setChecking => 'Ag lorg leagan níos nuaí…';

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
