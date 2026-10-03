// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class LVi extends L {
  LVi([String locale = 'vi']) : super(locale);

  @override
  String get navHome => 'Trang chủ';

  @override
  String get navExplore => 'Khám phá';

  @override
  String get navLibrary => 'Thư viện';

  @override
  String get navTaste => 'Gu của bạn';

  @override
  String get actionDone => 'Xong';

  @override
  String get actionCancel => 'Hủy';

  @override
  String get actionCreate => 'Tạo';

  @override
  String get actionPlay => 'Phát';

  @override
  String get actionShuffle => 'Trộn bài';

  @override
  String get actionPlayAll => 'Phát tất cả';

  @override
  String get actionAdd => 'Thêm';

  @override
  String get actionRemove => 'Xóa';

  @override
  String get actionName => 'Tên';

  @override
  String get greetingNight => 'Vẫn chưa ngủ à?';

  @override
  String get greetingMorning => 'Chào buổi sáng';

  @override
  String get greetingAfternoon => 'Chào buổi chiều';

  @override
  String get greetingEvening => 'Chào buổi tối';

  @override
  String get homeBuilding => 'AI đang dựng các kệ nhạc của bạn…';

  @override
  String get homeOffline =>
      'Ngoại tuyến — đang hiển thị nội dung trên thiết bị';

  @override
  String get homeNothingYet => 'Chưa có gì để hiển thị';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kệ, vừa làm mới',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Dựng lại các kệ';

  @override
  String get homeAddMusic => 'Thêm nhạc từ thiết bị này';

  @override
  String get homeQuickPicks => 'Chọn nhanh';

  @override
  String get homeQuickPicksSub => 'Quay lại ngay những gì bạn đang nghe';

  @override
  String get homeEmptyTitle => 'Thư viện của bạn đang trống';

  @override
  String get homeEmptyBody =>
      'Hãy tìm kiếm gì đó, hoặc thêm nhạc có sẵn trên thiết bị này. AI bắt đầu học ngay từ lần phát đầu tiên.';

  @override
  String get homeAddMyMusic => 'Thêm nhạc của tôi';

  @override
  String homeCouldNotReach(Object error) {
    return 'Không thể kết nối YouTube: $error';
  }

  @override
  String get moodFocus => 'Tập trung';

  @override
  String get moodWorkout => 'Tập luyện';

  @override
  String get moodChill => 'Thư giãn';

  @override
  String get moodCommute => 'Di chuyển';

  @override
  String get moodParty => 'Tiệc tùng';

  @override
  String moodBuilding(Object mood) {
    return 'Đang tạo mix $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Không được rồi: $error';
  }

  @override
  String get shelfRepeat => 'Nghe đi nghe lại';

  @override
  String get shelfRepeatSub => 'Hai tuần qua của bạn';

  @override
  String get shelfForgotten => 'Hit cũ bạn từng thích đã bị lãng quên';

  @override
  String get shelfForgottenSub => 'Từng yêu thích, đã lâu không nghe';

  @override
  String get shelfNew => 'Mới';

  @override
  String get shelfNewSub => 'Bài mới mà AI nghĩ là dành cho bạn';

  @override
  String shelfBecause(Object artist) {
    return 'Vì bạn đã nghe $artist';
  }

  @override
  String get shelfBecauseSub => 'Cùng một góc trong gu của bạn';

  @override
  String get shelfDeep => 'Hầu như chưa đụng tới';

  @override
  String get shelfDeepSub => 'Có trong thư viện, hiếm khi được phát';

  @override
  String get shelfMix => 'Mix của bạn';

  @override
  String get shelfMixSub => 'Được dựng lại mỗi lần bạn mở ứng dụng';

  @override
  String get shelfAdded => 'Mới thêm gần đây';

  @override
  String get shelfAddedSub => 'Các bản tải xuống và tệp bạn đã nhập';

  @override
  String get shelfStarter => 'Bắt đầu từ đây';

  @override
  String get shelfStarterSub => 'Phát vài bài và AI sẽ bắt đầu học ngay';

  @override
  String reasonPlays(int count) {
    return '$count lượt phát';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Đã thích, phát lần cuối $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count lượt phát, lần cuối $when';
  }

  @override
  String get reasonTopArtist => 'Một trong những nghệ sĩ bạn nghe nhiều nhất';

  @override
  String reasonMore(Object artist) {
    return 'Thêm $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Bạn cứ quay lại với $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Đúng gu $tag của bạn';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Dạo này nghe nhiều $tag';
  }

  @override
  String get reasonOutThisYear => 'Ra mắt năm nay';

  @override
  String get reasonReleasedRecently => 'Mới phát hành gần đây';

  @override
  String get reasonClose => 'Gần với những gì bạn vẫn nghe';

  @override
  String reasonNear(Object artist) {
    return 'Gần với $artist';
  }

  @override
  String get reasonNeverPlayed => 'Chưa từng phát';

  @override
  String get reasonPlayedOnce => 'Đã phát một lần';

  @override
  String get reasonPopular => 'Đang thịnh hành';

  @override
  String whenYearsAgo(int count) {
    return '$count năm trước';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count tháng trước';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count ngày trước';
  }

  @override
  String get searchHint => 'Bài hát, nghệ sĩ, album';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kết quả',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Tìm kiếm gần đây';

  @override
  String get searchEmptyTitle => 'Không tìm thấy gì';

  @override
  String get searchEmptyBody =>
      'Hãy thử cách viết khác, hoặc chỉ nhập tên nghệ sĩ.';

  @override
  String get searchStartTitle => 'Tìm gì đó để phát';

  @override
  String get searchStartBody =>
      'Tìm trên YouTube Music — chỉ trả về bài hát, không bao giờ là video về thứ khác.';

  @override
  String get libPlaylists => 'Danh sách phát';

  @override
  String get libSongs => 'Bài hát';

  @override
  String get libArtists => 'Nghệ sĩ';

  @override
  String get libLiked => 'Đã thích';

  @override
  String get libDownloads => 'Đã tải xuống';

  @override
  String get libImported => 'Đã nhập';

  @override
  String get libLikedSongs => 'Bài hát đã thích';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bài hát',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count ngoại tuyến';
  }

  @override
  String get libMyFiles => 'Tệp của riêng tôi';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tệp',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Danh sách phát mới';

  @override
  String get libMakeOne => 'Tạo một danh sách';

  @override
  String get libSortRecent => 'Mới thêm';

  @override
  String get libSortTitle => 'Tiêu đề';

  @override
  String get libSortArtist => 'Nghệ sĩ';

  @override
  String get libSortPlays => 'Nghe nhiều nhất';

  @override
  String get sheetNotForMe => 'Không hợp với tôi';

  @override
  String get sheetNotForMeSub => 'Không bao giờ đề xuất lại';

  @override
  String get sheetBlocked => 'Đã chặn — chạm để cho phép lại';

  @override
  String get sheetBlockedSub => 'Bài này có thể xuất hiện lại trong đề xuất';

  @override
  String get sheetPlayNext => 'Phát tiếp theo';

  @override
  String get sheetAddToPlaylist => 'Thêm vào danh sách phát';

  @override
  String get sheetDownloaded => 'Đã tải xuống';

  @override
  String get sheetRemoveFile => 'Chạm để xóa tệp';

  @override
  String get sheetDownload => 'Tải xuống';

  @override
  String get sheetKeepOffline => 'Giữ để nghe ngoại tuyến';

  @override
  String get sheetRadio => 'Bắt đầu radio';

  @override
  String get sheetRadioSub => 'Hàng đợi được dựng quanh bài hát này';

  @override
  String get sheetQueue => 'Hàng đợi';

  @override
  String get sheetSleepTimer => 'Hẹn giờ tắt';

  @override
  String get sheetSleepOff => 'Tắt';

  @override
  String sheetSleepMinutes(int count) {
    return '$count phút';
  }

  @override
  String get sheetSleepEndOfTrack => 'Hết bài này';

  @override
  String sheetSleepSet(int count) {
    return 'Nhạc sẽ dừng sau $count phút';
  }

  @override
  String get tasteTitle => 'Gu của bạn';

  @override
  String get tasteRetrain => 'Huấn luyện lại';

  @override
  String get tasteRetraining => 'Đang huấn luyện lại từ lịch sử của bạn…';

  @override
  String get tasteRetrained => 'AI đã dựng lại mô hình của nó.';

  @override
  String tasteConfidence(int percent) {
    return 'Độ tin cậy $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays lượt phát · $skips lượt bỏ qua · $likes lượt thích';
  }

  @override
  String get tasteEmptySummary => 'Hãy phát vài bài và mục này sẽ đầy lên.';

  @override
  String get tasteKeepLearning => 'Tiếp tục học khi tôi nghe';

  @override
  String get tasteKeepLearningSub => 'Tắt để đóng băng hồ sơ hiện tại';

  @override
  String get tasteDownloadsTitle => 'Tải xuống do AI quản lý';

  @override
  String get tasteDownloadsSub =>
      'Nhạc tự về thiết bị mà bạn không cần yêu cầu';

  @override
  String get tasteDownloadLikes => 'Tải mọi bài tôi thích';

  @override
  String get tasteDownloadLikesSub =>
      'Nhấn tim là tệp được lưu để nghe ngoại tuyến';

  @override
  String get tasteAiInstall => 'Cho AI cài nhạc mà nó chọn';

  @override
  String get tasteAiInstallSub => 'Nó sẽ tải những bài mà nó tự tin';

  @override
  String get tasteWhatItThinks => 'Những gì nó nghĩ bạn thích';

  @override
  String get tasteWhatItThinksSub =>
      'Học từ lượt phát, bỏ qua, thích và lặp lại';

  @override
  String get tasteArtists => 'Nghệ sĩ nó dựa vào';

  @override
  String get tasteWhenYouListen => 'Khi bạn nghe nhạc';

  @override
  String get tasteWhenYouListenSub =>
      'Lượt phát theo giờ — giờ hiện tại được tính nặng hơn';

  @override
  String get tasteDecades => 'Các thập niên';

  @override
  String get tasteTune => 'Tinh chỉnh đề xuất';

  @override
  String get tasteTuneSub => 'Có hiệu lực ở lần làm mới Trang chủ tiếp theo';

  @override
  String get tasteDiscovery => 'Khám phá';

  @override
  String get tasteDiscoverySub => 'Quen thuộc ↔ những thứ bạn chưa từng nghe';

  @override
  String get tasteEnergy => 'Năng lượng';

  @override
  String get tasteEnergySub => 'Êm dịu ↔ sôi động';

  @override
  String get tasteRecency => 'Độ mới';

  @override
  String get tasteRecencySub => 'Bất hủ ↔ mới toanh';

  @override
  String get tasteNostalgia => 'Hoài niệm';

  @override
  String get tasteNostalgiaSub =>
      'Bài yêu thích cũ bao lâu thì được coi là đã quên';

  @override
  String get tasteSignals => 'Tín hiệu nó có thể dùng';

  @override
  String get tasteSignalsSub => 'Mọi thứ đều ở lại trên thiết bị này';

  @override
  String get tasteUseHistory => 'Những gì tôi đã nghe';

  @override
  String get tasteUseSkips => 'Những gì tôi bỏ qua';

  @override
  String get tasteUseTime => 'Thời gian trong ngày';

  @override
  String get tasteUseYouTube => 'Gợi ý từ YouTube';

  @override
  String get tasteAlwaysMore => 'Luôn nghe nhiều hơn';

  @override
  String get tasteNeverAgain => 'Không bao giờ nữa';

  @override
  String get tasteAddArtist => 'Thêm nghệ sĩ';

  @override
  String get tasteMoreOfPrompt => 'Luôn nghe nhiều hơn…';

  @override
  String get tasteNeverAgainPrompt => 'Không bao giờ nữa…';

  @override
  String get tasteReset => 'Đặt lại những gì nó đã học';

  @override
  String get tasteResetSub =>
      'Nhạc của bạn vẫn còn; hồ sơ bắt đầu lại từ số không';

  @override
  String get trainCard => 'Huấn luyện bằng cách chấm điểm';

  @override
  String get trainCardSub =>
      'Vuốt qua các bài hát thật. Phải để nghe thêm bài tương tự, trái để không bao giờ nữa. Hai phút ở đây hơn cả một tuần nghe nhạc.';

  @override
  String get trainStart => 'Bắt đầu một lượt huấn luyện';

  @override
  String get trainTitle => 'Lượt huấn luyện';

  @override
  String get trainQuestion => 'Bạn có muốn bài này trên Trang chủ không?';

  @override
  String get trainMoreLikeThis => 'Thêm bài như thế này';

  @override
  String get trainNeverAgain => 'Không bao giờ nữa';

  @override
  String get trainDone => 'Hoàn thành lượt';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'Giữ $liked · chặn $blocked. Độ tin cậy $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Quay lại gu của bạn';

  @override
  String get trainNothingTitle => 'Chưa có gì để chấm';

  @override
  String get trainNothingBody =>
      'Hãy thêm nhạc hoặc để AI tìm bài ứng viên trước, rồi quay lại.';

  @override
  String get trainLeaveTitle => 'Rời khỏi lượt huấn luyện?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Nếu rời đi bây giờ, AI sẽ bỏ tất cả từ lượt này — $count bài bạn vừa chấm.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Tiếp tục huấn luyện';

  @override
  String get trainDiscard => 'Bỏ và rời đi';

  @override
  String get setTitle => 'Cài đặt';

  @override
  String get setAppearance => 'Giao diện';

  @override
  String get setTheme => 'Chủ đề';

  @override
  String get setThemeSystem => 'Theo hệ thống';

  @override
  String get setThemeLight => 'Sáng';

  @override
  String get setThemeDark => 'Tối';

  @override
  String get setPureBlack => 'Đen tuyền';

  @override
  String get setPureBlackSub => 'Tiết kiệm pin trên màn hình OLED';

  @override
  String get setAccent => 'Màu nhấn';

  @override
  String get setAccentArtwork => 'Từ ảnh bìa';

  @override
  String get setAccentFixed => 'Một màu tôi chọn';

  @override
  String get setLanguage => 'Ngôn ngữ';

  @override
  String get setLanguageSystem => 'Theo hệ thống';

  @override
  String get setAccessibility => 'Trợ năng';

  @override
  String get setTextSize => 'Cỡ chữ';

  @override
  String get setTextSizeSub => 'Cộng thêm vào cài đặt hệ thống của bạn';

  @override
  String get setReduceMotion => 'Giảm chuyển động';

  @override
  String get setReduceMotionSub =>
      'Dừng các thanh, trình hiển thị, cuộn nảy, chạm đàn hồi và hiệu ứng chuyển trang';

  @override
  String get setHighContrast => 'Độ tương phản cao';

  @override
  String get setHighContrastSub => 'Phân tách rõ hơn và viền dễ thấy';

  @override
  String get setBoldText => 'Chữ đậm';

  @override
  String get setPlayback => 'Phát nhạc';

  @override
  String get setAutoRadio => 'Giữ nhạc phát liên tục';

  @override
  String get setAutoRadioSub =>
      'Khi hết hàng đợi, tiếp tục bằng radio dựng từ bài cuối cùng';

  @override
  String get setSmartShuffle => 'Trộn bài thông minh';

  @override
  String get setSmartShuffleSub => 'Trộn theo gu thay vì ngẫu nhiên';

  @override
  String get setResume => 'Tiếp tục từ chỗ đã dừng';

  @override
  String get setResumeSub =>
      'Khôi phục hàng đợi khi mở ứng dụng, ở trạng thái tạm dừng';

  @override
  String get setDataSaver => 'Tiết kiệm dữ liệu khi không dùng Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Giới hạn phát trực tuyến và tải xuống ở 128 kbps khi dùng dữ liệu di động';

  @override
  String get setHaptics => 'Phản hồi rung';

  @override
  String get setShowReasons => 'Hiển thị lý do đề xuất';

  @override
  String get setSkipSilence => 'Bỏ qua khoảng lặng';

  @override
  String get setQuality => 'Chất lượng âm thanh';

  @override
  String get setQualityLow => 'Thấp · 64 kbps';

  @override
  String get setQualityNormal => 'Thường · 128 kbps';

  @override
  String get setQualityHigh => 'Cao · 192 kbps';

  @override
  String get setQualityBest => 'Tốt nhất có thể';

  @override
  String get setStorage => 'Tải xuống và dung lượng';

  @override
  String get setWifiOnly => 'Chỉ tải xuống qua Wi-Fi';

  @override
  String get setDailyLimit => 'Giới hạn hằng ngày cho AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count bài mỗi ngày';
  }

  @override
  String get setBudget => 'Dung lượng AI được dùng';

  @override
  String setUsed(Object size) {
    return '$size đã dùng cho tải xuống';
  }

  @override
  String get setYourMusic => 'Nhạc của bạn';

  @override
  String get setImport => 'Thêm nhạc từ thiết bị này';

  @override
  String get setImportSub => 'Chọn thư mục hoặc từng tệp';

  @override
  String get setCleanup => 'Dọn các tệp bị thiếu';

  @override
  String get setCleanupSub => 'Bỏ những bài hát đã mất tệp';

  @override
  String setCleanupDone(int count) {
    return 'Đã xóa $count tệp bị thiếu.';
  }

  @override
  String get setExport => 'Gửi gu của tôi sang thiết bị khác';

  @override
  String get setExportSub =>
      'Lưu một tệp gồm lượt thích, lượt phát và mọi thứ AI đã học';

  @override
  String get setImportTaste => 'Tải gu từ thiết bị khác';

  @override
  String get setImportTasteSub =>
      'Chọn tệp gu đã lưu và gộp vào — lặp lại cũng an toàn';

  @override
  String get setAbout => 'Giới thiệu';

  @override
  String get setAboutBody =>
      'Nhạc từ YouTube và các tệp của riêng bạn. AI chạy hoàn toàn trên thiết bị này — không có gì rời khỏi nó.';

  @override
  String get setSource => 'Mã nguồn';

  @override
  String get importTitle => 'Thêm nhạc';

  @override
  String get importPickFolder => 'Chọn thư mục';

  @override
  String get importPickFiles => 'Chọn tệp';

  @override
  String importScanning(Object file) {
    return 'Đang quét $file';
  }

  @override
  String importAdded(int count) {
    return 'Đã thêm $count';
  }

  @override
  String get importDenied => 'Quyền bị từ chối — không thể đọc nhạc của bạn.';

  @override
  String get importWatched => 'Các thư mục được theo dõi';

  @override
  String get importIosHint =>
      'Mở ứng dụng Tệp, vào Trên iPhone của tôi → TuneBox, rồi thả nhạc vào đó.';

  @override
  String get playerQueue => 'Hàng đợi';

  @override
  String get playerUpNext => 'Tiếp theo';

  @override
  String get playerLyrics => 'Lời bài hát';

  @override
  String get playerNoLyrics => 'Không có lời cho bài này.';

  @override
  String get playerRepeat => 'Lặp lại';

  @override
  String get playerShuffle => 'Trộn bài';

  @override
  String errorPlayback(Object title) {
    return 'Không thể phát \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Bỏ qua \"$title\" — luồng không mở được.';
  }

  @override
  String get undo => 'Hoàn tác';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Lúc này: $tags, dẫn đầu là $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Lúc này: $tags.';
  }

  @override
  String get setColour => 'Màu sắc';

  @override
  String get setColourSub => 'Toàn bộ ứng dụng theo màu này';

  @override
  String get setCoverArt => 'Ảnh bìa';

  @override
  String get setMyColour => 'Màu của tôi';

  @override
  String get setCoverArtSub =>
      'Mỗi bài hát nhuộm lại ứng dụng theo ảnh bìa của nó.';

  @override
  String get setMyColourSub => 'Một màu, ở mọi nơi, mọi lúc.';

  @override
  String get setPickColour => 'Chọn màu bất kỳ';

  @override
  String get setWifiOnlyTitle => 'Chỉ tải xuống qua Wi-Fi';

  @override
  String get setDownloadLikes => 'Tải mọi bài tôi thích';

  @override
  String get setDownloadLikesSub => 'Nút tim cũng lưu tệp';

  @override
  String get setAiInstall => 'Cho AI cài nhạc mà nó chọn';

  @override
  String get setSkipSilenceSub =>
      'Chỉ dành cho Android. Có thể cắt phần mở đầu êm, đoạn mờ dần và đoạn nhẹ — hãy tắt nếu nhạc bị giật';

  @override
  String get setStorageUsed => 'Dung lượng dùng cho tải xuống';

  @override
  String get setLibrary => 'Thư viện';

  @override
  String get setUpdates => 'Cập nhật';

  @override
  String get setAutoUpdate => 'Tự động kiểm tra cập nhật';

  @override
  String get setAutoUpdateSub =>
      'Vài giờ một lần, âm thầm, và tải xuống qua Wi-Fi. Việc cài đặt vẫn hỏi bạn.';

  @override
  String setUpdateReady(Object version) {
    return 'Bản cập nhật $version đã sẵn sàng';
  }

  @override
  String get setUpdateReadySub => 'Đã tải xuống — chạm để cài đặt';

  @override
  String get setUpdateAvailableSub =>
      'Lấy từ trang phát hành — chạm để sao chép liên kết';

  @override
  String get setLinkCopied => 'Đã sao chép liên kết';

  @override
  String get setCheckNow => 'Kiểm tra ngay';

  @override
  String get setUpToDate => 'TuneBox đã là bản mới nhất';

  @override
  String get setChecking => 'Đang tìm phiên bản mới hơn…';
}
