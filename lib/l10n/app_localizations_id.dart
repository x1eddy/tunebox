// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class LId extends L {
  LId([String locale = 'id']) : super(locale);

  @override
  String get navHome => 'Beranda';

  @override
  String get navExplore => 'Jelajahi';

  @override
  String get navLibrary => 'Pustaka';

  @override
  String get navTaste => 'Selera kamu';

  @override
  String get actionDone => 'Selesai';

  @override
  String get actionCancel => 'Batal';

  @override
  String get actionCreate => 'Buat';

  @override
  String get actionPlay => 'Putar';

  @override
  String get actionShuffle => 'Acak';

  @override
  String get actionPlayAll => 'Putar semua';

  @override
  String get actionAdd => 'Tambah';

  @override
  String get actionRemove => 'Hapus';

  @override
  String get actionName => 'Nama';

  @override
  String get greetingNight => 'Belum tidur?';

  @override
  String get greetingMorning => 'Selamat pagi';

  @override
  String get greetingAfternoon => 'Selamat siang';

  @override
  String get greetingEvening => 'Selamat malam';

  @override
  String get homeBuilding => 'AI sedang menyusun rakmu…';

  @override
  String get homeOffline => 'Offline — menampilkan isi perangkat';

  @override
  String get homeNothingYet => 'Belum ada yang ditampilkan';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rak, baru saja diperbarui',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Susun ulang rak';

  @override
  String get homeAddMusic => 'Tambah musik dari perangkat ini';

  @override
  String get homeQuickPicks => 'Pilihan cepat';

  @override
  String get homeQuickPicksSub => 'Langsung kembali ke yang tadi kamu putar';

  @override
  String get homeEmptyTitle => 'Pustakamu kosong';

  @override
  String get homeEmptyBody =>
      'Cari sesuatu, atau tambahkan musik yang sudah ada di perangkat ini. AI mulai belajar sejak putaran pertamamu.';

  @override
  String get homeAddMyMusic => 'Tambah musikku';

  @override
  String homeCouldNotReach(Object error) {
    return 'Tidak dapat terhubung ke YouTube: $error';
  }

  @override
  String get moodFocus => 'Fokus';

  @override
  String get moodWorkout => 'Olahraga';

  @override
  String get moodChill => 'Santai';

  @override
  String get moodCommute => 'Perjalanan';

  @override
  String get moodParty => 'Pesta';

  @override
  String moodBuilding(Object mood) {
    return 'Menyusun mix $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Gagal: $error';
  }

  @override
  String get shelfRepeat => 'Diulang terus';

  @override
  String get shelfRepeatSub => 'Dua minggu terakhirmu';

  @override
  String get shelfForgotten => 'Hit lama yang terlupakan dan kamu suka';

  @override
  String get shelfForgottenSub => 'Pernah disukai, lama tak disentuh';

  @override
  String get shelfNew => 'Baru';

  @override
  String get shelfNewSub => 'Lagu segar yang menurut AI cocok untukmu';

  @override
  String shelfBecause(Object artist) {
    return 'Karena kamu memutar $artist';
  }

  @override
  String get shelfBecauseSub => 'Satu sudut yang sama dengan seleramu';

  @override
  String get shelfDeep => 'Hampir tak tersentuh';

  @override
  String get shelfDeepSub => 'Ada di pustakamu, nyaris tak pernah diputar';

  @override
  String get shelfMix => 'Mix-mu';

  @override
  String get shelfMixSub => 'Disusun ulang setiap kamu membuka aplikasi';

  @override
  String get shelfAdded => 'Baru ditambahkan';

  @override
  String get shelfAddedSub => 'Unduhan dan file yang kamu impor';

  @override
  String get shelfStarter => 'Mulai dari sini';

  @override
  String get shelfStarterSub =>
      'Putar beberapa lagu dan AI langsung mulai belajar';

  @override
  String reasonPlays(int count) {
    return '$count kali diputar';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Disukai, terakhir diputar $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count kali diputar, terakhir $when';
  }

  @override
  String get reasonTopArtist =>
      'Salah satu artis yang paling sering kamu putar';

  @override
  String reasonMore(Object artist) {
    return 'Lebih banyak $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Kamu terus kembali ke $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return '$tag yang kamu suka';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Belakangan banyak $tag';
  }

  @override
  String get reasonOutThisYear => 'Rilis tahun ini';

  @override
  String get reasonReleasedRecently => 'Baru dirilis';

  @override
  String get reasonClose => 'Dekat dengan yang sedang kamu putar';

  @override
  String reasonNear(Object artist) {
    return 'Mirip dengan $artist';
  }

  @override
  String get reasonNeverPlayed => 'Belum pernah diputar';

  @override
  String get reasonPlayedOnce => 'Diputar sekali';

  @override
  String get reasonPopular => 'Sedang populer';

  @override
  String whenYearsAgo(int count) {
    return '$count th lalu';
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
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Pencarian terbaru';

  @override
  String get searchEmptyTitle => 'Tidak ditemukan';

  @override
  String get searchEmptyBody => 'Coba ejaan lain, atau nama artisnya saja.';

  @override
  String get searchStartTitle => 'Temukan sesuatu untuk diputar';

  @override
  String get searchStartBody =>
      'Cari di YouTube Music — hanya lagu yang muncul, bukan video hal lain.';

  @override
  String get libPlaylists => 'Playlist';

  @override
  String get libSongs => 'Lagu';

  @override
  String get libArtists => 'Artis';

  @override
  String get libLiked => 'Disukai';

  @override
  String get libDownloads => 'Unduhan';

  @override
  String get libImported => 'Diimpor';

  @override
  String get libLikedSongs => 'Lagu yang disukai';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lagu',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'File milikku';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count file',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Playlist baru';

  @override
  String get libMakeOne => 'Buat satu';

  @override
  String get libSortRecent => 'Baru ditambahkan';

  @override
  String get libSortTitle => 'Judul';

  @override
  String get libSortArtist => 'Artis';

  @override
  String get libSortPlays => 'Paling sering diputar';

  @override
  String get sheetNotForMe => 'Bukan untukku';

  @override
  String get sheetNotForMeSub => 'Jangan pernah rekomendasikan lagi';

  @override
  String get sheetBlocked => 'Diblokir — ketuk untuk mengizinkan lagi';

  @override
  String get sheetBlockedSub => 'Bisa muncul lagi di rekomendasi';

  @override
  String get sheetPlayNext => 'Putar berikutnya';

  @override
  String get sheetAddToPlaylist => 'Tambah ke playlist';

  @override
  String get sheetDownloaded => 'Terunduh';

  @override
  String get sheetRemoveFile => 'Ketuk untuk menghapus file';

  @override
  String get sheetDownload => 'Unduh';

  @override
  String get sheetKeepOffline => 'Simpan untuk offline';

  @override
  String get sheetRadio => 'Mulai radio';

  @override
  String get sheetRadioSub => 'Antrean yang disusun dari lagu ini';

  @override
  String get sheetQueue => 'Antrean';

  @override
  String get sheetSleepTimer => 'Timer tidur';

  @override
  String get sheetSleepOff => 'Mati';

  @override
  String sheetSleepMinutes(int count) {
    return '$count menit';
  }

  @override
  String get sheetSleepEndOfTrack => 'Akhir lagu ini';

  @override
  String sheetSleepSet(int count) {
    return 'Musik berhenti dalam $count mnt';
  }

  @override
  String get tasteTitle => 'Selera kamu';

  @override
  String get tasteRetrain => 'Latih ulang';

  @override
  String get tasteRetraining => 'Melatih ulang dari riwayatmu…';

  @override
  String get tasteRetrained => 'AI telah menyusun ulang modelnya.';

  @override
  String tasteConfidence(int percent) {
    return 'Keyakinan $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays putaran · $skips dilewati · $likes disukai';
  }

  @override
  String get tasteEmptySummary =>
      'Putar beberapa lagu dan bagian ini akan terisi.';

  @override
  String get tasteKeepLearning => 'Terus belajar saat aku mendengarkan';

  @override
  String get tasteKeepLearningSub => 'Matikan untuk membekukan profil saat ini';

  @override
  String get tasteDownloadsTitle => 'Unduhan yang diurus AI';

  @override
  String get tasteDownloadsSub => 'Musik masuk ke perangkat tanpa kamu minta';

  @override
  String get tasteDownloadLikes => 'Unduh semua yang kusukai';

  @override
  String get tasteDownloadLikesSub =>
      'Tekan hati dan file disimpan untuk offline';

  @override
  String get tasteAiInstall => 'Biarkan AI memasang musik pilihannya';

  @override
  String get tasteAiInstallSub => 'AI akan mengambil lagu yang ia yakini cocok';

  @override
  String get tasteWhatItThinks => 'Yang AI kira kamu suka';

  @override
  String get tasteWhatItThinksSub =>
      'Dipelajari dari putaran, lompatan, suka, dan ulangan';

  @override
  String get tasteArtists => 'Artis andalannya';

  @override
  String get tasteWhenYouListen => 'Kapan kamu mendengarkan';

  @override
  String get tasteWhenYouListenSub =>
      'Putaran per jam — jam saat ini diberi bobot lebih';

  @override
  String get tasteDecades => 'Dekade';

  @override
  String get tasteTune => 'Atur rekomendasi';

  @override
  String get tasteTuneSub => 'Berlaku saat Beranda diperbarui berikutnya';

  @override
  String get tasteDiscovery => 'Penemuan';

  @override
  String get tasteDiscoverySub =>
      'Familier ↔ hal yang belum pernah kamu dengar';

  @override
  String get tasteEnergy => 'Energi';

  @override
  String get tasteEnergySub => 'Tenang ↔ keras';

  @override
  String get tasteRecency => 'Kebaruan';

  @override
  String get tasteRecencySub => 'Abadi ↔ baru banget';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Seberapa lama favorit lama dianggap terlupakan';

  @override
  String get tasteSignals => 'Sinyal yang boleh dipakai';

  @override
  String get tasteSignalsSub => 'Semuanya tetap di perangkat ini';

  @override
  String get tasteUseHistory => 'Yang sudah kuputar';

  @override
  String get tasteUseSkips => 'Yang kulewati';

  @override
  String get tasteUseTime => 'Waktu dalam sehari';

  @override
  String get tasteUseYouTube => 'Saran dari YouTube';

  @override
  String get tasteAlwaysMore => 'Selalu lebih banyak';

  @override
  String get tasteNeverAgain => 'Jangan pernah lagi';

  @override
  String get tasteAddArtist => 'Tambah artis';

  @override
  String get tasteMoreOfPrompt => 'Selalu lebih banyak…';

  @override
  String get tasteNeverAgainPrompt => 'Jangan pernah lagi…';

  @override
  String get tasteReset => 'Setel ulang yang dipelajari';

  @override
  String get tasteResetSub => 'Musikmu tetap ada; profil mulai dari nol';

  @override
  String get trainCard => 'Latih lewat penilaian';

  @override
  String get trainCardSub =>
      'Geser lagu-lagu sungguhan. Kanan untuk yang serupa, kiri untuk jangan pernah lagi. Dua menit di sini mengalahkan seminggu mendengarkan.';

  @override
  String get trainStart => 'Mulai sesi latihan';

  @override
  String get trainTitle => 'Sesi latihan';

  @override
  String get trainQuestion => 'Mau ini ada di Berandamu?';

  @override
  String get trainMoreLikeThis => 'Lebih banyak seperti ini';

  @override
  String get trainNeverAgain => 'Jangan pernah lagi';

  @override
  String get trainDone => 'Sesi selesai';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked disimpan · $blocked diblokir. Keyakinan $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Kembali ke selera kamu';

  @override
  String get trainNothingTitle => 'Belum ada yang dinilai';

  @override
  String get trainNothingBody =>
      'Tambahkan musik atau biarkan AI mengambil kandidat dulu, lalu kembali lagi.';

  @override
  String get trainLeaveTitle => 'Keluar dari sesi latihan?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Jika keluar sekarang, AI membuang semua dari sesi ini — $count lagu yang baru kamu nilai.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Lanjut berlatih';

  @override
  String get trainDiscard => 'Buang dan keluar';

  @override
  String get setTitle => 'Pengaturan';

  @override
  String get setAppearance => 'Tampilan';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Ikuti sistem';

  @override
  String get setThemeLight => 'Terang';

  @override
  String get setThemeDark => 'Gelap';

  @override
  String get setPureBlack => 'Hitam pekat';

  @override
  String get setPureBlackSub => 'Hemat daya pada layar OLED';

  @override
  String get setAccent => 'Warna aksen';

  @override
  String get setAccentArtwork => 'Dari sampul';

  @override
  String get setAccentFixed => 'Satu warna pilihanku';

  @override
  String get setLanguage => 'Bahasa';

  @override
  String get setLanguageSystem => 'Ikuti sistem';

  @override
  String get setAccessibility => 'Aksesibilitas';

  @override
  String get setTextSize => 'Ukuran teks';

  @override
  String get setTextSizeSub => 'Di atas pengaturan sistemmu';

  @override
  String get setReduceMotion => 'Kurangi gerakan';

  @override
  String get setReduceMotionSub =>
      'Menghentikan bar, visualizer, gulir memantul, ketukan melenting, dan transisi halaman';

  @override
  String get setHighContrast => 'Kontras tinggi';

  @override
  String get setHighContrastSub =>
      'Pemisahan lebih tegas dan garis tepi terlihat';

  @override
  String get setBoldText => 'Teks tebal';

  @override
  String get setPlayback => 'Pemutaran';

  @override
  String get setAutoRadio => 'Jaga musik tetap mengalun';

  @override
  String get setAutoRadioSub =>
      'Saat antrean habis, lanjutkan dengan radio dari lagu terakhir';

  @override
  String get setSmartShuffle => 'Acak pintar';

  @override
  String get setSmartShuffleSub => 'Mengacak berdasarkan selera, bukan asal';

  @override
  String get setResume => 'Lanjutkan dari terakhir';

  @override
  String get setResumeSub =>
      'Memulihkan antrean saat aplikasi dibuka, dalam keadaan jeda';

  @override
  String get setDataSaver => 'Hemat data di luar Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Membatasi streaming dan unduhan di 128 kbps pada data seluler';

  @override
  String get setHaptics => 'Umpan balik haptik';

  @override
  String get setShowReasons => 'Tampilkan alasan rekomendasi';

  @override
  String get setSkipSilence => 'Lewati keheningan';

  @override
  String get setQuality => 'Kualitas audio';

  @override
  String get setQualityLow => 'Rendah · 64 kbps';

  @override
  String get setQualityNormal => 'Normal · 128 kbps';

  @override
  String get setQualityHigh => 'Tinggi · 192 kbps';

  @override
  String get setQualityBest => 'Terbaik yang tersedia';

  @override
  String get setStorage => 'Unduhan dan penyimpanan';

  @override
  String get setWifiOnly => 'Unduh hanya lewat Wi-Fi';

  @override
  String get setDailyLimit => 'Batas harian untuk AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count lagu per hari';
  }

  @override
  String get setBudget => 'Penyimpanan yang boleh dipakai AI';

  @override
  String setUsed(Object size) {
    return '$size dipakai oleh unduhan';
  }

  @override
  String get setYourMusic => 'Musikmu';

  @override
  String get setImport => 'Tambah musik dari perangkat ini';

  @override
  String get setImportSub => 'Pilih folder atau file satuan';

  @override
  String get setCleanup => 'Bersihkan file yang hilang';

  @override
  String get setCleanupSub => 'Hapus lagu yang filenya sudah tidak ada';

  @override
  String setCleanupDone(int count) {
    return '$count file hilang dihapus.';
  }

  @override
  String get setExport => 'Kirim seleraku ke perangkat lain';

  @override
  String get setExportSub =>
      'Menyimpan file berisi suka, putaran, dan semua yang dipelajari AI';

  @override
  String get setImportTaste => 'Muat selera dari perangkat lain';

  @override
  String get setImportTasteSub =>
      'Pilih file selera tersimpan dan gabungkan — aman diulang';

  @override
  String get setAbout => 'Tentang';

  @override
  String get setAboutBody =>
      'Musik dari YouTube dan file milikmu sendiri. AI berjalan sepenuhnya di perangkat ini — tidak ada yang keluar.';

  @override
  String get setSource => 'Kode sumber';

  @override
  String get importTitle => 'Tambah musik';

  @override
  String get importPickFolder => 'Pilih folder';

  @override
  String get importPickFiles => 'Pilih file';

  @override
  String importScanning(Object file) {
    return 'Memindai $file';
  }

  @override
  String importAdded(int count) {
    return '$count ditambahkan';
  }

  @override
  String get importDenied => 'Izin ditolak — tidak dapat membaca musikmu.';

  @override
  String get importWatched => 'Folder yang dipantau';

  @override
  String get importIosHint =>
      'Buka aplikasi File, masuk ke Di iPhone Saya → TuneBox, lalu letakkan musik di sana.';

  @override
  String get playerQueue => 'Antrean';

  @override
  String get playerUpNext => 'Berikutnya';

  @override
  String get playerLyrics => 'Lirik';

  @override
  String get playerNoLyrics => 'Tidak ada lirik untuk lagu ini.';

  @override
  String get playerRepeat => 'Ulangi';

  @override
  String get playerShuffle => 'Acak';

  @override
  String errorPlayback(Object title) {
    return 'Tidak dapat memutar \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Melewati \"$title\" — streamnya tidak mau terbuka.';
  }

  @override
  String get undo => 'Urungkan';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Saat ini: $tags, dipimpin $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Saat ini: $tags.';
  }

  @override
  String get setColour => 'Warna';

  @override
  String get setColourSub => 'Seluruh aplikasi mengikuti ini';

  @override
  String get setCoverArt => 'Sampul';

  @override
  String get setMyColour => 'Warnaku';

  @override
  String get setCoverArtSub =>
      'Setiap lagu mewarnai ulang aplikasi dari sampulnya.';

  @override
  String get setMyColourSub => 'Satu warna, di mana-mana, sepanjang waktu.';

  @override
  String get setPickColour => 'Pilih warna apa saja';

  @override
  String get setWifiOnlyTitle => 'Unduh hanya lewat Wi-Fi';

  @override
  String get setDownloadLikes => 'Unduh semua yang kusukai';

  @override
  String get setDownloadLikesSub => 'Tombol hati juga menyimpan filenya';

  @override
  String get setAiInstall => 'Biarkan AI memasang musik pilihannya';

  @override
  String get setSkipSilenceSub =>
      'Khusus Android. Bisa memotong intro sunyi, fade, dan bagian lembut — matikan jika musik melompat';

  @override
  String get setStorageUsed => 'Penyimpanan yang dipakai unduhan';

  @override
  String get setLibrary => 'Pustaka';

  @override
  String get setUpdates => 'Pembaruan';

  @override
  String get setAutoUpdate => 'Periksa pembaruan otomatis';

  @override
  String get setAutoUpdateSub =>
      'Setiap beberapa jam, diam-diam, dan mengunduh lewat Wi-Fi. Pemasangan tetap meminta izinmu.';

  @override
  String setUpdateReady(Object version) {
    return 'Pembaruan ke $version siap';
  }

  @override
  String get setUpdateReadySub => 'Terunduh — ketuk untuk memasang';

  @override
  String get setUpdateAvailableSub =>
      'Ambil dari halaman rilis — ketuk untuk menyalin tautan';

  @override
  String get setLinkCopied => 'Tautan disalin';

  @override
  String get setCheckNow => 'Periksa sekarang';

  @override
  String get setUpToDate => 'TuneBox sudah terbaru';

  @override
  String get setChecking => 'Mencari versi yang lebih baru…';
}
