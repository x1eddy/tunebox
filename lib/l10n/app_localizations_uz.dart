// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class LUz extends L {
  LUz([String locale = 'uz']) : super(locale);

  @override
  String get navHome => 'Bosh sahifa';

  @override
  String get navExplore => 'Kashf etish';

  @override
  String get navLibrary => 'Kutubxona';

  @override
  String get navTaste => 'Sizning didingiz';

  @override
  String get actionDone => 'Tayyor';

  @override
  String get actionCancel => 'Bekor qilish';

  @override
  String get actionCreate => 'Yaratish';

  @override
  String get actionPlay => 'Ijro etish';

  @override
  String get actionShuffle => 'Aralashtirish';

  @override
  String get actionPlayAll => 'Hammasini ijro etish';

  @override
  String get actionAdd => 'Qo‘shish';

  @override
  String get actionRemove => 'Olib tashlash';

  @override
  String get actionName => 'Nomi';

  @override
  String get greetingNight => 'Hali uxlamadingizmi?';

  @override
  String get greetingMorning => 'Xayrli tong';

  @override
  String get greetingAfternoon => 'Xayrli kun';

  @override
  String get greetingEvening => 'Xayrli kech';

  @override
  String get homeBuilding => 'AI javonlaringizni tayyorlamoqda…';

  @override
  String get homeOffline => 'Oflayn — qurilmadagi narsalar ko‘rsatilmoqda';

  @override
  String get homeNothingYet => 'Hozircha ko‘rsatadigan narsa yo‘q';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count javon, hozirgina yangilandi',
      one: '1 javon, hozirgina yangilandi',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Javonlarni qayta tuzish';

  @override
  String get homeAddMusic => 'Bu qurilmadan musiqa qo‘shish';

  @override
  String get homeQuickPicks => 'Tezkor tanlov';

  @override
  String get homeQuickPicksSub => 'Tinglab turganingizga qaytib oling';

  @override
  String get homeEmptyTitle => 'Kutubxonangiz bo‘sh';

  @override
  String get homeEmptyBody =>
      'Biror narsa qidiring yoki shu qurilmadagi musiqani qo‘shing. AI birinchi ijrodan boshlab o‘rganadi.';

  @override
  String get homeAddMyMusic => 'Musiqamni qo‘shish';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube ga ulanib bo‘lmadi: $error';
  }

  @override
  String get moodFocus => 'Diqqat';

  @override
  String get moodWorkout => 'Mashq';

  @override
  String get moodChill => 'Xotirjam';

  @override
  String get moodCommute => 'Yo‘lda';

  @override
  String get moodParty => 'Ziyofat';

  @override
  String moodBuilding(Object mood) {
    return '$mood miksi tayyorlanmoqda…';
  }

  @override
  String moodFailed(Object error) {
    return 'Omad kelmadi: $error';
  }

  @override
  String get shelfRepeat => 'Takrorlanmoqda';

  @override
  String get shelfRepeatSub => 'So‘nggi ikki haftangiz';

  @override
  String get shelfForgotten => 'Yoqtirgan, unutilgan eski xitlar';

  @override
  String get shelfForgottenSub =>
      'Bir paytlar yoqqan, anchadan beri tinglanmagan';

  @override
  String get shelfNew => 'Yangi';

  @override
  String get shelfNewSub => 'AI sizga mos deb hisoblagan yangi treklar';

  @override
  String shelfBecause(Object artist) {
    return '$artist ni tinglaganingiz uchun';
  }

  @override
  String get shelfBecauseSub => 'Didingizning xuddi shu burchagi';

  @override
  String get shelfDeep => 'Deyarli tegilmagan';

  @override
  String get shelfDeepSub => 'Kutubxonangizda bor, lekin kam ijro etilgan';

  @override
  String get shelfMix => 'Sizning miksingiz';

  @override
  String get shelfMixSub => 'Ilovani ochganingizda har safar qayta tuziladi';

  @override
  String get shelfAdded => 'Yaqinda qo‘shilgan';

  @override
  String get shelfAddedSub => 'Yuklab olingan va import qilingan fayllar';

  @override
  String get shelfStarter => 'Shu yerdan boshlang';

  @override
  String get shelfStarterSub =>
      'Bir nechta qo‘shiq qo‘ying, AI darhol o‘rgana boshlaydi';

  @override
  String reasonPlays(int count) {
    return '$count marta ijro etilgan';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Yoqqan, oxirgi marta $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count marta ijro etilgan, oxirgisi $when';
  }

  @override
  String get reasonTopArtist => 'Eng ko‘p tinglagan ijrochilaringizdan biri';

  @override
  String reasonMore(Object artist) {
    return 'Yana $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Siz $artist ga qayta-qayta qaytasiz';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Sizga xos $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'So‘nggi paytda $tag ko‘p';
  }

  @override
  String get reasonOutThisYear => 'Shu yil chiqqan';

  @override
  String get reasonReleasedRecently => 'Yaqinda chiqqan';

  @override
  String get reasonClose => 'Tinglayotganlaringizga yaqin';

  @override
  String reasonNear(Object artist) {
    return '$artist ga yaqin';
  }

  @override
  String get reasonNeverPlayed => 'Hech ijro etilmagan';

  @override
  String get reasonPlayedOnce => 'Bir marta ijro etilgan';

  @override
  String get reasonPopular => 'Hozir mashhur';

  @override
  String whenYearsAgo(int count) {
    return '$count yil oldin';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count oy oldin';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count kun oldin';
  }

  @override
  String get searchHint => 'Qo‘shiqlar, ijrochilar, albomlar';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count natija',
      one: '1 natija',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'So‘nggi qidiruvlar';

  @override
  String get searchEmptyTitle => 'Hech narsa topilmadi';

  @override
  String get searchEmptyBody =>
      'Boshqacha yozib ko‘ring yoki faqat ijrochi ismini kiriting.';

  @override
  String get searchStartTitle => 'Ijro etish uchun biror narsa toping';

  @override
  String get searchStartBody =>
      'YouTube Music dan qidiring — faqat qo‘shiqlar chiqadi, boshqa narsalar videosi hech qachon.';

  @override
  String get libPlaylists => 'Pleylistlar';

  @override
  String get libSongs => 'Qo‘shiqlar';

  @override
  String get libArtists => 'Ijrochilar';

  @override
  String get libLiked => 'Yoqqanlar';

  @override
  String get libDownloads => 'Yuklab olinganlar';

  @override
  String get libImported => 'Import qilingan';

  @override
  String get libLikedSongs => 'Yoqqan qo‘shiqlar';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count qo‘shiq',
      one: '1 qo‘shiq',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count oflayn';
  }

  @override
  String get libMyFiles => 'O‘z fayllarim';

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
  String get libNewPlaylist => 'Yangi pleylist';

  @override
  String get libMakeOne => 'Yaratish';

  @override
  String get libSortRecent => 'Yaqinda qo‘shilgan';

  @override
  String get libSortTitle => 'Nomi';

  @override
  String get libSortArtist => 'Ijrochi';

  @override
  String get libSortPlays => 'Eng ko‘p ijro etilgan';

  @override
  String get sheetNotForMe => 'Menga yoqmaydi';

  @override
  String get sheetNotForMeSub => 'Buni boshqa hech qachon tavsiya qilma';

  @override
  String get sheetBlocked => 'Bloklangan — qayta ruxsat berish uchun bosing';

  @override
  String get sheetBlockedSub => 'U yana tavsiyalarda chiqishi mumkin';

  @override
  String get sheetPlayNext => 'Keyingi ijro';

  @override
  String get sheetAddToPlaylist => 'Pleylistga qo‘shish';

  @override
  String get sheetDownloaded => 'Yuklab olingan';

  @override
  String get sheetRemoveFile => 'Faylni o‘chirish uchun bosing';

  @override
  String get sheetDownload => 'Yuklab olish';

  @override
  String get sheetKeepOffline => 'Oflayn uchun saqlash';

  @override
  String get sheetRadio => 'Radioni boshlash';

  @override
  String get sheetRadioSub => 'Shu qo‘shiq atrofida tuzilgan navbat';

  @override
  String get sheetQueue => 'Navbat';

  @override
  String get sheetSleepTimer => 'Uyqu taymeri';

  @override
  String get sheetSleepOff => 'O‘chiq';

  @override
  String sheetSleepMinutes(int count) {
    return '$count daqiqa';
  }

  @override
  String get sheetSleepEndOfTrack => 'Shu qo‘shiq tugaganda';

  @override
  String sheetSleepSet(int count) {
    return 'Musiqa $count daqiqadan keyin to‘xtaydi';
  }

  @override
  String get tasteTitle => 'Sizning didingiz';

  @override
  String get tasteRetrain => 'Qayta o‘rgatish';

  @override
  String get tasteRetraining => 'Tarixingiz asosida qayta o‘rgatilmoqda…';

  @override
  String get tasteRetrained => 'AI modelini qayta tuzdi.';

  @override
  String tasteConfidence(int percent) {
    return 'Ishonch $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays ijro · $skips o‘tkazish · $likes yoqtirish';
  }

  @override
  String get tasteEmptySummary => 'Bir nechta qo‘shiq qo‘ying, bu to‘ladi.';

  @override
  String get tasteKeepLearning => 'Tinglaganimda o‘rganishda davom et';

  @override
  String get tasteKeepLearningSub => 'Joriy profilni muzlatish uchun o‘chiring';

  @override
  String get tasteDownloadsTitle => 'AI boshqaradigan yuklashlar';

  @override
  String get tasteDownloadsSub => 'Musiqa siz so‘ramasdan qurilmaga tushadi';

  @override
  String get tasteDownloadLikes => 'Yoqqan hamma narsani yuklab ol';

  @override
  String get tasteDownloadLikesSub =>
      'Yurakchani bosing, fayl oflayn uchun saqlanadi';

  @override
  String get tasteAiInstall => 'AI tanlagan musiqani o‘rnatsin';

  @override
  String get tasteAiInstallSub => 'U ishongan treklarni olib keladi';

  @override
  String get tasteWhatItThinks => 'U nimani yoqtirasiz deb o‘ylaydi';

  @override
  String get tasteWhatItThinksSub =>
      'Ijro, o‘tkazish, yoqtirish va takrorlashlardan o‘rganilgan';

  @override
  String get tasteArtists => 'U tayanadigan ijrochilar';

  @override
  String get tasteWhenYouListen => 'Qachon tinglaysiz';

  @override
  String get tasteWhenYouListenSub =>
      'Soatlik ijrolar — joriy soatning vazni katta';

  @override
  String get tasteDecades => 'O‘n yilliklar';

  @override
  String get tasteTune => 'Tavsiyalarni sozlash';

  @override
  String get tasteTuneSub => 'Keyingi bosh sahifa yangilanishida kuchga kiradi';

  @override
  String get tasteDiscovery => 'Kashfiyot';

  @override
  String get tasteDiscoverySub => 'Tanish ↔ hech eshitmaganlaringiz';

  @override
  String get tasteEnergy => 'Energiya';

  @override
  String get tasteEnergySub => 'Sokin ↔ baland';

  @override
  String get tasteRecency => 'Yangilik';

  @override
  String get tasteRecencySub => 'Abadiy ↔ butunlay yangi';

  @override
  String get tasteNostalgia => 'Sog‘inch';

  @override
  String get tasteNostalgiaSub =>
      'Eski sevimli qo‘shiq qancha eskirsa unutilgan hisoblanadi';

  @override
  String get tasteSignals => 'U foydalanishi mumkin bo‘lgan signallar';

  @override
  String get tasteSignalsSub => 'Hammasi shu qurilmada qoladi';

  @override
  String get tasteUseHistory => 'Men ijro etganlarim';

  @override
  String get tasteUseSkips => 'Men o‘tkazib yuborganlarim';

  @override
  String get tasteUseTime => 'Kun vaqti';

  @override
  String get tasteUseYouTube => 'YouTube takliflari';

  @override
  String get tasteAlwaysMore => 'Doim ko‘proq';

  @override
  String get tasteNeverAgain => 'Boshqa hech qachon';

  @override
  String get tasteAddArtist => 'Ijrochi qo‘shish';

  @override
  String get tasteMoreOfPrompt => 'Doim ko‘proq…';

  @override
  String get tasteNeverAgainPrompt => 'Boshqa hech qachon…';

  @override
  String get tasteReset => 'O‘rganganini tiklash';

  @override
  String get tasteResetSub => 'Musiqangiz qoladi; profil noldan boshlanadi';

  @override
  String get trainCard => 'Baholab o‘rgating';

  @override
  String get trainCardSub =>
      'Haqiqiy qo‘shiqlarni suring. Shunga o‘xshashlar uchun o‘ngga, boshqa hech qachon uchun chapga. Bu yerda ikki daqiqa bir haftalik tinglashdan yaxshiroq.';

  @override
  String get trainStart => 'O‘rgatish raundini boshlash';

  @override
  String get trainTitle => 'O‘rgatish raundi';

  @override
  String get trainQuestion => 'Buni bosh sahifangizda ko‘rishni xohlaysizmi?';

  @override
  String get trainMoreLikeThis => 'Shunga o‘xshashlar ko‘proq';

  @override
  String get trainNeverAgain => 'Boshqa hech qachon';

  @override
  String get trainDone => 'Raund tugadi';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked saqlandi · $blocked bloklandi. Ishonch $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Didingizga qaytish';

  @override
  String get trainNothingTitle => 'Hozircha baholash uchun hech narsa yo‘q';

  @override
  String get trainNothingBody =>
      'Avval musiqa qo‘shing yoki AI nomzodlarni olib kelsin, so‘ng qaytib keling.';

  @override
  String get trainLeaveTitle => 'O‘rgatish raundidan chiqasizmi?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Hozir chiqsangiz, AI bu raunddagi hamma narsani bekor qiladi — hozirgina baholagan $count ta qo‘shig‘ingizning barchasini.',
      one:
          'Hozir chiqsangiz, AI bu raunddagi hamma narsani bekor qiladi — hozirgina baholagan 1 ta qo‘shig‘ingizni.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'O‘rgatishni davom ettirish';

  @override
  String get trainDiscard => 'Bekor qilib chiqish';

  @override
  String get setTitle => 'Sozlamalar';

  @override
  String get setAppearance => 'Ko‘rinish';

  @override
  String get setTheme => 'Mavzu';

  @override
  String get setThemeSystem => 'Tizimga ergashish';

  @override
  String get setThemeLight => 'Yorug‘';

  @override
  String get setThemeDark => 'Qorong‘i';

  @override
  String get setPureBlack => 'Sof qora';

  @override
  String get setPureBlackSub => 'OLED ekranda quvvatni tejaydi';

  @override
  String get setAccent => 'Urg‘u rangi';

  @override
  String get setAccentArtwork => 'Muqova rasmidan';

  @override
  String get setAccentFixed => 'Men tanlagan bitta rang';

  @override
  String get setLanguage => 'Til';

  @override
  String get setLanguageSystem => 'Tizimga ergashish';

  @override
  String get setAccessibility => 'Maxsus imkoniyatlar';

  @override
  String get setTextSize => 'Matn o‘lchami';

  @override
  String get setTextSizeSub => 'Tizim sozlamangizga qo‘shimcha';

  @override
  String get setReduceMotion => 'Harakatni kamaytirish';

  @override
  String get setReduceMotionSub =>
      'Chiziqlar, vizualizator, sakrovchi aylantirish, prujinali bosishlar va sahifa o‘tishlarini to‘xtatadi';

  @override
  String get setHighContrast => 'Yuqori kontrast';

  @override
  String get setHighContrastSub =>
      'Kuchliroq ajratish va ko‘rinadigan chegaralar';

  @override
  String get setBoldText => 'Qalin matn';

  @override
  String get setPlayback => 'Ijro';

  @override
  String get setAutoRadio => 'Musiqa to‘xtamasin';

  @override
  String get setAutoRadioSub =>
      'Navbat tugagach, oxirgi qo‘shiq asosidagi radio bilan davom etadi';

  @override
  String get setSmartShuffle => 'Aqlli aralashtirish';

  @override
  String get setSmartShuffleSub => 'Tasodifan emas, did bo‘yicha aralashtiradi';

  @override
  String get setResume => 'Qolgan joyimdan davom ettirish';

  @override
  String get setResumeSub => 'Ilova ochilganda navbatni pauzada tiklaydi';

  @override
  String get setDataSaver => 'Wi-Fi bo‘lmaganda trafik tejash';

  @override
  String get setDataSaverSub =>
      'Mobil internetda oqim va yuklashlarni 128 kbps bilan cheklaydi';

  @override
  String get setHaptics => 'Titrash aloqasi';

  @override
  String get setShowReasons => 'Nima uchun tavsiya qilinganini ko‘rsatish';

  @override
  String get setSkipSilence => 'Sukunatni o‘tkazish';

  @override
  String get setQuality => 'Audio sifati';

  @override
  String get setQualityLow => 'Past · 64 kbps';

  @override
  String get setQualityNormal => 'Oddiy · 128 kbps';

  @override
  String get setQualityHigh => 'Yuqori · 192 kbps';

  @override
  String get setQualityBest => 'Mavjud eng yaxshisi';

  @override
  String get setStorage => 'Yuklashlar va xotira';

  @override
  String get setWifiOnly => 'Faqat Wi-Fi orqali yuklash';

  @override
  String get setDailyLimit => 'AI uchun kunlik limit';

  @override
  String setDailyLimitSub(int count) {
    return 'Kuniga $count ta qo‘shiq';
  }

  @override
  String get setBudget => 'AI ishlatishi mumkin bo‘lgan xotira';

  @override
  String setUsed(Object size) {
    return 'Yuklashlar $size joy egallagan';
  }

  @override
  String get setYourMusic => 'Sizning musiqangiz';

  @override
  String get setImport => 'Bu qurilmadan musiqa qo‘shish';

  @override
  String get setImportSub => 'Papkalar yoki alohida fayllarni tanlang';

  @override
  String get setCleanup => 'Yo‘qolgan fayllarni tozalash';

  @override
  String get setCleanupSub => 'Fayli yo‘q qo‘shiqlarni olib tashlash';

  @override
  String setCleanupDone(int count) {
    return '$count ta yo‘qolgan fayl olib tashlandi.';
  }

  @override
  String get setExport => 'Didimni boshqa qurilmaga yuborish';

  @override
  String get setExportSub =>
      'Yoqtirganlaringiz, ijrolaringiz va AI o‘rganganlarining hammasi bilan fayl saqlaydi';

  @override
  String get setImportTaste => 'Boshqa qurilmadan didni yuklash';

  @override
  String get setImportTasteSub =>
      'Saqlangan did faylini tanlab, birlashtiring — takrorlash xavfsiz';

  @override
  String get setAbout => 'Ilova haqida';

  @override
  String get setAboutBody =>
      'YouTube va o‘z fayllaringizdagi musiqa. AI butunlay shu qurilmada ishlaydi — hech narsa tashqariga chiqmaydi.';

  @override
  String get setSource => 'Manba kodi';

  @override
  String get importTitle => 'Musiqa qo‘shish';

  @override
  String get importPickFolder => 'Papka tanlash';

  @override
  String get importPickFiles => 'Fayllarni tanlash';

  @override
  String importScanning(Object file) {
    return '$file skanerlanmoqda';
  }

  @override
  String importAdded(int count) {
    return '$count ta qo‘shildi';
  }

  @override
  String get importDenied => 'Ruxsat berilmadi — musiqangizni o‘qib bo‘lmaydi.';

  @override
  String get importWatched => 'Kuzatiladigan papkalar';

  @override
  String get importIosHint =>
      'Files ilovasini oching, On My iPhone → TuneBox ga o‘ting va musiqani o‘sha yerga tashlang.';

  @override
  String get playerQueue => 'Navbat';

  @override
  String get playerUpNext => 'Keyingi';

  @override
  String get playerLyrics => 'Qo‘shiq matni';

  @override
  String get playerNoLyrics => 'Buning matni yo‘q.';

  @override
  String get playerRepeat => 'Takrorlash';

  @override
  String get playerShuffle => 'Aralashtirish';

  @override
  String errorPlayback(Object title) {
    return '\"$title\" ijro etilmadi';
  }

  @override
  String errorSkipping(Object title) {
    return '\"$title\" o‘tkazib yuborilmoqda — oqim ochilmadi.';
  }

  @override
  String get undo => 'Bekor qilish';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Hozir: $tags, yetakchisi $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Hozir: $tags.';
  }

  @override
  String get setColour => 'Rang';

  @override
  String get setColourSub => 'Butun ilova shunga ergashadi';

  @override
  String get setCoverArt => 'Muqova rasmi';

  @override
  String get setMyColour => 'Mening rangim';

  @override
  String get setCoverArtSub =>
      'Har bir qo‘shiq ilovani muqovasidan qayta bo‘yaydi.';

  @override
  String get setMyColourSub => 'Bitta rang, hamma joyda, doim.';

  @override
  String get setPickColour => 'Istalgan rangni tanlang';

  @override
  String get setWifiOnlyTitle => 'Faqat Wi-Fi orqali yuklash';

  @override
  String get setDownloadLikes => 'Yoqqan hamma narsani yuklab ol';

  @override
  String get setDownloadLikesSub => 'Yurakcha tugmasi faylni ham saqlaydi';

  @override
  String get setAiInstall => 'AI tanlagan musiqani o‘rnatsin';

  @override
  String get setSkipSilenceSub =>
      'Faqat Android. Jim kirish qismlari, so‘nishlar va sokin joylarni kesishi mumkin — musiqa sakrasa o‘chiq qoldiring';

  @override
  String get setStorageUsed => 'Yuklashlar egallagan xotira';

  @override
  String get setLibrary => 'Kutubxona';

  @override
  String get setUpdates => 'Yangilanishlar';

  @override
  String get setAutoUpdate => 'Yangilanishni o‘zi tekshirsin';

  @override
  String get setAutoUpdateSub =>
      'Har bir necha soatda, sezdirmasdan, Wi-Fi orqali yuklaydi. O‘rnatishdan oldin baribir so‘raydi.';

  @override
  String setUpdateReady(Object version) {
    return '$version ga yangilanish tayyor';
  }

  @override
  String get setUpdateReadySub => 'Yuklab olindi — o‘rnatish uchun bosing';

  @override
  String get setUpdateAvailableSub =>
      'Relizlar sahifasidan oling — havolani nusxalash uchun bosing';

  @override
  String get setLinkCopied => 'Havola nusxalandi';

  @override
  String get setCheckNow => 'Hozir tekshirish';

  @override
  String get setUpToDate => 'TuneBox eng so‘nggi versiyada';

  @override
  String get setChecking => 'Yangi versiya qidirilmoqda…';

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
