// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class LAz extends L {
  LAz([String locale = 'az']) : super(locale);

  @override
  String get navHome => 'Ana səhifə';

  @override
  String get navExplore => 'Kəşf et';

  @override
  String get navLibrary => 'Kitabxana';

  @override
  String get navTaste => 'Zövqün';

  @override
  String get actionDone => 'Hazır';

  @override
  String get actionCancel => 'Ləğv et';

  @override
  String get actionCreate => 'Yarat';

  @override
  String get actionPlay => 'Oxut';

  @override
  String get actionShuffle => 'Qarışdır';

  @override
  String get actionPlayAll => 'Hamısını oxut';

  @override
  String get actionAdd => 'Əlavə et';

  @override
  String get actionRemove => 'Sil';

  @override
  String get actionName => 'Ad';

  @override
  String get greetingNight => 'Hələ yatmamısan?';

  @override
  String get greetingMorning => 'Sabahın xeyir';

  @override
  String get greetingAfternoon => 'Gün aydın';

  @override
  String get greetingEvening => 'Axşamın xeyir';

  @override
  String get homeBuilding => 'Sİ rəflərini qurur…';

  @override
  String get homeOffline => 'Oflayn — cihazda olanlar göstərilir';

  @override
  String get homeNothingYet => 'Hələ göstərməyə heç nə yoxdur';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rəf, indicə yeniləndi',
      one: '1 rəf, indicə yeniləndi',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Rəfləri yenidən qur';

  @override
  String get homeAddMusic => 'Bu cihazdan musiqi əlavə et';

  @override
  String get homeQuickPicks => 'Sürətli seçimlər';

  @override
  String get homeQuickPicksSub => 'Dinlədiyinə birbaşa qayıt';

  @override
  String get homeEmptyTitle => 'Kitabxanan boşdur';

  @override
  String get homeEmptyBody =>
      'Nəsə axtar və ya bu cihazda artıq olan musiqini əlavə et. Sİ ilk oxutmadan öyrənməyə başlayır.';

  @override
  String get homeAddMyMusic => 'Musiqimi əlavə et';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube-a qoşulmaq mümkün olmadı: $error';
  }

  @override
  String get moodFocus => 'Diqqət';

  @override
  String get moodWorkout => 'İdman';

  @override
  String get moodChill => 'Sakitlik';

  @override
  String get moodCommute => 'Yol';

  @override
  String get moodParty => 'Party';

  @override
  String moodBuilding(Object mood) {
    return '$mood miksi qurulur…';
  }

  @override
  String moodFailed(Object error) {
    return 'Alınmadı: $error';
  }

  @override
  String get shelfRepeat => 'Təkrar dinlənənlər';

  @override
  String get shelfRepeatSub => 'Son iki həftən';

  @override
  String get shelfForgotten => 'Bəyəndiyin köhnə unudulmuş hitlər';

  @override
  String get shelfForgottenSub =>
      'Bir vaxtlar sevilib, bir müddətdir toxunulmayıb';

  @override
  String get shelfNew => 'Yeni';

  @override
  String get shelfNewSub => 'Sİ-nin sənin üçün düşündüyü təzə treklər';

  @override
  String shelfBecause(Object artist) {
    return 'Çünki $artist dinləmisən';
  }

  @override
  String get shelfBecauseSub => 'Zövqünün eyni küncündən';

  @override
  String get shelfDeep => 'Çətin toxunulanlar';

  @override
  String get shelfDeepSub => 'Kitabxanandadır, demək olar ki, oxudulmayıb';

  @override
  String get shelfMix => 'Sənin miksin';

  @override
  String get shelfMixSub => 'Tətbiqi hər açanda yenidən qurulur';

  @override
  String get shelfAdded => 'Son əlavə olunanlar';

  @override
  String get shelfAddedSub => 'Yükləmələr və idxal etdiyin fayllar';

  @override
  String get shelfStarter => 'Buradan başla';

  @override
  String get shelfStarterSub =>
      'Bir neçəsini oxut, Sİ dərhal öyrənməyə başlayır';

  @override
  String reasonPlays(int count) {
    return '$count dəfə oxudulub';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Bəyənilib, axırıncı dəfə $when oxudulub';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count dəfə oxudulub, axırıncı $when';
  }

  @override
  String get reasonTopArtist => 'Ən çox dinlədiyin ifaçılardan biri';

  @override
  String reasonMore(Object artist) {
    return 'Daha çox $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Daim $artist sənətçisinə qayıdırsan';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Sənin növün: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Son vaxtlar çox $tag';
  }

  @override
  String get reasonOutThisYear => 'Bu il çıxıb';

  @override
  String get reasonReleasedRecently => 'Yaxınlarda çıxıb';

  @override
  String get reasonClose => 'Dinlədiklərinə yaxın';

  @override
  String reasonNear(Object artist) {
    return '$artist ilə yaxındır';
  }

  @override
  String get reasonNeverPlayed => 'Heç oxudulmayıb';

  @override
  String get reasonPlayedOnce => 'Bir dəfə oxudulub';

  @override
  String get reasonPopular => 'Hazırda populyar';

  @override
  String whenYearsAgo(int count) {
    return '$count il əvvəl';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count ay əvvəl';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count gün əvvəl';
  }

  @override
  String get searchHint => 'Mahnılar, ifaçılar, albomlar';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nəticə',
      one: '1 nəticə',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Son axtarışlar';

  @override
  String get searchEmptyTitle => 'Heç nə tapılmadı';

  @override
  String get searchEmptyBody =>
      'Başqa yazılış və ya təkcə ifaçının adını yoxla.';

  @override
  String get searchStartTitle => 'Oxutmaq üçün nəsə tap';

  @override
  String get searchStartBody =>
      'YouTube Music-də axtar — yalnız mahnılar gəlir, başqa şeylərin videoları heç vaxt.';

  @override
  String get libPlaylists => 'Pleylistlər';

  @override
  String get libSongs => 'Mahnılar';

  @override
  String get libArtists => 'İfaçılar';

  @override
  String get libLiked => 'Bəyənilənlər';

  @override
  String get libDownloads => 'Yükləmələr';

  @override
  String get libImported => 'İdxal edilənlər';

  @override
  String get libLikedSongs => 'Bəyənilən mahnılar';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mahnı',
      one: '1 mahnı',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count oflayn';
  }

  @override
  String get libMyFiles => 'Öz fayllarım';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fayl',
      one: '1 fayl',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Yeni pleylist';

  @override
  String get libMakeOne => 'Birini yarat';

  @override
  String get libSortRecent => 'Son əlavə olunanlar';

  @override
  String get libSortTitle => 'Ad';

  @override
  String get libSortArtist => 'İfaçı';

  @override
  String get libSortPlays => 'Ən çox oxudulan';

  @override
  String get sheetNotForMe => 'Mənlik deyil';

  @override
  String get sheetNotForMeSub => 'Bunu bir daha tövsiyə etmə';

  @override
  String get sheetBlocked => 'Bloklanıb — yenidən icazə vermək üçün toxun';

  @override
  String get sheetBlockedSub => 'Yenidən tövsiyələrdə görünə bilər';

  @override
  String get sheetPlayNext => 'Növbətini oxut';

  @override
  String get sheetAddToPlaylist => 'Pleylistə əlavə et';

  @override
  String get sheetDownloaded => 'Yüklənib';

  @override
  String get sheetRemoveFile => 'Faylı silmək üçün toxun';

  @override
  String get sheetDownload => 'Yüklə';

  @override
  String get sheetKeepOffline => 'Oflayn üçün saxla';

  @override
  String get sheetRadio => 'Radio başlat';

  @override
  String get sheetRadioSub => 'Bu mahnı ətrafında qurulmuş növbə';

  @override
  String get sheetQueue => 'Növbə';

  @override
  String get sheetSleepTimer => 'Yuxu taymeri';

  @override
  String get sheetSleepOff => 'Söndürülüb';

  @override
  String sheetSleepMinutes(int count) {
    return '$count dəqiqə';
  }

  @override
  String get sheetSleepEndOfTrack => 'Bu mahnının sonu';

  @override
  String sheetSleepSet(int count) {
    return 'Musiqi $count dəq. sonra dayanacaq';
  }

  @override
  String get tasteTitle => 'Zövqün';

  @override
  String get tasteRetrain => 'Yenidən öyrət';

  @override
  String get tasteRetraining => 'Tarixçən üzrə yenidən öyrədilir…';

  @override
  String get tasteRetrained => 'Sİ modelini yenidən qurdu.';

  @override
  String tasteConfidence(int percent) {
    return 'Əminlik $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays oxutma · $skips keçid · $likes bəyənmə';
  }

  @override
  String get tasteEmptySummary => 'Bir neçə mahnı oxut, bura dolacaq.';

  @override
  String get tasteKeepLearning => 'Dinləyərkən öyrənməyə davam et';

  @override
  String get tasteKeepLearningSub => 'Cari profili dondurmaq üçün söndür';

  @override
  String get tasteDownloadsTitle => 'Sİ-nin idarə etdiyi yükləmələr';

  @override
  String get tasteDownloadsSub => 'Musiqi sən xahiş etmədən cihaza düşür';

  @override
  String get tasteDownloadLikes => 'Bəyəndiyim hər şeyi yüklə';

  @override
  String get tasteDownloadLikesSub => 'Ürəyə bas, fayl oflayn üçün saxlanılsın';

  @override
  String get tasteAiInstall => 'Sİ seçdiyi musiqini quraşdırsın';

  @override
  String get tasteAiInstallSub => 'Əmin olduğu trekləri gətirəcək';

  @override
  String get tasteWhatItThinks => 'Onun düşündüyünə görə nəyi bəyənirsən';

  @override
  String get tasteWhatItThinksSub =>
      'Oxutmalardan, keçidlərdən, bəyənmələrdən və təkrarlardan öyrənilib';

  @override
  String get tasteArtists => 'Əsaslandığı ifaçılar';

  @override
  String get tasteWhenYouListen => 'Nə vaxt dinləyirsən';

  @override
  String get tasteWhenYouListenSub =>
      'Saatlıq oxutmalar — cari saata daha çox çəki verilir';

  @override
  String get tasteDecades => 'On illiklər';

  @override
  String get tasteTune => 'Tövsiyələri tənzimlə';

  @override
  String get tasteTuneSub =>
      'Ana səhifənin növbəti yenilənməsində qüvvəyə minir';

  @override
  String get tasteDiscovery => 'Kəşf';

  @override
  String get tasteDiscoverySub => 'Tanış ↔ heç eşitmədiyin şeylər';

  @override
  String get tasteEnergy => 'Enerji';

  @override
  String get tasteEnergySub => 'Sakit ↔ gur';

  @override
  String get tasteRecency => 'Yenilik';

  @override
  String get tasteRecencySub => 'Zamansız ↔ tamamilə yeni';

  @override
  String get tasteNostalgia => 'Nostalji';

  @override
  String get tasteNostalgiaSub =>
      'Köhnə sevimlinin nə qədər əvvəldən unudulmuş sayılması';

  @override
  String get tasteSignals => 'İstifadə edə biləcəyi siqnallar';

  @override
  String get tasteSignalsSub => 'Hər şey bu cihazda qalır';

  @override
  String get tasteUseHistory => 'Oxutduqlarım';

  @override
  String get tasteUseSkips => 'Keçdiklərim';

  @override
  String get tasteUseTime => 'Günün vaxtı';

  @override
  String get tasteUseYouTube => 'YouTube təklifləri';

  @override
  String get tasteAlwaysMore => 'Həmişə daha çox';

  @override
  String get tasteNeverAgain => 'Bir daha heç vaxt';

  @override
  String get tasteAddArtist => 'İfaçı əlavə et';

  @override
  String get tasteMoreOfPrompt => 'Həmişə daha çox…';

  @override
  String get tasteNeverAgainPrompt => 'Bir daha heç vaxt…';

  @override
  String get tasteReset => 'Öyrəndiklərini sıfırla';

  @override
  String get tasteResetSub => 'Musiqin qalır; profil sıfırdan başlayır';

  @override
  String get trainCard => 'Qiymətləndirərək öyrət';

  @override
  String get trainCardSub =>
      'Real mahnıları sürüşdür. Buna bənzərlər üçün sağa, bir daha heç vaxt üçün sola. Burada iki dəqiqə bir həftəlik dinləmədən yaxşıdır.';

  @override
  String get trainStart => 'Təlim raundunu başlat';

  @override
  String get trainTitle => 'Təlim raundu';

  @override
  String get trainQuestion => 'Bunu Ana səhifədə istəyərdin?';

  @override
  String get trainMoreLikeThis => 'Buna bənzərlər';

  @override
  String get trainNeverAgain => 'Bir daha heç vaxt';

  @override
  String get trainDone => 'Raund tamamlandı';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked saxlanıldı · $blocked bloklandı. Əminlik $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Zövqünə qayıt';

  @override
  String get trainNothingTitle => 'Hələ qiymətləndirməyə heç nə yoxdur';

  @override
  String get trainNothingBody =>
      'Əvvəlcə musiqi əlavə et və ya Sİ namizədləri gətirsin, sonra qayıt.';

  @override
  String get trainLeaveTitle => 'Təlim raundundan çıxılsın?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'İndi çıxsan, Sİ bu raunddakı hər şeyi atacaq — indicə qiymətləndirdiyin bütün $count mahnını.',
      one:
          'İndi çıxsan, Sİ bu raunddakı hər şeyi atacaq — indicə qiymətləndirdiyin 1 mahnını.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Təlimə davam et';

  @override
  String get trainDiscard => 'At və çıx';

  @override
  String get setTitle => 'Ayarlar';

  @override
  String get setAppearance => 'Görünüş';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Sistemi izlə';

  @override
  String get setThemeLight => 'Açıq';

  @override
  String get setThemeDark => 'Tünd';

  @override
  String get setPureBlack => 'Təmiz qara';

  @override
  String get setPureBlackSub => 'OLED ekranda enerjiyə qənaət edir';

  @override
  String get setAccent => 'Vurğu rəngi';

  @override
  String get setAccentArtwork => 'Üz qabığından';

  @override
  String get setAccentFixed => 'Seçdiyim bir rəng';

  @override
  String get setLanguage => 'Dil';

  @override
  String get setLanguageSystem => 'Sistemi izlə';

  @override
  String get setAccessibility => 'Əlçatanlıq';

  @override
  String get setTextSize => 'Mətn ölçüsü';

  @override
  String get setTextSizeSub => 'Sistem ayarının üzərinə';

  @override
  String get setReduceMotion => 'Hərəkəti azalt';

  @override
  String get setReduceMotionSub =>
      'Zolaqları, vizuallaşdırıcını, sıçrayan sürüşdürməni, yaylı toxunuşları və səhifə keçidlərini dayandırır';

  @override
  String get setHighContrast => 'Yüksək kontrast';

  @override
  String get setHighContrastSub => 'Daha güclü ayrılma və görünən konturlar';

  @override
  String get setBoldText => 'Qalın mətn';

  @override
  String get setPlayback => 'Oxutma';

  @override
  String get setAutoRadio => 'Musiqi dayanmasın';

  @override
  String get setAutoRadioSub =>
      'Növbə bitəndə son mahnıdan qurulan radio ilə davam et';

  @override
  String get setSmartShuffle => 'Ağıllı qarışdırma';

  @override
  String get setSmartShuffleSub => 'Təsadüfi deyil, zövqə görə qarışdırır';

  @override
  String get setResume => 'Qaldığım yerdən davam et';

  @override
  String get setResumeSub => 'Tətbiq açılanda növbəni fasilədə bərpa edir';

  @override
  String get setDataSaver => 'Wi-Fi olmayanda data qənaəti';

  @override
  String get setDataSaverSub =>
      'Mobil datada yayımı və yükləmələri 128 kbps ilə məhdudlaşdırır';

  @override
  String get setHaptics => 'Haptik əks-əlaqə';

  @override
  String get setShowReasons => 'Nə üçün tövsiyə olunduğunu göstər';

  @override
  String get setSkipSilence => 'Sükutu keç';

  @override
  String get setQuality => 'Səs keyfiyyəti';

  @override
  String get setQualityLow => 'Aşağı · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Yüksək · 192 kbps';

  @override
  String get setQualityBest => 'Mövcud ən yaxşı';

  @override
  String get setStorage => 'Yükləmələr və yaddaş';

  @override
  String get setWifiOnly => 'Yalnız Wi-Fi ilə yüklə';

  @override
  String get setDailyLimit => 'Sİ üçün gündəlik limit';

  @override
  String setDailyLimitSub(int count) {
    return 'Gündə $count mahnı';
  }

  @override
  String get setBudget => 'Sİ-nin istifadə edə biləcəyi yaddaş';

  @override
  String setUsed(Object size) {
    return 'Yükləmələr $size istifadə edir';
  }

  @override
  String get setYourMusic => 'Sənin musiqin';

  @override
  String get setImport => 'Bu cihazdan musiqi əlavə et';

  @override
  String get setImportSub => 'Qovluqları və ya tək faylları seç';

  @override
  String get setCleanup => 'Çatışmayan faylları təmizlə';

  @override
  String get setCleanupSub => 'Faylı itmiş mahnıları sil';

  @override
  String setCleanupDone(int count) {
    return '$count çatışmayan fayl silindi.';
  }

  @override
  String get setExport => 'Zövqümü başqa cihaza göndər';

  @override
  String get setExportSub =>
      'Bəyənmələrin, oxutmaların və Sİ-nin öyrəndiyi hər şeylə fayl saxlayır';

  @override
  String get setImportTaste => 'Zövqü başqa cihazdan yüklə';

  @override
  String get setImportTasteSub =>
      'Saxlanılmış zövq faylını seç və birləşdir — təkrarı təhlükəsizdir';

  @override
  String get setAbout => 'Haqqında';

  @override
  String get setAboutBody =>
      'YouTube və öz fayllarından musiqi. Sİ tamamilə bu cihazda işləyir — heç nə cihazdan kənara çıxmır.';

  @override
  String get setSource => 'Mənbə kodu';

  @override
  String get importTitle => 'Musiqi əlavə et';

  @override
  String get importPickFolder => 'Qovluq seç';

  @override
  String get importPickFiles => 'Fayllar seç';

  @override
  String importScanning(Object file) {
    return '$file skan edilir';
  }

  @override
  String importAdded(int count) {
    return '$count əlavə edildi';
  }

  @override
  String get importDenied => 'İcazə verilmədi — musiqini oxumaq mümkün deyil.';

  @override
  String get importWatched => 'İzlədiyi qovluqlar';

  @override
  String get importIosHint =>
      'Files tətbiqini aç, On My iPhone → TuneBox bölməsinə get və musiqini ora at.';

  @override
  String get playerQueue => 'Növbə';

  @override
  String get playerUpNext => 'Sonrakı';

  @override
  String get playerLyrics => 'Sözlər';

  @override
  String get playerNoLyrics => 'Bunun üçün söz yoxdur.';

  @override
  String get playerRepeat => 'Təkrar';

  @override
  String get playerShuffle => 'Qarışdır';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" oxudula bilmədi';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" keçilir — yayım açılmadı.';
  }

  @override
  String get undo => 'Geri al';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Hazırda: $tags, öndə $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Hazırda: $tags.';
  }

  @override
  String get setColour => 'Rəng';

  @override
  String get setColourSub => 'Bütün tətbiq buna uyğunlaşır';

  @override
  String get setCoverArt => 'Üz qabığı';

  @override
  String get setMyColour => 'Mənim rəngim';

  @override
  String get setCoverArtSub =>
      'Hər mahnı tətbiqi öz üz qabığından yenidən rəngləyir.';

  @override
  String get setMyColourSub => 'Bir rəng, hər yerdə, hər zaman.';

  @override
  String get setPickColour => 'İstənilən rəngi seç';

  @override
  String get setWifiOnlyTitle => 'Yalnız Wi-Fi ilə yüklə';

  @override
  String get setDownloadLikes => 'Bəyəndiyim hər şeyi yüklə';

  @override
  String get setDownloadLikesSub => 'Ürək düyməsi faylı da saxlayır';

  @override
  String get setAiInstall => 'Sİ seçdiyi musiqini quraşdırsın';

  @override
  String get setSkipSilenceSub =>
      'Yalnız Android. Sakit girişləri, azalmaları və yumşaq hissələri kəsə bilər — musiqi atlayırsa söndür';

  @override
  String get setStorageUsed => 'Yükləmələrin istifadə etdiyi yaddaş';

  @override
  String get setLibrary => 'Kitabxana';

  @override
  String get setUpdates => 'Yeniləmələr';

  @override
  String get setAutoUpdate => 'Yeniləmələri özü yoxla';

  @override
  String get setAutoUpdateSub =>
      'Hər bir neçə saatdan bir, səssizcə, Wi-Fi ilə yükləyir. Quraşdırma yenə də səndən soruşur.';

  @override
  String setUpdateReady(Object version) {
    return '$version yeniləməsi hazırdır';
  }

  @override
  String get setUpdateReadySub => 'Yüklənib — quraşdırmaq üçün toxun';

  @override
  String get setUpdateAvailableSub =>
      'Buraxılışlar səhifəsindən götür — linki kopyalamaq üçün toxun';

  @override
  String get setLinkCopied => 'Link kopyalandı';

  @override
  String get setCheckNow => 'İndi yoxla';

  @override
  String get setUpToDate => 'TuneBox yenidir';

  @override
  String get setChecking => 'Daha yeni versiya axtarılır…';

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
