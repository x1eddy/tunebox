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
}
