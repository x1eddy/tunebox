// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class LTh extends L {
  LTh([String locale = 'th']) : super(locale);

  @override
  String get navHome => 'หน้าแรก';

  @override
  String get navExplore => 'สำรวจ';

  @override
  String get navLibrary => 'คลังเพลง';

  @override
  String get navTaste => 'รสนิยมของคุณ';

  @override
  String get actionDone => 'เสร็จสิ้น';

  @override
  String get actionCancel => 'ยกเลิก';

  @override
  String get actionCreate => 'สร้าง';

  @override
  String get actionPlay => 'เล่น';

  @override
  String get actionShuffle => 'สุ่มเพลง';

  @override
  String get actionPlayAll => 'เล่นทั้งหมด';

  @override
  String get actionAdd => 'เพิ่ม';

  @override
  String get actionRemove => 'ลบ';

  @override
  String get actionName => 'ชื่อ';

  @override
  String get greetingNight => 'ยังไม่นอนอีกเหรอ?';

  @override
  String get greetingMorning => 'อรุณสวัสดิ์';

  @override
  String get greetingAfternoon => 'สวัสดีตอนบ่าย';

  @override
  String get greetingEvening => 'สวัสดีตอนเย็น';

  @override
  String get homeBuilding => 'AI กำลังจัดชั้นเพลงให้คุณ…';

  @override
  String get homeOffline => 'ออฟไลน์ — แสดงสิ่งที่มีอยู่ในอุปกรณ์';

  @override
  String get homeNothingYet => 'ยังไม่มีอะไรให้แสดง';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ชั้น อัปเดตเมื่อสักครู่',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'จัดชั้นใหม่';

  @override
  String get homeAddMusic => 'เพิ่มเพลงจากอุปกรณ์เครื่องนี้';

  @override
  String get homeQuickPicks => 'เลือกด่วน';

  @override
  String get homeQuickPicksSub => 'กลับไปฟังต่อจากที่ค้างไว้ได้ทันที';

  @override
  String get homeEmptyTitle => 'คลังเพลงของคุณยังว่างอยู่';

  @override
  String get homeEmptyBody =>
      'ลองค้นหาอะไรสักอย่าง หรือเพิ่มเพลงที่มีอยู่แล้วในอุปกรณ์นี้ AI เริ่มเรียนรู้ตั้งแต่ที่คุณเล่นเพลงแรก';

  @override
  String get homeAddMyMusic => 'เพิ่มเพลงของฉัน';

  @override
  String homeCouldNotReach(Object error) {
    return 'เชื่อมต่อ YouTube ไม่ได้: $error';
  }

  @override
  String get moodFocus => 'โฟกัส';

  @override
  String get moodWorkout => 'ออกกำลังกาย';

  @override
  String get moodChill => 'ชิล';

  @override
  String get moodCommute => 'เดินทาง';

  @override
  String get moodParty => 'ปาร์ตี้';

  @override
  String moodBuilding(Object mood) {
    return 'กำลังสร้างมิกซ์ $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'ไม่สำเร็จ: $error';
  }

  @override
  String get shelfRepeat => 'เล่นซ้ำบ่อย';

  @override
  String get shelfRepeatSub => 'สองสัปดาห์ที่ผ่านมาของคุณ';

  @override
  String get shelfForgotten => 'เพลงฮิตเก่าที่ลืมไปแล้วซึ่งคุณเคยชอบ';

  @override
  String get shelfForgottenSub => 'เคยรักแต่ไม่ได้ฟังมาสักพัก';

  @override
  String get shelfNew => 'ใหม่';

  @override
  String get shelfNewSub => 'เพลงใหม่ที่ AI คิดว่าใช่สำหรับคุณ';

  @override
  String shelfBecause(Object artist) {
    return 'เพราะคุณฟัง $artist';
  }

  @override
  String get shelfBecauseSub => 'มุมเดียวกันของรสนิยมคุณ';

  @override
  String get shelfDeep => 'แทบไม่เคยแตะ';

  @override
  String get shelfDeepSub => 'อยู่ในคลังของคุณ แต่แทบไม่เคยเล่น';

  @override
  String get shelfMix => 'มิกซ์ของคุณ';

  @override
  String get shelfMixSub => 'สร้างใหม่ทุกครั้งที่เปิดแอป';

  @override
  String get shelfAdded => 'เพิ่มล่าสุด';

  @override
  String get shelfAddedSub => 'ไฟล์ที่ดาวน์โหลดและนำเข้า';

  @override
  String get shelfStarter => 'เริ่มที่นี่';

  @override
  String get shelfStarterSub =>
      'เล่นสักสองสามเพลง แล้ว AI จะเริ่มเรียนรู้ทันที';

  @override
  String reasonPlays(int count) {
    return 'เล่น $count ครั้ง';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'ถูกใจ เล่นล่าสุด $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'เล่น $count ครั้ง ล่าสุด $when';
  }

  @override
  String get reasonTopArtist => 'ศิลปินที่คุณฟังบ่อยที่สุดคนหนึ่ง';

  @override
  String reasonMore(Object artist) {
    return '$artist เพิ่มเติม';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'คุณกลับมาฟัง $artist อยู่เรื่อย ๆ';
  }

  @override
  String reasonYourKind(Object tag) {
    return '$tag แบบที่คุณชอบ';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'ช่วงนี้ฟัง $tag หนักมาก';
  }

  @override
  String get reasonOutThisYear => 'ออกปีนี้';

  @override
  String get reasonReleasedRecently => 'เพิ่งออกใหม่';

  @override
  String get reasonClose => 'ใกล้เคียงกับที่คุณฟังอยู่';

  @override
  String reasonNear(Object artist) {
    return 'อยู่ใกล้ $artist';
  }

  @override
  String get reasonNeverPlayed => 'ไม่เคยเล่น';

  @override
  String get reasonPlayedOnce => 'เล่นครั้งเดียว';

  @override
  String get reasonPopular => 'ยอดนิยมตอนนี้';

  @override
  String whenYearsAgo(int count) {
    return '$count ปีที่แล้ว';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count เดือนที่แล้ว';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count วันที่แล้ว';
  }

  @override
  String get searchHint => 'เพลง ศิลปิน อัลบั้ม';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ผลลัพธ์',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'การค้นหาล่าสุด';

  @override
  String get searchEmptyTitle => 'ไม่พบอะไรเลย';

  @override
  String get searchEmptyBody => 'ลองสะกดแบบอื่น หรือพิมพ์เฉพาะชื่อศิลปิน';

  @override
  String get searchStartTitle => 'หาเพลงมาฟังกัน';

  @override
  String get searchStartBody =>
      'ค้นหาใน YouTube Music — จะได้เฉพาะเพลง ไม่มีวิดีโออย่างอื่นปนมา';

  @override
  String get libPlaylists => 'เพลย์ลิสต์';

  @override
  String get libSongs => 'เพลง';

  @override
  String get libArtists => 'ศิลปิน';

  @override
  String get libLiked => 'ถูกใจ';

  @override
  String get libDownloads => 'ดาวน์โหลด';

  @override
  String get libImported => 'นำเข้าแล้ว';

  @override
  String get libLikedSongs => 'เพลงที่ถูกใจ';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count เพลง',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return 'ออฟไลน์ $count';
  }

  @override
  String get libMyFiles => 'ไฟล์ของฉันเอง';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ไฟล์',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'เพลย์ลิสต์ใหม่';

  @override
  String get libMakeOne => 'สร้างเลย';

  @override
  String get libSortRecent => 'เพิ่มล่าสุด';

  @override
  String get libSortTitle => 'ชื่อเพลง';

  @override
  String get libSortArtist => 'ศิลปิน';

  @override
  String get libSortPlays => 'เล่นบ่อยที่สุด';

  @override
  String get sheetNotForMe => 'ไม่ใช่แนวของฉัน';

  @override
  String get sheetNotForMeSub => 'ไม่แนะนำเพลงนี้อีก';

  @override
  String get sheetBlocked => 'บล็อกอยู่ — แตะเพื่ออนุญาตอีกครั้ง';

  @override
  String get sheetBlockedSub => 'เพลงนี้อาจกลับมาปรากฏในคำแนะนำได้อีก';

  @override
  String get sheetPlayNext => 'เล่นถัดไป';

  @override
  String get sheetAddToPlaylist => 'เพิ่มลงเพลย์ลิสต์';

  @override
  String get sheetDownloaded => 'ดาวน์โหลดแล้ว';

  @override
  String get sheetRemoveFile => 'แตะเพื่อลบไฟล์';

  @override
  String get sheetDownload => 'ดาวน์โหลด';

  @override
  String get sheetKeepOffline => 'เก็บไว้ฟังออฟไลน์';

  @override
  String get sheetRadio => 'เริ่มวิทยุ';

  @override
  String get sheetRadioSub => 'คิวที่สร้างจากเพลงนี้';

  @override
  String get sheetQueue => 'คิว';

  @override
  String get sheetSleepTimer => 'ตั้งเวลาปิดเพลง';

  @override
  String get sheetSleepOff => 'ปิด';

  @override
  String sheetSleepMinutes(int count) {
    return '$count นาที';
  }

  @override
  String get sheetSleepEndOfTrack => 'เมื่อจบเพลงนี้';

  @override
  String sheetSleepSet(int count) {
    return 'เพลงจะหยุดใน $count นาที';
  }

  @override
  String get tasteTitle => 'รสนิยมของคุณ';

  @override
  String get tasteRetrain => 'ฝึกใหม่';

  @override
  String get tasteRetraining => 'กำลังฝึกใหม่จากประวัติของคุณ…';

  @override
  String get tasteRetrained => 'AI สร้างโมเดลของตัวเองใหม่แล้ว';

  @override
  String tasteConfidence(int percent) {
    return 'ความมั่นใจ $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'เล่น $plays ครั้ง · ข้าม $skips ครั้ง · ถูกใจ $likes เพลง';
  }

  @override
  String get tasteEmptySummary => 'เล่นสักสองสามเพลง แล้วส่วนนี้จะเติมเต็มเอง';

  @override
  String get tasteKeepLearning => 'เรียนรู้ต่อไปขณะที่ฉันฟัง';

  @override
  String get tasteKeepLearningSub => 'ปิดเพื่อตรึงโปรไฟล์ปัจจุบัน';

  @override
  String get tasteDownloadsTitle => 'ดาวน์โหลดที่ AI จัดการ';

  @override
  String get tasteDownloadsSub => 'เพลงเข้ามาอยู่ในอุปกรณ์โดยไม่ต้องร้องขอ';

  @override
  String get tasteDownloadLikes => 'ดาวน์โหลดทุกเพลงที่ฉันชอบ';

  @override
  String get tasteDownloadLikesSub => 'กดหัวใจแล้วไฟล์จะถูกบันทึกไว้ฟังออฟไลน์';

  @override
  String get tasteAiInstall => 'ให้ AI ติดตั้งเพลงที่มันเลือก';

  @override
  String get tasteAiInstallSub => 'จะดึงเฉพาะเพลงที่มั่นใจว่าใช่';

  @override
  String get tasteWhatItThinks => 'สิ่งที่มันคิดว่าคุณชอบ';

  @override
  String get tasteWhatItThinksSub =>
      'เรียนรู้จากการเล่น การข้าม การกดถูกใจ และการฟังซ้ำ';

  @override
  String get tasteArtists => 'ศิลปินที่มันยึดเป็นหลัก';

  @override
  String get tasteWhenYouListen => 'ช่วงเวลาที่คุณฟัง';

  @override
  String get tasteWhenYouListenSub =>
      'จำนวนครั้งที่เล่นต่อชั่วโมง — ชั่วโมงปัจจุบันถูกให้น้ำหนักมากกว่า';

  @override
  String get tasteDecades => 'ทศวรรษ';

  @override
  String get tasteTune => 'ปรับแต่งคำแนะนำ';

  @override
  String get tasteTuneSub => 'มีผลเมื่อรีเฟรชหน้าแรกครั้งถัดไป';

  @override
  String get tasteDiscovery => 'การค้นพบ';

  @override
  String get tasteDiscoverySub => 'คุ้นเคย ↔ สิ่งที่ไม่เคยฟังมาก่อน';

  @override
  String get tasteEnergy => 'พลังงาน';

  @override
  String get tasteEnergySub => 'สงบ ↔ ดังสนั่น';

  @override
  String get tasteRecency => 'ความใหม่';

  @override
  String get tasteRecencySub => 'ไร้กาลเวลา ↔ ใหม่เอี่ยม';

  @override
  String get tasteNostalgia => 'ความคิดถึงวันวาน';

  @override
  String get tasteNostalgiaSub => 'เพลงโปรดเก่านานแค่ไหนจึงนับว่าถูกลืม';

  @override
  String get tasteSignals => 'สัญญาณที่ใช้ได้';

  @override
  String get tasteSignalsSub => 'ทุกอย่างอยู่ในอุปกรณ์นี้เท่านั้น';

  @override
  String get tasteUseHistory => 'สิ่งที่ฉันเคยเล่น';

  @override
  String get tasteUseSkips => 'สิ่งที่ฉันข้าม';

  @override
  String get tasteUseTime => 'ช่วงเวลาของวัน';

  @override
  String get tasteUseYouTube => 'คำแนะนำจาก YouTube';

  @override
  String get tasteAlwaysMore => 'เอาเพิ่มเสมอ';

  @override
  String get tasteNeverAgain => 'ไม่เอาอีก';

  @override
  String get tasteAddArtist => 'เพิ่มศิลปิน';

  @override
  String get tasteMoreOfPrompt => 'เอาเพิ่มเสมอ…';

  @override
  String get tasteNeverAgainPrompt => 'ไม่เอาอีก…';

  @override
  String get tasteReset => 'รีเซ็ตสิ่งที่เรียนรู้ไป';

  @override
  String get tasteResetSub => 'เพลงของคุณยังอยู่ แต่โปรไฟล์จะเริ่มใหม่จากศูนย์';

  @override
  String get trainCard => 'ฝึกด้วยการให้คะแนน';

  @override
  String get trainCardSub =>
      'ปัดดูเพลงจริง ปัดขวาถ้าอยากได้แนวนี้อีก ปัดซ้ายถ้าไม่เอาอีก สองนาทีตรงนี้ดีกว่าฟังทั้งสัปดาห์';

  @override
  String get trainStart => 'เริ่มรอบการฝึก';

  @override
  String get trainTitle => 'รอบการฝึก';

  @override
  String get trainQuestion => 'อยากให้เพลงนี้อยู่ในหน้าแรกไหม?';

  @override
  String get trainMoreLikeThis => 'เอาแนวนี้อีก';

  @override
  String get trainNeverAgain => 'ไม่เอาอีก';

  @override
  String get trainDone => 'จบรอบแล้ว';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'เก็บไว้ $liked · บล็อก $blocked ความมั่นใจ $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'กลับไปที่รสนิยมของคุณ';

  @override
  String get trainNothingTitle => 'ยังไม่มีอะไรให้ให้คะแนน';

  @override
  String get trainNothingBody =>
      'เพิ่มเพลงหรือให้ AI ดึงเพลงตัวเลือกมาก่อน แล้วค่อยกลับมา';

  @override
  String get trainLeaveTitle => 'ออกจากรอบการฝึก?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ถ้าออกตอนนี้ AI จะทิ้งทุกอย่างจากรอบนี้ — เพลงที่คุณเพิ่งให้คะแนนทั้ง $count เพลง',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'ฝึกต่อ';

  @override
  String get trainDiscard => 'ทิ้งและออก';

  @override
  String get setTitle => 'การตั้งค่า';

  @override
  String get setAppearance => 'รูปลักษณ์';

  @override
  String get setTheme => 'ธีม';

  @override
  String get setThemeSystem => 'ตามระบบ';

  @override
  String get setThemeLight => 'สว่าง';

  @override
  String get setThemeDark => 'มืด';

  @override
  String get setPureBlack => 'ดำสนิท';

  @override
  String get setPureBlackSub => 'ประหยัดพลังงานบนหน้าจอ OLED';

  @override
  String get setAccent => 'สีเน้น';

  @override
  String get setAccentArtwork => 'จากปกอัลบั้ม';

  @override
  String get setAccentFixed => 'สีเดียวที่ฉันเลือก';

  @override
  String get setLanguage => 'ภาษา';

  @override
  String get setLanguageSystem => 'ตามระบบ';

  @override
  String get setAccessibility => 'การเข้าถึง';

  @override
  String get setTextSize => 'ขนาดตัวอักษร';

  @override
  String get setTextSizeSub => 'เพิ่มจากการตั้งค่าของระบบ';

  @override
  String get setReduceMotion => 'ลดการเคลื่อนไหว';

  @override
  String get setReduceMotionSub =>
      'หยุดแถบ ตัวแสดงภาพเสียง การเลื่อนแบบเด้ง การแตะแบบยืดหยุ่น และการเปลี่ยนหน้า';

  @override
  String get setHighContrast => 'คอนทราสต์สูง';

  @override
  String get setHighContrastSub => 'แยกส่วนชัดขึ้นและมีเส้นขอบที่มองเห็นได้';

  @override
  String get setBoldText => 'ตัวหนา';

  @override
  String get setPlayback => 'การเล่น';

  @override
  String get setAutoRadio => 'ให้เพลงเล่นต่อเนื่อง';

  @override
  String get setAutoRadioSub =>
      'เมื่อคิวหมด จะเล่นต่อด้วยวิทยุที่สร้างจากเพลงสุดท้าย';

  @override
  String get setSmartShuffle => 'สุ่มอย่างชาญฉลาด';

  @override
  String get setSmartShuffleSub => 'สุ่มตามรสนิยมแทนการสุ่มมั่ว';

  @override
  String get setResume => 'เล่นต่อจากที่ค้างไว้';

  @override
  String get setResumeSub => 'คืนคิวเมื่อเปิดแอป โดยหยุดชั่วคราวไว้';

  @override
  String get setDataSaver => 'ประหยัดข้อมูลเมื่อไม่ใช้ Wi-Fi';

  @override
  String get setDataSaverSub =>
      'จำกัดการสตรีมและดาวน์โหลดที่ 128 kbps เมื่อใช้เน็ตมือถือ';

  @override
  String get setHaptics => 'การสั่นตอบสนอง';

  @override
  String get setShowReasons => 'แสดงเหตุผลที่แนะนำ';

  @override
  String get setSkipSilence => 'ข้ามช่วงเงียบ';

  @override
  String get setQuality => 'คุณภาพเสียง';

  @override
  String get setQualityLow => 'ต่ำ · 64 kbps';

  @override
  String get setQualityNormal => 'ปกติ · 128 kbps';

  @override
  String get setQualityHigh => 'สูง · 192 kbps';

  @override
  String get setQualityBest => 'ดีที่สุดที่มี';

  @override
  String get setStorage => 'ดาวน์โหลดและพื้นที่จัดเก็บ';

  @override
  String get setWifiOnly => 'ดาวน์โหลดเฉพาะผ่าน Wi-Fi';

  @override
  String get setDailyLimit => 'ขีดจำกัดต่อวันของ AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count เพลงต่อวัน';
  }

  @override
  String get setBudget => 'พื้นที่ที่ AI ใช้ได้';

  @override
  String setUsed(Object size) {
    return 'ใช้ไป $size สำหรับการดาวน์โหลด';
  }

  @override
  String get setYourMusic => 'เพลงของคุณ';

  @override
  String get setImport => 'เพิ่มเพลงจากอุปกรณ์เครื่องนี้';

  @override
  String get setImportSub => 'เลือกโฟลเดอร์หรือไฟล์เดี่ยว';

  @override
  String get setCleanup => 'ล้างไฟล์ที่หายไป';

  @override
  String get setCleanupSub => 'ลบเพลงที่ไฟล์หายไปแล้ว';

  @override
  String setCleanupDone(int count) {
    return 'ลบไฟล์ที่หายไป $count ไฟล์แล้ว';
  }

  @override
  String get setExport => 'ส่งรสนิยมของฉันไปอุปกรณ์อื่น';

  @override
  String get setExportSub =>
      'บันทึกไฟล์ที่มีเพลงถูกใจ ประวัติการเล่น และทุกสิ่งที่ AI เรียนรู้';

  @override
  String get setImportTaste => 'โหลดรสนิยมจากอุปกรณ์อื่น';

  @override
  String get setImportTasteSub =>
      'เลือกไฟล์รสนิยมที่บันทึกไว้แล้วรวมเข้ามา — ทำซ้ำได้อย่างปลอดภัย';

  @override
  String get setAbout => 'เกี่ยวกับ';

  @override
  String get setAboutBody =>
      'เพลงจาก YouTube และไฟล์ของคุณเอง AI ทำงานบนอุปกรณ์นี้ทั้งหมด — ไม่มีอะไรออกไปข้างนอก';

  @override
  String get setSource => 'ซอร์สโค้ด';

  @override
  String get importTitle => 'เพิ่มเพลง';

  @override
  String get importPickFolder => 'เลือกโฟลเดอร์';

  @override
  String get importPickFiles => 'เลือกไฟล์';

  @override
  String importScanning(Object file) {
    return 'กำลังสแกน $file';
  }

  @override
  String importAdded(int count) {
    return 'เพิ่มแล้ว $count';
  }

  @override
  String get importDenied => 'ถูกปฏิเสธสิทธิ์ — อ่านเพลงของคุณไม่ได้';

  @override
  String get importWatched => 'โฟลเดอร์ที่เฝ้าดู';

  @override
  String get importIosHint =>
      'เปิดแอปไฟล์ ไปที่ ในiPhoneเครื่องนี้ → TuneBox แล้ววางเพลงลงไปที่นั่น';

  @override
  String get playerQueue => 'คิว';

  @override
  String get playerUpNext => 'เพลงถัดไป';

  @override
  String get playerLyrics => 'เนื้อเพลง';

  @override
  String get playerNoLyrics => 'ไม่มีเนื้อเพลงสำหรับเพลงนี้';

  @override
  String get playerRepeat => 'เล่นซ้ำ';

  @override
  String get playerShuffle => 'สุ่มเพลง';

  @override
  String errorPlayback(Object title) {
    return 'เล่น \"$title\" ไม่ได้';
  }

  @override
  String errorSkipping(Object title) {
    return 'ข้าม \"$title\" — เปิดสตรีมไม่ได้';
  }

  @override
  String get undo => 'เลิกทำ';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'ตอนนี้: $tags นำโดย $artist';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'ตอนนี้: $tags';
  }

  @override
  String get setColour => 'สี';

  @override
  String get setColourSub => 'ทั้งแอปจะใช้สีนี้';

  @override
  String get setCoverArt => 'ปกอัลบั้ม';

  @override
  String get setMyColour => 'สีของฉัน';

  @override
  String get setCoverArtSub => 'ทุกเพลงจะเปลี่ยนโทนสีของแอปตามปกของมัน';

  @override
  String get setMyColourSub => 'สีเดียว ทุกที่ ตลอดเวลา';

  @override
  String get setPickColour => 'เลือกสีอะไรก็ได้';

  @override
  String get setWifiOnlyTitle => 'ดาวน์โหลดเฉพาะผ่าน Wi-Fi';

  @override
  String get setDownloadLikes => 'ดาวน์โหลดทุกเพลงที่ฉันชอบ';

  @override
  String get setDownloadLikesSub => 'ปุ่มหัวใจจะบันทึกไฟล์ด้วย';

  @override
  String get setAiInstall => 'ให้ AI ติดตั้งเพลงที่มันเลือก';

  @override
  String get setSkipSilenceSub =>
      'เฉพาะ Android อาจตัดช่วงอินโทรเงียบ ช่วงเฟด และส่วนที่เบา — ปิดไว้ถ้าเพลงสะดุด';

  @override
  String get setStorageUsed => 'พื้นที่ที่การดาวน์โหลดใช้';

  @override
  String get setLibrary => 'คลังเพลง';

  @override
  String get setUpdates => 'การอัปเดต';

  @override
  String get setAutoUpdate => 'ตรวจสอบการอัปเดตเอง';

  @override
  String get setAutoUpdateSub =>
      'ทุกไม่กี่ชั่วโมงอย่างเงียบ ๆ และดาวน์โหลดเมื่อใช้ Wi-Fi การติดตั้งยังต้องให้คุณยืนยัน';

  @override
  String setUpdateReady(Object version) {
    return 'อัปเดตเป็น $version พร้อมแล้ว';
  }

  @override
  String get setUpdateReadySub => 'ดาวน์โหลดแล้ว — แตะเพื่อติดตั้ง';

  @override
  String get setUpdateAvailableSub =>
      'รับได้จากหน้ารุ่นที่เผยแพร่ — แตะเพื่อคัดลอกลิงก์';

  @override
  String get setLinkCopied => 'คัดลอกลิงก์แล้ว';

  @override
  String get setCheckNow => 'ตรวจสอบเลย';

  @override
  String get setUpToDate => 'TuneBox เป็นเวอร์ชันล่าสุดแล้ว';

  @override
  String get setChecking => 'กำลังค้นหาเวอร์ชันใหม่…';
}
