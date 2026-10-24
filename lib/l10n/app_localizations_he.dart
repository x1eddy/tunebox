// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class LHe extends L {
  LHe([String locale = 'he']) : super(locale);

  @override
  String get navHome => 'בית';

  @override
  String get navExplore => 'גילוי';

  @override
  String get navLibrary => 'ספרייה';

  @override
  String get navTaste => 'הטעם שלך';

  @override
  String get actionDone => 'סיום';

  @override
  String get actionCancel => 'ביטול';

  @override
  String get actionCreate => 'יצירה';

  @override
  String get actionPlay => 'ניגון';

  @override
  String get actionShuffle => 'ערבוב';

  @override
  String get actionPlayAll => 'נגן הכול';

  @override
  String get actionAdd => 'הוספה';

  @override
  String get actionRemove => 'הסרה';

  @override
  String get actionName => 'שם';

  @override
  String get greetingNight => 'עדיין ער?';

  @override
  String get greetingMorning => 'בוקר טוב';

  @override
  String get greetingAfternoon => 'צהריים טובים';

  @override
  String get greetingEvening => 'ערב טוב';

  @override
  String get homeBuilding => 'הבינה המלאכותית בונה את המדפים שלך…';

  @override
  String get homeOffline => 'לא מקוון — מוצג מה שיש במכשיר';

  @override
  String get homeNothingYet => 'אין עדיין מה להציג';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count מדפים, עודכנו הרגע',
      two: 'שני מדפים, עודכנו הרגע',
      one: 'מדף אחד, עודכן הרגע',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'בנה מדפים מחדש';

  @override
  String get homeAddMusic => 'הוספת מוזיקה מהמכשיר הזה';

  @override
  String get homeQuickPicks => 'בחירות מהירות';

  @override
  String get homeQuickPicksSub => 'חזרה ישר למה שהיית באמצעו';

  @override
  String get homeEmptyTitle => 'הספרייה שלך ריקה';

  @override
  String get homeEmptyBody =>
      'חפש משהו, או הוסף את המוזיקה שכבר נמצאת במכשיר. הבינה המלאכותית מתחילה ללמוד מההשמעה הראשונה שלך.';

  @override
  String get homeAddMyMusic => 'הוספת המוזיקה שלי';

  @override
  String homeCouldNotReach(Object error) {
    return 'לא ניתן להגיע ל-YouTube: $error';
  }

  @override
  String get moodFocus => 'ריכוז';

  @override
  String get moodWorkout => 'אימון';

  @override
  String get moodChill => 'רגיעה';

  @override
  String get moodCommute => 'נסיעה';

  @override
  String get moodParty => 'מסיבה';

  @override
  String moodBuilding(Object mood) {
    return 'בונה מיקס $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'לא הצלחנו: $error';
  }

  @override
  String get shelfRepeat => 'בלופ';

  @override
  String get shelfRepeatSub => 'השבועיים האחרונים שלך';

  @override
  String get shelfForgotten => 'להיטים ישנים ששכחת ואהבת';

  @override
  String get shelfForgottenSub => 'אהובים פעם, לא נוגנו זמן מה';

  @override
  String get shelfNew => 'חדש';

  @override
  String get shelfNewSub => 'רצועות חדשות שהבינה המלאכותית חושבת שמתאימות לך';

  @override
  String shelfBecause(Object artist) {
    return 'כי האזנת ל$artist';
  }

  @override
  String get shelfBecauseSub => 'אותו פינה בטעם שלך';

  @override
  String get shelfDeep => 'כמעט לא נגעת';

  @override
  String get shelfDeepSub => 'בספרייה שלך, כמעט לא נוגנו';

  @override
  String get shelfMix => 'המיקס שלך';

  @override
  String get shelfMixSub => 'נבנה מחדש בכל פתיחה של האפליקציה';

  @override
  String get shelfAdded => 'נוסף לאחרונה';

  @override
  String get shelfAddedSub => 'הורדות וקבצים שייבאת';

  @override
  String get shelfStarter => 'מתחילים כאן';

  @override
  String get shelfStarterSub =>
      'נגן כמה שירים והבינה המלאכותית מתחילה ללמוד מיד';

  @override
  String reasonPlays(int count) {
    return '$count השמעות';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'אהבת, הושמע לאחרונה $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count השמעות, לאחרונה $when';
  }

  @override
  String get reasonTopArtist => 'אחד האמנים המושמעים ביותר שלך';

  @override
  String reasonMore(Object artist) {
    return 'עוד מ$artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'אתה כל הזמן חוזר ל$artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'ה$tag שלך';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'הרבה $tag לאחרונה';
  }

  @override
  String get reasonOutThisYear => 'יצא השנה';

  @override
  String get reasonReleasedRecently => 'יצא לאחרונה';

  @override
  String get reasonClose => 'קרוב למה שהאזנת לו';

  @override
  String reasonNear(Object artist) {
    return 'קרוב ל$artist';
  }

  @override
  String get reasonNeverPlayed => 'מעולם לא הושמע';

  @override
  String get reasonPlayedOnce => 'הושמע פעם אחת';

  @override
  String get reasonPopular => 'פופולרי עכשיו';

  @override
  String whenYearsAgo(int count) {
    return 'לפני $count שנים';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'לפני $count חודשים';
  }

  @override
  String whenDaysAgo(int count) {
    return 'לפני $count ימים';
  }

  @override
  String get searchHint => 'שירים, אמנים, אלבומים';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count תוצאות',
      two: 'שתי תוצאות',
      one: 'תוצאה אחת',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'חיפושים אחרונים';

  @override
  String get searchEmptyTitle => 'לא נמצא דבר';

  @override
  String get searchEmptyBody => 'נסה איות אחר, או את שם האמן בלבד.';

  @override
  String get searchStartTitle => 'מצא משהו לנגן';

  @override
  String get searchStartBody =>
      'חפש ב-YouTube Music — חוזרים רק שירים, אף פעם לא סרטונים של דברים אחרים.';

  @override
  String get libPlaylists => 'רשימות השמעה';

  @override
  String get libSongs => 'שירים';

  @override
  String get libArtists => 'אמנים';

  @override
  String get libLiked => 'אהובים';

  @override
  String get libDownloads => 'הורדות';

  @override
  String get libImported => 'יובאו';

  @override
  String get libLikedSongs => 'שירים שאהבתי';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count שירים',
      two: 'שני שירים',
      one: 'שיר אחד',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count לא מקוונים';
  }

  @override
  String get libMyFiles => 'הקבצים שלי';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count קבצים',
      two: 'שני קבצים',
      one: 'קובץ אחד',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'רשימת השמעה חדשה';

  @override
  String get libMakeOne => 'צור אחת';

  @override
  String get libSortRecent => 'נוסף לאחרונה';

  @override
  String get libSortTitle => 'כותרת';

  @override
  String get libSortArtist => 'אמן';

  @override
  String get libSortPlays => 'הכי מושמעים';

  @override
  String get sheetNotForMe => 'לא בשבילי';

  @override
  String get sheetNotForMeSub => 'לא להמליץ על זה שוב';

  @override
  String get sheetBlocked => 'חסום — הקש כדי לאפשר שוב';

  @override
  String get sheetBlockedSub => 'הוא יכול להופיע שוב בהמלצות';

  @override
  String get sheetPlayNext => 'נגן הבא';

  @override
  String get sheetAddToPlaylist => 'הוספה לרשימת השמעה';

  @override
  String get sheetDownloaded => 'הורד';

  @override
  String get sheetRemoveFile => 'הקש להסרת הקובץ';

  @override
  String get sheetDownload => 'הורדה';

  @override
  String get sheetKeepOffline => 'שמור לשימוש לא מקוון';

  @override
  String get sheetRadio => 'התחל רדיו';

  @override
  String get sheetRadioSub => 'תור שנבנה סביב השיר הזה';

  @override
  String get sheetQueue => 'תור';

  @override
  String get sheetSleepTimer => 'טיימר שינה';

  @override
  String get sheetSleepOff => 'כבוי';

  @override
  String sheetSleepMinutes(int count) {
    return '$count דקות';
  }

  @override
  String get sheetSleepEndOfTrack => 'סוף השיר הזה';

  @override
  String sheetSleepSet(int count) {
    return 'המוזיקה תיפסק בעוד $count דק׳';
  }

  @override
  String get tasteTitle => 'הטעם שלך';

  @override
  String get tasteRetrain => 'אימון מחדש';

  @override
  String get tasteRetraining => 'מתאמן מחדש על ההיסטוריה שלך…';

  @override
  String get tasteRetrained => 'הבינה המלאכותית בנתה מחדש את המודל שלה.';

  @override
  String tasteConfidence(int percent) {
    return 'ביטחון $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays השמעות · $skips דילוגים · $likes לייקים';
  }

  @override
  String get tasteEmptySummary => 'נגן כמה שירים וזה יתמלא.';

  @override
  String get tasteKeepLearning => 'המשך ללמוד בזמן שאני מאזין';

  @override
  String get tasteKeepLearningSub => 'כבה כדי להקפיא את הפרופיל הנוכחי';

  @override
  String get tasteDownloadsTitle => 'הורדות שהבינה המלאכותית מנהלת';

  @override
  String get tasteDownloadsSub => 'מוזיקה מגיעה למכשיר בלי שביקשת';

  @override
  String get tasteDownloadLikes => 'הורד כל מה שאני אוהב';

  @override
  String get tasteDownloadLikesSub => 'לחץ על הלב והקובץ נשמר לשימוש לא מקוון';

  @override
  String get tasteAiInstall => 'תן לבינה המלאכותית להתקין מוזיקה שהיא בוחרת';

  @override
  String get tasteAiInstallSub => 'היא תוריד רצועות שהיא בטוחה לגביהן';

  @override
  String get tasteWhatItThinks => 'מה היא חושבת שאתה אוהב';

  @override
  String get tasteWhatItThinksSub => 'נלמד מהשמעות, דילוגים, לייקים וחזרות';

  @override
  String get tasteArtists => 'אמנים שהיא נשענת עליהם';

  @override
  String get tasteWhenYouListen => 'מתי אתה מאזין';

  @override
  String get tasteWhenYouListenSub =>
      'השמעות לפי שעה — השעה הנוכחית מקבלת משקל';

  @override
  String get tasteDecades => 'עשורים';

  @override
  String get tasteTune => 'כוונון ההמלצות';

  @override
  String get tasteTuneSub => 'ייכנס לתוקף ברענון הבא של מסך הבית';

  @override
  String get tasteDiscovery => 'גילוי';

  @override
  String get tasteDiscoverySub => 'מוכר ↔ דברים שלא שמעת';

  @override
  String get tasteEnergy => 'אנרגיה';

  @override
  String get tasteEnergySub => 'רגוע ↔ רועש';

  @override
  String get tasteRecency => 'חדשנות';

  @override
  String get tasteRecencySub => 'על-זמני ↔ חדש לגמרי';

  @override
  String get tasteNostalgia => 'נוסטלגיה';

  @override
  String get tasteNostalgiaSub => 'כמה רחוק אחורה מועדף ישן נחשב לשכוח';

  @override
  String get tasteSignals => 'אותות שמותר לה להשתמש בהם';

  @override
  String get tasteSignalsSub => 'הכול נשאר במכשיר הזה';

  @override
  String get tasteUseHistory => 'מה שניגנתי';

  @override
  String get tasteUseSkips => 'מה שאני מדלג עליו';

  @override
  String get tasteUseTime => 'שעה ביום';

  @override
  String get tasteUseYouTube => 'הצעות מ-YouTube';

  @override
  String get tasteAlwaysMore => 'תמיד עוד מ';

  @override
  String get tasteNeverAgain => 'לעולם לא שוב';

  @override
  String get tasteAddArtist => 'הוספת אמן';

  @override
  String get tasteMoreOfPrompt => 'תמיד עוד מ…';

  @override
  String get tasteNeverAgainPrompt => 'לעולם לא שוב…';

  @override
  String get tasteReset => 'איפוס מה שנלמד';

  @override
  String get tasteResetSub => 'המוזיקה שלך נשארת; הפרופיל מתחיל מאפס';

  @override
  String get trainCard => 'אמן אותה בדירוג';

  @override
  String get trainCardSub =>
      'החלק בין שירים אמיתיים. ימינה לעוד כאלה, שמאלה ללעולם לא שוב. שתי דקות כאן שוות שבוע של האזנה.';

  @override
  String get trainStart => 'התחל סבב אימון';

  @override
  String get trainTitle => 'סבב אימון';

  @override
  String get trainQuestion => 'היית רוצה את זה במסך הבית?';

  @override
  String get trainMoreLikeThis => 'עוד כאלה';

  @override
  String get trainNeverAgain => 'לעולם לא שוב';

  @override
  String get trainDone => 'הסבב הושלם';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked נשמרו · $blocked נחסמו. ביטחון $before% ← $after%';
  }

  @override
  String get trainBackToTaste => 'חזרה לטעם שלך';

  @override
  String get trainNothingTitle => 'אין עדיין מה לדרג';

  @override
  String get trainNothingBody =>
      'הוסף מוזיקה או תן לבינה המלאכותית להביא מועמדים קודם, ואז חזור.';

  @override
  String get trainLeaveTitle => 'לצאת מסבב האימון?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'אם תצא עכשיו, הבינה המלאכותית תמחק את כל הסבב הזה — כל $count השירים שדירגת הרגע.',
      two:
          'אם תצא עכשיו, הבינה המלאכותית תמחק את כל הסבב הזה — שני השירים שדירגת הרגע.',
      one:
          'אם תצא עכשיו, הבינה המלאכותית תמחק את כל הסבב הזה — השיר האחד שדירגת הרגע.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'המשך באימון';

  @override
  String get trainDiscard => 'מחק ויצא';

  @override
  String get setTitle => 'הגדרות';

  @override
  String get setAppearance => 'מראה';

  @override
  String get setTheme => 'ערכת נושא';

  @override
  String get setThemeSystem => 'לפי המערכת';

  @override
  String get setThemeLight => 'בהיר';

  @override
  String get setThemeDark => 'כהה';

  @override
  String get setPureBlack => 'שחור טהור';

  @override
  String get setPureBlackSub => 'חוסך חשמל במסך OLED';

  @override
  String get setAccent => 'צבע הדגשה';

  @override
  String get setAccentArtwork => 'מעטיפת האלבום';

  @override
  String get setAccentFixed => 'צבע אחד שבחרתי';

  @override
  String get setLanguage => 'שפה';

  @override
  String get setLanguageSystem => 'לפי המערכת';

  @override
  String get setAccessibility => 'נגישות';

  @override
  String get setTextSize => 'גודל טקסט';

  @override
  String get setTextSizeSub => 'מעל הגדרת המערכת שלך';

  @override
  String get setReduceMotion => 'הפחתת תנועה';

  @override
  String get setReduceMotionSub =>
      'עוצר את הפסים, הוויזואליזציה, גלילה קופצנית, הקשות קפיציות ומעברי עמודים';

  @override
  String get setHighContrast => 'ניגודיות גבוהה';

  @override
  String get setHighContrastSub => 'הפרדה חזקה יותר וקווי מתאר גלויים';

  @override
  String get setBoldText => 'טקסט מודגש';

  @override
  String get setPlayback => 'השמעה';

  @override
  String get setAutoRadio => 'המשך את המוזיקה';

  @override
  String get setAutoRadioSub => 'כשהתור נגמר, המשך עם רדיו שנבנה מהשיר האחרון';

  @override
  String get setSmartShuffle => 'ערבוב חכם';

  @override
  String get setSmartShuffleSub => 'מערבב לפי טעם במקום באקראי';

  @override
  String get setResume => 'המשך מאיפה שהפסקתי';

  @override
  String get setResumeSub => 'משחזר את התור בפתיחת האפליקציה, מושהה';

  @override
  String get setDataSaver => 'חיסכון בנתונים מחוץ ל-Wi-Fi';

  @override
  String get setDataSaverSub =>
      'מגביל הזרמה והורדות ל-128 kbps בנתונים סלולריים';

  @override
  String get setHaptics => 'משוב רטט';

  @override
  String get setShowReasons => 'הצג מדוע הומלץ משהו';

  @override
  String get setSkipSilence => 'דלג על שקט';

  @override
  String get setQuality => 'איכות שמע';

  @override
  String get setQualityLow => 'נמוכה · 64 kbps';

  @override
  String get setQualityNormal => 'רגילה · 128 kbps';

  @override
  String get setQualityHigh => 'גבוהה · 192 kbps';

  @override
  String get setQualityBest => 'הטובה ביותר הזמינה';

  @override
  String get setStorage => 'הורדות ואחסון';

  @override
  String get setWifiOnly => 'הורד ב-Wi-Fi בלבד';

  @override
  String get setDailyLimit => 'מגבלה יומית לבינה המלאכותית';

  @override
  String setDailyLimitSub(int count) {
    return '$count שירים ביום';
  }

  @override
  String get setBudget => 'אחסון שהבינה המלאכותית רשאית להשתמש בו';

  @override
  String setUsed(Object size) {
    return '$size בשימוש על ידי הורדות';
  }

  @override
  String get setYourMusic => 'המוזיקה שלך';

  @override
  String get setImport => 'הוספת מוזיקה מהמכשיר הזה';

  @override
  String get setImportSub => 'בחר תיקיות או קבצים בודדים';

  @override
  String get setCleanup => 'ניקוי קבצים חסרים';

  @override
  String get setCleanupSub => 'הסר שירים שהקובץ שלהם נעלם';

  @override
  String setCleanupDone(int count) {
    return 'הוסרו $count קבצים חסרים.';
  }

  @override
  String get setExport => 'שלח את הטעם שלי למכשיר אחר';

  @override
  String get setExportSub =>
      'שומר קובץ עם הלייקים, ההשמעות וכל מה שהבינה המלאכותית למדה';

  @override
  String get setImportTaste => 'טען טעם ממכשיר אחר';

  @override
  String get setImportTasteSub =>
      'בחר קובץ טעם שמור ומזג אותו — בטוח לחזור על הפעולה';

  @override
  String get setAbout => 'אודות';

  @override
  String get setAboutBody =>
      'מוזיקה מ-YouTube ומהקבצים שלך. הבינה המלאכותית פועלת כולה במכשיר הזה — שום דבר לא יוצא ממנו.';

  @override
  String get setSource => 'קוד מקור';

  @override
  String get importTitle => 'הוספת מוזיקה';

  @override
  String get importPickFolder => 'בחר תיקייה';

  @override
  String get importPickFiles => 'בחר קבצים';

  @override
  String importScanning(Object file) {
    return 'סורק את $file';
  }

  @override
  String importAdded(int count) {
    return '$count נוספו';
  }

  @override
  String get importDenied => 'ההרשאה נדחתה — לא ניתן לקרוא את המוזיקה שלך.';

  @override
  String get importWatched => 'תיקיות שהיא עוקבת אחריהן';

  @override
  String get importIosHint =>
      'פתח את אפליקציית Files, עבור אל ב-iPhone שלי ← TuneBox, והנח שם מוזיקה.';

  @override
  String get playerQueue => 'תור';

  @override
  String get playerUpNext => 'הבא בתור';

  @override
  String get playerLyrics => 'מילים';

  @override
  String get playerNoLyrics => 'אין מילים לשיר הזה.';

  @override
  String get playerRepeat => 'חזרה';

  @override
  String get playerShuffle => 'ערבוב';

  @override
  String errorPlayback(Object title) {
    return 'לא ניתן לנגן את \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'מדלג על \"$title\" — ההזרמה לא נפתחה.';
  }

  @override
  String get undo => 'ביטול';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'כרגע: $tags, בהובלת $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'כרגע: $tags.';
  }

  @override
  String get setColour => 'צבע';

  @override
  String get setColourSub => 'כל האפליקציה עוקבת אחרי זה';

  @override
  String get setCoverArt => 'עטיפת אלבום';

  @override
  String get setMyColour => 'הצבע שלי';

  @override
  String get setCoverArtSub => 'כל שיר צובע מחדש את האפליקציה לפי העטיפה שלו.';

  @override
  String get setMyColourSub => 'צבע אחד, בכל מקום, כל הזמן.';

  @override
  String get setPickColour => 'בחר כל צבע';

  @override
  String get setWifiOnlyTitle => 'הורד ב-Wi-Fi בלבד';

  @override
  String get setDownloadLikes => 'הורד כל מה שאני אוהב';

  @override
  String get setDownloadLikesSub => 'כפתור הלב גם שומר את הקובץ';

  @override
  String get setAiInstall => 'תן לבינה המלאכותית להתקין מוזיקה שהיא בוחרת';

  @override
  String get setSkipSilenceSub =>
      'אנדרואיד בלבד. עלול לחתוך פתיחות שקטות, דהיית קול וקטעים רכים — השאר כבוי אם המוזיקה מדלגת';

  @override
  String get setStorageUsed => 'אחסון בשימוש על ידי הורדות';

  @override
  String get setLibrary => 'ספרייה';

  @override
  String get setUpdates => 'עדכונים';

  @override
  String get setAutoUpdate => 'בדוק עדכונים לבד';

  @override
  String get setAutoUpdateSub =>
      'כל כמה שעות, בשקט, ומוריד ב-Wi-Fi. ההתקנה עדיין תבקש אישור.';

  @override
  String setUpdateReady(Object version) {
    return 'העדכון ל-$version מוכן';
  }

  @override
  String get setUpdateReadySub => 'הורד — הקש להתקנה';

  @override
  String get setUpdateAvailableSub =>
      'קבל אותו מעמוד הגרסאות — הקש להעתקת הקישור';

  @override
  String get setLinkCopied => 'הקישור הועתק';

  @override
  String get setCheckNow => 'בדוק עכשיו';

  @override
  String get setUpToDate => 'TuneBox מעודכן';

  @override
  String get setChecking => 'מחפש גרסה חדשה יותר…';

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
