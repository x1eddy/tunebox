// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class LZh extends L {
  LZh([String locale = 'zh']) : super(locale);

  @override
  String get navHome => '首页';

  @override
  String get navExplore => '探索';

  @override
  String get navLibrary => '音乐库';

  @override
  String get navTaste => '你的口味';

  @override
  String get actionDone => '完成';

  @override
  String get actionCancel => '取消';

  @override
  String get actionCreate => '创建';

  @override
  String get actionPlay => '播放';

  @override
  String get actionShuffle => '随机播放';

  @override
  String get actionPlayAll => '播放全部';

  @override
  String get actionAdd => '添加';

  @override
  String get actionRemove => '移除';

  @override
  String get actionName => '名称';

  @override
  String get greetingNight => '还没睡？';

  @override
  String get greetingMorning => '早上好';

  @override
  String get greetingAfternoon => '下午好';

  @override
  String get greetingEvening => '晚上好';

  @override
  String get homeBuilding => 'AI 正在为你整理歌单架…';

  @override
  String get homeOffline => '离线 — 显示设备上的内容';

  @override
  String get homeNothingYet => '暂无内容';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个歌单架，刚刚刷新',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => '重建歌单架';

  @override
  String get homeAddMusic => '添加本设备上的音乐';

  @override
  String get homeQuickPicks => '快速精选';

  @override
  String get homeQuickPicksSub => '直接回到你刚才听的内容';

  @override
  String get homeEmptyTitle => '你的音乐库是空的';

  @override
  String get homeEmptyBody => '搜索一些内容，或添加本设备上已有的音乐。AI 从你的第一次播放起就开始学习。';

  @override
  String get homeAddMyMusic => '添加我的音乐';

  @override
  String homeCouldNotReach(Object error) {
    return '无法连接 YouTube：$error';
  }

  @override
  String get moodFocus => '专注';

  @override
  String get moodWorkout => '健身';

  @override
  String get moodChill => '放松';

  @override
  String get moodCommute => '通勤';

  @override
  String get moodParty => '派对';

  @override
  String moodBuilding(Object mood) {
    return '正在生成$mood混合歌单…';
  }

  @override
  String moodFailed(Object error) {
    return '没成功：$error';
  }

  @override
  String get shelfRepeat => '单曲循环';

  @override
  String get shelfRepeatSub => '你最近两周的常听';

  @override
  String get shelfForgotten => '你喜欢过的被遗忘金曲';

  @override
  String get shelfForgottenSub => '曾经喜爱，已久未播放';

  @override
  String get shelfNew => '新歌';

  @override
  String get shelfNewSub => 'AI 认为适合你的新曲目';

  @override
  String shelfBecause(Object artist) {
    return '因为你听过 $artist';
  }

  @override
  String get shelfBecauseSub => '与你口味相近';

  @override
  String get shelfDeep => '几乎没听过';

  @override
  String get shelfDeepSub => '在你的音乐库里，但很少播放';

  @override
  String get shelfMix => '你的混合歌单';

  @override
  String get shelfMixSub => '每次打开应用都会重新生成';

  @override
  String get shelfAdded => '最近添加';

  @override
  String get shelfAddedSub => '你下载和导入的文件';

  @override
  String get shelfStarter => '从这里开始';

  @override
  String get shelfStarterSub => '播放几首，AI 马上开始学习';

  @override
  String reasonPlays(int count) {
    return '播放 $count 次';
  }

  @override
  String reasonLikedLast(Object when) {
    return '已喜欢，上次播放于$when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '播放 $count 次，上次$when';
  }

  @override
  String get reasonTopArtist => '你最常听的艺人之一';

  @override
  String reasonMore(Object artist) {
    return '更多 $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return '你总是回头听 $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return '你喜欢的$tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return '最近常听$tag';
  }

  @override
  String get reasonOutThisYear => '今年发行';

  @override
  String get reasonReleasedRecently => '近期发行';

  @override
  String get reasonClose => '接近你最近在听的风格';

  @override
  String reasonNear(Object artist) {
    return '与 $artist 相近';
  }

  @override
  String get reasonNeverPlayed => '从未播放';

  @override
  String get reasonPlayedOnce => '播放过一次';

  @override
  String get reasonPopular => '当前热门';

  @override
  String whenYearsAgo(int count) {
    return '$count 年前';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count 个月前';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count 天前';
  }

  @override
  String get searchHint => '歌曲、艺人、专辑';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个结果',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => '最近搜索';

  @override
  String get searchEmptyTitle => '未找到内容';

  @override
  String get searchEmptyBody => '试试其他拼写，或只输入艺人名称。';

  @override
  String get searchStartTitle => '找点歌来听';

  @override
  String get searchStartBody => '搜索 YouTube Music — 只会返回歌曲，不会出现其他类型的视频。';

  @override
  String get libPlaylists => '播放列表';

  @override
  String get libSongs => '歌曲';

  @override
  String get libArtists => '艺人';

  @override
  String get libLiked => '已喜欢';

  @override
  String get libDownloads => '下载';

  @override
  String get libImported => '已导入';

  @override
  String get libLikedSongs => '喜欢的歌曲';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 首歌曲',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count 首离线';
  }

  @override
  String get libMyFiles => '我自己的文件';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个文件',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => '新建播放列表';

  @override
  String get libMakeOne => '创建一个';

  @override
  String get libSortRecent => '最近添加';

  @override
  String get libSortTitle => '标题';

  @override
  String get libSortArtist => '艺人';

  @override
  String get libSortPlays => '播放最多';

  @override
  String get sheetNotForMe => '不适合我';

  @override
  String get sheetNotForMeSub => '不再推荐这首';

  @override
  String get sheetBlocked => '已屏蔽 — 点按可重新允许';

  @override
  String get sheetBlockedSub => '它可能会再次出现在推荐中';

  @override
  String get sheetPlayNext => '下一首播放';

  @override
  String get sheetAddToPlaylist => '添加到播放列表';

  @override
  String get sheetDownloaded => '已下载';

  @override
  String get sheetRemoveFile => '点按删除文件';

  @override
  String get sheetDownload => '下载';

  @override
  String get sheetKeepOffline => '保存以供离线使用';

  @override
  String get sheetRadio => '开启电台';

  @override
  String get sheetRadioSub => '围绕这首歌生成的播放队列';

  @override
  String get sheetQueue => '播放队列';

  @override
  String get sheetSleepTimer => '睡眠定时';

  @override
  String get sheetSleepOff => '关闭';

  @override
  String sheetSleepMinutes(int count) {
    return '$count 分钟';
  }

  @override
  String get sheetSleepEndOfTrack => '本曲结束时';

  @override
  String sheetSleepSet(int count) {
    return '音乐将在 $count 分钟后停止';
  }

  @override
  String get tasteTitle => '你的口味';

  @override
  String get tasteRetrain => '重新训练';

  @override
  String get tasteRetraining => '正在根据你的历史记录重新训练…';

  @override
  String get tasteRetrained => 'AI 已重建其模型。';

  @override
  String tasteConfidence(int percent) {
    return '置信度 $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays 次播放 · $skips 次跳过 · $likes 次喜欢';
  }

  @override
  String get tasteEmptySummary => '播放几首歌后，这里就会显示内容。';

  @override
  String get tasteKeepLearning => '听歌时持续学习';

  @override
  String get tasteKeepLearningSub => '关闭后将冻结当前的口味档案';

  @override
  String get tasteDownloadsTitle => 'AI 负责的下载';

  @override
  String get tasteDownloadsSub => '音乐无需你操作就会保存到设备';

  @override
  String get tasteDownloadLikes => '下载我喜欢的所有内容';

  @override
  String get tasteDownloadLikesSub => '点一下爱心，文件就会保存供离线使用';

  @override
  String get tasteAiInstall => '让 AI 安装它挑选的音乐';

  @override
  String get tasteAiInstallSub => '它会获取它很有把握的曲目';

  @override
  String get tasteWhatItThinks => '它认为你喜欢什么';

  @override
  String get tasteWhatItThinksSub => '根据播放、跳过、喜欢和重复播放学习而来';

  @override
  String get tasteArtists => '它偏重的艺人';

  @override
  String get tasteWhenYouListen => '你的收听时间';

  @override
  String get tasteWhenYouListenSub => '每小时播放次数 — 当前小时权重更高';

  @override
  String get tasteDecades => '年代';

  @override
  String get tasteTune => '调整推荐';

  @override
  String get tasteTuneSub => '下次刷新首页时生效';

  @override
  String get tasteDiscovery => '探索度';

  @override
  String get tasteDiscoverySub => '熟悉 ↔ 从未听过的内容';

  @override
  String get tasteEnergy => '能量';

  @override
  String get tasteEnergySub => '平静 ↔ 响亮';

  @override
  String get tasteRecency => '新鲜度';

  @override
  String get tasteRecencySub => '经典 ↔ 全新';

  @override
  String get tasteNostalgia => '怀旧';

  @override
  String get tasteNostalgiaSub => '多久以前的老歌才算被遗忘';

  @override
  String get tasteSignals => '可使用的信号';

  @override
  String get tasteSignalsSub => '所有数据都保留在本设备上';

  @override
  String get tasteUseHistory => '我播放过的内容';

  @override
  String get tasteUseSkips => '我跳过的内容';

  @override
  String get tasteUseTime => '一天中的时间';

  @override
  String get tasteUseYouTube => '来自 YouTube 的建议';

  @override
  String get tasteAlwaysMore => '多推荐';

  @override
  String get tasteNeverAgain => '不再推荐';

  @override
  String get tasteAddArtist => '添加艺人';

  @override
  String get tasteMoreOfPrompt => '多推荐…';

  @override
  String get tasteNeverAgainPrompt => '不再推荐…';

  @override
  String get tasteReset => '重置已学习的内容';

  @override
  String get tasteResetSub => '音乐会保留；口味档案从零开始';

  @override
  String get trainCard => '通过评分来训练';

  @override
  String get trainCardSub => '滑动浏览真实歌曲。右滑表示多来点这样的，左滑表示不再推荐。在这里花两分钟，胜过听一周。';

  @override
  String get trainStart => '开始一轮训练';

  @override
  String get trainTitle => '训练轮';

  @override
  String get trainQuestion => '你想在首页看到这首歌吗？';

  @override
  String get trainMoreLikeThis => '多来点这样的';

  @override
  String get trainNeverAgain => '不再推荐';

  @override
  String get trainDone => '本轮完成';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '保留 $liked 首 · 屏蔽 $blocked 首。置信度 $before% → $after%';
  }

  @override
  String get trainBackToTaste => '返回你的口味';

  @override
  String get trainNothingTitle => '暂无可评分内容';

  @override
  String get trainNothingBody => '请先添加一些音乐，或让 AI 获取候选曲目，然后再回来。';

  @override
  String get trainLeaveTitle => '要退出训练吗？';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '现在退出的话，AI 会丢弃本轮的所有内容 — 即你刚评分的 $count 首歌曲。',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => '继续训练';

  @override
  String get trainDiscard => '放弃并退出';

  @override
  String get setTitle => '设置';

  @override
  String get setAppearance => '外观';

  @override
  String get setTheme => '主题';

  @override
  String get setThemeSystem => '跟随系统';

  @override
  String get setThemeLight => '浅色';

  @override
  String get setThemeDark => '深色';

  @override
  String get setPureBlack => '纯黑';

  @override
  String get setPureBlackSub => '在 OLED 屏幕上更省电';

  @override
  String get setAccent => '强调色';

  @override
  String get setAccentArtwork => '来自封面';

  @override
  String get setAccentFixed => '我选择的一种颜色';

  @override
  String get setLanguage => '语言';

  @override
  String get setLanguageSystem => '跟随系统';

  @override
  String get setAccessibility => '辅助功能';

  @override
  String get setTextSize => '文字大小';

  @override
  String get setTextSizeSub => '在系统设置的基础上调整';

  @override
  String get setReduceMotion => '减少动态效果';

  @override
  String get setReduceMotionSub => '停用律动条、可视化效果、弹性滚动、弹跳点按和页面过渡';

  @override
  String get setHighContrast => '高对比度';

  @override
  String get setHighContrastSub => '更清晰的分隔和可见的轮廓';

  @override
  String get setBoldText => '粗体文字';

  @override
  String get setPlayback => '播放';

  @override
  String get setAutoRadio => '让音乐不停';

  @override
  String get setAutoRadioSub => '队列结束后，根据最后一首歌继续播放电台';

  @override
  String get setSmartShuffle => '智能随机';

  @override
  String get setSmartShuffleSub => '按口味而非完全随机来打乱顺序';

  @override
  String get setResume => '从上次停下的地方继续';

  @override
  String get setResumeSub => '打开应用时恢复播放队列，处于暂停状态';

  @override
  String get setDataSaver => '非 Wi-Fi 时省流量';

  @override
  String get setDataSaverSub => '使用移动数据时，将播放和下载限制在 128 kbps';

  @override
  String get setHaptics => '触感反馈';

  @override
  String get setShowReasons => '显示推荐原因';

  @override
  String get setSkipSilence => '跳过静音';

  @override
  String get setQuality => '音质';

  @override
  String get setQualityLow => '低 · 64 kbps';

  @override
  String get setQualityNormal => '标准 · 128 kbps';

  @override
  String get setQualityHigh => '高 · 192 kbps';

  @override
  String get setQualityBest => '最佳可用';

  @override
  String get setStorage => '下载与存储';

  @override
  String get setWifiOnly => '仅在 Wi-Fi 下下载';

  @override
  String get setDailyLimit => 'AI 每日上限';

  @override
  String setDailyLimitSub(int count) {
    return '每天 $count 首歌曲';
  }

  @override
  String get setBudget => 'AI 可使用的存储空间';

  @override
  String setUsed(Object size) {
    return '下载已占用 $size';
  }

  @override
  String get setYourMusic => '你的音乐';

  @override
  String get setImport => '添加本设备上的音乐';

  @override
  String get setImportSub => '选择文件夹或单个文件';

  @override
  String get setCleanup => '清理丢失的文件';

  @override
  String get setCleanupSub => '移除文件已不存在的歌曲';

  @override
  String setCleanupDone(int count) {
    return '已移除 $count 个丢失的文件。';
  }

  @override
  String get setExport => '将我的口味发送到其他设备';

  @override
  String get setExportSub => '保存一个包含你的喜欢、播放记录及 AI 所学内容的文件';

  @override
  String get setImportTaste => '从其他设备载入口味';

  @override
  String get setImportTasteSub => '选择已保存的口味文件并合并 — 可放心重复操作';

  @override
  String get setAbout => '关于';

  @override
  String get setAboutBody => '来自 YouTube 和你自己文件的音乐。AI 完全在本设备上运行 — 任何数据都不会外传。';

  @override
  String get setSource => '源代码';

  @override
  String get importTitle => '添加音乐';

  @override
  String get importPickFolder => '选择文件夹';

  @override
  String get importPickFiles => '选择文件';

  @override
  String importScanning(Object file) {
    return '正在扫描 $file';
  }

  @override
  String importAdded(int count) {
    return '已添加 $count 首';
  }

  @override
  String get importDenied => '权限被拒绝 — 无法读取你的音乐。';

  @override
  String get importWatched => '监视的文件夹';

  @override
  String get importIosHint => '打开“文件”应用，进入“我的 iPhone”→ TuneBox，然后把音乐放进去。';

  @override
  String get playerQueue => '播放队列';

  @override
  String get playerUpNext => '接下来播放';

  @override
  String get playerLyrics => '歌词';

  @override
  String get playerNoLyrics => '这首歌没有歌词。';

  @override
  String get playerRepeat => '重复';

  @override
  String get playerShuffle => '随机';

  @override
  String errorPlayback(Object title) {
    return '无法播放“$title”';
  }

  @override
  String errorSkipping(Object title) {
    return '跳过“$title” — 无法打开音频流。';
  }

  @override
  String get undo => '撤销';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return '目前：$tags，以 $artist 为主。';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return '目前：$tags。';
  }

  @override
  String get setColour => '颜色';

  @override
  String get setColourSub => '整个应用都会采用这个颜色';

  @override
  String get setCoverArt => '封面';

  @override
  String get setMyColour => '我的颜色';

  @override
  String get setCoverArtSub => '每首歌都会根据其封面重新为应用着色。';

  @override
  String get setMyColourSub => '始终、处处使用同一种颜色。';

  @override
  String get setPickColour => '选择任意颜色';

  @override
  String get setWifiOnlyTitle => '仅在 Wi-Fi 下下载';

  @override
  String get setDownloadLikes => '下载我喜欢的所有内容';

  @override
  String get setDownloadLikesSub => '点爱心按钮时同时保存文件';

  @override
  String get setAiInstall => '让 AI 安装它挑选的音乐';

  @override
  String get setSkipSilenceSub =>
      '仅限 Android。可能会截掉安静的前奏、淡出和轻柔的段落 — 如果音乐出现跳跃，请保持关闭';

  @override
  String get setStorageUsed => '下载占用的存储空间';

  @override
  String get setLibrary => '音乐库';

  @override
  String get setUpdates => '更新';

  @override
  String get setAutoUpdate => '自动检查更新';

  @override
  String get setAutoUpdateSub => '每隔几小时在后台检查，并通过 Wi-Fi 下载。安装前仍会询问你。';

  @override
  String setUpdateReady(Object version) {
    return '$version 更新已就绪';
  }

  @override
  String get setUpdateReadySub => '已下载 — 点按安装';

  @override
  String get setUpdateAvailableSub => '请从发布页面获取 — 点按复制链接';

  @override
  String get setLinkCopied => '链接已复制';

  @override
  String get setCheckNow => '立即检查';

  @override
  String get setUpToDate => 'TuneBox 已是最新版本';

  @override
  String get setChecking => '正在查找新版本…';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class LZhTw extends LZh {
  LZhTw() : super('zh_TW');

  @override
  String get navHome => '首頁';

  @override
  String get navExplore => '探索';

  @override
  String get navLibrary => '音樂庫';

  @override
  String get navTaste => '你的口味';

  @override
  String get actionDone => '完成';

  @override
  String get actionCancel => '取消';

  @override
  String get actionCreate => '建立';

  @override
  String get actionPlay => '播放';

  @override
  String get actionShuffle => '隨機播放';

  @override
  String get actionPlayAll => '播放全部';

  @override
  String get actionAdd => '新增';

  @override
  String get actionRemove => '移除';

  @override
  String get actionName => '名稱';

  @override
  String get greetingNight => '還沒睡嗎？';

  @override
  String get greetingMorning => '早安';

  @override
  String get greetingAfternoon => '午安';

  @override
  String get greetingEvening => '晚安';

  @override
  String get homeBuilding => 'AI 正在為你整理歌單架…';

  @override
  String get homeOffline => '離線 — 顯示裝置上的內容';

  @override
  String get homeNothingYet => '目前沒有內容';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個歌單架，剛剛更新',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => '重建歌單架';

  @override
  String get homeAddMusic => '新增此裝置上的音樂';

  @override
  String get homeQuickPicks => '快速精選';

  @override
  String get homeQuickPicksSub => '直接回到你剛才聽的內容';

  @override
  String get homeEmptyTitle => '你的音樂庫是空的';

  @override
  String get homeEmptyBody => '搜尋一些內容，或新增此裝置上已有的音樂。AI 從你第一次播放起就開始學習。';

  @override
  String get homeAddMyMusic => '新增我的音樂';

  @override
  String homeCouldNotReach(Object error) {
    return '無法連線至 YouTube：$error';
  }

  @override
  String get moodFocus => '專注';

  @override
  String get moodWorkout => '健身';

  @override
  String get moodChill => '放鬆';

  @override
  String get moodCommute => '通勤';

  @override
  String get moodParty => '派對';

  @override
  String moodBuilding(Object mood) {
    return '正在產生$mood混合歌單…';
  }

  @override
  String moodFailed(Object error) {
    return '沒成功：$error';
  }

  @override
  String get shelfRepeat => '單曲循環';

  @override
  String get shelfRepeatSub => '你最近兩週的常聽';

  @override
  String get shelfForgotten => '你喜歡過的被遺忘金曲';

  @override
  String get shelfForgottenSub => '曾經喜愛，已久未播放';

  @override
  String get shelfNew => '新歌';

  @override
  String get shelfNewSub => 'AI 認為適合你的新曲目';

  @override
  String shelfBecause(Object artist) {
    return '因為你聽過 $artist';
  }

  @override
  String get shelfBecauseSub => '與你的口味相近';

  @override
  String get shelfDeep => '幾乎沒聽過';

  @override
  String get shelfDeepSub => '在你的音樂庫裡，但很少播放';

  @override
  String get shelfMix => '你的混合歌單';

  @override
  String get shelfMixSub => '每次開啟 App 都會重新產生';

  @override
  String get shelfAdded => '最近新增';

  @override
  String get shelfAddedSub => '你下載和匯入的檔案';

  @override
  String get shelfStarter => '從這裡開始';

  @override
  String get shelfStarterSub => '播放幾首，AI 馬上開始學習';

  @override
  String reasonPlays(int count) {
    return '播放 $count 次';
  }

  @override
  String reasonLikedLast(Object when) {
    return '已喜歡，上次播放於$when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '播放 $count 次，上次$when';
  }

  @override
  String get reasonTopArtist => '你最常聽的藝人之一';

  @override
  String reasonMore(Object artist) {
    return '更多 $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return '你總是回頭聽 $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return '你喜歡的$tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return '最近常聽$tag';
  }

  @override
  String get reasonOutThisYear => '今年發行';

  @override
  String get reasonReleasedRecently => '近期發行';

  @override
  String get reasonClose => '接近你最近在聽的風格';

  @override
  String reasonNear(Object artist) {
    return '與 $artist 相近';
  }

  @override
  String get reasonNeverPlayed => '從未播放';

  @override
  String get reasonPlayedOnce => '播放過一次';

  @override
  String get reasonPopular => '目前熱門';

  @override
  String whenYearsAgo(int count) {
    return '$count 年前';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count 個月前';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count 天前';
  }

  @override
  String get searchHint => '歌曲、藝人、專輯';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 筆結果',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => '最近搜尋';

  @override
  String get searchEmptyTitle => '找不到內容';

  @override
  String get searchEmptyBody => '試試其他拼法，或只輸入藝人名稱。';

  @override
  String get searchStartTitle => '找點歌來聽';

  @override
  String get searchStartBody => '搜尋 YouTube Music — 只會回傳歌曲，不會出現其他類型的影片。';

  @override
  String get libPlaylists => '播放清單';

  @override
  String get libSongs => '歌曲';

  @override
  String get libArtists => '藝人';

  @override
  String get libLiked => '已喜歡';

  @override
  String get libDownloads => '下載';

  @override
  String get libImported => '已匯入';

  @override
  String get libLikedSongs => '喜歡的歌曲';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 首歌曲',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count 首離線';
  }

  @override
  String get libMyFiles => '我自己的檔案';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個檔案',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => '新增播放清單';

  @override
  String get libMakeOne => '建立一個';

  @override
  String get libSortRecent => '最近新增';

  @override
  String get libSortTitle => '標題';

  @override
  String get libSortArtist => '藝人';

  @override
  String get libSortPlays => '播放最多';

  @override
  String get sheetNotForMe => '不適合我';

  @override
  String get sheetNotForMeSub => '不再推薦這首';

  @override
  String get sheetBlocked => '已封鎖 — 點一下可重新允許';

  @override
  String get sheetBlockedSub => '它可能會再次出現在推薦中';

  @override
  String get sheetPlayNext => '下一首播放';

  @override
  String get sheetAddToPlaylist => '加入播放清單';

  @override
  String get sheetDownloaded => '已下載';

  @override
  String get sheetRemoveFile => '點一下以刪除檔案';

  @override
  String get sheetDownload => '下載';

  @override
  String get sheetKeepOffline => '儲存以供離線使用';

  @override
  String get sheetRadio => '開啟電台';

  @override
  String get sheetRadioSub => '圍繞這首歌產生的播放佇列';

  @override
  String get sheetQueue => '播放佇列';

  @override
  String get sheetSleepTimer => '睡眠定時';

  @override
  String get sheetSleepOff => '關閉';

  @override
  String sheetSleepMinutes(int count) {
    return '$count 分鐘';
  }

  @override
  String get sheetSleepEndOfTrack => '本曲結束時';

  @override
  String sheetSleepSet(int count) {
    return '音樂將在 $count 分鐘後停止';
  }

  @override
  String get tasteTitle => '你的口味';

  @override
  String get tasteRetrain => '重新訓練';

  @override
  String get tasteRetraining => '正在根據你的歷史記錄重新訓練…';

  @override
  String get tasteRetrained => 'AI 已重建其模型。';

  @override
  String tasteConfidence(int percent) {
    return '信心度 $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays 次播放 · $skips 次跳過 · $likes 次喜歡';
  }

  @override
  String get tasteEmptySummary => '播放幾首歌後，這裡就會顯示內容。';

  @override
  String get tasteKeepLearning => '聽歌時持續學習';

  @override
  String get tasteKeepLearningSub => '關閉後將凍結目前的口味檔案';

  @override
  String get tasteDownloadsTitle => 'AI 負責的下載';

  @override
  String get tasteDownloadsSub => '音樂不必你操作就會儲存到裝置';

  @override
  String get tasteDownloadLikes => '下載我喜歡的所有內容';

  @override
  String get tasteDownloadLikesSub => '點一下愛心，檔案就會儲存供離線使用';

  @override
  String get tasteAiInstall => '讓 AI 安裝它挑選的音樂';

  @override
  String get tasteAiInstallSub => '它會擷取它很有把握的曲目';

  @override
  String get tasteWhatItThinks => '它認為你喜歡什麼';

  @override
  String get tasteWhatItThinksSub => '根據播放、跳過、喜歡和重複播放學習而來';

  @override
  String get tasteArtists => '它偏重的藝人';

  @override
  String get tasteWhenYouListen => '你的收聽時間';

  @override
  String get tasteWhenYouListenSub => '每小時播放次數 — 目前這個小時的權重較高';

  @override
  String get tasteDecades => '年代';

  @override
  String get tasteTune => '調整推薦';

  @override
  String get tasteTuneSub => '下次重新整理首頁時生效';

  @override
  String get tasteDiscovery => '探索度';

  @override
  String get tasteDiscoverySub => '熟悉 ↔ 從未聽過的內容';

  @override
  String get tasteEnergy => '能量';

  @override
  String get tasteEnergySub => '平靜 ↔ 響亮';

  @override
  String get tasteRecency => '新鮮度';

  @override
  String get tasteRecencySub => '經典 ↔ 全新';

  @override
  String get tasteNostalgia => '懷舊';

  @override
  String get tasteNostalgiaSub => '多久以前的老歌才算被遺忘';

  @override
  String get tasteSignals => '可使用的訊號';

  @override
  String get tasteSignalsSub => '所有資料都保留在此裝置上';

  @override
  String get tasteUseHistory => '我播放過的內容';

  @override
  String get tasteUseSkips => '我跳過的內容';

  @override
  String get tasteUseTime => '一天中的時間';

  @override
  String get tasteUseYouTube => '來自 YouTube 的建議';

  @override
  String get tasteAlwaysMore => '多推薦';

  @override
  String get tasteNeverAgain => '不再推薦';

  @override
  String get tasteAddArtist => '新增藝人';

  @override
  String get tasteMoreOfPrompt => '多推薦…';

  @override
  String get tasteNeverAgainPrompt => '不再推薦…';

  @override
  String get tasteReset => '重設已學習的內容';

  @override
  String get tasteResetSub => '音樂會保留；口味檔案從零開始';

  @override
  String get trainCard => '透過評分來訓練';

  @override
  String get trainCardSub => '滑動瀏覽真實歌曲。右滑表示多來點這樣的，左滑表示不再推薦。在這裡花兩分鐘，勝過聽一週。';

  @override
  String get trainStart => '開始一輪訓練';

  @override
  String get trainTitle => '訓練回合';

  @override
  String get trainQuestion => '你想在首頁看到這首歌嗎？';

  @override
  String get trainMoreLikeThis => '多來點這樣的';

  @override
  String get trainNeverAgain => '不再推薦';

  @override
  String get trainDone => '本回合完成';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '保留 $liked 首 · 封鎖 $blocked 首。信心度 $before% → $after%';
  }

  @override
  String get trainBackToTaste => '返回你的口味';

  @override
  String get trainNothingTitle => '目前沒有可評分的內容';

  @override
  String get trainNothingBody => '請先新增一些音樂，或讓 AI 擷取候選曲目，然後再回來。';

  @override
  String get trainLeaveTitle => '要離開訓練嗎？';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '現在離開的話，AI 會捨棄本回合的所有內容 — 也就是你剛評分的 $count 首歌曲。',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => '繼續訓練';

  @override
  String get trainDiscard => '捨棄並離開';

  @override
  String get setTitle => '設定';

  @override
  String get setAppearance => '外觀';

  @override
  String get setTheme => '主題';

  @override
  String get setThemeSystem => '跟隨系統';

  @override
  String get setThemeLight => '淺色';

  @override
  String get setThemeDark => '深色';

  @override
  String get setPureBlack => '純黑';

  @override
  String get setPureBlackSub => '在 OLED 螢幕上更省電';

  @override
  String get setAccent => '強調色';

  @override
  String get setAccentArtwork => '來自封面';

  @override
  String get setAccentFixed => '我選擇的一種顏色';

  @override
  String get setLanguage => '語言';

  @override
  String get setLanguageSystem => '跟隨系統';

  @override
  String get setAccessibility => '輔助使用';

  @override
  String get setTextSize => '文字大小';

  @override
  String get setTextSizeSub => '在系統設定的基礎上調整';

  @override
  String get setReduceMotion => '減少動態效果';

  @override
  String get setReduceMotionSub => '停用律動條、視覺化效果、彈性捲動、彈跳點按和頁面轉場';

  @override
  String get setHighContrast => '高對比';

  @override
  String get setHighContrastSub => '更清楚的分隔和可見的輪廓';

  @override
  String get setBoldText => '粗體文字';

  @override
  String get setPlayback => '播放';

  @override
  String get setAutoRadio => '讓音樂不停';

  @override
  String get setAutoRadioSub => '佇列結束後，根據最後一首歌繼續播放電台';

  @override
  String get setSmartShuffle => '智慧隨機';

  @override
  String get setSmartShuffleSub => '依口味而非完全隨機來打亂順序';

  @override
  String get setResume => '從上次停下的地方繼續';

  @override
  String get setResumeSub => '開啟 App 時還原播放佇列，並維持暫停狀態';

  @override
  String get setDataSaver => '非 Wi-Fi 時節省流量';

  @override
  String get setDataSaverSub => '使用行動數據時，將串流和下載限制在 128 kbps';

  @override
  String get setHaptics => '觸覺回饋';

  @override
  String get setShowReasons => '顯示推薦原因';

  @override
  String get setSkipSilence => '跳過靜音';

  @override
  String get setQuality => '音質';

  @override
  String get setQualityLow => '低 · 64 kbps';

  @override
  String get setQualityNormal => '標準 · 128 kbps';

  @override
  String get setQualityHigh => '高 · 192 kbps';

  @override
  String get setQualityBest => '最佳可用';

  @override
  String get setStorage => '下載與儲存空間';

  @override
  String get setWifiOnly => '僅在 Wi-Fi 下下載';

  @override
  String get setDailyLimit => 'AI 每日上限';

  @override
  String setDailyLimitSub(int count) {
    return '每天 $count 首歌曲';
  }

  @override
  String get setBudget => 'AI 可使用的儲存空間';

  @override
  String setUsed(Object size) {
    return '下載已佔用 $size';
  }

  @override
  String get setYourMusic => '你的音樂';

  @override
  String get setImport => '新增此裝置上的音樂';

  @override
  String get setImportSub => '選擇資料夾或單一檔案';

  @override
  String get setCleanup => '清理遺失的檔案';

  @override
  String get setCleanupSub => '移除檔案已不存在的歌曲';

  @override
  String setCleanupDone(int count) {
    return '已移除 $count 個遺失的檔案。';
  }

  @override
  String get setExport => '將我的口味傳送到其他裝置';

  @override
  String get setExportSub => '儲存一個包含你的喜歡、播放記錄及 AI 所學內容的檔案';

  @override
  String get setImportTaste => '從其他裝置載入口味';

  @override
  String get setImportTasteSub => '選擇已儲存的口味檔案並合併 — 可放心重複操作';

  @override
  String get setAbout => '關於';

  @override
  String get setAboutBody => '來自 YouTube 和你自己檔案的音樂。AI 完全在此裝置上執行 — 任何資料都不會外傳。';

  @override
  String get setSource => '原始碼';

  @override
  String get importTitle => '新增音樂';

  @override
  String get importPickFolder => '選擇資料夾';

  @override
  String get importPickFiles => '選擇檔案';

  @override
  String importScanning(Object file) {
    return '正在掃描 $file';
  }

  @override
  String importAdded(int count) {
    return '已新增 $count 首';
  }

  @override
  String get importDenied => '權限遭拒 — 無法讀取你的音樂。';

  @override
  String get importWatched => '監看的資料夾';

  @override
  String get importIosHint => '開啟「檔案」App，前往「我的 iPhone」→ TuneBox，然後把音樂放進去。';

  @override
  String get playerQueue => '播放佇列';

  @override
  String get playerUpNext => '接下來播放';

  @override
  String get playerLyrics => '歌詞';

  @override
  String get playerNoLyrics => '這首歌沒有歌詞。';

  @override
  String get playerRepeat => '重複';

  @override
  String get playerShuffle => '隨機';

  @override
  String errorPlayback(Object title) {
    return '無法播放「$title」';
  }

  @override
  String errorSkipping(Object title) {
    return '跳過「$title」 — 無法開啟串流。';
  }

  @override
  String get undo => '復原';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return '目前：$tags，以 $artist 為主。';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return '目前：$tags。';
  }

  @override
  String get setColour => '顏色';

  @override
  String get setColourSub => '整個 App 都會採用這個顏色';

  @override
  String get setCoverArt => '封面';

  @override
  String get setMyColour => '我的顏色';

  @override
  String get setCoverArtSub => '每首歌都會根據其封面重新為 App 著色。';

  @override
  String get setMyColourSub => '始終、處處使用同一種顏色。';

  @override
  String get setPickColour => '選擇任意顏色';

  @override
  String get setWifiOnlyTitle => '僅在 Wi-Fi 下下載';

  @override
  String get setDownloadLikes => '下載我喜歡的所有內容';

  @override
  String get setDownloadLikesSub => '點愛心按鈕時同時儲存檔案';

  @override
  String get setAiInstall => '讓 AI 安裝它挑選的音樂';

  @override
  String get setSkipSilenceSub =>
      '僅限 Android。可能會截掉安靜的前奏、淡出和輕柔的段落 — 如果音樂出現跳躍，請保持關閉';

  @override
  String get setStorageUsed => '下載佔用的儲存空間';

  @override
  String get setLibrary => '音樂庫';

  @override
  String get setUpdates => '更新';

  @override
  String get setAutoUpdate => '自動檢查更新';

  @override
  String get setAutoUpdateSub => '每隔幾小時在背景檢查，並透過 Wi-Fi 下載。安裝前仍會詢問你。';

  @override
  String setUpdateReady(Object version) {
    return '$version 更新已就緒';
  }

  @override
  String get setUpdateReadySub => '已下載 — 點一下以安裝';

  @override
  String get setUpdateAvailableSub => '請從發佈頁面取得 — 點一下複製連結';

  @override
  String get setLinkCopied => '連結已複製';

  @override
  String get setCheckNow => '立即檢查';

  @override
  String get setUpToDate => 'TuneBox 已是最新版本';

  @override
  String get setChecking => '正在尋找新版本…';
}
