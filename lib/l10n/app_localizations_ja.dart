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
}
