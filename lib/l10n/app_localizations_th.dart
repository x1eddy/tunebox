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
