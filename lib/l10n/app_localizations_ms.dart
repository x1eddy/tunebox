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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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
}
