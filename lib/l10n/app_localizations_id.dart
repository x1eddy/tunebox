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
}
