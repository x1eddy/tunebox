// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class LGu extends L {
  LGu([String locale = 'gu']) : super(locale);

  @override
  String get navHome => 'હોમ';

  @override
  String get navExplore => 'એક્સપ્લોર';

  @override
  String get navLibrary => 'લાઇબ્રેરી';

  @override
  String get navTaste => 'તમારી પસંદ';

  @override
  String get actionDone => 'થઈ ગયું';

  @override
  String get actionCancel => 'રદ કરો';

  @override
  String get actionCreate => 'બનાવો';

  @override
  String get actionPlay => 'ચલાવો';

  @override
  String get actionShuffle => 'શફલ';

  @override
  String get actionPlayAll => 'બધું ચલાવો';

  @override
  String get actionAdd => 'ઉમેરો';

  @override
  String get actionRemove => 'દૂર કરો';

  @override
  String get actionName => 'નામ';

  @override
  String get greetingNight => 'હજી જાગો છો?';

  @override
  String get greetingMorning => 'સુપ્રભાત';

  @override
  String get greetingAfternoon => 'શુભ બપોર';

  @override
  String get greetingEvening => 'શુભ સાંજ';

  @override
  String get homeBuilding => 'AI તમારી છાજલીઓ બનાવી રહ્યું છે…';

  @override
  String get homeOffline => 'ઑફલાઇન — ડિવાઇસ પર જે છે તે બતાવી રહ્યા છીએ';

  @override
  String get homeNothingYet => 'હજી બતાવવા માટે કંઈ નથી';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count છાજલીઓ, હમણાં જ તાજી કરેલી',
      one: '1 છાજલી, હમણાં જ તાજી કરેલી',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'છાજલીઓ ફરી બનાવો';

  @override
  String get homeAddMusic => 'આ ડિવાઇસમાંથી સંગીત ઉમેરો';

  @override
  String get homeQuickPicks => 'ઝડપી પસંદગી';

  @override
  String get homeQuickPicksSub => 'જે સાંભળતા હતા ત્યાં સીધા પાછા';

  @override
  String get homeEmptyTitle => 'તમારી લાઇબ્રેરી ખાલી છે';

  @override
  String get homeEmptyBody =>
      'કંઈક શોધો, અથવા આ ડિવાઇસ પર પહેલેથી રહેલું સંગીત ઉમેરો. તમારા પહેલા જ પ્લેથી AI શીખવાનું શરૂ કરે છે.';

  @override
  String get homeAddMyMusic => 'મારું સંગીત ઉમેરો';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube સુધી પહોંચી શકાયું નથી: $error';
  }

  @override
  String get moodFocus => 'ફોકસ';

  @override
  String get moodWorkout => 'વર્કઆઉટ';

  @override
  String get moodChill => 'ચિલ';

  @override
  String get moodCommute => 'મુસાફરી';

  @override
  String get moodParty => 'પાર્ટી';

  @override
  String moodBuilding(Object mood) {
    return '$mood મિક્સ બનાવી રહ્યા છીએ…';
  }

  @override
  String moodFailed(Object error) {
    return 'સફળતા ન મળી: $error';
  }

  @override
  String get shelfRepeat => 'રિપીટ પર';

  @override
  String get shelfRepeatSub => 'તમારા છેલ્લા બે અઠવાડિયા';

  @override
  String get shelfForgotten => 'તમને ગમતા જૂના ભુલાયેલા હિટ્સ';

  @override
  String get shelfForgottenSub => 'એક સમયે પ્રિય, થોડા સમયથી અડક્યા નથી';

  @override
  String get shelfNew => 'નવું';

  @override
  String get shelfNewSub => 'AI ને લાગે છે કે તમારા માટે તાજા ટ્રૅક';

  @override
  String shelfBecause(Object artist) {
    return 'કારણ કે તમે $artist સાંભળ્યા';
  }

  @override
  String get shelfBecauseSub => 'તમારી પસંદનો એ જ ખૂણો';

  @override
  String get shelfDeep => 'ભાગ્યે જ સાંભળેલું';

  @override
  String get shelfDeepSub => 'તમારી લાઇબ્રેરીમાં, ભાગ્યે જ ચલાવેલું';

  @override
  String get shelfMix => 'તમારું મિક્સ';

  @override
  String get shelfMixSub => 'દર વખતે એપ ખોલો ત્યારે ફરી બને છે';

  @override
  String get shelfAdded => 'તાજેતરમાં ઉમેરેલું';

  @override
  String get shelfAddedSub => 'ડાઉનલોડ અને તમે ઇમ્પોર્ટ કરેલી ફાઇલો';

  @override
  String get shelfStarter => 'અહીંથી શરૂ કરો';

  @override
  String get shelfStarterSub => 'થોડા ચલાવો અને AI તરત શીખવાનું શરૂ કરે છે';

  @override
  String reasonPlays(int count) {
    return '$count પ્લે';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ગમ્યું, છેલ્લે ચલાવ્યું $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count પ્લે, છેલ્લે $when';
  }

  @override
  String get reasonTopArtist => 'તમે સૌથી વધુ સાંભળેલા કલાકારોમાંના એક';

  @override
  String reasonMore(Object artist) {
    return '$artist વધુ';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'તમે વારંવાર $artist પાસે પાછા આવો છો';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'તમારી પસંદનું $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'તાજેતરમાં $tag વધુ';
  }

  @override
  String get reasonOutThisYear => 'આ વર્ષે રિલીઝ';

  @override
  String get reasonReleasedRecently => 'તાજેતરમાં રિલીઝ થયું';

  @override
  String get reasonClose => 'તમે સાંભળેલા સંગીતની નજીક';

  @override
  String reasonNear(Object artist) {
    return '$artist ની નજીક';
  }

  @override
  String get reasonNeverPlayed => 'ક્યારેય ચલાવ્યું નથી';

  @override
  String get reasonPlayedOnce => 'એક વાર ચલાવ્યું';

  @override
  String get reasonPopular => 'અત્યારે લોકપ્રિય';

  @override
  String whenYearsAgo(int count) {
    return '$count વર્ષ પહેલાં';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count મહિના પહેલાં';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count દિવસ પહેલાં';
  }

  @override
  String get searchHint => 'ગીતો, કલાકારો, આલ્બમ';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count પરિણામો',
      one: '1 પરિણામ',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'તાજેતરની શોધ';

  @override
  String get searchEmptyTitle => 'કંઈ મળ્યું નથી';

  @override
  String get searchEmptyBody =>
      'બીજી જોડણી અજમાવો, અથવા ફક્ત કલાકારનું નામ લખો.';

  @override
  String get searchStartTitle => 'ચલાવવા માટે કંઈક શોધો';

  @override
  String get searchStartBody =>
      'YouTube Music માં શોધો — ફક્ત ગીતો જ આવે છે, બીજી વસ્તુઓના વિડિઓ ક્યારેય નહીં.';

  @override
  String get libPlaylists => 'પ્લેલિસ્ટ';

  @override
  String get libSongs => 'ગીતો';

  @override
  String get libArtists => 'કલાકારો';

  @override
  String get libLiked => 'પસંદ કરેલા';

  @override
  String get libDownloads => 'ડાઉનલોડ';

  @override
  String get libImported => 'ઇમ્પોર્ટ કરેલા';

  @override
  String get libLikedSongs => 'પસંદ કરેલા ગીતો';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ગીતો',
      one: '1 ગીત',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ઑફલાઇન';
  }

  @override
  String get libMyFiles => 'મારી પોતાની ફાઇલો';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ફાઇલો',
      one: '1 ફાઇલ',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'નવી પ્લેલિસ્ટ';

  @override
  String get libMakeOne => 'બનાવો';

  @override
  String get libSortRecent => 'તાજેતરમાં ઉમેરેલા';

  @override
  String get libSortTitle => 'શીર્ષક';

  @override
  String get libSortArtist => 'કલાકાર';

  @override
  String get libSortPlays => 'સૌથી વધુ ચલાવેલા';

  @override
  String get sheetNotForMe => 'મારા માટે નથી';

  @override
  String get sheetNotForMeSub => 'આ ફરી ક્યારેય સૂચવવું નહીં';

  @override
  String get sheetBlocked => 'બ્લૉક કરેલું — ફરી મંજૂરી આપવા ટૅપ કરો';

  @override
  String get sheetBlockedSub => 'તે ફરી સૂચનોમાં દેખાઈ શકે છે';

  @override
  String get sheetPlayNext => 'આગળ ચલાવો';

  @override
  String get sheetAddToPlaylist => 'પ્લેલિસ્ટમાં ઉમેરો';

  @override
  String get sheetDownloaded => 'ડાઉનલોડ થયું';

  @override
  String get sheetRemoveFile => 'ફાઇલ દૂર કરવા ટૅપ કરો';

  @override
  String get sheetDownload => 'ડાઉનલોડ';

  @override
  String get sheetKeepOffline => 'ઑફલાઇન માટે રાખો';

  @override
  String get sheetRadio => 'રેડિયો શરૂ કરો';

  @override
  String get sheetRadioSub => 'આ ગીતની આસપાસ બનેલી કતાર';

  @override
  String get sheetQueue => 'કતાર';

  @override
  String get sheetSleepTimer => 'સ્લીપ ટાઇમર';

  @override
  String get sheetSleepOff => 'બંધ';

  @override
  String sheetSleepMinutes(int count) {
    return '$count મિનિટ';
  }

  @override
  String get sheetSleepEndOfTrack => 'આ ગીતના અંતે';

  @override
  String sheetSleepSet(int count) {
    return '$count મિનિટમાં સંગીત બંધ થશે';
  }

  @override
  String get tasteTitle => 'તમારી પસંદ';

  @override
  String get tasteRetrain => 'ફરી તાલીમ';

  @override
  String get tasteRetraining => 'તમારા ઇતિહાસ પર ફરી તાલીમ ચાલુ છે…';

  @override
  String get tasteRetrained => 'AI એ પોતાનું મૉડલ ફરી બનાવ્યું.';

  @override
  String tasteConfidence(int percent) {
    return 'વિશ્વાસ $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays પ્લે · $skips સ્કિપ · $likes લાઇક';
  }

  @override
  String get tasteEmptySummary => 'થોડા ગીતો ચલાવો અને આ ભરાઈ જશે.';

  @override
  String get tasteKeepLearning => 'હું સાંભળું ત્યારે શીખતા રહો';

  @override
  String get tasteKeepLearningSub => 'હાલની પ્રોફાઇલ સ્થિર કરવા બંધ કરો';

  @override
  String get tasteDownloadsTitle => 'AI સંભાળે છે તે ડાઉનલોડ';

  @override
  String get tasteDownloadsSub => 'તમે કહ્યા વગર સંગીત ડિવાઇસ પર આવી જાય છે';

  @override
  String get tasteDownloadLikes => 'મને ગમતું બધું ડાઉનલોડ કરો';

  @override
  String get tasteDownloadLikesSub =>
      'હૃદય દબાવો અને ફાઇલ ઑફલાઇન માટે સેવ થાય છે';

  @override
  String get tasteAiInstall => 'AI ને પોતે પસંદ કરેલું સંગીત ઇન્સ્ટૉલ કરવા દો';

  @override
  String get tasteAiInstallSub => 'જેમાં તેને વિશ્વાસ હોય તે ટ્રૅક તે લાવશે';

  @override
  String get tasteWhatItThinks => 'તે માને છે કે તમને શું ગમે છે';

  @override
  String get tasteWhatItThinksSub => 'પ્લે, સ્કિપ, લાઇક અને રિપીટ પરથી શીખેલું';

  @override
  String get tasteArtists => 'તે જેના પર આધાર રાખે છે તે કલાકારો';

  @override
  String get tasteWhenYouListen => 'તમે ક્યારે સાંભળો છો';

  @override
  String get tasteWhenYouListenSub =>
      'કલાક દીઠ પ્લે — હાલના કલાકને વધુ મહત્વ મળે છે';

  @override
  String get tasteDecades => 'દાયકાઓ';

  @override
  String get tasteTune => 'સૂચનો ટ્યૂન કરો';

  @override
  String get tasteTuneSub => 'આગલા હોમ રિફ્રેશ પર અસર થશે';

  @override
  String get tasteDiscovery => 'શોધ';

  @override
  String get tasteDiscoverySub => 'જાણીતું ↔ જે ક્યારેય સાંભળ્યું નથી';

  @override
  String get tasteEnergy => 'ઊર્જા';

  @override
  String get tasteEnergySub => 'શાંત ↔ જોરદાર';

  @override
  String get tasteRecency => 'તાજગી';

  @override
  String get tasteRecencySub => 'કાલાતીત ↔ તદ્દન નવું';

  @override
  String get tasteNostalgia => 'યાદો';

  @override
  String get tasteNostalgiaSub =>
      'જૂનું પ્રિય ગીત કેટલા સમય પછી ભુલાયેલું ગણાય';

  @override
  String get tasteSignals => 'તે કયા સંકેતો વાપરી શકે';

  @override
  String get tasteSignalsSub => 'બધું આ ડિવાઇસ પર જ રહે છે';

  @override
  String get tasteUseHistory => 'મેં શું ચલાવ્યું';

  @override
  String get tasteUseSkips => 'હું શું સ્કિપ કરું છું';

  @override
  String get tasteUseTime => 'દિવસનો સમય';

  @override
  String get tasteUseYouTube => 'YouTube તરફથી સૂચનો';

  @override
  String get tasteAlwaysMore => 'હંમેશાં વધુ';

  @override
  String get tasteNeverAgain => 'ફરી ક્યારેય નહીં';

  @override
  String get tasteAddArtist => 'કલાકાર ઉમેરો';

  @override
  String get tasteMoreOfPrompt => 'હંમેશાં વધુ…';

  @override
  String get tasteNeverAgainPrompt => 'ફરી ક્યારેય નહીં…';

  @override
  String get tasteReset => 'જે શીખ્યું તે રીસેટ કરો';

  @override
  String get tasteResetSub => 'તમારું સંગીત રહેશે; પ્રોફાઇલ શૂન્યથી શરૂ થશે';

  @override
  String get trainCard => 'રેટિંગ આપીને તાલીમ આપો';

  @override
  String get trainCardSub =>
      'સાચા ગીતો પર સ્વાઇપ કરો. આના જેવું વધુ માટે જમણે, ફરી ક્યારેય નહીં માટે ડાબે. અહીં બે મિનિટ એક અઠવાડિયાના સાંભળવાથી વધુ કામ કરે છે.';

  @override
  String get trainStart => 'તાલીમ રાઉન્ડ શરૂ કરો';

  @override
  String get trainTitle => 'તાલીમ રાઉન્ડ';

  @override
  String get trainQuestion => 'શું તમે આ તમારા હોમ પર ઇચ્છો છો?';

  @override
  String get trainMoreLikeThis => 'આના જેવું વધુ';

  @override
  String get trainNeverAgain => 'ફરી ક્યારેય નહીં';

  @override
  String get trainDone => 'રાઉન્ડ પૂર્ણ';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked રાખ્યા · $blocked બ્લૉક કર્યા. વિશ્વાસ $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'તમારી પસંદ પર પાછા';

  @override
  String get trainNothingTitle => 'હજી રેટ કરવા માટે કંઈ નથી';

  @override
  String get trainNothingBody =>
      'થોડું સંગીત ઉમેરો અથવા પહેલા AI ને ઉમેદવાર ગીતો લાવવા દો, પછી પાછા આવો.';

  @override
  String get trainLeaveTitle => 'તાલીમ રાઉન્ડ છોડી દઈએ?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'જો તમે હમણાં છોડશો, તો AI આ રાઉન્ડનું બધું કાઢી નાખશે — તમે હમણાં રેટ કરેલા બધા $count ગીતો.',
      one:
          'જો તમે હમણાં છોડશો, તો AI આ રાઉન્ડનું બધું કાઢી નાખશે — તમે હમણાં રેટ કરેલું 1 ગીત.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'તાલીમ ચાલુ રાખો';

  @override
  String get trainDiscard => 'કાઢી નાખો અને છોડો';

  @override
  String get setTitle => 'સેટિંગ્સ';

  @override
  String get setAppearance => 'દેખાવ';

  @override
  String get setTheme => 'થીમ';

  @override
  String get setThemeSystem => 'સિસ્ટમને અનુસરો';

  @override
  String get setThemeLight => 'લાઇટ';

  @override
  String get setThemeDark => 'ડાર્ક';

  @override
  String get setPureBlack => 'શુદ્ધ કાળો';

  @override
  String get setPureBlackSub => 'OLED સ્ક્રીન પર પાવર બચાવે છે';

  @override
  String get setAccent => 'એક્સેન્ટ રંગ';

  @override
  String get setAccentArtwork => 'કવર આર્ટમાંથી';

  @override
  String get setAccentFixed => 'મેં પસંદ કરેલો એક રંગ';

  @override
  String get setLanguage => 'ભાષા';

  @override
  String get setLanguageSystem => 'સિસ્ટમને અનુસરો';

  @override
  String get setAccessibility => 'ઍક્સેસિબિલિટી';

  @override
  String get setTextSize => 'ટેક્સ્ટનું કદ';

  @override
  String get setTextSizeSub => 'તમારા સિસ્ટમ સેટિંગની ઉપર';

  @override
  String get setReduceMotion => 'ગતિ ઘટાડો';

  @override
  String get setReduceMotionSub =>
      'બાર, વિઝ્યુલાઇઝર, ઉછળતું સ્ક્રોલિંગ, સ્પ્રિંગી ટૅપ અને પેજ ટ્રાન્ઝિશન બંધ કરે છે';

  @override
  String get setHighContrast => 'ઉચ્ચ કોન્ટ્રાસ્ટ';

  @override
  String get setHighContrastSub => 'વધુ સ્પષ્ટ અલગતા અને દેખાતી રૂપરેખા';

  @override
  String get setBoldText => 'બોલ્ડ ટેક્સ્ટ';

  @override
  String get setPlayback => 'પ્લેબેક';

  @override
  String get setAutoRadio => 'સંગીત ચાલુ રાખો';

  @override
  String get setAutoRadioSub =>
      'કતાર પૂરી થાય ત્યારે છેલ્લા ગીત પરથી બનેલા રેડિયો સાથે આગળ વધો';

  @override
  String get setSmartShuffle => 'સ્માર્ટ શફલ';

  @override
  String get setSmartShuffleSub => 'રેન્ડમને બદલે પસંદ પ્રમાણે શફલ કરે છે';

  @override
  String get setResume => 'જ્યાં છોડ્યું ત્યાંથી શરૂ કરો';

  @override
  String get setResumeSub => 'એપ ખૂલે ત્યારે કતાર પુનઃસ્થાપિત કરે છે, થોભેલી';

  @override
  String get setDataSaver => 'Wi-Fi ન હોય ત્યારે ડેટા સેવર';

  @override
  String get setDataSaverSub =>
      'મોબાઇલ ડેટા પર સ્ટ્રીમ અને ડાઉનલોડ 128 kbps સુધી મર્યાદિત કરે છે';

  @override
  String get setHaptics => 'હેપ્ટિક પ્રતિસાદ';

  @override
  String get setShowReasons => 'કંઈક કેમ સૂચવ્યું તે બતાવો';

  @override
  String get setSkipSilence => 'મૌન છોડો';

  @override
  String get setQuality => 'ઑડિઓ ગુણવત્તા';

  @override
  String get setQualityLow => 'ઓછી · 64 kbps';

  @override
  String get setQualityNormal => 'સામાન્ય · 128 kbps';

  @override
  String get setQualityHigh => 'ઊંચી · 192 kbps';

  @override
  String get setQualityBest => 'ઉપલબ્ધ શ્રેષ્ઠ';

  @override
  String get setStorage => 'ડાઉનલોડ અને સ્ટોરેજ';

  @override
  String get setWifiOnly => 'ફક્ત Wi-Fi પર ડાઉનલોડ કરો';

  @override
  String get setDailyLimit => 'AI માટે દૈનિક મર્યાદા';

  @override
  String setDailyLimitSub(int count) {
    return 'દિવસના $count ગીતો';
  }

  @override
  String get setBudget => 'AI વાપરી શકે તે સ્ટોરેજ';

  @override
  String setUsed(Object size) {
    return 'ડાઉનલોડ દ્વારા $size વપરાયું';
  }

  @override
  String get setYourMusic => 'તમારું સંગીત';

  @override
  String get setImport => 'આ ડિવાઇસમાંથી સંગીત ઉમેરો';

  @override
  String get setImportSub => 'ફોલ્ડર અથવા એકલ ફાઇલો પસંદ કરો';

  @override
  String get setCleanup => 'ખૂટતી ફાઇલો સાફ કરો';

  @override
  String get setCleanupSub => 'જેની ફાઇલ જતી રહી છે તે ગીતો કાઢી નાખો';

  @override
  String setCleanupDone(int count) {
    return '$count ખૂટતી ફાઇલો દૂર કરી.';
  }

  @override
  String get setExport => 'મારી પસંદ બીજા ડિવાઇસ પર મોકલો';

  @override
  String get setExportSub =>
      'તમારા લાઇક, પ્લે અને AI એ શીખેલી દરેક વસ્તુ સાથેની ફાઇલ સેવ કરે છે';

  @override
  String get setImportTaste => 'બીજા ડિવાઇસમાંથી પસંદ લોડ કરો';

  @override
  String get setImportTasteSub =>
      'સેવ કરેલી પસંદ ફાઇલ પસંદ કરી મર્જ કરો — ફરી કરવું સુરક્ષિત છે';

  @override
  String get setAbout => 'વિશે';

  @override
  String get setAboutBody =>
      'YouTube અને તમારી પોતાની ફાઇલોમાંથી સંગીત. AI સંપૂર્ણપણે આ ડિવાઇસ પર ચાલે છે — કંઈ બહાર જતું નથી.';

  @override
  String get setSource => 'સોર્સ કોડ';

  @override
  String get importTitle => 'સંગીત ઉમેરો';

  @override
  String get importPickFolder => 'ફોલ્ડર પસંદ કરો';

  @override
  String get importPickFiles => 'ફાઇલો પસંદ કરો';

  @override
  String importScanning(Object file) {
    return '$file સ્કૅન કરી રહ્યા છીએ';
  }

  @override
  String importAdded(int count) {
    return '$count ઉમેર્યા';
  }

  @override
  String get importDenied => 'પરવાનગી નકારી — તમારું સંગીત વાંચી શકાતું નથી.';

  @override
  String get importWatched => 'તે જે ફોલ્ડર પર નજર રાખે છે';

  @override
  String get importIosHint =>
      'Files એપ ખોલો, On My iPhone → TuneBox પર જાઓ, અને ત્યાં સંગીત મૂકો.';

  @override
  String get playerQueue => 'કતાર';

  @override
  String get playerUpNext => 'હવે પછી';

  @override
  String get playerLyrics => 'ગીતના શબ્દો';

  @override
  String get playerNoLyrics => 'આ ગીતના શબ્દો નથી.';

  @override
  String get playerRepeat => 'રિપીટ';

  @override
  String get playerShuffle => 'શફલ';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" ચલાવી શકાયું નથી';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" છોડી રહ્યા છીએ — સ્ટ્રીમ ખૂલ્યું નહીં.';
  }

  @override
  String get undo => 'પૂર્વવત્';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'અત્યારે: $tags, $artist આગળ.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'અત્યારે: $tags.';
  }

  @override
  String get setColour => 'રંગ';

  @override
  String get setColourSub => 'આખી એપ આને અનુસરે છે';

  @override
  String get setCoverArt => 'કવર આર્ટ';

  @override
  String get setMyColour => 'મારો રંગ';

  @override
  String get setCoverArtSub => 'દરેક ગીત તેના કવરથી એપને નવો રંગ આપે છે.';

  @override
  String get setMyColourSub => 'એક રંગ, બધે, હંમેશાં.';

  @override
  String get setPickColour => 'કોઈપણ રંગ પસંદ કરો';

  @override
  String get setWifiOnlyTitle => 'ફક્ત Wi-Fi પર ડાઉનલોડ કરો';

  @override
  String get setDownloadLikes => 'મને ગમતું બધું ડાઉનલોડ કરો';

  @override
  String get setDownloadLikesSub => 'હૃદયનું બટન ફાઇલ પણ સેવ કરે છે';

  @override
  String get setAiInstall => 'AI ને પોતે પસંદ કરેલું સંગીત ઇન્સ્ટૉલ કરવા દો';

  @override
  String get setSkipSilenceSub =>
      'ફક્ત Android. શાંત ઇન્ટ્રો, ફેડ અને ધીમા ભાગો કાપી શકે છે — સંગીત અટકે તો બંધ રાખો';

  @override
  String get setStorageUsed => 'ડાઉનલોડ દ્વારા વપરાયેલું સ્ટોરેજ';

  @override
  String get setLibrary => 'લાઇબ્રેરી';

  @override
  String get setUpdates => 'અપડેટ';

  @override
  String get setAutoUpdate => 'જાતે અપડેટ તપાસો';

  @override
  String get setAutoUpdateSub =>
      'દર થોડા કલાકે, શાંતિથી, અને Wi-Fi પર ડાઉનલોડ કરે છે. ઇન્સ્ટૉલ કરતા પહેલાં હજી પૂછશે.';

  @override
  String setUpdateReady(Object version) {
    return '$version નું અપડેટ તૈયાર છે';
  }

  @override
  String get setUpdateReadySub => 'ડાઉનલોડ થયું — ઇન્સ્ટૉલ કરવા ટૅપ કરો';

  @override
  String get setUpdateAvailableSub =>
      'રિલીઝ પેજ પરથી મેળવો — લિંક કૉપિ કરવા ટૅપ કરો';

  @override
  String get setLinkCopied => 'લિંક કૉપિ થઈ';

  @override
  String get setCheckNow => 'હમણાં તપાસો';

  @override
  String get setUpToDate => 'TuneBox અપ ટુ ડેટ છે';

  @override
  String get setChecking => 'નવી આવૃત્તિ શોધી રહ્યા છીએ…';
}
