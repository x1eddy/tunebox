// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class LFil extends L {
  LFil([String locale = 'fil']) : super(locale);

  @override
  String get navHome => 'Home';

  @override
  String get navExplore => 'Tuklasin';

  @override
  String get navLibrary => 'Library';

  @override
  String get navTaste => 'Ang gusto mo';

  @override
  String get actionDone => 'Tapos na';

  @override
  String get actionCancel => 'Kanselahin';

  @override
  String get actionCreate => 'Gumawa';

  @override
  String get actionPlay => 'I-play';

  @override
  String get actionShuffle => 'I-shuffle';

  @override
  String get actionPlayAll => 'I-play lahat';

  @override
  String get actionAdd => 'Idagdag';

  @override
  String get actionRemove => 'Alisin';

  @override
  String get actionName => 'Pangalan';

  @override
  String get greetingNight => 'Gising ka pa?';

  @override
  String get greetingMorning => 'Magandang umaga';

  @override
  String get greetingAfternoon => 'Magandang hapon';

  @override
  String get greetingEvening => 'Magandang gabi';

  @override
  String get homeBuilding => 'Binubuo ng AI ang mga shelf mo…';

  @override
  String get homeOffline => 'Offline — ipinapakita ang nasa device';

  @override
  String get homeNothingYet => 'Wala pang maipapakita';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count shelf, kare-refresh lang',
      one: '1 shelf, kare-refresh lang',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Buuin muli ang mga shelf';

  @override
  String get homeAddMusic => 'Magdagdag ng musika mula sa device na ito';

  @override
  String get homeQuickPicks => 'Mabilis na pagpipilian';

  @override
  String get homeQuickPicksSub => 'Balik agad sa pinakinggan mo';

  @override
  String get homeEmptyTitle => 'Walang laman ang library mo';

  @override
  String get homeEmptyBody =>
      'Maghanap ng kahit ano, o idagdag ang musikang nasa device na ito. Magsisimulang matuto ang AI mula sa unang play mo.';

  @override
  String get homeAddMyMusic => 'Idagdag ang musika ko';

  @override
  String homeCouldNotReach(Object error) {
    return 'Hindi maabot ang YouTube: $error';
  }

  @override
  String get moodFocus => 'Focus';

  @override
  String get moodWorkout => 'Workout';

  @override
  String get moodChill => 'Chill';

  @override
  String get moodCommute => 'Biyahe';

  @override
  String get moodParty => 'Party';

  @override
  String moodBuilding(Object mood) {
    return 'Binubuo ang $mood mix…';
  }

  @override
  String moodFailed(Object error) {
    return 'Hindi nagtagumpay:$error';
  }

  @override
  String get shelfRepeat => 'Paulit-ulit';

  @override
  String get shelfRepeatSub => 'Ang huling dalawang linggo mo';

  @override
  String get shelfForgotten => 'Mga lumang hit na nagustuhan mo';

  @override
  String get shelfForgottenSub =>
      'Minahal noon, matagal nang hindi napapakinggan';

  @override
  String get shelfNew => 'Bago';

  @override
  String get shelfNewSub =>
      'Mga bagong track na sa tingin ng AI ay para sa iyo';

  @override
  String shelfBecause(Object artist) {
    return 'Dahil pinakinggan mo si $artist';
  }

  @override
  String get shelfBecauseSub => 'Kapareho ng panlasa mo';

  @override
  String get shelfDeep => 'Halos hindi nagagalaw';

  @override
  String get shelfDeepSub => 'Nasa library mo, bihirang pinapakinggan';

  @override
  String get shelfMix => 'Ang mix mo';

  @override
  String get shelfMixSub => 'Binubuo muli tuwing bubuksan mo ang app';

  @override
  String get shelfAdded => 'Kamakailang idinagdag';

  @override
  String get shelfAddedSub => 'Mga download at file na na-import mo';

  @override
  String get shelfStarter => 'Magsimula dito';

  @override
  String get shelfStarterSub => 'Mag-play ng ilan at agad na matututo ang AI';

  @override
  String reasonPlays(int count) {
    return '$count play';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Nagustuhan, huling pinakinggan $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count play, huli $when';
  }

  @override
  String get reasonTopArtist => 'Isa sa mga pinakapinapakinggan mong artist';

  @override
  String reasonMore(Object artist) {
    return 'Higit pa kay $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Palagi kang bumabalik kay $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Ang tipo mong $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Madalas kang nakikinig ng $tag nitong huli';
  }

  @override
  String get reasonOutThisYear => 'Lumabas ngayong taon';

  @override
  String get reasonReleasedRecently => 'Kamakailang inilabas';

  @override
  String get reasonClose => 'Malapit sa mga pinapakinggan mo';

  @override
  String reasonNear(Object artist) {
    return 'Malapit kay $artist';
  }

  @override
  String get reasonNeverPlayed => 'Hindi pa napapakinggan';

  @override
  String get reasonPlayedOnce => 'Minsan pa lang napakinggan';

  @override
  String get reasonPopular => 'Sikat ngayon';

  @override
  String whenYearsAgo(int count) {
    return '$count taon ang nakalipas';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count buwan ang nakalipas';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count araw ang nakalipas';
  }

  @override
  String get searchHint => 'Mga kanta, artist, album';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resulta',
      one: '1 resulta',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Mga kamakailang paghahanap';

  @override
  String get searchEmptyTitle => 'Walang nakita';

  @override
  String get searchEmptyBody =>
      'Subukan ang ibang baybay, o ang pangalan lang ng artist.';

  @override
  String get searchStartTitle => 'Humanap ng papakinggan';

  @override
  String get searchStartBody =>
      'Maghanap sa YouTube Music — mga kanta lang ang lalabas, hindi mga video ng ibang bagay.';

  @override
  String get libPlaylists => 'Mga playlist';

  @override
  String get libSongs => 'Mga kanta';

  @override
  String get libArtists => 'Mga artist';

  @override
  String get libLiked => 'Mga gusto';

  @override
  String get libDownloads => 'Mga download';

  @override
  String get libImported => 'Na-import';

  @override
  String get libLikedSongs => 'Mga kantang gusto';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kanta',
      one: '1 kanta',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'Sarili kong mga file';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count file',
      one: '1 file',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Bagong playlist';

  @override
  String get libMakeOne => 'Gumawa';

  @override
  String get libSortRecent => 'Kamakailang idinagdag';

  @override
  String get libSortTitle => 'Pamagat';

  @override
  String get libSortArtist => 'Artist';

  @override
  String get libSortPlays => 'Pinakapinakinggan';

  @override
  String get sheetNotForMe => 'Hindi para sa akin';

  @override
  String get sheetNotForMeSub => 'Huwag nang irekomenda ito';

  @override
  String get sheetBlocked => 'Naka-block — i-tap para payagan muli';

  @override
  String get sheetBlockedSub =>
      'Maaari na itong lumabas muli sa mga rekomendasyon';

  @override
  String get sheetPlayNext => 'I-play susunod';

  @override
  String get sheetAddToPlaylist => 'Idagdag sa playlist';

  @override
  String get sheetDownloaded => 'Na-download';

  @override
  String get sheetRemoveFile => 'I-tap para alisin ang file';

  @override
  String get sheetDownload => 'I-download';

  @override
  String get sheetKeepOffline => 'Itago para sa offline';

  @override
  String get sheetRadio => 'Magsimula ng radyo';

  @override
  String get sheetRadioSub => 'Isang queue na hango sa kantang ito';

  @override
  String get sheetQueue => 'Queue';

  @override
  String get sheetSleepTimer => 'Sleep timer';

  @override
  String get sheetSleepOff => 'Naka-off';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minuto';
  }

  @override
  String get sheetSleepEndOfTrack => 'Pagtatapos ng kantang ito';

  @override
  String sheetSleepSet(int count) {
    return 'Hihinto ang musika sa loob ng $count min';
  }

  @override
  String get tasteTitle => 'Ang gusto mo';

  @override
  String get tasteRetrain => 'Sanayin muli';

  @override
  String get tasteRetraining => 'Sinasanay muli batay sa history mo…';

  @override
  String get tasteRetrained => 'Nabuo muli ng AI ang model nito.';

  @override
  String tasteConfidence(int percent) {
    return 'Kumpiyansa $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays play · $skips skip · $likes like';
  }

  @override
  String get tasteEmptySummary => 'Mag-play ng ilang kanta at mapupuno ito.';

  @override
  String get tasteKeepLearning => 'Patuloy na matuto habang nakikinig ako';

  @override
  String get tasteKeepLearningSub =>
      'I-off para i-freeze ang kasalukuyang profile';

  @override
  String get tasteDownloadsTitle => 'Mga download na hinahawakan ng AI';

  @override
  String get tasteDownloadsSub =>
      'Dumarating ang musika sa device nang hindi mo hinihiling';

  @override
  String get tasteDownloadLikes => 'I-download ang lahat ng gusto ko';

  @override
  String get tasteDownloadLikesSub =>
      'Pindutin ang puso at mase-save ang file para sa offline';

  @override
  String get tasteAiInstall =>
      'Hayaang mag-install ang AI ng musikang pinipili nito';

  @override
  String get tasteAiInstallSub => 'Kukunin nito ang mga track na sigurado ito';

  @override
  String get tasteWhatItThinks => 'Ang akala nitong gusto mo';

  @override
  String get tasteWhatItThinksSub =>
      'Natutunan mula sa mga play, skip, like at ulit';

  @override
  String get tasteArtists => 'Mga artist na pinagbabatayan nito';

  @override
  String get tasteWhenYouListen => 'Kapag nakikinig ka';

  @override
  String get tasteWhenYouListenSub =>
      'Mga play kada oras — mas binibigyang-bigat ang kasalukuyang oras';

  @override
  String get tasteDecades => 'Mga dekada';

  @override
  String get tasteTune => 'Ayusin ang mga rekomendasyon';

  @override
  String get tasteTuneSub => 'Magkakabisa sa susunod na pag-refresh ng Home';

  @override
  String get tasteDiscovery => 'Pagtuklas';

  @override
  String get tasteDiscoverySub =>
      'Pamilyar ↔ mga bagay na hindi mo pa naririnig';

  @override
  String get tasteEnergy => 'Enerhiya';

  @override
  String get tasteEnergySub => 'Kalmado ↔ malakas';

  @override
  String get tasteRecency => 'Pagiging bago';

  @override
  String get tasteRecencySub => 'Walang tiyak na panahon ↔ bagong-bago';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Gaano katagal bago ituring na nakalimutan ang isang lumang paborito';

  @override
  String get tasteSignals => 'Mga signal na magagamit nito';

  @override
  String get tasteSignalsSub => 'Lahat ay nananatili sa device na ito';

  @override
  String get tasteUseHistory => 'Ang mga napakinggan ko';

  @override
  String get tasteUseSkips => 'Ang mga ini-skip ko';

  @override
  String get tasteUseTime => 'Oras ng araw';

  @override
  String get tasteUseYouTube => 'Mga mungkahi mula sa YouTube';

  @override
  String get tasteAlwaysMore => 'Laging mas marami ng';

  @override
  String get tasteNeverAgain => 'Huwag na muli';

  @override
  String get tasteAddArtist => 'Magdagdag ng artist';

  @override
  String get tasteMoreOfPrompt => 'Laging mas marami ng…';

  @override
  String get tasteNeverAgainPrompt => 'Huwag na muli…';

  @override
  String get tasteReset => 'I-reset ang natutunan nito';

  @override
  String get tasteResetSub =>
      'Mananatili ang musika mo; magsisimula sa zero ang profile';

  @override
  String get trainCard => 'Sanayin sa pamamagitan ng pag-rate';

  @override
  String get trainCardSub =>
      'Mag-swipe sa mga totoong kanta. Pakanan para sa mas marami pang ganito, pakaliwa para huwag na muli. Mas mabisa ang dalawang minuto rito kaysa isang linggong pakikinig.';

  @override
  String get trainStart => 'Magsimula ng training round';

  @override
  String get trainTitle => 'Training round';

  @override
  String get trainQuestion => 'Gusto mo ba ito sa Home mo?';

  @override
  String get trainMoreLikeThis => 'Mas marami pang ganito';

  @override
  String get trainNeverAgain => 'Huwag na muli';

  @override
  String get trainDone => 'Tapos na ang round';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked itinabi · $blocked na-block. Kumpiyansa $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Bumalik sa gusto mo';

  @override
  String get trainNothingTitle => 'Wala pang ima-rate';

  @override
  String get trainNothingBody =>
      'Magdagdag muna ng musika o hayaang kumuha ang AI ng mga kandidato, saka bumalik.';

  @override
  String get trainLeaveTitle => 'Iwan ang training round?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Kung aalis ka ngayon, itatapon ng AI ang lahat mula sa round na ito — ang lahat ng $count kantang kaka-rate mo lang.',
      one:
          'Kung aalis ka ngayon, itatapon ng AI ang lahat mula sa round na ito — ang 1 kantang kaka-rate mo lang.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Ituloy ang training';

  @override
  String get trainDiscard => 'Itapon at umalis';

  @override
  String get setTitle => 'Mga setting';

  @override
  String get setAppearance => 'Hitsura';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Sundin ang system';

  @override
  String get setThemeLight => 'Maliwanag';

  @override
  String get setThemeDark => 'Madilim';

  @override
  String get setPureBlack => 'Purong itim';

  @override
  String get setPureBlackSub => 'Nakatitipid ng baterya sa OLED na screen';

  @override
  String get setAccent => 'Kulay ng accent';

  @override
  String get setAccentArtwork => 'Mula sa cover art';

  @override
  String get setAccentFixed => 'Isang kulay na pinili ko';

  @override
  String get setLanguage => 'Wika';

  @override
  String get setLanguageSystem => 'Sundin ang system';

  @override
  String get setAccessibility => 'Accessibility';

  @override
  String get setTextSize => 'Laki ng teksto';

  @override
  String get setTextSizeSub => 'Dagdag sa setting ng system mo';

  @override
  String get setReduceMotion => 'Bawasan ang galaw';

  @override
  String get setReduceMotionSub =>
      'Pinahihinto ang mga bar, visualiser, bouncy na pag-scroll, springy na tap at mga page transition';

  @override
  String get setHighContrast => 'Mataas na contrast';

  @override
  String get setHighContrastSub =>
      'Mas malinaw na paghihiwalay at nakikitang mga outline';

  @override
  String get setBoldText => 'Makapal na teksto';

  @override
  String get setPlayback => 'Pag-playback';

  @override
  String get setAutoRadio => 'Ituloy ang musika';

  @override
  String get setAutoRadioSub =>
      'Kapag natapos ang queue, magpapatuloy sa radyong hango sa huling kanta';

  @override
  String get setSmartShuffle => 'Smart shuffle';

  @override
  String get setSmartShuffleSub =>
      'Nagshu-shuffle ayon sa panlasa sa halip na random';

  @override
  String get setResume => 'Ituloy kung saan ako huminto';

  @override
  String get setResumeSub => 'Ibinabalik ang queue pagbukas ng app, naka-pause';

  @override
  String get setDataSaver => 'Data saver kapag wala sa Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Nililimitahan sa 128 kbps ang mga stream at download sa mobile data';

  @override
  String get setHaptics => 'Haptic feedback';

  @override
  String get setShowReasons =>
      'Ipakita kung bakit inirekomenda ang isang bagay';

  @override
  String get setSkipSilence => 'I-skip ang katahimikan';

  @override
  String get setQuality => 'Kalidad ng audio';

  @override
  String get setQualityLow => 'Mababa · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Mataas · 192 kbps';

  @override
  String get setQualityBest => 'Pinakamataas na magagamit';

  @override
  String get setStorage => 'Mga download at storage';

  @override
  String get setWifiOnly => 'Mag-download sa Wi-Fi lang';

  @override
  String get setDailyLimit => 'Pang-araw-araw na limitasyon para sa AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count kanta kada araw';
  }

  @override
  String get setBudget => 'Storage na maaaring gamitin ng AI';

  @override
  String setUsed(Object size) {
    return '$size ang nagamit ng mga download';
  }

  @override
  String get setYourMusic => 'Ang musika mo';

  @override
  String get setImport => 'Magdagdag ng musika mula sa device na ito';

  @override
  String get setImportSub => 'Pumili ng mga folder o isang file';

  @override
  String get setCleanup => 'Linisin ang mga nawawalang file';

  @override
  String get setCleanupSub => 'Alisin ang mga kantang nawala na ang file';

  @override
  String setCleanupDone(int count) {
    return 'Naalis ang $count nawawalang file.';
  }

  @override
  String get setExport => 'Ipadala ang panlasa ko sa ibang device';

  @override
  String get setExportSub =>
      'Magse-save ng file na may mga like, play at lahat ng natutunan ng AI';

  @override
  String get setImportTaste => 'Mag-load ng panlasa mula sa ibang device';

  @override
  String get setImportTasteSub =>
      'Pumili ng naka-save na taste file at i-merge — ligtas ulitin';

  @override
  String get setAbout => 'Tungkol dito';

  @override
  String get setAboutBody =>
      'Musika mula sa YouTube at sarili mong mga file. Ang AI ay tumatakbo nang buo sa device na ito — walang lumalabas dito.';

  @override
  String get setSource => 'Source code';

  @override
  String get importTitle => 'Magdagdag ng musika';

  @override
  String get importPickFolder => 'Pumili ng folder';

  @override
  String get importPickFiles => 'Pumili ng mga file';

  @override
  String importScanning(Object file) {
    return 'Sini-scan ang $file';
  }

  @override
  String importAdded(int count) {
    return '$count ang naidagdag';
  }

  @override
  String get importDenied =>
      'Tinanggihan ang pahintulot — hindi mabasa ang musika mo.';

  @override
  String get importWatched => 'Mga folder na binabantayan';

  @override
  String get importIosHint =>
      'Buksan ang Files app, pumunta sa On My iPhone → TuneBox, at ilagay ang musika roon.';

  @override
  String get playerQueue => 'Queue';

  @override
  String get playerUpNext => 'Susunod';

  @override
  String get playerLyrics => 'Lyrics';

  @override
  String get playerNoLyrics => 'Walang lyrics ang isang ito.';

  @override
  String get playerRepeat => 'Ulitin';

  @override
  String get playerShuffle => 'I-shuffle';

  @override
  String errorPlayback(Object title) {
    return 'Hindi mapatugtog ang \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Nilalaktawan ang \"$title\" — hindi mabuksan ang stream.';
  }

  @override
  String get undo => 'I-undo';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Ngayon: $tags, pinangungunahan ni $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Ngayon: $tags.';
  }

  @override
  String get setColour => 'Kulay';

  @override
  String get setColourSub => 'Sumusunod dito ang buong app';

  @override
  String get setCoverArt => 'Cover art';

  @override
  String get setMyColour => 'Aking kulay';

  @override
  String get setCoverArtSub =>
      'Binabago ng bawat kanta ang kulay ng app ayon sa cover nito.';

  @override
  String get setMyColourSub => 'Isang kulay, saanman, palagi.';

  @override
  String get setPickColour => 'Pumili ng anumang kulay';

  @override
  String get setWifiOnlyTitle => 'Mag-download sa Wi-Fi lang';

  @override
  String get setDownloadLikes => 'I-download ang lahat ng gusto ko';

  @override
  String get setDownloadLikesSub => 'Sine-save din ng heart button ang file';

  @override
  String get setAiInstall =>
      'Hayaang mag-install ang AI ng musikang pinipili nito';

  @override
  String get setSkipSilenceSub =>
      'Android lang. Maaaring putulin ang tahimik na intro, fade at mahinang bahagi — i-off kung nagka-skip ang musika';

  @override
  String get setStorageUsed => 'Storage na nagamit ng mga download';

  @override
  String get setLibrary => 'Library';

  @override
  String get setUpdates => 'Mga update';

  @override
  String get setAutoUpdate => 'Awtomatikong mag-check ng update';

  @override
  String get setAutoUpdateSub =>
      'Tuwing ilang oras, tahimik, at nagda-download sa Wi-Fi. Magtatanong pa rin bago mag-install.';

  @override
  String setUpdateReady(Object version) {
    return 'Handa na ang update sa $version';
  }

  @override
  String get setUpdateReadySub => 'Na-download — i-tap para i-install';

  @override
  String get setUpdateAvailableSub =>
      'Kunin sa releases page — i-tap para kopyahin ang link';

  @override
  String get setLinkCopied => 'Nakopya ang link';

  @override
  String get setCheckNow => 'Mag-check ngayon';

  @override
  String get setUpToDate => 'Napapanahon na ang TuneBox';

  @override
  String get setChecking => 'Naghahanap ng mas bagong bersyon…';
}
