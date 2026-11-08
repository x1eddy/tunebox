// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class LLo extends L {
  LLo([String locale = 'lo']) : super(locale);

  @override
  String get navHome => 'ໜ້າຫຼັກ';

  @override
  String get navExplore => 'ສຳຫຼວດ';

  @override
  String get navLibrary => 'ຄັງເພງ';

  @override
  String get navTaste => 'ລົດນິຍົມຂອງທ່ານ';

  @override
  String get actionDone => 'ແລ້ວໆ';

  @override
  String get actionCancel => 'ຍົກເລີກ';

  @override
  String get actionCreate => 'ສ້າງ';

  @override
  String get actionPlay => 'ຫຼິ້ນ';

  @override
  String get actionShuffle => 'ສຸ່ມຫຼິ້ນ';

  @override
  String get actionPlayAll => 'ຫຼິ້ນທັງໝົດ';

  @override
  String get actionAdd => 'ເພີ່ມ';

  @override
  String get actionRemove => 'ລຶບ';

  @override
  String get actionName => 'ຊື່';

  @override
  String get greetingNight => 'ຍັງບໍ່ນອນບໍ?';

  @override
  String get greetingMorning => 'ສະບາຍດີຕອນເຊົ້າ';

  @override
  String get greetingAfternoon => 'ສະບາຍດີຕອນບ່າຍ';

  @override
  String get greetingEvening => 'ສະບາຍດີຕອນແລງ';

  @override
  String get homeBuilding => 'AI ກຳລັງສ້າງຊັ້ນວາງຂອງທ່ານ…';

  @override
  String get homeOffline => 'ອອບລາຍ — ສະແດງສິ່ງທີ່ມີຢູ່ໃນອຸປະກອນ';

  @override
  String get homeNothingYet => 'ຍັງບໍ່ມີຫຍັງຈະສະແດງ';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ຊັ້ນວາງ, ຮີເຟຣດເມື່ອສັກຄູ່',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'ສ້າງຊັ້ນວາງໃໝ່';

  @override
  String get homeAddMusic => 'ເພີ່ມເພງຈາກອຸປະກອນນີ້';

  @override
  String get homeQuickPicks => 'ເລືອກດ່ວນ';

  @override
  String get homeQuickPicksSub => 'ກັບໄປຫາສິ່ງທີ່ທ່ານຟັງຢູ່ທັນທີ';

  @override
  String get homeEmptyTitle => 'ຄັງເພງຂອງທ່ານຫວ່າງເປົ່າ';

  @override
  String get homeEmptyBody =>
      'ຄົ້ນຫາບາງສິ່ງ ຫຼື ເພີ່ມເພງທີ່ມີຢູ່ໃນອຸປະກອນນີ້ແລ້ວ. AI ເລີ່ມຮຽນຮູ້ຕັ້ງແຕ່ການຫຼິ້ນຄັ້ງທຳອິດຂອງທ່ານ.';

  @override
  String get homeAddMyMusic => 'ເພີ່ມເພງຂອງຂ້ອຍ';

  @override
  String homeCouldNotReach(Object error) {
    return 'ເຊື່ອມຕໍ່ YouTube ບໍ່ໄດ້: $error';
  }

  @override
  String get moodFocus => 'ໂຟກັສ';

  @override
  String get moodWorkout => 'ອອກກຳລັງກາຍ';

  @override
  String get moodChill => 'ຜ່ອນຄາຍ';

  @override
  String get moodCommute => 'ເດີນທາງ';

  @override
  String get moodParty => 'ງານລ້ຽງ';

  @override
  String moodBuilding(Object mood) {
    return 'ກຳລັງສ້າງມິກ $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'ບໍ່ສຳເລັດ: $error';
  }

  @override
  String get shelfRepeat => 'ຫຼິ້ນຊ້ຳ';

  @override
  String get shelfRepeatSub => 'ສອງອາທິດທີ່ຜ່ານມາຂອງທ່ານ';

  @override
  String get shelfForgotten => 'ເພງຮິດເກົ່າທີ່ທ່ານມັກແຕ່ລືມໄປ';

  @override
  String get shelfForgottenSub => 'ເຄີຍມັກ ແຕ່ບໍ່ໄດ້ແຕະມາໄລຍະໜຶ່ງ';

  @override
  String get shelfNew => 'ໃໝ່';

  @override
  String get shelfNewSub => 'ເພງໃໝ່ທີ່ AI ຄິດວ່າເໝາະກັບທ່ານ';

  @override
  String shelfBecause(Object artist) {
    return 'ເພາະທ່ານຟັງ $artist';
  }

  @override
  String get shelfBecauseSub => 'ລົດນິຍົມແບບດຽວກັນ';

  @override
  String get shelfDeep => 'ແຕະແທບບໍ່ເຄີຍ';

  @override
  String get shelfDeepSub => 'ຢູ່ໃນຄັງເພງ ແຕ່ແທບບໍ່ເຄີຍຫຼິ້ນ';

  @override
  String get shelfMix => 'ມິກຂອງທ່ານ';

  @override
  String get shelfMixSub => 'ສ້າງໃໝ່ທຸກຄັ້ງທີ່ທ່ານເປີດແອັບ';

  @override
  String get shelfAdded => 'ເພີ່ມເມື່ອບໍ່ດົນ';

  @override
  String get shelfAddedSub => 'ເພງທີ່ດາວໂຫຼດ ແລະ ໄຟລ໌ທີ່ນຳເຂົ້າ';

  @override
  String get shelfStarter => 'ເລີ່ມຕົ້ນບ່ອນນີ້';

  @override
  String get shelfStarterSub => 'ຫຼິ້ນສອງສາມເພງ ແລ້ວ AI ຈະເລີ່ມຮຽນຮູ້ທັນທີ';

  @override
  String reasonPlays(int count) {
    return 'ຫຼິ້ນ $count ຄັ້ງ';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ມັກ, ຫຼິ້ນຄັ້ງລ່າສຸດ $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'ຫຼິ້ນ $count ຄັ້ງ, ຄັ້ງລ່າສຸດ $when';
  }

  @override
  String get reasonTopArtist => 'ໜຶ່ງໃນສິນລະປິນທີ່ທ່ານຟັງຫຼາຍທີ່ສຸດ';

  @override
  String reasonMore(Object artist) {
    return '$artist ເພີ່ມເຕີມ';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'ທ່ານກັບມາຟັງ $artist ຢູ່ເລື້ອຍໆ';
  }

  @override
  String reasonYourKind(Object tag) {
    return '$tag ແບບທີ່ທ່ານມັກ';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ຟັງ $tag ຫຼາຍຊ່ວງນີ້';
  }

  @override
  String get reasonOutThisYear => 'ອອກປີນີ້';

  @override
  String get reasonReleasedRecently => 'ປ່ອຍອອກເມື່ອບໍ່ດົນ';

  @override
  String get reasonClose => 'ໃກ້ຄຽງກັບສິ່ງທີ່ທ່ານຟັງຢູ່';

  @override
  String reasonNear(Object artist) {
    return 'ຢູ່ໃກ້ $artist';
  }

  @override
  String get reasonNeverPlayed => 'ບໍ່ເຄີຍຫຼິ້ນ';

  @override
  String get reasonPlayedOnce => 'ຫຼິ້ນຄັ້ງດຽວ';

  @override
  String get reasonPopular => 'ກຳລັງນິຍົມ';

  @override
  String whenYearsAgo(int count) {
    return '$count ປີກ່ອນ';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ເດືອນກ່ອນ';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count ມື້ກ່ອນ';
  }

  @override
  String get searchHint => 'ເພງ, ສິນລະປິນ, ອັລບັ້ມ';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ຜົນລັບ',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'ການຄົ້ນຫາຫຼ້າສຸດ';

  @override
  String get searchEmptyTitle => 'ບໍ່ພົບຫຍັງ';

  @override
  String get searchEmptyBody => 'ລອງສະກົດແບບອື່ນ ຫຼື ໃສ່ແຕ່ຊື່ສິນລະປິນ.';

  @override
  String get searchStartTitle => 'ຊອກຫາສິ່ງທີ່ຈະຫຼິ້ນ';

  @override
  String get searchStartBody =>
      'ຄົ້ນຫາ YouTube Music — ຈະມີແຕ່ເພງເທົ່ານັ້ນ, ບໍ່ມີວິດີໂອອື່ນ.';

  @override
  String get libPlaylists => 'ເພລລິດ';

  @override
  String get libSongs => 'ເພງ';

  @override
  String get libArtists => 'ສິນລະປິນ';

  @override
  String get libLiked => 'ທີ່ມັກ';

  @override
  String get libDownloads => 'ດາວໂຫຼດ';

  @override
  String get libImported => 'ນຳເຂົ້າ';

  @override
  String get libLikedSongs => 'ເພງທີ່ມັກ';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ເພງ',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ອອບລາຍ';
  }

  @override
  String get libMyFiles => 'ໄຟລ໌ຂອງຂ້ອຍເອງ';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ໄຟລ໌',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'ເພລລິດໃໝ່';

  @override
  String get libMakeOne => 'ສ້າງໜຶ່ງອັນ';

  @override
  String get libSortRecent => 'ເພີ່ມເມື່ອບໍ່ດົນ';

  @override
  String get libSortTitle => 'ຊື່ເພງ';

  @override
  String get libSortArtist => 'ສິນລະປິນ';

  @override
  String get libSortPlays => 'ຫຼິ້ນຫຼາຍທີ່ສຸດ';

  @override
  String get sheetNotForMe => 'ບໍ່ແມ່ນສຳລັບຂ້ອຍ';

  @override
  String get sheetNotForMeSub => 'ຢ່າແນະນຳອັນນີ້ອີກ';

  @override
  String get sheetBlocked => 'ບລັອກແລ້ວ — ແຕະເພື່ອອະນຸຍາດອີກຄັ້ງ';

  @override
  String get sheetBlockedSub => 'ມັນອາດປາກົດໃນຄຳແນະນຳອີກ';

  @override
  String get sheetPlayNext => 'ຫຼິ້ນຕໍ່ໄປ';

  @override
  String get sheetAddToPlaylist => 'ເພີ່ມໃສ່ເພລລິດ';

  @override
  String get sheetDownloaded => 'ດາວໂຫຼດແລ້ວ';

  @override
  String get sheetRemoveFile => 'ແຕະເພື່ອລຶບໄຟລ໌';

  @override
  String get sheetDownload => 'ດາວໂຫຼດ';

  @override
  String get sheetKeepOffline => 'ເກັບໄວ້ຟັງອອບລາຍ';

  @override
  String get sheetRadio => 'ເລີ່ມວິທະຍຸ';

  @override
  String get sheetRadioSub => 'ຄິວທີ່ສ້າງອ້ອມເພງນີ້';

  @override
  String get sheetQueue => 'ຄິວ';

  @override
  String get sheetSleepTimer => 'ຕັ້ງເວລານອນ';

  @override
  String get sheetSleepOff => 'ປິດ';

  @override
  String sheetSleepMinutes(int count) {
    return '$count ນາທີ';
  }

  @override
  String get sheetSleepEndOfTrack => 'ເມື່ອເພງນີ້ຈົບ';

  @override
  String sheetSleepSet(int count) {
    return 'ເພງຈະຢຸດໃນ $count ນາທີ';
  }

  @override
  String get tasteTitle => 'ລົດນິຍົມຂອງທ່ານ';

  @override
  String get tasteRetrain => 'ຝຶກໃໝ່';

  @override
  String get tasteRetraining => 'ກຳລັງຝຶກໃໝ່ຈາກປະຫວັດຂອງທ່ານ…';

  @override
  String get tasteRetrained => 'AI ສ້າງໂມເດວຂອງມັນໃໝ່ແລ້ວ.';

  @override
  String tasteConfidence(int percent) {
    return 'ຄວາມໝັ້ນໃຈ $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'ຫຼິ້ນ $plays · ຂ້າມ $skips · ມັກ $likes';
  }

  @override
  String get tasteEmptySummary => 'ຫຼິ້ນສອງສາມເພງ ແລ້ວນີ້ຈະເຕັມ.';

  @override
  String get tasteKeepLearning => 'ຮຽນຮູ້ຕໍ່ໄປໃນຂະນະທີ່ຟັງ';

  @override
  String get tasteKeepLearningSub => 'ປິດເພື່ອລັອກໂປຣໄຟລ໌ປັດຈຸບັນ';

  @override
  String get tasteDownloadsTitle => 'ການດາວໂຫຼດທີ່ AI ຈັດການ';

  @override
  String get tasteDownloadsSub => 'ເພງຈະມາຢູ່ໃນອຸປະກອນໂດຍທີ່ທ່ານບໍ່ຕ້ອງຂໍ';

  @override
  String get tasteDownloadLikes => 'ດາວໂຫຼດທຸກຢ່າງທີ່ຂ້ອຍມັກ';

  @override
  String get tasteDownloadLikesSub =>
      'ກົດຫົວໃຈ ແລ້ວໄຟລ໌ຈະຖືກບັນທຶກໄວ້ຟັງອອບລາຍ';

  @override
  String get tasteAiInstall => 'ໃຫ້ AI ຕິດຕັ້ງເພງທີ່ມັນເລືອກ';

  @override
  String get tasteAiInstallSub => 'ມັນຈະດຶງເພງທີ່ມັນໝັ້ນໃຈ';

  @override
  String get tasteWhatItThinks => 'ສິ່ງທີ່ມັນຄິດວ່າທ່ານມັກ';

  @override
  String get tasteWhatItThinksSub =>
      'ຮຽນຮູ້ຈາກການຫຼິ້ນ, ການຂ້າມ, ການມັກ ແລະ ການຫຼິ້ນຊ້ຳ';

  @override
  String get tasteArtists => 'ສິນລະປິນທີ່ມັນອີງໃສ່';

  @override
  String get tasteWhenYouListen => 'ເວລາທີ່ທ່ານຟັງ';

  @override
  String get tasteWhenYouListenSub =>
      'ການຫຼິ້ນຕໍ່ຊົ່ວໂມງ — ຊົ່ວໂມງປັດຈຸບັນມີນ້ຳໜັກຫຼາຍກວ່າ';

  @override
  String get tasteDecades => 'ທົດສະວັດ';

  @override
  String get tasteTune => 'ປັບແຕ່ງຄຳແນະນຳ';

  @override
  String get tasteTuneSub => 'ມີຜົນເມື່ອຮີເຟຣດໜ້າຫຼັກຄັ້ງຕໍ່ໄປ';

  @override
  String get tasteDiscovery => 'ການຄົ້ນພົບ';

  @override
  String get tasteDiscoverySub => 'ຄຸ້ນເຄີຍ ↔ ສິ່ງທີ່ທ່ານບໍ່ເຄີຍໄດ້ຍິນ';

  @override
  String get tasteEnergy => 'ພະລັງງານ';

  @override
  String get tasteEnergySub => 'ສະຫງົບ ↔ ດັງ';

  @override
  String get tasteRecency => 'ຄວາມໃໝ່';

  @override
  String get tasteRecencySub => 'ຂ້າມຍຸກ ↔ ໃໝ່ເອີຍ';

  @override
  String get tasteNostalgia => 'ຄວາມຄິດຮອດ';

  @override
  String get tasteNostalgiaSub =>
      'ເພງໂປດເກົ່າຕ້ອງຍ້ອນຫຼັງໄປໄກເທົ່າໃດຈຶ່ງນັບວ່າລືມແລ້ວ';

  @override
  String get tasteSignals => 'ສັນຍານທີ່ມັນອາດໃຊ້';

  @override
  String get tasteSignalsSub => 'ທຸກຢ່າງຢູ່ໃນອຸປະກອນນີ້ເທົ່ານັ້ນ';

  @override
  String get tasteUseHistory => 'ສິ່ງທີ່ຂ້ອຍເຄີຍຫຼິ້ນ';

  @override
  String get tasteUseSkips => 'ສິ່ງທີ່ຂ້ອຍຂ້າມ';

  @override
  String get tasteUseTime => 'ເວລາຂອງວັນ';

  @override
  String get tasteUseYouTube => 'ຄຳແນະນຳຈາກ YouTube';

  @override
  String get tasteAlwaysMore => 'ເອົາຫຼາຍຂຶ້ນສະເໝີ';

  @override
  String get tasteNeverAgain => 'ບໍ່ເອົາອີກ';

  @override
  String get tasteAddArtist => 'ເພີ່ມສິນລະປິນ';

  @override
  String get tasteMoreOfPrompt => 'ເອົາຫຼາຍຂຶ້ນສະເໝີ…';

  @override
  String get tasteNeverAgainPrompt => 'ບໍ່ເອົາອີກ…';

  @override
  String get tasteReset => 'ລີເຊັດສິ່ງທີ່ມັນຮຽນຮູ້';

  @override
  String get tasteResetSub => 'ເພງຂອງທ່ານຍັງຢູ່; ໂປຣໄຟລ໌ເລີ່ມຈາກສູນ';

  @override
  String get trainCard => 'ຝຶກມັນດ້ວຍການໃຫ້ຄະແນນ';

  @override
  String get trainCardSub =>
      'ປັດຜ່ານເພງຈິງ. ຂວາເພື່ອເອົາແນວນີ້ຫຼາຍຂຶ້ນ, ຊ້າຍເພື່ອບໍ່ເອົາອີກ. ສອງນາທີຢູ່ນີ້ດີກວ່າຟັງໜຶ່ງອາທິດ.';

  @override
  String get trainStart => 'ເລີ່ມຮອບການຝຶກ';

  @override
  String get trainTitle => 'ຮອບການຝຶກ';

  @override
  String get trainQuestion => 'ທ່ານຢາກໃຫ້ເພງນີ້ຢູ່ໃນໜ້າຫຼັກບໍ?';

  @override
  String get trainMoreLikeThis => 'ແນວນີ້ຫຼາຍຂຶ້ນ';

  @override
  String get trainNeverAgain => 'ບໍ່ເອົາອີກ';

  @override
  String get trainDone => 'ຈົບຮອບແລ້ວ';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'ເກັບໄວ້ $liked · ບລັອກ $blocked. ຄວາມໝັ້ນໃຈ $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'ກັບໄປລົດນິຍົມຂອງທ່ານ';

  @override
  String get trainNothingTitle => 'ຍັງບໍ່ມີຫຍັງໃຫ້ຄະແນນ';

  @override
  String get trainNothingBody =>
      'ເພີ່ມເພງ ຫຼື ໃຫ້ AI ດຶງເພງຕົວເລືອກກ່ອນ ແລ້ວກັບມາໃໝ່.';

  @override
  String get trainLeaveTitle => 'ອອກຈາກຮອບການຝຶກບໍ?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ຖ້າອອກດຽວນີ້ AI ຈະຖິ້ມທຸກຢ່າງຈາກຮອບນີ້ — $count ເພງທີ່ທ່ານຫາກໍໃຫ້ຄະແນນ.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'ຝຶກຕໍ່';

  @override
  String get trainDiscard => 'ຖິ້ມແລ້ວອອກ';

  @override
  String get setTitle => 'ການຕັ້ງຄ່າ';

  @override
  String get setAppearance => 'ຮູບລັກສະນະ';

  @override
  String get setTheme => 'ທີມ';

  @override
  String get setThemeSystem => 'ຕາມລະບົບ';

  @override
  String get setThemeLight => 'ສະຫວ່າງ';

  @override
  String get setThemeDark => 'ມືດ';

  @override
  String get setPureBlack => 'ດຳສະນິດ';

  @override
  String get setPureBlackSub => 'ປະຢັດພະລັງງານໃນໜ້າຈໍ OLED';

  @override
  String get setAccent => 'ສີເນັ້ນ';

  @override
  String get setAccentArtwork => 'ຈາກປົກເພງ';

  @override
  String get setAccentFixed => 'ສີດຽວທີ່ຂ້ອຍເລືອກ';

  @override
  String get setLanguage => 'ພາສາ';

  @override
  String get setLanguageSystem => 'ຕາມລະບົບ';

  @override
  String get setAccessibility => 'ການເຂົ້າເຖິງ';

  @override
  String get setTextSize => 'ຂະໜາດຕົວອັກສອນ';

  @override
  String get setTextSizeSub => 'ເພີ່ມຈາກການຕັ້ງຄ່າລະບົບຂອງທ່ານ';

  @override
  String get setReduceMotion => 'ຫຼຸດການເຄື່ອນໄຫວ';

  @override
  String get setReduceMotionSub =>
      'ຢຸດແທ່ງສຽງ, ວິຊວນລາຍເຊີ, ການເລື່ອນແບບເດັ້ງ, ການແຕະແບບສະປຣິງ ແລະ ການປ່ຽນໜ້າ';

  @override
  String get setHighContrast => 'ຄອນຕຣາສຕ໌ສູງ';

  @override
  String get setHighContrastSub => 'ແຍກຊັດເຈນຂຶ້ນ ແລະ ເສັ້ນຂອບທີ່ເຫັນໄດ້';

  @override
  String get setBoldText => 'ຕົວອັກສອນໜາ';

  @override
  String get setPlayback => 'ການຫຼິ້ນ';

  @override
  String get setAutoRadio => 'ໃຫ້ເພງຫຼິ້ນຕໍ່ໄປ';

  @override
  String get setAutoRadioSub =>
      'ເມື່ອຄິວຈົບ ໃຫ້ຫຼິ້ນຕໍ່ດ້ວຍວິທະຍຸທີ່ສ້າງຈາກເພງສຸດທ້າຍ';

  @override
  String get setSmartShuffle => 'ສຸ່ມແບບສະຫຼາດ';

  @override
  String get setSmartShuffleSub => 'ສຸ່ມຕາມລົດນິຍົມແທນການສຸ່ມທົ່ວໄປ';

  @override
  String get setResume => 'ຕໍ່ຈາກບ່ອນທີ່ຢຸດໄວ້';

  @override
  String get setResumeSub => 'ກູ້ຄິວຄືນເມື່ອເປີດແອັບ ໂດຍຢຸດຊົ່ວຄາວ';

  @override
  String get setDataSaver => 'ປະຢັດດາຕ້ານອກ Wi-Fi';

  @override
  String get setDataSaverSub =>
      'ຈຳກັດສະຕຣີມ ແລະ ການດາວໂຫຼດທີ່ 128 kbps ເມື່ອໃຊ້ອິນເຕີເນັດມືຖື';

  @override
  String get setHaptics => 'ການສັ່ນຕອບສະໜອງ';

  @override
  String get setShowReasons => 'ສະແດງເຫດຜົນທີ່ແນະນຳ';

  @override
  String get setSkipSilence => 'ຂ້າມຊ່ວງງຽບ';

  @override
  String get setQuality => 'ຄຸນນະພາບສຽງ';

  @override
  String get setQualityLow => 'ຕ່ຳ · 64 kbps';

  @override
  String get setQualityNormal => 'ປົກກະຕິ · 128 kbps';

  @override
  String get setQualityHigh => 'ສູງ · 192 kbps';

  @override
  String get setQualityBest => 'ດີທີ່ສຸດທີ່ມີ';

  @override
  String get setStorage => 'ການດາວໂຫຼດ ແລະ ພື້ນທີ່ເກັບຂໍ້ມູນ';

  @override
  String get setWifiOnly => 'ດາວໂຫຼດຜ່ານ Wi-Fi ເທົ່ານັ້ນ';

  @override
  String get setDailyLimit => 'ຂີດຈຳກັດລາຍວັນຂອງ AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count ເພງຕໍ່ມື້';
  }

  @override
  String get setBudget => 'ພື້ນທີ່ເກັບຂໍ້ມູນທີ່ AI ໃຊ້ໄດ້';

  @override
  String setUsed(Object size) {
    return 'ການດາວໂຫຼດໃຊ້ໄປ $size';
  }

  @override
  String get setYourMusic => 'ເພງຂອງທ່ານ';

  @override
  String get setImport => 'ເພີ່ມເພງຈາກອຸປະກອນນີ້';

  @override
  String get setImportSub => 'ເລືອກໂຟນເດີ ຫຼື ໄຟລ໌ດ່ຽວ';

  @override
  String get setCleanup => 'ລ້າງໄຟລ໌ທີ່ຫາຍໄປ';

  @override
  String get setCleanupSub => 'ລຶບເພງທີ່ໄຟລ໌ຫາຍໄປແລ້ວ';

  @override
  String setCleanupDone(int count) {
    return 'ລຶບ $count ໄຟລ໌ທີ່ຫາຍໄປແລ້ວ.';
  }

  @override
  String get setExport => 'ສົ່ງລົດນິຍົມຂອງຂ້ອຍໄປອຸປະກອນອື່ນ';

  @override
  String get setExportSub =>
      'ບັນທຶກໄຟລ໌ທີ່ມີສິ່ງທີ່ມັກ, ການຫຼິ້ນ ແລະ ທຸກຢ່າງທີ່ AI ຮຽນຮູ້';

  @override
  String get setImportTaste => 'ໂຫຼດລົດນິຍົມຈາກອຸປະກອນອື່ນ';

  @override
  String get setImportTasteSub =>
      'ເລືອກໄຟລ໌ລົດນິຍົມທີ່ບັນທຶກໄວ້ແລ້ວລວມເຂົ້າ — ເຮັດຊ້ຳໄດ້ຢ່າງປອດໄພ';

  @override
  String get setAbout => 'ກ່ຽວກັບ';

  @override
  String get setAboutBody =>
      'ເພງຈາກ YouTube ແລະ ໄຟລ໌ຂອງທ່ານເອງ. AI ເຮັດວຽກທັງໝົດໃນອຸປະກອນນີ້ — ບໍ່ມີຫຍັງອອກໄປຂ້າງນອກ.';

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
  String get setSource => 'ໂຄ້ດຕົ້ນສະບັບ';

  @override
  String get importTitle => 'ເພີ່ມເພງ';

  @override
  String get importPickFolder => 'ເລືອກໂຟນເດີ';

  @override
  String get importPickFiles => 'ເລືອກໄຟລ໌';

  @override
  String importScanning(Object file) {
    return 'ກຳລັງສະແກນ $file';
  }

  @override
  String importAdded(int count) {
    return 'ເພີ່ມແລ້ວ $count';
  }

  @override
  String get importDenied => 'ຖືກປະຕິເສດການອະນຸຍາດ — ອ່ານເພງຂອງທ່ານບໍ່ໄດ້.';

  @override
  String get importWatched => 'ໂຟນເດີທີ່ມັນເຝົ້າເບິ່ງ';

  @override
  String get importIosHint =>
      'ເປີດແອັບ Files, ໄປທີ່ On My iPhone → TuneBox, ແລ້ວວາງເພງໄວ້ບ່ອນນັ້ນ.';

  @override
  String get playerQueue => 'ຄິວ';

  @override
  String get playerUpNext => 'ຕໍ່ໄປ';

  @override
  String get playerLyrics => 'ເນື້ອເພງ';

  @override
  String get playerNoLyrics => 'ບໍ່ມີເນື້ອເພງສຳລັບເພງນີ້.';

  @override
  String get playerRepeat => 'ຫຼິ້ນຊ້ຳ';

  @override
  String get playerShuffle => 'ສຸ່ມຫຼິ້ນ';

  @override
  String errorPlayback(Object title) {
    return 'ຫຼິ້ນ \"$title\" ບໍ່ໄດ້';
  }

  @override
  String errorSkipping(Object title) {
    return 'ຂ້າມ \"$title\" — ເປີດສະຕຣີມບໍ່ໄດ້.';
  }

  @override
  String get undo => 'ຍົກເລີກການກະທຳ';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ດຽວນີ້: $tags, ນຳໂດຍ $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ດຽວນີ້: $tags.';
  }

  @override
  String get setColour => 'ສີ';

  @override
  String get setColourSub => 'ທັງແອັບຈະຕາມສີນີ້';

  @override
  String get setCoverArt => 'ປົກເພງ';

  @override
  String get setMyColour => 'ສີຂອງຂ້ອຍ';

  @override
  String get setCoverArtSub => 'ທຸກເພງຈະປ່ຽນສີແອັບຕາມປົກຂອງມັນ.';

  @override
  String get setMyColourSub => 'ສີດຽວ, ທຸກບ່ອນ, ຕະຫຼອດເວລາ.';

  @override
  String get setPickColour => 'ເລືອກສີໃດກໍໄດ້';

  @override
  String get setWifiOnlyTitle => 'ດາວໂຫຼດຜ່ານ Wi-Fi ເທົ່ານັ້ນ';

  @override
  String get setDownloadLikes => 'ດາວໂຫຼດທຸກຢ່າງທີ່ຂ້ອຍມັກ';

  @override
  String get setDownloadLikesSub => 'ປຸ່ມຫົວໃຈຈະບັນທຶກໄຟລ໌ນຳ';

  @override
  String get setAiInstall => 'ໃຫ້ AI ຕິດຕັ້ງເພງທີ່ມັນເລືອກ';

  @override
  String get setSkipSilenceSub =>
      'Android ເທົ່ານັ້ນ. ອາດຕັດຊ່ວງເກີ່ນງຽບ, ການຄ່ອຍໆເບົາລົງ ແລະ ຊ່ວງນຸ້ມນວນ — ປິດໄວ້ຖ້າເພງກະຕຸກ';

  @override
  String get setStorageUsed => 'ພື້ນທີ່ທີ່ການດາວໂຫຼດໃຊ້';

  @override
  String get setLibrary => 'ຄັງເພງ';

  @override
  String get setUpdates => 'ການອັບເດດ';

  @override
  String get setAutoUpdate => 'ກວດຫາອັບເດດເອງ';

  @override
  String get setAutoUpdateSub =>
      'ທຸກສອງສາມຊົ່ວໂມງ, ແບບງຽບໆ, ແລະ ດາວໂຫຼດຜ່ານ Wi-Fi. ການຕິດຕັ້ງຍັງຖາມທ່ານ.';

  @override
  String setUpdateReady(Object version) {
    return 'ອັບເດດເປັນ $version ພ້ອມແລ້ວ';
  }

  @override
  String get setUpdateReadySub => 'ດາວໂຫຼດແລ້ວ — ແຕະເພື່ອຕິດຕັ້ງ';

  @override
  String get setUpdateAvailableSub =>
      'ຮັບໄດ້ຈາກໜ້າ releases — ແຕະເພື່ອຄັດລອກລິ້ງ';

  @override
  String get setLinkCopied => 'ຄັດລອກລິ້ງແລ້ວ';

  @override
  String get setCheckNow => 'ກວດດຽວນີ້';

  @override
  String get setUpToDate => 'TuneBox ເປັນເວີຊັນຫຼ້າສຸດແລ້ວ';

  @override
  String get setChecking => 'ກຳລັງຫາເວີຊັນໃໝ່ກວ່າ…';

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
