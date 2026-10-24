// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class LTr extends L {
  LTr([String locale = 'tr']) : super(locale);

  @override
  String get navHome => 'Ana sayfa';

  @override
  String get navExplore => 'Keşfet';

  @override
  String get navLibrary => 'Kitaplık';

  @override
  String get navTaste => 'Zevkin';

  @override
  String get actionDone => 'Bitti';

  @override
  String get actionCancel => 'İptal';

  @override
  String get actionCreate => 'Oluştur';

  @override
  String get actionPlay => 'Çal';

  @override
  String get actionShuffle => 'Karıştır';

  @override
  String get actionPlayAll => 'Hepsini çal';

  @override
  String get actionAdd => 'Ekle';

  @override
  String get actionRemove => 'Kaldır';

  @override
  String get actionName => 'Ad';

  @override
  String get greetingNight => 'Hâlâ uyanık mısın?';

  @override
  String get greetingMorning => 'Günaydın';

  @override
  String get greetingAfternoon => 'İyi günler';

  @override
  String get greetingEvening => 'İyi akşamlar';

  @override
  String get homeBuilding => 'Yapay zekâ raflarını hazırlıyor…';

  @override
  String get homeOffline => 'Çevrimdışı — cihazdakiler gösteriliyor';

  @override
  String get homeNothingYet => 'Henüz gösterilecek bir şey yok';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count raf, şimdi yenilendi',
      one: '1 raf, şimdi yenilendi',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Rafları yeniden oluştur';

  @override
  String get homeAddMusic => 'Bu cihazdan müzik ekle';

  @override
  String get homeQuickPicks => 'Hızlı seçimler';

  @override
  String get homeQuickPicksSub => 'Kaldığın yerden devam et';

  @override
  String get homeEmptyTitle => 'Kitaplığın boş';

  @override
  String get homeEmptyBody =>
      'Bir şey ara ya da bu cihazdaki müzikleri ekle. Yapay zekâ ilk çalışından itibaren öğrenmeye başlar.';

  @override
  String get homeAddMyMusic => 'Müziklerimi ekle';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube\'a ulaşılamadı: $error';
  }

  @override
  String get moodFocus => 'Odak';

  @override
  String get moodWorkout => 'Spor';

  @override
  String get moodChill => 'Rahat';

  @override
  String get moodCommute => 'Yolculuk';

  @override
  String get moodParty => 'Parti';

  @override
  String moodBuilding(Object mood) {
    return '$mood karışımı hazırlanıyor…';
  }

  @override
  String moodFailed(Object error) {
    return 'Olmadı: $error';
  }

  @override
  String get shelfRepeat => 'Tekrarda';

  @override
  String get shelfRepeatSub => 'Son iki haftan';

  @override
  String get shelfForgotten => 'Sevdiğin unutulmuş eski hitler';

  @override
  String get shelfForgottenSub => 'Bir zamanlar sevdin, bir süredir dokunmadın';

  @override
  String get shelfNew => 'Yeni';

  @override
  String get shelfNewSub => 'Yapay zekânın sana göre bulduğu yeni parçalar';

  @override
  String shelfBecause(Object artist) {
    return '$artist dinlediğin için';
  }

  @override
  String get shelfBecauseSub => 'Zevkinin aynı köşesinden';

  @override
  String get shelfDeep => 'Pek dokunulmamış';

  @override
  String get shelfDeepSub => 'Kitaplığında, neredeyse hiç çalınmamış';

  @override
  String get shelfMix => 'Karışımın';

  @override
  String get shelfMixSub => 'Uygulamayı her açtığında yeniden oluşturulur';

  @override
  String get shelfAdded => 'Yeni eklenenler';

  @override
  String get shelfAddedSub => 'İndirdiklerin ve içe aktardığın dosyalar';

  @override
  String get shelfStarter => 'Buradan başla';

  @override
  String get shelfStarterSub =>
      'Birkaç parça çal, yapay zekâ hemen öğrenmeye başlasın';

  @override
  String reasonPlays(int count) {
    return '$count çalma';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Beğenildi, son çalınan: $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count çalma, son: $when';
  }

  @override
  String get reasonTopArtist => 'En çok dinlediğin sanatçılardan biri';

  @override
  String reasonMore(Object artist) {
    return 'Daha fazla $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Sürekli $artist dinlemeye dönüyorsun';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Tam sana göre $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Son zamanlarda çok $tag';
  }

  @override
  String get reasonOutThisYear => 'Bu yıl çıktı';

  @override
  String get reasonReleasedRecently => 'Yakın zamanda yayınlandı';

  @override
  String get reasonClose => 'Son dinlediklerine yakın';

  @override
  String reasonNear(Object artist) {
    return '$artist ile aynı havada';
  }

  @override
  String get reasonNeverPlayed => 'Hiç çalınmadı';

  @override
  String get reasonPlayedOnce => 'Bir kez çalındı';

  @override
  String get reasonPopular => 'Şu an popüler';

  @override
  String whenYearsAgo(int count) {
    return '$count yıl önce';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ay önce';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count gün önce';
  }

  @override
  String get searchHint => 'Şarkılar, sanatçılar, albümler';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sonuç',
      one: '1 sonuç',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Son aramalar';

  @override
  String get searchEmptyTitle => 'Hiçbir şey bulunamadı';

  @override
  String get searchEmptyBody =>
      'Başka bir yazım dene ya da yalnızca sanatçının adını yaz.';

  @override
  String get searchStartTitle => 'Çalacak bir şey bul';

  @override
  String get searchStartBody =>
      'YouTube Music\'te ara — yalnızca şarkılar gelir, başka şeylerin videoları asla.';

  @override
  String get libPlaylists => 'Çalma listeleri';

  @override
  String get libSongs => 'Şarkılar';

  @override
  String get libArtists => 'Sanatçılar';

  @override
  String get libLiked => 'Beğenilenler';

  @override
  String get libDownloads => 'İndirilenler';

  @override
  String get libImported => 'İçe aktarılanlar';

  @override
  String get libLikedSongs => 'Beğenilen şarkılar';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count şarkı',
      one: '1 şarkı',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count çevrimdışı';
  }

  @override
  String get libMyFiles => 'Kendi dosyalarım';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dosya',
      one: '1 dosya',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Yeni çalma listesi';

  @override
  String get libMakeOne => 'Bir tane oluştur';

  @override
  String get libSortRecent => 'Yeni eklenen';

  @override
  String get libSortTitle => 'Başlık';

  @override
  String get libSortArtist => 'Sanatçı';

  @override
  String get libSortPlays => 'En çok çalınan';

  @override
  String get sheetNotForMe => 'Bana göre değil';

  @override
  String get sheetNotForMeSub => 'Bunu bir daha asla önerme';

  @override
  String get sheetBlocked => 'Engellendi — tekrar izin vermek için dokun';

  @override
  String get sheetBlockedSub => 'Önerilerde yeniden görünebilir';

  @override
  String get sheetPlayNext => 'Sıradaki olarak çal';

  @override
  String get sheetAddToPlaylist => 'Çalma listesine ekle';

  @override
  String get sheetDownloaded => 'İndirildi';

  @override
  String get sheetRemoveFile => 'Dosyayı kaldırmak için dokun';

  @override
  String get sheetDownload => 'İndir';

  @override
  String get sheetKeepOffline => 'Çevrimdışı için sakla';

  @override
  String get sheetRadio => 'Radyo başlat';

  @override
  String get sheetRadioSub => 'Bu şarkı etrafında oluşturulan bir sıra';

  @override
  String get sheetQueue => 'Sıra';

  @override
  String get sheetSleepTimer => 'Uyku zamanlayıcısı';

  @override
  String get sheetSleepOff => 'Kapalı';

  @override
  String sheetSleepMinutes(int count) {
    return '$count dakika';
  }

  @override
  String get sheetSleepEndOfTrack => 'Bu şarkının sonu';

  @override
  String sheetSleepSet(int count) {
    return 'Müzik $count dk sonra duracak';
  }

  @override
  String get tasteTitle => 'Zevkin';

  @override
  String get tasteRetrain => 'Yeniden eğit';

  @override
  String get tasteRetraining => 'Geçmişin üzerinden yeniden eğitiliyor…';

  @override
  String get tasteRetrained => 'Yapay zekâ modelini yeniden oluşturdu.';

  @override
  String tasteConfidence(int percent) {
    return 'Güven %$percent';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays çalma · $skips atlama · $likes beğeni';
  }

  @override
  String get tasteEmptySummary => 'Birkaç şarkı çal, burası dolsun.';

  @override
  String get tasteKeepLearning => 'Dinlerken öğrenmeye devam et';

  @override
  String get tasteKeepLearningSub => 'Mevcut profili dondurmak için kapat';

  @override
  String get tasteDownloadsTitle => 'Yapay zekânın yönettiği indirmeler';

  @override
  String get tasteDownloadsSub => 'Müzik sen istemeden cihaza iner';

  @override
  String get tasteDownloadLikes => 'Beğendiğim her şeyi indir';

  @override
  String get tasteDownloadLikesSub =>
      'Kalbe dokun, dosya çevrimdışı için kaydedilsin';

  @override
  String get tasteAiInstall => 'Yapay zekâ seçtiği müziği yüklesin';

  @override
  String get tasteAiInstallSub => 'Emin olduğu parçaları getirir';

  @override
  String get tasteWhatItThinks => 'Neleri sevdiğini düşünüyor';

  @override
  String get tasteWhatItThinksSub =>
      'Çalmalardan, atlamalardan, beğenilerden ve tekrarlardan öğrenildi';

  @override
  String get tasteArtists => 'Dayandığı sanatçılar';

  @override
  String get tasteWhenYouListen => 'Ne zaman dinliyorsun';

  @override
  String get tasteWhenYouListenSub =>
      'Saat başına çalma — mevcut saat daha ağırlıklı';

  @override
  String get tasteDecades => 'On yıllar';

  @override
  String get tasteTune => 'Önerileri ayarla';

  @override
  String get tasteTuneSub => 'Bir sonraki Ana sayfa yenilemesinde geçerli olur';

  @override
  String get tasteDiscovery => 'Keşif';

  @override
  String get tasteDiscoverySub => 'Tanıdık ↔ hiç duymadığın şeyler';

  @override
  String get tasteEnergy => 'Enerji';

  @override
  String get tasteEnergySub => 'Sakin ↔ gürültülü';

  @override
  String get tasteRecency => 'Yenilik';

  @override
  String get tasteRecencySub => 'Zamansız ↔ yepyeni';

  @override
  String get tasteNostalgia => 'Nostalji';

  @override
  String get tasteNostalgiaSub =>
      'Eski bir favorinin ne kadar geriden sonra unutulmuş sayılacağı';

  @override
  String get tasteSignals => 'Kullanabileceği sinyaller';

  @override
  String get tasteSignalsSub => 'Her şey bu cihazda kalır';

  @override
  String get tasteUseHistory => 'Çaldıklarım';

  @override
  String get tasteUseSkips => 'Atladıklarım';

  @override
  String get tasteUseTime => 'Günün saati';

  @override
  String get tasteUseYouTube => 'YouTube\'dan öneriler';

  @override
  String get tasteAlwaysMore => 'Her zaman daha fazla';

  @override
  String get tasteNeverAgain => 'Bir daha asla';

  @override
  String get tasteAddArtist => 'Sanatçı ekle';

  @override
  String get tasteMoreOfPrompt => 'Her zaman daha fazla…';

  @override
  String get tasteNeverAgainPrompt => 'Bir daha asla…';

  @override
  String get tasteReset => 'Öğrendiklerini sıfırla';

  @override
  String get tasteResetSub => 'Müziklerin kalır; profil sıfırdan başlar';

  @override
  String get trainCard => 'Puanlayarak eğit';

  @override
  String get trainCardSub =>
      'Gerçek şarkılar arasında kaydır. Benzerleri için sağa, bir daha asla için sola. Burada iki dakika, bir haftalık dinlemeden değerli.';

  @override
  String get trainStart => 'Eğitim turunu başlat';

  @override
  String get trainTitle => 'Eğitim turu';

  @override
  String get trainQuestion => 'Bunu Ana sayfanda görmek ister miydin?';

  @override
  String get trainMoreLikeThis => 'Buna benzer daha fazla';

  @override
  String get trainNeverAgain => 'Bir daha asla';

  @override
  String get trainDone => 'Tur tamamlandı';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked tutuldu · $blocked engellendi. Güven %$before → %$after';
  }

  @override
  String get trainBackToTaste => 'Zevkine dön';

  @override
  String get trainNothingTitle => 'Henüz puanlanacak bir şey yok';

  @override
  String get trainNothingBody =>
      'Önce biraz müzik ekle ya da yapay zekânın aday getirmesini bekle, sonra geri gel.';

  @override
  String get trainLeaveTitle => 'Eğitim turundan çıkılsın mı?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Şimdi çıkarsan yapay zekâ bu turdaki her şeyi siler — az önce puanladığın $count şarkının hepsini.',
      one:
          'Şimdi çıkarsan yapay zekâ bu turdaki her şeyi siler — az önce puanladığın 1 şarkıyı.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Eğitmeye devam et';

  @override
  String get trainDiscard => 'Sil ve çık';

  @override
  String get setTitle => 'Ayarlar';

  @override
  String get setAppearance => 'Görünüm';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Sistemi izle';

  @override
  String get setThemeLight => 'Açık';

  @override
  String get setThemeDark => 'Koyu';

  @override
  String get setPureBlack => 'Saf siyah';

  @override
  String get setPureBlackSub => 'OLED ekranda güç tasarrufu sağlar';

  @override
  String get setAccent => 'Vurgu rengi';

  @override
  String get setAccentArtwork => 'Kapak resminden';

  @override
  String get setAccentFixed => 'Seçtiğim tek renk';

  @override
  String get setLanguage => 'Dil';

  @override
  String get setLanguageSystem => 'Sistemi izle';

  @override
  String get setAccessibility => 'Erişilebilirlik';

  @override
  String get setTextSize => 'Metin boyutu';

  @override
  String get setTextSizeSub => 'Sistem ayarının üstüne eklenir';

  @override
  String get setReduceMotion => 'Hareketi azalt';

  @override
  String get setReduceMotionSub =>
      'Çubukları, görselleştiriciyi, zıplayan kaydırmayı, yaylanan dokunuşları ve sayfa geçişlerini durdurur';

  @override
  String get setHighContrast => 'Yüksek karşıtlık';

  @override
  String get setHighContrastSub => 'Daha belirgin ayrım ve görünür çerçeveler';

  @override
  String get setBoldText => 'Kalın metin';

  @override
  String get setPlayback => 'Oynatma';

  @override
  String get setAutoRadio => 'Müzik hiç durmasın';

  @override
  String get setAutoRadioSub =>
      'Sıra bitince son şarkıdan oluşturulan bir radyoyla devam eder';

  @override
  String get setSmartShuffle => 'Akıllı karıştırma';

  @override
  String get setSmartShuffleSub => 'Rastgele değil, zevkine göre karıştırır';

  @override
  String get setResume => 'Kaldığım yerden devam et';

  @override
  String get setResumeSub =>
      'Uygulama açılınca sırayı duraklatılmış olarak geri yükler';

  @override
  String get setDataSaver => 'Wi-Fi dışında veri tasarrufu';

  @override
  String get setDataSaverSub =>
      'Mobil veride akışı ve indirmeleri 128 kbps ile sınırlar';

  @override
  String get setHaptics => 'Dokunsal geri bildirim';

  @override
  String get setShowReasons => 'Bir şeyin neden önerildiğini göster';

  @override
  String get setSkipSilence => 'Sessizliği atla';

  @override
  String get setQuality => 'Ses kalitesi';

  @override
  String get setQualityLow => 'Düşük · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Yüksek · 192 kbps';

  @override
  String get setQualityBest => 'Mevcut en iyi';

  @override
  String get setStorage => 'İndirmeler ve depolama';

  @override
  String get setWifiOnly => 'Yalnızca Wi-Fi\'de indir';

  @override
  String get setDailyLimit => 'Yapay zekâ için günlük sınır';

  @override
  String setDailyLimitSub(int count) {
    return 'Günde $count şarkı';
  }

  @override
  String get setBudget => 'Yapay zekânın kullanabileceği depolama';

  @override
  String setUsed(Object size) {
    return 'İndirmeler $size kullanıyor';
  }

  @override
  String get setYourMusic => 'Müziklerin';

  @override
  String get setImport => 'Bu cihazdan müzik ekle';

  @override
  String get setImportSub => 'Klasör ya da tek tek dosya seç';

  @override
  String get setCleanup => 'Eksik dosyaları temizle';

  @override
  String get setCleanupSub => 'Dosyası silinmiş şarkıları kaldır';

  @override
  String setCleanupDone(int count) {
    return '$count eksik dosya kaldırıldı.';
  }

  @override
  String get setExport => 'Zevkimi başka bir cihaza gönder';

  @override
  String get setExportSub =>
      'Beğenilerini, çalmalarını ve yapay zekânın öğrendiği her şeyi içeren bir dosya kaydeder';

  @override
  String get setImportTaste => 'Zevki başka bir cihazdan yükle';

  @override
  String get setImportTasteSub =>
      'Kaydedilmiş bir zevk dosyası seç ve birleştir — tekrarlamak güvenli';

  @override
  String get setAbout => 'Hakkında';

  @override
  String get setAboutBody =>
      'YouTube\'dan ve kendi dosyalarından müzik. Yapay zekâ tamamen bu cihazda çalışır — hiçbir şey dışarı çıkmaz.';

  @override
  String get setSource => 'Kaynak kodu';

  @override
  String get importTitle => 'Müzik ekle';

  @override
  String get importPickFolder => 'Klasör seç';

  @override
  String get importPickFiles => 'Dosya seç';

  @override
  String importScanning(Object file) {
    return '$file taranıyor';
  }

  @override
  String importAdded(int count) {
    return '$count eklendi';
  }

  @override
  String get importDenied => 'İzin reddedildi — müziklerin okunamıyor.';

  @override
  String get importWatched => 'İzlenen klasörler';

  @override
  String get importIosHint =>
      'Dosyalar uygulamasını aç, iPhone\'umda → TuneBox\'a git ve müzikleri oraya bırak.';

  @override
  String get playerQueue => 'Sıra';

  @override
  String get playerUpNext => 'Sıradaki';

  @override
  String get playerLyrics => 'Sözler';

  @override
  String get playerNoLyrics => 'Bu şarkının sözü yok.';

  @override
  String get playerRepeat => 'Tekrarla';

  @override
  String get playerShuffle => 'Karıştır';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" çalınamadı';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" atlanıyor — akış açılmadı.';
  }

  @override
  String get undo => 'Geri al';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Şu an: $tags, başta $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Şu an: $tags.';
  }

  @override
  String get setColour => 'Renk';

  @override
  String get setColourSub => 'Tüm uygulama buna uyar';

  @override
  String get setCoverArt => 'Kapak resmi';

  @override
  String get setMyColour => 'Benim rengim';

  @override
  String get setCoverArtSub =>
      'Her şarkı uygulamayı kapağına göre yeniden renklendirir.';

  @override
  String get setMyColourSub => 'Tek renk, her yerde, her zaman.';

  @override
  String get setPickColour => 'İstediğin rengi seç';

  @override
  String get setWifiOnlyTitle => 'Yalnızca Wi-Fi\'de indir';

  @override
  String get setDownloadLikes => 'Beğendiğim her şeyi indir';

  @override
  String get setDownloadLikesSub => 'Kalp düğmesi dosyayı da kaydeder';

  @override
  String get setAiInstall => 'Yapay zekâ seçtiği müziği yüklesin';

  @override
  String get setSkipSilenceSub =>
      'Yalnızca Android. Sessiz girişleri, geçişleri ve yumuşak bölümleri kesebilir — müzik atlıyorsa kapalı tut';

  @override
  String get setStorageUsed => 'İndirmelerin kullandığı depolama';

  @override
  String get setLibrary => 'Kitaplık';

  @override
  String get setUpdates => 'Güncellemeler';

  @override
  String get setAutoUpdate => 'Güncellemeleri kendiliğinden denetle';

  @override
  String get setAutoUpdateSub =>
      'Birkaç saatte bir, sessizce; indirme Wi-Fi\'de yapılır. Yükleme için yine de sorulur.';

  @override
  String setUpdateReady(Object version) {
    return '$version sürümüne güncelleme hazır';
  }

  @override
  String get setUpdateReadySub => 'İndirildi — yüklemek için dokun';

  @override
  String get setUpdateAvailableSub =>
      'Sürümler sayfasından edin — bağlantıyı kopyalamak için dokun';

  @override
  String get setLinkCopied => 'Bağlantı kopyalandı';

  @override
  String get setCheckNow => 'Şimdi denetle';

  @override
  String get setUpToDate => 'TuneBox güncel';

  @override
  String get setChecking => 'Daha yeni sürüm aranıyor…';

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
