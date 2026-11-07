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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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

  @override
  String get blendTitle => 'Blend';

  @override
  String get blendEntry => 'One queue from two tastes';

  @override
  String get blendIntro =>
      'For a party, a car or a shared speaker. TuneBox finds what you both like and takes turns fairly. The other taste is only read, never added to yours.';

  @override
  String get blendWith => 'Blend with';

  @override
  String get blendProfile => 'A profile on this device';

  @override
  String get blendPaste => 'A friend\'s taste code';

  @override
  String get blendPasteSub =>
      'Copy it first (Move your taste → As text), then tap here';

  @override
  String get blendFile => 'A taste file';

  @override
  String get blendFriend => 'Your friend';

  @override
  String get blendBad => 'That is not a TuneBox taste';

  @override
  String blendYouAnd(String name) {
    return 'You and $name';
  }

  @override
  String get blendHigh => 'Practically the same ears.';

  @override
  String get blendMid => 'Plenty in common, and some to discover.';

  @override
  String get blendLow =>
      'Very different tastes. This one will be an adventure.';

  @override
  String get blendPlay => 'Play the blend';

  @override
  String get blendOther => 'Blend with someone else';

  @override
  String get blendLearn => 'Let the blend teach TuneBox';

  @override
  String get blendLearnSub =>
      'Off: what plays in a blend does not change your taste';

  @override
  String get blendBothArtists => 'Artists you both have';

  @override
  String get blendQueue => 'The queue';

  @override
  String get blendBoth => 'you both';

  @override
  String get blendYours => 'yours';
}
