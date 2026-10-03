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
}
