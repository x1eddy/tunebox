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
}
