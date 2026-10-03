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
}
