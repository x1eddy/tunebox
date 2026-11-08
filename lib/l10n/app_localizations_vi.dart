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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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
