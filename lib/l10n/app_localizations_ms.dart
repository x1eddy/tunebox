// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class LMs extends L {
  LMs([String locale = 'ms']) : super(locale);

  @override
  String get navHome => 'Utama';

  @override
  String get navExplore => 'Teroka';

  @override
  String get navLibrary => 'Pustaka';

  @override
  String get navTaste => 'Citarasa anda';

  @override
  String get actionDone => 'Selesai';

  @override
  String get actionCancel => 'Batal';

  @override
  String get actionCreate => 'Cipta';

  @override
  String get actionPlay => 'Main';

  @override
  String get actionShuffle => 'Kocok';

  @override
  String get actionPlayAll => 'Main semua';

  @override
  String get actionAdd => 'Tambah';

  @override
  String get actionRemove => 'Buang';

  @override
  String get actionName => 'Nama';

  @override
  String get greetingNight => 'Masih berjaga?';

  @override
  String get greetingMorning => 'Selamat pagi';

  @override
  String get greetingAfternoon => 'Selamat tengah hari';

  @override
  String get greetingEvening => 'Selamat petang';

  @override
  String get homeBuilding => 'AI sedang membina rak anda…';

  @override
  String get homeOffline =>
      'Luar talian — memaparkan apa yang ada pada peranti';

  @override
  String get homeNothingYet => 'Belum ada apa-apa untuk dipaparkan';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rak, baru sahaja disegarkan',
      one: '1 rak, baru sahaja disegarkan',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Bina semula rak';

  @override
  String get homeAddMusic => 'Tambah muzik daripada peranti ini';

  @override
  String get homeQuickPicks => 'Pilihan pantas';

  @override
  String get homeQuickPicksSub =>
      'Terus kembali kepada apa yang anda dengar tadi';

  @override
  String get homeEmptyTitle => 'Pustaka anda kosong';

  @override
  String get homeEmptyBody =>
      'Cari sesuatu, atau tambah muzik yang sudah ada pada peranti ini. AI mula belajar sejak main kali pertama.';

  @override
  String get homeAddMyMusic => 'Tambah muzik saya';

  @override
  String homeCouldNotReach(Object error) {
    return 'Tidak dapat menghubungi YouTube: $error';
  }

  @override
  String get moodFocus => 'Fokus';

  @override
  String get moodWorkout => 'Senaman';

  @override
  String get moodChill => 'Santai';

  @override
  String get moodCommute => 'Perjalanan';

  @override
  String get moodParty => 'Parti';

  @override
  String moodBuilding(Object mood) {
    return 'Membina campuran $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Tidak berjaya: $error';
  }

  @override
  String get shelfRepeat => 'Ulang main';

  @override
  String get shelfRepeatSub => 'Dua minggu lalu anda';

  @override
  String get shelfForgotten => 'Lagu hit lama yang anda suka dan terlupa';

  @override
  String get shelfForgottenSub => 'Pernah digemari, lama tidak disentuh';

  @override
  String get shelfNew => 'Baharu';

  @override
  String get shelfNewSub => 'Lagu segar yang AI rasa sesuai untuk anda';

  @override
  String shelfBecause(Object artist) {
    return 'Kerana anda mendengar $artist';
  }

  @override
  String get shelfBecauseSub => 'Sudut citarasa yang sama';

  @override
  String get shelfDeep => 'Hampir tidak disentuh';

  @override
  String get shelfDeepSub => 'Ada dalam pustaka, jarang dimainkan';

  @override
  String get shelfMix => 'Campuran anda';

  @override
  String get shelfMixSub => 'Dibina semula setiap kali anda membuka apl';

  @override
  String get shelfAdded => 'Baru ditambah';

  @override
  String get shelfAddedSub => 'Muat turun dan fail yang anda import';

  @override
  String get shelfStarter => 'Mula di sini';

  @override
  String get shelfStarterSub =>
      'Main beberapa lagu dan AI mula belajar serta-merta';

  @override
  String reasonPlays(int count) {
    return '$count kali main';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Disukai, kali terakhir dimainkan $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count kali main, terakhir $when';
  }

  @override
  String get reasonTopArtist =>
      'Salah seorang artis yang paling kerap anda dengar';

  @override
  String reasonMore(Object artist) {
    return 'Lagi $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Anda sentiasa kembali kepada $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return '$tag yang anda gemari';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Banyak $tag kebelakangan ini';
  }

  @override
  String get reasonOutThisYear => 'Keluar tahun ini';

  @override
  String get reasonReleasedRecently => 'Baru diterbitkan';

  @override
  String get reasonClose => 'Hampir sama dengan apa yang anda dengar';

  @override
  String reasonNear(Object artist) {
    return 'Dekat dengan $artist';
  }

  @override
  String get reasonNeverPlayed => 'Belum pernah dimainkan';

  @override
  String get reasonPlayedOnce => 'Dimainkan sekali';

  @override
  String get reasonPopular => 'Popular sekarang';

  @override
  String whenYearsAgo(int count) {
    return '$count tahun lalu';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count bulan lalu';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count hari lalu';
  }

  @override
  String get searchHint => 'Lagu, artis, album';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hasil',
      one: '1 hasil',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Carian terkini';

  @override
  String get searchEmptyTitle => 'Tiada yang ditemui';

  @override
  String get searchEmptyBody => 'Cuba ejaan lain, atau nama artis sahaja.';

  @override
  String get searchStartTitle => 'Cari sesuatu untuk dimainkan';

  @override
  String get searchStartBody =>
      'Cari di YouTube Music — hanya lagu yang keluar, tidak pernah video perkara lain.';

  @override
  String get libPlaylists => 'Senarai main';

  @override
  String get libSongs => 'Lagu';

  @override
  String get libArtists => 'Artis';

  @override
  String get libLiked => 'Disukai';

  @override
  String get libDownloads => 'Muat turun';

  @override
  String get libImported => 'Diimport';

  @override
  String get libLikedSongs => 'Lagu disukai';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
      one: '1 lagu',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count luar talian';
  }

  @override
  String get libMyFiles => 'Fail saya sendiri';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fail',
      one: '1 fail',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Senarai main baharu';

  @override
  String get libMakeOne => 'Buat satu';

  @override
  String get libSortRecent => 'Baru ditambah';

  @override
  String get libSortTitle => 'Tajuk';

  @override
  String get libSortArtist => 'Artis';

  @override
  String get libSortPlays => 'Paling kerap dimainkan';

  @override
  String get sheetNotForMe => 'Bukan untuk saya';

  @override
  String get sheetNotForMeSub => 'Jangan cadangkan ini lagi';

  @override
  String get sheetBlocked => 'Disekat — ketik untuk benarkan semula';

  @override
  String get sheetBlockedSub => 'Ia boleh muncul semula dalam cadangan';

  @override
  String get sheetPlayNext => 'Main seterusnya';

  @override
  String get sheetAddToPlaylist => 'Tambah ke senarai main';

  @override
  String get sheetDownloaded => 'Dimuat turun';

  @override
  String get sheetRemoveFile => 'Ketik untuk membuang fail';

  @override
  String get sheetDownload => 'Muat turun';

  @override
  String get sheetKeepOffline => 'Simpan untuk luar talian';

  @override
  String get sheetRadio => 'Mulakan radio';

  @override
  String get sheetRadioSub => 'Baris gilir yang dibina berdasarkan lagu ini';

  @override
  String get sheetQueue => 'Baris gilir';

  @override
  String get sheetSleepTimer => 'Pemasa tidur';

  @override
  String get sheetSleepOff => 'Mati';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minit';
  }

  @override
  String get sheetSleepEndOfTrack => 'Penghujung lagu ini';

  @override
  String sheetSleepSet(int count) {
    return 'Muzik berhenti dalam $count min';
  }

  @override
  String get tasteTitle => 'Citarasa anda';

  @override
  String get tasteRetrain => 'Latih semula';

  @override
  String get tasteRetraining => 'Melatih semula daripada sejarah anda…';

  @override
  String get tasteRetrained => 'AI telah membina semula modelnya.';

  @override
  String tasteConfidence(int percent) {
    return 'Keyakinan $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays main · $skips langkau · $likes suka';
  }

  @override
  String get tasteEmptySummary =>
      'Main beberapa lagu dan bahagian ini akan terisi.';

  @override
  String get tasteKeepLearning => 'Terus belajar semasa saya mendengar';

  @override
  String get tasteKeepLearningSub => 'Matikan untuk membekukan profil semasa';

  @override
  String get tasteDownloadsTitle => 'Muat turun yang diurus AI';

  @override
  String get tasteDownloadsSub => 'Muzik masuk ke peranti tanpa anda meminta';

  @override
  String get tasteDownloadLikes => 'Muat turun semua yang saya suka';

  @override
  String get tasteDownloadLikesSub =>
      'Tekan hati dan fail disimpan untuk luar talian';

  @override
  String get tasteAiInstall => 'Biar AI memasang muzik pilihannya';

  @override
  String get tasteAiInstallSub => 'Ia akan mengambil lagu yang ia yakin';

  @override
  String get tasteWhatItThinks => 'Apa yang ia rasa anda suka';

  @override
  String get tasteWhatItThinksSub =>
      'Dipelajari daripada main, langkau, suka dan ulang';

  @override
  String get tasteArtists => 'Artis yang menjadi rujukannya';

  @override
  String get tasteWhenYouListen => 'Bila anda mendengar';

  @override
  String get tasteWhenYouListenSub =>
      'Main setiap jam — jam semasa diberi pemberat lebih';

  @override
  String get tasteDecades => 'Dekad';

  @override
  String get tasteTune => 'Laras cadangan';

  @override
  String get tasteTuneSub => 'Berkuat kuasa pada muat semula Utama seterusnya';

  @override
  String get tasteDiscovery => 'Penemuan';

  @override
  String get tasteDiscoverySub => 'Biasa ↔ perkara yang belum pernah didengar';

  @override
  String get tasteEnergy => 'Tenaga';

  @override
  String get tasteEnergySub => 'Tenang ↔ kuat';

  @override
  String get tasteRecency => 'Kebaruan';

  @override
  String get tasteRecencySub => 'Abadi ↔ baharu sepenuhnya';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Sejauh mana lagu kegemaran lama dianggap terlupa';

  @override
  String get tasteSignals => 'Isyarat yang boleh digunakan';

  @override
  String get tasteSignalsSub => 'Semuanya kekal pada peranti ini';

  @override
  String get tasteUseHistory => 'Apa yang saya mainkan';

  @override
  String get tasteUseSkips => 'Apa yang saya langkau';

  @override
  String get tasteUseTime => 'Waktu dalam hari';

  @override
  String get tasteUseYouTube => 'Cadangan daripada YouTube';

  @override
  String get tasteAlwaysMore => 'Sentiasa lebih';

  @override
  String get tasteNeverAgain => 'Jangan lagi';

  @override
  String get tasteAddArtist => 'Tambah artis';

  @override
  String get tasteMoreOfPrompt => 'Sentiasa lebih…';

  @override
  String get tasteNeverAgainPrompt => 'Jangan lagi…';

  @override
  String get tasteReset => 'Set semula apa yang dipelajari';

  @override
  String get tasteResetSub => 'Muzik anda kekal; profil bermula dari kosong';

  @override
  String get trainCard => 'Latih dengan menilai';

  @override
  String get trainCardSub =>
      'Leret lagu sebenar. Kanan untuk lebih seperti ini, kiri untuk jangan lagi. Dua minit di sini mengatasi seminggu mendengar.';

  @override
  String get trainStart => 'Mulakan pusingan latihan';

  @override
  String get trainTitle => 'Pusingan latihan';

  @override
  String get trainQuestion => 'Adakah anda mahu ini di halaman Utama anda?';

  @override
  String get trainMoreLikeThis => 'Lebih seperti ini';

  @override
  String get trainNeverAgain => 'Jangan lagi';

  @override
  String get trainDone => 'Pusingan selesai';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked disimpan · $blocked disekat. Keyakinan $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Kembali ke citarasa anda';

  @override
  String get trainNothingTitle => 'Belum ada apa-apa untuk dinilai';

  @override
  String get trainNothingBody =>
      'Tambah muzik atau biar AI mengambil calon lagu dahulu, kemudian kembali.';

  @override
  String get trainLeaveTitle => 'Tinggalkan pusingan latihan?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Jika anda keluar sekarang, AI membuang semua daripada pusingan ini — kesemua $count lagu yang baru anda nilai.',
      one:
          'Jika anda keluar sekarang, AI membuang semua daripada pusingan ini — 1 lagu yang baru anda nilai.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Teruskan latihan';

  @override
  String get trainDiscard => 'Buang dan keluar';

  @override
  String get setTitle => 'Tetapan';

  @override
  String get setAppearance => 'Penampilan';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Ikut sistem';

  @override
  String get setThemeLight => 'Cerah';

  @override
  String get setThemeDark => 'Gelap';

  @override
  String get setPureBlack => 'Hitam tulen';

  @override
  String get setPureBlackSub => 'Menjimatkan kuasa pada skrin OLED';

  @override
  String get setAccent => 'Warna aksen';

  @override
  String get setAccentArtwork => 'Daripada seni muka depan';

  @override
  String get setAccentFixed => 'Satu warna pilihan saya';

  @override
  String get setLanguage => 'Bahasa';

  @override
  String get setLanguageSystem => 'Ikut sistem';

  @override
  String get setAccessibility => 'Kebolehcapaian';

  @override
  String get setTextSize => 'Saiz teks';

  @override
  String get setTextSizeSub => 'Tambahan kepada tetapan sistem anda';

  @override
  String get setReduceMotion => 'Kurangkan gerakan';

  @override
  String get setReduceMotionSub =>
      'Menghentikan bar, visualiser, tatal melantun, ketikan berayun dan peralihan halaman';

  @override
  String get setHighContrast => 'Kontras tinggi';

  @override
  String get setHighContrastSub =>
      'Pemisahan lebih jelas dan garis tepi yang kelihatan';

  @override
  String get setBoldText => 'Teks tebal';

  @override
  String get setPlayback => 'Main balik';

  @override
  String get setAutoRadio => 'Teruskan muzik';

  @override
  String get setAutoRadioSub =>
      'Apabila baris gilir tamat, teruskan dengan radio yang dibina daripada lagu terakhir';

  @override
  String get setSmartShuffle => 'Kocok pintar';

  @override
  String get setSmartShuffleSub => 'Mengocok mengikut citarasa, bukan rawak';

  @override
  String get setResume => 'Sambung dari tempat saya berhenti';

  @override
  String get setResumeSub =>
      'Memulihkan baris gilir apabila apl dibuka, dalam keadaan dijeda';

  @override
  String get setDataSaver => 'Penjimat data di luar Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Menghadkan strim dan muat turun pada 128 kbps pada data mudah alih';

  @override
  String get setHaptics => 'Maklum balas haptik';

  @override
  String get setShowReasons => 'Tunjukkan sebab sesuatu dicadangkan';

  @override
  String get setSkipSilence => 'Langkau senyap';

  @override
  String get setQuality => 'Kualiti audio';

  @override
  String get setQualityLow => 'Rendah · 64 kbps';

  @override
  String get setQualityNormal => 'Biasa · 128 kbps';

  @override
  String get setQualityHigh => 'Tinggi · 192 kbps';

  @override
  String get setQualityBest => 'Terbaik yang ada';

  @override
  String get setStorage => 'Muat turun dan storan';

  @override
  String get setWifiOnly => 'Muat turun melalui Wi-Fi sahaja';

  @override
  String get setDailyLimit => 'Had harian untuk AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count lagu sehari';
  }

  @override
  String get setBudget => 'Storan yang boleh digunakan AI';

  @override
  String setUsed(Object size) {
    return '$size digunakan oleh muat turun';
  }

  @override
  String get setYourMusic => 'Muzik anda';

  @override
  String get setImport => 'Tambah muzik daripada peranti ini';

  @override
  String get setImportSub => 'Pilih folder atau fail tunggal';

  @override
  String get setCleanup => 'Bersihkan fail yang hilang';

  @override
  String get setCleanupSub => 'Buang lagu yang failnya sudah tiada';

  @override
  String setCleanupDone(int count) {
    return '$count fail yang hilang dibuang.';
  }

  @override
  String get setExport => 'Hantar citarasa saya ke peranti lain';

  @override
  String get setExportSub =>
      'Menyimpan fail dengan suka, main dan semua yang AI pelajari';

  @override
  String get setImportTaste => 'Muat citarasa daripada peranti lain';

  @override
  String get setImportTasteSub =>
      'Pilih fail citarasa yang disimpan dan gabungkan — selamat diulang';

  @override
  String get setAbout => 'Perihal';

  @override
  String get setAboutBody =>
      'Muzik daripada YouTube dan fail anda sendiri. AI berjalan sepenuhnya pada peranti ini — tiada apa yang keluar.';

  @override
  String get setSource => 'Kod sumber';

  @override
  String get importTitle => 'Tambah muzik';

  @override
  String get importPickFolder => 'Pilih folder';

  @override
  String get importPickFiles => 'Pilih fail';

  @override
  String importScanning(Object file) {
    return 'Mengimbas $file';
  }

  @override
  String importAdded(int count) {
    return '$count ditambah';
  }

  @override
  String get importDenied =>
      'Kebenaran ditolak — tidak dapat membaca muzik anda.';

  @override
  String get importWatched => 'Folder yang dipantau';

  @override
  String get importIosHint =>
      'Buka apl Files, pergi ke On My iPhone → TuneBox, dan letakkan muzik di sana.';

  @override
  String get playerQueue => 'Baris gilir';

  @override
  String get playerUpNext => 'Seterusnya';

  @override
  String get playerLyrics => 'Lirik';

  @override
  String get playerNoLyrics => 'Tiada lirik untuk lagu ini.';

  @override
  String get playerRepeat => 'Ulang';

  @override
  String get playerShuffle => 'Kocok';

  @override
  String errorPlayback(Object title) {
    return 'Tidak dapat memainkan \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Melangkau \"$title\" — strim tidak dapat dibuka.';
  }

  @override
  String get undo => 'Buat asal';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Sekarang: $tags, diketuai $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Sekarang: $tags.';
  }

  @override
  String get setColour => 'Warna';

  @override
  String get setColourSub => 'Seluruh apl mengikut ini';

  @override
  String get setCoverArt => 'Seni muka depan';

  @override
  String get setMyColour => 'Warna saya';

  @override
  String get setCoverArtSub =>
      'Setiap lagu mewarnakan semula apl daripada muka depannya.';

  @override
  String get setMyColourSub => 'Satu warna, di mana-mana, sepanjang masa.';

  @override
  String get setPickColour => 'Pilih mana-mana warna';

  @override
  String get setWifiOnlyTitle => 'Muat turun melalui Wi-Fi sahaja';

  @override
  String get setDownloadLikes => 'Muat turun semua yang saya suka';

  @override
  String get setDownloadLikesSub => 'Butang hati juga menyimpan fail';

  @override
  String get setAiInstall => 'Biar AI memasang muzik pilihannya';

  @override
  String get setSkipSilenceSub =>
      'Android sahaja. Boleh memotong intro senyap, pudaran dan bahagian perlahan — biarkan mati jika muzik melompat';

  @override
  String get setStorageUsed => 'Storan yang digunakan oleh muat turun';

  @override
  String get setLibrary => 'Pustaka';

  @override
  String get setUpdates => 'Kemas kini';

  @override
  String get setAutoUpdate => 'Semak kemas kini sendiri';

  @override
  String get setAutoUpdateSub =>
      'Setiap beberapa jam, secara senyap, dan memuat turun melalui Wi-Fi. Pemasangan masih bertanya anda.';

  @override
  String setUpdateReady(Object version) {
    return 'Kemas kini ke $version sudah sedia';
  }

  @override
  String get setUpdateReadySub => 'Dimuat turun — ketik untuk memasang';

  @override
  String get setUpdateAvailableSub =>
      'Dapatkan daripada halaman keluaran — ketik untuk menyalin pautan';

  @override
  String get setLinkCopied => 'Pautan disalin';

  @override
  String get setCheckNow => 'Semak sekarang';

  @override
  String get setUpToDate => 'TuneBox sudah terkini';

  @override
  String get setChecking => 'Mencari versi yang lebih baharu…';
}
