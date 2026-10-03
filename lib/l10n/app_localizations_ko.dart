// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class LKo extends L {
  LKo([String locale = 'ko']) : super(locale);

  @override
  String get navHome => '홈';

  @override
  String get navExplore => '탐색';

  @override
  String get navLibrary => '보관함';

  @override
  String get navTaste => '내 취향';

  @override
  String get actionDone => '완료';

  @override
  String get actionCancel => '취소';

  @override
  String get actionCreate => '만들기';

  @override
  String get actionPlay => '재생';

  @override
  String get actionShuffle => '셔플';

  @override
  String get actionPlayAll => '모두 재생';

  @override
  String get actionAdd => '추가';

  @override
  String get actionRemove => '삭제';

  @override
  String get actionName => '이름';

  @override
  String get greetingNight => '아직 안 주무세요?';

  @override
  String get greetingMorning => '좋은 아침이에요';

  @override
  String get greetingAfternoon => '좋은 오후예요';

  @override
  String get greetingEvening => '좋은 저녁이에요';

  @override
  String get homeBuilding => 'AI가 선반을 만들고 있어요…';

  @override
  String get homeOffline => '오프라인 — 기기에 있는 음악을 보여드려요';

  @override
  String get homeNothingYet => '아직 보여드릴 게 없어요';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '선반 $count개, 방금 새로고침됨',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => '선반 다시 만들기';

  @override
  String get homeAddMusic => '이 기기에서 음악 추가';

  @override
  String get homeQuickPicks => '빠른 선곡';

  @override
  String get homeQuickPicksSub => '듣던 곳으로 바로 돌아가기';

  @override
  String get homeEmptyTitle => '보관함이 비어 있어요';

  @override
  String get homeEmptyBody =>
      '무언가를 검색하거나 이 기기에 있는 음악을 추가해 보세요. AI는 첫 재생부터 배우기 시작해요.';

  @override
  String get homeAddMyMusic => '내 음악 추가';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube에 연결할 수 없어요: $error';
  }

  @override
  String get moodFocus => '집중';

  @override
  String get moodWorkout => '운동';

  @override
  String get moodChill => '휴식';

  @override
  String get moodCommute => '출퇴근';

  @override
  String get moodParty => '파티';

  @override
  String moodBuilding(Object mood) {
    return '$mood 믹스를 만드는 중…';
  }

  @override
  String moodFailed(Object error) {
    return '실패했어요: $error';
  }

  @override
  String get shelfRepeat => '반복 재생';

  @override
  String get shelfRepeatSub => '최근 2주';

  @override
  String get shelfForgotten => '잊고 있던 좋아했던 히트곡';

  @override
  String get shelfForgottenSub => '한때 즐겨 들었지만 한동안 안 들은 곡';

  @override
  String get shelfNew => '신곡';

  @override
  String get shelfNewSub => 'AI가 취향에 맞을 거라 생각하는 새로운 곡';

  @override
  String shelfBecause(Object artist) {
    return '$artist를 들으셔서';
  }

  @override
  String get shelfBecauseSub => '취향이 비슷한 곳';

  @override
  String get shelfDeep => '거의 안 들은 곡';

  @override
  String get shelfDeepSub => '보관함에 있지만 거의 재생하지 않은 곡';

  @override
  String get shelfMix => '내 믹스';

  @override
  String get shelfMixSub => '앱을 열 때마다 새로 만들어져요';

  @override
  String get shelfAdded => '최근 추가됨';

  @override
  String get shelfAddedSub => '다운로드한 곡과 가져온 파일';

  @override
  String get shelfStarter => '여기서 시작';

  @override
  String get shelfStarterSub => '몇 곡만 재생하면 AI가 바로 배우기 시작해요';

  @override
  String reasonPlays(int count) {
    return '$count회 재생';
  }

  @override
  String reasonLikedLast(Object when) {
    return '좋아요 표시, 마지막 재생 $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count회 재생, 마지막 $when';
  }

  @override
  String get reasonTopArtist => '가장 많이 들은 아티스트 중 한 명';

  @override
  String reasonMore(Object artist) {
    return '$artist의 다른 곡';
  }

  @override
  String reasonComeBack(Object artist) {
    return '$artist를 계속 찾아 들으시네요';
  }

  @override
  String reasonYourKind(Object tag) {
    return '취향저격 $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return '요즘 $tag를 많이 들으셨어요';
  }

  @override
  String get reasonOutThisYear => '올해 발매';

  @override
  String get reasonReleasedRecently => '최근 발매';

  @override
  String get reasonClose => '최근 들은 음악과 비슷해요';

  @override
  String reasonNear(Object artist) {
    return '$artist와 비슷해요';
  }

  @override
  String get reasonNeverPlayed => '재생한 적 없음';

  @override
  String get reasonPlayedOnce => '한 번 재생함';

  @override
  String get reasonPopular => '지금 인기';

  @override
  String whenYearsAgo(int count) {
    return '$count년 전';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count개월 전';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count일 전';
  }

  @override
  String get searchHint => '노래, 아티스트, 앨범';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '결과 $count개',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => '최근 검색';

  @override
  String get searchEmptyTitle => '결과가 없어요';

  @override
  String get searchEmptyBody => '다른 철자로 검색하거나 아티스트 이름만 입력해 보세요.';

  @override
  String get searchStartTitle => '들을 음악 찾기';

  @override
  String get searchStartBody =>
      'YouTube Music을 검색해요 — 노래만 표시되고 다른 영상은 나오지 않아요.';

  @override
  String get libPlaylists => '플레이리스트';

  @override
  String get libSongs => '노래';

  @override
  String get libArtists => '아티스트';

  @override
  String get libLiked => '좋아요';

  @override
  String get libDownloads => '다운로드';

  @override
  String get libImported => '가져옴';

  @override
  String get libLikedSongs => '좋아요 표시한 노래';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '노래 $count곡',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '오프라인 $count곡';
  }

  @override
  String get libMyFiles => '내 파일';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '파일 $count개',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => '새 플레이리스트';

  @override
  String get libMakeOne => '만들기';

  @override
  String get libSortRecent => '최근 추가순';

  @override
  String get libSortTitle => '제목순';

  @override
  String get libSortArtist => '아티스트순';

  @override
  String get libSortPlays => '재생 많은 순';

  @override
  String get sheetNotForMe => '관심 없음';

  @override
  String get sheetNotForMeSub => '이 곡을 다시는 추천하지 않아요';

  @override
  String get sheetBlocked => '차단됨 — 눌러서 다시 허용';

  @override
  String get sheetBlockedSub => '추천에 다시 나타날 수 있어요';

  @override
  String get sheetPlayNext => '다음에 재생';

  @override
  String get sheetAddToPlaylist => '플레이리스트에 추가';

  @override
  String get sheetDownloaded => '다운로드됨';

  @override
  String get sheetRemoveFile => '눌러서 파일 삭제';

  @override
  String get sheetDownload => '다운로드';

  @override
  String get sheetKeepOffline => '오프라인용으로 보관';

  @override
  String get sheetRadio => '라디오 시작';

  @override
  String get sheetRadioSub => '이 노래를 중심으로 만든 대기열';

  @override
  String get sheetQueue => '대기열';

  @override
  String get sheetSleepTimer => '수면 타이머';

  @override
  String get sheetSleepOff => '끔';

  @override
  String sheetSleepMinutes(int count) {
    return '$count분';
  }

  @override
  String get sheetSleepEndOfTrack => '이 곡이 끝나면';

  @override
  String sheetSleepSet(int count) {
    return '$count분 후 음악이 멈춰요';
  }

  @override
  String get tasteTitle => '내 취향';

  @override
  String get tasteRetrain => '다시 학습';

  @override
  String get tasteRetraining => '기록을 바탕으로 다시 학습하는 중…';

  @override
  String get tasteRetrained => 'AI가 모델을 다시 만들었어요.';

  @override
  String tasteConfidence(int percent) {
    return '신뢰도 $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '재생 $plays회 · 건너뜀 $skips회 · 좋아요 $likes개';
  }

  @override
  String get tasteEmptySummary => '몇 곡을 재생하면 여기가 채워져요.';

  @override
  String get tasteKeepLearning => '듣는 동안 계속 학습';

  @override
  String get tasteKeepLearningSub => '끄면 현재 프로필이 고정돼요';

  @override
  String get tasteDownloadsTitle => 'AI가 처리하는 다운로드';

  @override
  String get tasteDownloadsSub => '요청하지 않아도 음악이 기기에 저장돼요';

  @override
  String get tasteDownloadLikes => '좋아요 표시한 곡 모두 다운로드';

  @override
  String get tasteDownloadLikesSub => '하트를 누르면 오프라인용 파일로 저장돼요';

  @override
  String get tasteAiInstall => 'AI가 고른 음악 설치 허용';

  @override
  String get tasteAiInstallSub => '확신이 드는 곡을 가져와요';

  @override
  String get tasteWhatItThinks => 'AI가 생각하는 내 취향';

  @override
  String get tasteWhatItThinksSub => '재생, 건너뜀, 좋아요, 반복에서 학습했어요';

  @override
  String get tasteArtists => 'AI가 참고하는 아티스트';

  @override
  String get tasteWhenYouListen => '듣는 시간대';

  @override
  String get tasteWhenYouListenSub => '시간별 재생 횟수 — 현재 시간에 가중치를 둬요';

  @override
  String get tasteDecades => '연대';

  @override
  String get tasteTune => '추천 조정';

  @override
  String get tasteTuneSub => '다음 홈 새로고침부터 적용돼요';

  @override
  String get tasteDiscovery => '발견';

  @override
  String get tasteDiscoverySub => '익숙한 곡 ↔ 처음 듣는 곡';

  @override
  String get tasteEnergy => '에너지';

  @override
  String get tasteEnergySub => '잔잔함 ↔ 시끄러움';

  @override
  String get tasteRecency => '최신성';

  @override
  String get tasteRecencySub => '시대를 초월한 곡 ↔ 갓 나온 곡';

  @override
  String get tasteNostalgia => '향수';

  @override
  String get tasteNostalgiaSub => '오래된 favorite를 얼마나 지나면 잊힌 곡으로 볼지';

  @override
  String get tasteSignals => '사용할 수 있는 신호';

  @override
  String get tasteSignalsSub => '모든 데이터는 이 기기에만 보관돼요';

  @override
  String get tasteUseHistory => '내가 재생한 곡';

  @override
  String get tasteUseSkips => '내가 건너뛴 곡';

  @override
  String get tasteUseTime => '시간대';

  @override
  String get tasteUseYouTube => 'YouTube 추천';

  @override
  String get tasteAlwaysMore => '항상 더 많이';

  @override
  String get tasteNeverAgain => '다시는 안 함';

  @override
  String get tasteAddArtist => '아티스트 추가';

  @override
  String get tasteMoreOfPrompt => '항상 더 많이…';

  @override
  String get tasteNeverAgainPrompt => '다시는 안 함…';

  @override
  String get tasteReset => '학습 내용 초기화';

  @override
  String get tasteResetSub => '음악은 그대로 남고 프로필만 처음부터 시작해요';

  @override
  String get trainCard => '평가로 학습시키기';

  @override
  String get trainCardSub =>
      '실제 노래를 넘겨 보세요. 오른쪽은 비슷한 곡 더, 왼쪽은 다시는 안 함. 여기서 2분이 일주일 듣는 것보다 나아요.';

  @override
  String get trainStart => '학습 라운드 시작';

  @override
  String get trainTitle => '학습 라운드';

  @override
  String get trainQuestion => '이 곡을 홈에서 보고 싶으세요?';

  @override
  String get trainMoreLikeThis => '비슷한 곡 더';

  @override
  String get trainNeverAgain => '다시는 안 함';

  @override
  String get trainDone => '라운드 완료';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '유지 $liked곡 · 차단 $blocked곡. 신뢰도 $before% → $after%';
  }

  @override
  String get trainBackToTaste => '내 취향으로 돌아가기';

  @override
  String get trainNothingTitle => '아직 평가할 곡이 없어요';

  @override
  String get trainNothingBody => '음악을 추가하거나 AI가 후보를 가져오게 한 다음 다시 오세요.';

  @override
  String get trainLeaveTitle => '학습 라운드를 나갈까요?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '지금 나가면 AI가 이번 라운드의 모든 내용, 방금 평가한 $count곡을 버려요.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => '계속 학습';

  @override
  String get trainDiscard => '버리고 나가기';

  @override
  String get setTitle => '설정';

  @override
  String get setAppearance => '화면';

  @override
  String get setTheme => '테마';

  @override
  String get setThemeSystem => '시스템 설정 따르기';

  @override
  String get setThemeLight => '라이트';

  @override
  String get setThemeDark => '다크';

  @override
  String get setPureBlack => '퓨어 블랙';

  @override
  String get setPureBlackSub => 'OLED 화면에서 전력을 절약해요';

  @override
  String get setAccent => '강조 색상';

  @override
  String get setAccentArtwork => '커버 아트에서';

  @override
  String get setAccentFixed => '내가 고른 색상';

  @override
  String get setLanguage => '언어';

  @override
  String get setLanguageSystem => '시스템 설정 따르기';

  @override
  String get setAccessibility => '접근성';

  @override
  String get setTextSize => '글자 크기';

  @override
  String get setTextSizeSub => '시스템 설정에 추가로 적용돼요';

  @override
  String get setReduceMotion => '동작 줄이기';

  @override
  String get setReduceMotionSub => '막대, 비주얼라이저, 탄성 스크롤, 탄성 탭, 페이지 전환 효과를 끄고요';

  @override
  String get setHighContrast => '고대비';

  @override
  String get setHighContrastSub => '더 뚜렷한 구분과 보이는 윤곽선';

  @override
  String get setBoldText => '굵은 글씨';

  @override
  String get setPlayback => '재생';

  @override
  String get setAutoRadio => '음악 계속 재생';

  @override
  String get setAutoRadioSub => '대기열이 끝나면 마지막 곡을 기반으로 한 라디오를 이어서 재생해요';

  @override
  String get setSmartShuffle => '스마트 셔플';

  @override
  String get setSmartShuffleSub => '무작위가 아닌 취향에 따라 섞어요';

  @override
  String get setResume => '듣던 곳에서 이어 듣기';

  @override
  String get setResumeSub => '앱을 열 때 일시정지 상태로 대기열을 복원해요';

  @override
  String get setDataSaver => 'Wi-Fi 외 데이터 절약';

  @override
  String get setDataSaverSub => '모바일 데이터에서는 스트리밍과 다운로드를 128kbps로 제한해요';

  @override
  String get setHaptics => '햅틱 피드백';

  @override
  String get setShowReasons => '추천 이유 표시';

  @override
  String get setSkipSilence => '무음 건너뛰기';

  @override
  String get setQuality => '음질';

  @override
  String get setQualityLow => '낮음 · 64 kbps';

  @override
  String get setQualityNormal => '보통 · 128 kbps';

  @override
  String get setQualityHigh => '높음 · 192 kbps';

  @override
  String get setQualityBest => '최고 음질';

  @override
  String get setStorage => '다운로드 및 저장공간';

  @override
  String get setWifiOnly => 'Wi-Fi에서만 다운로드';

  @override
  String get setDailyLimit => 'AI 일일 한도';

  @override
  String setDailyLimitSub(int count) {
    return '하루 $count곡';
  }

  @override
  String get setBudget => 'AI가 사용할 수 있는 저장공간';

  @override
  String setUsed(Object size) {
    return '다운로드에 $size 사용 중';
  }

  @override
  String get setYourMusic => '내 음악';

  @override
  String get setImport => '이 기기에서 음악 추가';

  @override
  String get setImportSub => '폴더 또는 개별 파일 선택';

  @override
  String get setCleanup => '없는 파일 정리';

  @override
  String get setCleanupSub => '파일이 사라진 노래를 목록에서 제거해요';

  @override
  String setCleanupDone(int count) {
    return '없는 파일 $count개를 제거했어요.';
  }

  @override
  String get setExport => '내 취향을 다른 기기로 보내기';

  @override
  String get setExportSub => '좋아요, 재생 기록, AI가 학습한 모든 내용을 파일로 저장해요';

  @override
  String get setImportTaste => '다른 기기에서 취향 불러오기';

  @override
  String get setImportTasteSub => '저장된 취향 파일을 선택해 병합해요 — 반복해도 안전해요';

  @override
  String get setAbout => '정보';

  @override
  String get setAboutBody =>
      'YouTube와 내 파일의 음악. AI는 전적으로 이 기기에서 실행되며 어떤 데이터도 기기 밖으로 나가지 않아요.';

  @override
  String get setSource => '소스 코드';

  @override
  String get importTitle => '음악 추가';

  @override
  String get importPickFolder => '폴더 선택';

  @override
  String get importPickFiles => '파일 선택';

  @override
  String importScanning(Object file) {
    return '$file 스캔 중';
  }

  @override
  String importAdded(int count) {
    return '$count곡 추가됨';
  }

  @override
  String get importDenied => '권한이 거부되어 음악을 읽을 수 없어요.';

  @override
  String get importWatched => '감시 중인 폴더';

  @override
  String get importIosHint => '파일 앱에서 나의 iPhone → TuneBox로 이동해 음악을 넣어 주세요.';

  @override
  String get playerQueue => '대기열';

  @override
  String get playerUpNext => '다음 곡';

  @override
  String get playerLyrics => '가사';

  @override
  String get playerNoLyrics => '이 곡은 가사가 없어요.';

  @override
  String get playerRepeat => '반복';

  @override
  String get playerShuffle => '셔플';

  @override
  String errorPlayback(Object title) {
    return '\"$title\"을(를) 재생할 수 없어요';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\"을(를) 건너뛰어요 — 스트림을 열 수 없었어요.';
  }

  @override
  String get undo => '실행 취소';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return '지금은 $tags, 특히 $artist가 중심이에요.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return '지금은 $tags.';
  }

  @override
  String get setColour => '색상';

  @override
  String get setColourSub => '앱 전체에 적용돼요';

  @override
  String get setCoverArt => '커버 아트';

  @override
  String get setMyColour => '내 색상';

  @override
  String get setCoverArtSub => '곡마다 커버에 맞춰 앱 색이 바뀌어요.';

  @override
  String get setMyColourSub => '항상, 어디서나 하나의 색상.';

  @override
  String get setPickColour => '원하는 색상 고르기';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi에서만 다운로드';

  @override
  String get setDownloadLikes => '좋아요 표시한 곡 모두 다운로드';

  @override
  String get setDownloadLikesSub => '하트 버튼으로 파일도 함께 저장해요';

  @override
  String get setAiInstall => 'AI가 고른 음악 설치 허용';

  @override
  String get setSkipSilenceSub =>
      'Android 전용. 조용한 인트로, 페이드, 잔잔한 부분이 잘릴 수 있어요 — 음악이 끊기면 꺼 두세요';

  @override
  String get setStorageUsed => '다운로드가 사용한 저장공간';

  @override
  String get setLibrary => '보관함';

  @override
  String get setUpdates => '업데이트';

  @override
  String get setAutoUpdate => '자동으로 업데이트 확인';

  @override
  String get setAutoUpdateSub => '몇 시간마다 조용히 확인하고 Wi-Fi에서 다운로드해요. 설치는 확인을 거쳐요.';

  @override
  String setUpdateReady(Object version) {
    return '$version 업데이트 준비 완료';
  }

  @override
  String get setUpdateReadySub => '다운로드 완료 — 눌러서 설치';

  @override
  String get setUpdateAvailableSub => '릴리스 페이지에서 받으세요 — 눌러서 링크 복사';

  @override
  String get setLinkCopied => '링크를 복사했어요';

  @override
  String get setCheckNow => '지금 확인';

  @override
  String get setUpToDate => 'TuneBox가 최신 버전이에요';

  @override
  String get setChecking => '새 버전을 확인하는 중…';
}
