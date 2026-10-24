// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class LJa extends L {
  LJa([String locale = 'ja']) : super(locale);

  @override
  String get navHome => 'ホーム';

  @override
  String get navExplore => '探す';

  @override
  String get navLibrary => 'ライブラリ';

  @override
  String get navTaste => 'あなたの好み';

  @override
  String get actionDone => '完了';

  @override
  String get actionCancel => 'キャンセル';

  @override
  String get actionCreate => '作成';

  @override
  String get actionPlay => '再生';

  @override
  String get actionShuffle => 'シャッフル';

  @override
  String get actionPlayAll => 'すべて再生';

  @override
  String get actionAdd => '追加';

  @override
  String get actionRemove => '削除';

  @override
  String get actionName => '名前';

  @override
  String get greetingNight => 'まだ起きてる？';

  @override
  String get greetingMorning => 'おはようございます';

  @override
  String get greetingAfternoon => 'こんにちは';

  @override
  String get greetingEvening => 'こんばんは';

  @override
  String get homeBuilding => 'AIがあなたの棚を作っています…';

  @override
  String get homeOffline => 'オフライン — デバイス内の曲を表示中';

  @override
  String get homeNothingYet => 'まだ表示するものがありません';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count個の棚、たった今更新',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => '棚を作り直す';

  @override
  String get homeAddMusic => 'このデバイスの音楽を追加';

  @override
  String get homeQuickPicks => 'クイックピック';

  @override
  String get homeQuickPicksSub => 'さっきの続きにすぐ戻れます';

  @override
  String get homeEmptyTitle => 'ライブラリは空です';

  @override
  String get homeEmptyBody => '何か検索するか、このデバイスにある音楽を追加しましょう。AIは最初の1曲から学習を始めます。';

  @override
  String get homeAddMyMusic => '自分の音楽を追加';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTubeに接続できませんでした: $error';
  }

  @override
  String get moodFocus => '集中';

  @override
  String get moodWorkout => 'ワークアウト';

  @override
  String get moodChill => 'チル';

  @override
  String get moodCommute => '通勤・通学';

  @override
  String get moodParty => 'パーティー';

  @override
  String moodBuilding(Object mood) {
    return '$moodミックスを作成中…';
  }

  @override
  String moodFailed(Object error) {
    return 'うまくいきませんでした: $error';
  }

  @override
  String get shelfRepeat => 'リピート中';

  @override
  String get shelfRepeatSub => 'ここ2週間';

  @override
  String get shelfForgotten => '忘れかけた好きだった名曲';

  @override
  String get shelfForgottenSub => 'かつて愛した、しばらく聴いていない曲';

  @override
  String get shelfNew => '新着';

  @override
  String get shelfNewSub => 'AIがあなたに合うと考えた新曲';

  @override
  String shelfBecause(Object artist) {
    return '$artistを再生したので';
  }

  @override
  String get shelfBecauseSub => 'あなたの好みと同じ系統';

  @override
  String get shelfDeep => 'ほとんど聴いていない曲';

  @override
  String get shelfDeepSub => 'ライブラリにあるのに、ほぼ未再生';

  @override
  String get shelfMix => 'あなたのミックス';

  @override
  String get shelfMixSub => 'アプリを開くたびに作り直されます';

  @override
  String get shelfAdded => '最近追加';

  @override
  String get shelfAddedSub => 'ダウンロードやインポートしたファイル';

  @override
  String get shelfStarter => 'ここから始めよう';

  @override
  String get shelfStarterSub => '数曲再生すればAIがすぐに学習を始めます';

  @override
  String reasonPlays(int count) {
    return '$count回再生';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'お気に入り、最後の再生は$when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count回再生、最後は$when';
  }

  @override
  String get reasonTopArtist => 'よく聴くアーティストの一人';

  @override
  String reasonMore(Object artist) {
    return '$artistをもっと';
  }

  @override
  String reasonComeBack(Object artist) {
    return '$artistをよく聴いています';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'あなた好みの$tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return '最近は$tagが多め';
  }

  @override
  String get reasonOutThisYear => '今年リリース';

  @override
  String get reasonReleasedRecently => '最近リリース';

  @override
  String get reasonClose => '最近聴いている曲に近い';

  @override
  String reasonNear(Object artist) {
    return '$artistに近い';
  }

  @override
  String get reasonNeverPlayed => '未再生';

  @override
  String get reasonPlayedOnce => '1回再生';

  @override
  String get reasonPopular => '今人気';

  @override
  String whenYearsAgo(int count) {
    return '$count年前';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$countか月前';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count日前';
  }

  @override
  String get searchHint => '曲、アーティスト、アルバム';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件の結果',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => '最近の検索';

  @override
  String get searchEmptyTitle => '見つかりませんでした';

  @override
  String get searchEmptyBody => '別の綴りか、アーティスト名だけで試してください。';

  @override
  String get searchStartTitle => '再生する曲を探そう';

  @override
  String get searchStartBody => 'YouTube Musicを検索 — 曲だけが表示され、他の動画は出てきません。';

  @override
  String get libPlaylists => 'プレイリスト';

  @override
  String get libSongs => '曲';

  @override
  String get libArtists => 'アーティスト';

  @override
  String get libLiked => 'お気に入り';

  @override
  String get libDownloads => 'ダウンロード';

  @override
  String get libImported => 'インポート済み';

  @override
  String get libLikedSongs => 'お気に入りの曲';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count曲',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return 'オフライン$count';
  }

  @override
  String get libMyFiles => '自分のファイル';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countファイル',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => '新しいプレイリスト';

  @override
  String get libMakeOne => '作成する';

  @override
  String get libSortRecent => '最近追加';

  @override
  String get libSortTitle => 'タイトル';

  @override
  String get libSortArtist => 'アーティスト';

  @override
  String get libSortPlays => '再生回数順';

  @override
  String get sheetNotForMe => '好みじゃない';

  @override
  String get sheetNotForMeSub => '今後おすすめしない';

  @override
  String get sheetBlocked => 'ブロック中 — タップで解除';

  @override
  String get sheetBlockedSub => 'おすすめに再び表示されるようになります';

  @override
  String get sheetPlayNext => '次に再生';

  @override
  String get sheetAddToPlaylist => 'プレイリストに追加';

  @override
  String get sheetDownloaded => 'ダウンロード済み';

  @override
  String get sheetRemoveFile => 'タップでファイルを削除';

  @override
  String get sheetDownload => 'ダウンロード';

  @override
  String get sheetKeepOffline => 'オフライン用に保存';

  @override
  String get sheetRadio => 'ラジオを開始';

  @override
  String get sheetRadioSub => 'この曲をもとにしたキュー';

  @override
  String get sheetQueue => 'キュー';

  @override
  String get sheetSleepTimer => 'スリープタイマー';

  @override
  String get sheetSleepOff => 'オフ';

  @override
  String sheetSleepMinutes(int count) {
    return '$count分';
  }

  @override
  String get sheetSleepEndOfTrack => 'この曲の終わり';

  @override
  String sheetSleepSet(int count) {
    return '$count分後に音楽が止まります';
  }

  @override
  String get tasteTitle => 'あなたの好み';

  @override
  String get tasteRetrain => '再学習';

  @override
  String get tasteRetraining => '履歴から再学習中…';

  @override
  String get tasteRetrained => 'AIがモデルを作り直しました。';

  @override
  String tasteConfidence(int percent) {
    return '信頼度 $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '再生$plays回 · スキップ$skips回 · いいね$likes件';
  }

  @override
  String get tasteEmptySummary => '数曲再生すると、ここが埋まります。';

  @override
  String get tasteKeepLearning => '聴きながら学習を続ける';

  @override
  String get tasteKeepLearningSub => 'オフにすると現在のプロフィールを固定します';

  @override
  String get tasteDownloadsTitle => 'AIが扱うダウンロード';

  @override
  String get tasteDownloadsSub => '頼まなくても音楽がデバイスに入ります';

  @override
  String get tasteDownloadLikes => '好きな曲をすべてダウンロード';

  @override
  String get tasteDownloadLikesSub => 'ハートを押すとオフライン用にファイルが保存されます';

  @override
  String get tasteAiInstall => 'AIが選んだ音楽の取得を許可';

  @override
  String get tasteAiInstallSub => '自信のある曲を取得します';

  @override
  String get tasteWhatItThinks => 'AIが考えるあなたの好み';

  @override
  String get tasteWhatItThinksSub => '再生、スキップ、いいね、リピートから学習';

  @override
  String get tasteArtists => '参考にしているアーティスト';

  @override
  String get tasteWhenYouListen => '聴く時間帯';

  @override
  String get tasteWhenYouListenSub => '1時間あたりの再生数 — 現在の時間帯が重視されます';

  @override
  String get tasteDecades => '年代';

  @override
  String get tasteTune => 'おすすめを調整';

  @override
  String get tasteTuneSub => '次回のホーム更新から反映されます';

  @override
  String get tasteDiscovery => '発見';

  @override
  String get tasteDiscoverySub => 'なじみ深い ↔ 聴いたことがないもの';

  @override
  String get tasteEnergy => 'エネルギー';

  @override
  String get tasteEnergySub => '穏やか ↔ 激しい';

  @override
  String get tasteRecency => '新しさ';

  @override
  String get tasteRecencySub => '時代を超えた ↔ 最新';

  @override
  String get tasteNostalgia => 'ノスタルジー';

  @override
  String get tasteNostalgiaSub => '昔のお気に入りを「忘れた」と見なすまでの期間';

  @override
  String get tasteSignals => '使用してよい情報';

  @override
  String get tasteSignalsSub => 'すべてこのデバイス内にとどまります';

  @override
  String get tasteUseHistory => '再生した曲';

  @override
  String get tasteUseSkips => 'スキップした曲';

  @override
  String get tasteUseTime => '時間帯';

  @override
  String get tasteUseYouTube => 'YouTubeからの提案';

  @override
  String get tasteAlwaysMore => 'いつももっと';

  @override
  String get tasteNeverAgain => '二度と流さない';

  @override
  String get tasteAddArtist => 'アーティストを追加';

  @override
  String get tasteMoreOfPrompt => 'いつももっと…';

  @override
  String get tasteNeverAgainPrompt => '二度と流さない…';

  @override
  String get tasteReset => '学習内容をリセット';

  @override
  String get tasteResetSub => '音楽はそのまま。プロフィールはゼロからやり直します';

  @override
  String get trainCard => '評価してAIを育てる';

  @override
  String get trainCardSub =>
      '実際の曲をスワイプ。右でこういう曲をもっと、左で二度と流さない。ここでの2分は1週間の視聴に勝ります。';

  @override
  String get trainStart => 'トレーニングを開始';

  @override
  String get trainTitle => 'トレーニング';

  @override
  String get trainQuestion => 'これをホームに表示したい？';

  @override
  String get trainMoreLikeThis => 'こういう曲をもっと';

  @override
  String get trainNeverAgain => '二度と流さない';

  @override
  String get trainDone => 'トレーニング完了';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked件キープ · $blocked件ブロック。信頼度 $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'あなたの好みに戻る';

  @override
  String get trainNothingTitle => '評価する曲がまだありません';

  @override
  String get trainNothingBody => '音楽を追加するか、AIに候補を取得させてから戻ってきてください。';

  @override
  String get trainLeaveTitle => 'トレーニングを終了しますか？';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '今終了すると、このラウンドの内容(評価したばかりの$count曲)はすべて破棄されます。',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => '続ける';

  @override
  String get trainDiscard => '破棄して終了';

  @override
  String get setTitle => '設定';

  @override
  String get setAppearance => '外観';

  @override
  String get setTheme => 'テーマ';

  @override
  String get setThemeSystem => 'システムに合わせる';

  @override
  String get setThemeLight => 'ライト';

  @override
  String get setThemeDark => 'ダーク';

  @override
  String get setPureBlack => 'ピュアブラック';

  @override
  String get setPureBlackSub => 'OLED画面で電力を節約します';

  @override
  String get setAccent => 'アクセントカラー';

  @override
  String get setAccentArtwork => 'ジャケット画像から';

  @override
  String get setAccentFixed => '自分で選んだ1色';

  @override
  String get setLanguage => '言語';

  @override
  String get setLanguageSystem => 'システムに合わせる';

  @override
  String get setAccessibility => 'アクセシビリティ';

  @override
  String get setTextSize => '文字サイズ';

  @override
  String get setTextSizeSub => 'システム設定に上乗せされます';

  @override
  String get setReduceMotion => '視差効果を減らす';

  @override
  String get setReduceMotionSub =>
      'バー、ビジュアライザー、バウンドするスクロール、弾むタップ、画面遷移のアニメーションを停止します';

  @override
  String get setHighContrast => 'ハイコントラスト';

  @override
  String get setHighContrastSub => '区切りを強め、輪郭線を表示します';

  @override
  String get setBoldText => '太字';

  @override
  String get setPlayback => '再生';

  @override
  String get setAutoRadio => '音楽を流し続ける';

  @override
  String get setAutoRadioSub => 'キューが終わったら、最後の曲をもとにしたラジオを続けます';

  @override
  String get setSmartShuffle => 'スマートシャッフル';

  @override
  String get setSmartShuffleSub => 'ランダムではなく好みに沿ってシャッフルします';

  @override
  String get setResume => '前回の続きから再生';

  @override
  String get setResumeSub => 'アプリを開くとキューを復元します(一時停止状態)';

  @override
  String get setDataSaver => 'Wi-Fi以外ではデータ節約';

  @override
  String get setDataSaverSub => 'モバイルデータではストリーミングとダウンロードを128 kbpsに制限します';

  @override
  String get setHaptics => '触覚フィードバック';

  @override
  String get setShowReasons => 'おすすめの理由を表示';

  @override
  String get setSkipSilence => '無音をスキップ';

  @override
  String get setQuality => '音質';

  @override
  String get setQualityLow => '低 · 64 kbps';

  @override
  String get setQualityNormal => '標準 · 128 kbps';

  @override
  String get setQualityHigh => '高 · 192 kbps';

  @override
  String get setQualityBest => '利用可能な最高音質';

  @override
  String get setStorage => 'ダウンロードとストレージ';

  @override
  String get setWifiOnly => 'Wi-Fi接続時のみダウンロード';

  @override
  String get setDailyLimit => 'AIの1日あたりの上限';

  @override
  String setDailyLimitSub(int count) {
    return '1日$count曲';
  }

  @override
  String get setBudget => 'AIが使えるストレージ';

  @override
  String setUsed(Object size) {
    return 'ダウンロードで$size使用中';
  }

  @override
  String get setYourMusic => 'あなたの音楽';

  @override
  String get setImport => 'このデバイスの音楽を追加';

  @override
  String get setImportSub => 'フォルダまたは個別のファイルを選択';

  @override
  String get setCleanup => '見つからないファイルを整理';

  @override
  String get setCleanupSub => 'ファイルがなくなった曲を削除します';

  @override
  String setCleanupDone(int count) {
    return '見つからないファイルを$count件削除しました。';
  }

  @override
  String get setExport => '好みを別のデバイスに送る';

  @override
  String get setExportSub => 'いいね、再生履歴、AIが学習した内容をファイルに保存します';

  @override
  String get setImportTaste => '別のデバイスから好みを読み込む';

  @override
  String get setImportTasteSub => '保存した好みファイルを選んで統合します — 何度でも安全に実行できます';

  @override
  String get setAbout => 'このアプリについて';

  @override
  String get setAboutBody =>
      'YouTubeと自分のファイルの音楽。AIはすべてこのデバイス内で動作し、外部には何も送信されません。';

  @override
  String get setSource => 'ソースコード';

  @override
  String get importTitle => '音楽を追加';

  @override
  String get importPickFolder => 'フォルダを選択';

  @override
  String get importPickFiles => 'ファイルを選択';

  @override
  String importScanning(Object file) {
    return '$fileをスキャン中';
  }

  @override
  String importAdded(int count) {
    return '$count件追加';
  }

  @override
  String get importDenied => '権限がありません — 音楽を読み取れません。';

  @override
  String get importWatched => '監視中のフォルダ';

  @override
  String get importIosHint =>
      '「ファイル」アプリを開き、「このiPhone内」→「TuneBox」に音楽をドロップしてください。';

  @override
  String get playerQueue => 'キュー';

  @override
  String get playerUpNext => '次に再生';

  @override
  String get playerLyrics => '歌詞';

  @override
  String get playerNoLyrics => 'この曲の歌詞はありません。';

  @override
  String get playerRepeat => 'リピート';

  @override
  String get playerShuffle => 'シャッフル';

  @override
  String errorPlayback(Object title) {
    return '「$title」を再生できませんでした';
  }

  @override
  String errorSkipping(Object title) {
    return '「$title」をスキップします — ストリームを開けませんでした。';
  }

  @override
  String get undo => '元に戻す';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return '現在: $tags、中心は$artist。';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return '現在: $tags。';
  }

  @override
  String get setColour => 'カラー';

  @override
  String get setColourSub => 'アプリ全体に反映されます';

  @override
  String get setCoverArt => 'ジャケット画像';

  @override
  String get setMyColour => '自分の色';

  @override
  String get setCoverArtSub => '曲ごとにジャケットからアプリの色が変わります。';

  @override
  String get setMyColourSub => 'いつでもどこでも1色。';

  @override
  String get setPickColour => '好きな色を選択';

  @override
  String get setWifiOnlyTitle => 'Wi-Fi接続時のみダウンロード';

  @override
  String get setDownloadLikes => '好きな曲をすべてダウンロード';

  @override
  String get setDownloadLikesSub => 'ハートボタンでファイルも保存されます';

  @override
  String get setAiInstall => 'AIが選んだ音楽の取得を許可';

  @override
  String get setSkipSilenceSub =>
      'Androidのみ。静かなイントロ、フェード、小さな音の部分を削ることがあります — 音が飛ぶ場合はオフにしてください';

  @override
  String get setStorageUsed => 'ダウンロードの使用容量';

  @override
  String get setLibrary => 'ライブラリ';

  @override
  String get setUpdates => 'アップデート';

  @override
  String get setAutoUpdate => '自動でアップデートを確認';

  @override
  String get setAutoUpdateSub =>
      '数時間ごとにバックグラウンドで確認し、Wi-Fiでダウンロードします。インストール時は確認が入ります。';

  @override
  String setUpdateReady(Object version) {
    return '$versionへのアップデートの準備ができました';
  }

  @override
  String get setUpdateReadySub => 'ダウンロード済み — タップでインストール';

  @override
  String get setUpdateAvailableSub => 'リリースページから入手 — タップでリンクをコピー';

  @override
  String get setLinkCopied => 'リンクをコピーしました';

  @override
  String get setCheckNow => '今すぐ確認';

  @override
  String get setUpToDate => 'TuneBoxは最新です';

  @override
  String get setChecking => '新しいバージョンを確認中…';

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

  @override
  String addedToPlaylist(String name) {
    return 'Added to \"$name\"';
  }
}
