// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class LLt extends L {
  LLt([String locale = 'lt']) : super(locale);

  @override
  String get navHome => 'Pradžia';

  @override
  String get navExplore => 'Naršyti';

  @override
  String get navLibrary => 'Biblioteka';

  @override
  String get navTaste => 'Tavo skonis';

  @override
  String get actionDone => 'Atlikta';

  @override
  String get actionCancel => 'Atšaukti';

  @override
  String get actionCreate => 'Sukurti';

  @override
  String get actionPlay => 'Groti';

  @override
  String get actionShuffle => 'Maišyti';

  @override
  String get actionPlayAll => 'Groti viską';

  @override
  String get actionAdd => 'Pridėti';

  @override
  String get actionRemove => 'Pašalinti';

  @override
  String get actionName => 'Pavadinimas';

  @override
  String get greetingNight => 'Dar nemiegi?';

  @override
  String get greetingMorning => 'Labas rytas';

  @override
  String get greetingAfternoon => 'Laba diena';

  @override
  String get greetingEvening => 'Labas vakaras';

  @override
  String get homeBuilding => 'DI kuria tavo lentynas…';

  @override
  String get homeOffline => 'Neprisijungta – rodoma, kas yra įrenginyje';

  @override
  String get homeNothingYet => 'Kol kas nėra ką rodyti';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lentynų, ką tik atnaujintos',
      many: '$count lentynos, ką tik atnaujintos',
      few: '$count lentynos, ką tik atnaujintos',
      one: '$count lentyna, ką tik atnaujinta',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Perkurti lentynas';

  @override
  String get homeAddMusic => 'Pridėti muzikos iš šio įrenginio';

  @override
  String get homeQuickPicks => 'Greitas pasirinkimas';

  @override
  String get homeQuickPicksSub => 'Tiesiai atgal prie to, ką klausei';

  @override
  String get homeEmptyTitle => 'Tavo biblioteka tuščia';

  @override
  String get homeEmptyBody =>
      'Ieškok ko nors arba pridėk muziką, kuri jau yra šiame įrenginyje. DI pradeda mokytis nuo pat pirmo grojimo.';

  @override
  String get homeAddMyMusic => 'Pridėti mano muziką';

  @override
  String homeCouldNotReach(Object error) {
    return 'Nepavyko pasiekti „YouTube“: $error';
  }

  @override
  String get moodFocus => 'Susikaupimas';

  @override
  String get moodWorkout => 'Treniruotė';

  @override
  String get moodChill => 'Poilsis';

  @override
  String get moodCommute => 'Kelionė';

  @override
  String get moodParty => 'Vakarėlis';

  @override
  String moodBuilding(Object mood) {
    return 'Kuriamas rinkinys „$mood“…';
  }

  @override
  String moodFailed(Object error) {
    return 'Nepavyko: $error';
  }

  @override
  String get shelfRepeat => 'Kartojama';

  @override
  String get shelfRepeatSub => 'Tavo paskutinės dvi savaitės';

  @override
  String get shelfForgotten => 'Seni užmiršti hitai, kurie tau patiko';

  @override
  String get shelfForgottenSub => 'Kažkada mylėta, bet kurį laiką neliesta';

  @override
  String get shelfNew => 'Nauja';

  @override
  String get shelfNewSub => 'Nauji kūriniai, kurie, DI manymu, skirti tau';

  @override
  String shelfBecause(Object artist) {
    return 'Nes klausei $artist';
  }

  @override
  String get shelfBecauseSub => 'Tas pats tavo skonio kampelis';

  @override
  String get shelfDeep => 'Vos paliesta';

  @override
  String get shelfDeepSub => 'Tavo bibliotekoje, bet beveik negrota';

  @override
  String get shelfMix => 'Tavo rinkinys';

  @override
  String get shelfMixSub => 'Perkuriamas kaskart atidarius programą';

  @override
  String get shelfAdded => 'Neseniai pridėta';

  @override
  String get shelfAddedSub => 'Atsisiuntimai ir importuoti failai';

  @override
  String get shelfStarter => 'Pradėk čia';

  @override
  String get shelfStarterSub => 'Paleisk kelis ir DI iškart pradės mokytis';

  @override
  String reasonPlays(int count) {
    return 'Grota $count k.';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Patiko, paskutinį kartą grota $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Grota $count k., paskutinį kartą $when';
  }

  @override
  String get reasonTopArtist => 'Vienas dažniausiai klausomų tavo atlikėjų';

  @override
  String reasonMore(Object artist) {
    return 'Daugiau – $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Vis sugrįžti prie $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Tavo skonio $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Pastaruoju metu daug $tag';
  }

  @override
  String get reasonOutThisYear => 'Išleista šiemet';

  @override
  String get reasonReleasedRecently => 'Išleista neseniai';

  @override
  String get reasonClose => 'Panašu į tai, ką klausei';

  @override
  String reasonNear(Object artist) {
    return 'Panašu į $artist';
  }

  @override
  String get reasonNeverPlayed => 'Dar negrota';

  @override
  String get reasonPlayedOnce => 'Grota vieną kartą';

  @override
  String get reasonPopular => 'Dabar populiaru';

  @override
  String whenYearsAgo(int count) {
    return 'prieš $count m.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'prieš $count mėn.';
  }

  @override
  String whenDaysAgo(int count) {
    return 'prieš $count d.';
  }

  @override
  String get searchHint => 'Dainos, atlikėjai, albumai';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rezultatų',
      many: '$count rezultato',
      few: '$count rezultatai',
      one: '$count rezultatas',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Naujausios paieškos';

  @override
  String get searchEmptyTitle => 'Nieko nerasta';

  @override
  String get searchEmptyBody =>
      'Pabandyk kitą rašybą arba vien atlikėjo vardą.';

  @override
  String get searchStartTitle => 'Susirask ką nors pagroti';

  @override
  String get searchStartBody =>
      'Ieškok „YouTube Music“ – grąžinamos tik dainos, jokių kitų dalykų vaizdo įrašų.';

  @override
  String get libPlaylists => 'Grojaraščiai';

  @override
  String get libSongs => 'Dainos';

  @override
  String get libArtists => 'Atlikėjai';

  @override
  String get libLiked => 'Patikusios';

  @override
  String get libDownloads => 'Atsisiuntimai';

  @override
  String get libImported => 'Importuota';

  @override
  String get libLikedSongs => 'Patikusios dainos';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dainų',
      many: '$count dainos',
      few: '$count dainos',
      one: '$count daina',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count neprisijungus';
  }

  @override
  String get libMyFiles => 'Mano failai';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count failų',
      many: '$count failo',
      few: '$count failai',
      one: '$count failas',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Naujas grojaraštis';

  @override
  String get libMakeOne => 'Sukurti';

  @override
  String get libSortRecent => 'Neseniai pridėta';

  @override
  String get libSortTitle => 'Pavadinimas';

  @override
  String get libSortArtist => 'Atlikėjas';

  @override
  String get libSortPlays => 'Dažniausiai grota';

  @override
  String get sheetNotForMe => 'Ne man';

  @override
  String get sheetNotForMeSub => 'Daugiau niekada nerekomenduoti';

  @override
  String get sheetBlocked => 'Užblokuota – bakstelėk, kad vėl leistum';

  @override
  String get sheetBlockedSub => 'Gali vėl atsirasti rekomendacijose';

  @override
  String get sheetPlayNext => 'Groti kitą';

  @override
  String get sheetAddToPlaylist => 'Pridėti į grojaraštį';

  @override
  String get sheetDownloaded => 'Atsisiųsta';

  @override
  String get sheetRemoveFile => 'Bakstelėk, kad pašalintum failą';

  @override
  String get sheetDownload => 'Atsisiųsti';

  @override
  String get sheetKeepOffline => 'Pasilikti neprisijungus';

  @override
  String get sheetRadio => 'Paleisti radiją';

  @override
  String get sheetRadioSub => 'Eilė, sukurta pagal šią dainą';

  @override
  String get sheetQueue => 'Eilė';

  @override
  String get sheetSleepTimer => 'Miego laikmatis';

  @override
  String get sheetSleepOff => 'Išjungta';

  @override
  String sheetSleepMinutes(int count) {
    return '$count min.';
  }

  @override
  String get sheetSleepEndOfTrack => 'Šios dainos pabaiga';

  @override
  String sheetSleepSet(int count) {
    return 'Muzika sustos po $count min.';
  }

  @override
  String get tasteTitle => 'Tavo skonis';

  @override
  String get tasteRetrain => 'Permokyti';

  @override
  String get tasteRetraining => 'Mokomasi iš tavo istorijos…';

  @override
  String get tasteRetrained => 'DI perkūrė savo modelį.';

  @override
  String tasteConfidence(int percent) {
    return 'Pasitikėjimas $percent %';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'Grota $plays · praleista $skips · patiko $likes';
  }

  @override
  String get tasteEmptySummary =>
      'Paklausyk kelių dainų ir čia atsiras duomenų.';

  @override
  String get tasteKeepLearning => 'Mokytis, kol klausau';

  @override
  String get tasteKeepLearningSub =>
      'Išjunk, kad užfiksuotum dabartinį profilį';

  @override
  String get tasteDownloadsTitle => 'Atsisiuntimai, kuriuos tvarko DI';

  @override
  String get tasteDownloadsSub => 'Muzika atsiranda įrenginyje tau neprašius';

  @override
  String get tasteDownloadLikes => 'Atsisiųsti viską, kas man patinka';

  @override
  String get tasteDownloadLikesSub =>
      'Paspausk širdelę ir failas išsaugomas neprisijungus';

  @override
  String get tasteAiInstall => 'Leisti DI įdiegti jos pasirinktą muziką';

  @override
  String get tasteAiInstallSub => 'Ji parsisiųs kūrinius, kuriais yra tikra';

  @override
  String get tasteWhatItThinks => 'Ką, jos manymu, tu mėgsti';

  @override
  String get tasteWhatItThinksSub =>
      'Išmokta iš grojimų, praleidimų, patiktukų ir pakartojimų';

  @override
  String get tasteArtists => 'Atlikėjai, kuriais ji remiasi';

  @override
  String get tasteWhenYouListen => 'Kada klausai';

  @override
  String get tasteWhenYouListenSub =>
      'Grojimai per valandą – dabartinė valanda turi didesnį svorį';

  @override
  String get tasteDecades => 'Dešimtmečiai';

  @override
  String get tasteTune => 'Derinti rekomendacijas';

  @override
  String get tasteTuneSub => 'Įsigalios kitą kartą atnaujinus pradžią';

  @override
  String get tasteDiscovery => 'Atradimai';

  @override
  String get tasteDiscoverySub => 'Pažįstama ↔ tai, ko dar negirdėjai';

  @override
  String get tasteEnergy => 'Energija';

  @override
  String get tasteEnergySub => 'Rami ↔ garsi';

  @override
  String get tasteRecency => 'Naujumas';

  @override
  String get tasteRecencySub => 'Amžina ↔ visiškai nauja';

  @override
  String get tasteNostalgia => 'Nostalgija';

  @override
  String get tasteNostalgiaSub =>
      'Kiek senas mėgstamas kūrinys laikomas pamirštu';

  @override
  String get tasteSignals => 'Signalai, kuriuos ji gali naudoti';

  @override
  String get tasteSignalsSub => 'Viskas lieka šiame įrenginyje';

  @override
  String get tasteUseHistory => 'Ką grojau';

  @override
  String get tasteUseSkips => 'Ką praleidžiu';

  @override
  String get tasteUseTime => 'Paros laikas';

  @override
  String get tasteUseYouTube => '„YouTube“ pasiūlymai';

  @override
  String get tasteAlwaysMore => 'Visada daugiau';

  @override
  String get tasteNeverAgain => 'Daugiau niekada';

  @override
  String get tasteAddArtist => 'Pridėti atlikėją';

  @override
  String get tasteMoreOfPrompt => 'Visada daugiau…';

  @override
  String get tasteNeverAgainPrompt => 'Daugiau niekada…';

  @override
  String get tasteReset => 'Atstatyti tai, ką ji išmoko';

  @override
  String get tasteResetSub => 'Tavo muzika lieka; profilis pradedamas iš nulio';

  @override
  String get trainCard => 'Mokyk vertindamas';

  @override
  String get trainCardSub =>
      'Braukyk per tikras dainas. Į dešinę – daugiau tokių, į kairę – daugiau niekada. Dvi minutės čia verta savaitės klausymo.';

  @override
  String get trainStart => 'Pradėti mokymo ratą';

  @override
  String get trainTitle => 'Mokymo ratas';

  @override
  String get trainQuestion => 'Ar norėtum tai matyti savo pradžioje?';

  @override
  String get trainMoreLikeThis => 'Daugiau tokių';

  @override
  String get trainNeverAgain => 'Daugiau niekada';

  @override
  String get trainDone => 'Ratas baigtas';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'Pasilikta $liked · užblokuota $blocked. Pasitikėjimas $before % → $after %';
  }

  @override
  String get trainBackToTaste => 'Atgal į tavo skonį';

  @override
  String get trainNothingTitle => 'Kol kas nėra ką vertinti';

  @override
  String get trainNothingBody =>
      'Pridėk muzikos arba pirmiausia leisk DI surasti kandidatų, tada sugrįžk.';

  @override
  String get trainLeaveTitle => 'Išeiti iš mokymo rato?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Jei išeisi dabar, DI atmes viską iš šio rato – visas ką tik įvertintas $count dainų.',
      many:
          'Jei išeisi dabar, DI atmes viską iš šio rato – visas ką tik įvertintas $count dainos.',
      few:
          'Jei išeisi dabar, DI atmes viską iš šio rato – visas ką tik įvertintas $count dainas.',
      one:
          'Jei išeisi dabar, DI atmes viską iš šio rato – ką tik įvertintą $count dainą.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Tęsti mokymą';

  @override
  String get trainDiscard => 'Atmesti ir išeiti';

  @override
  String get setTitle => 'Nustatymai';

  @override
  String get setAppearance => 'Išvaizda';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Pagal sistemą';

  @override
  String get setThemeLight => 'Šviesi';

  @override
  String get setThemeDark => 'Tamsi';

  @override
  String get setPureBlack => 'Gryna juoda';

  @override
  String get setPureBlackSub => 'Taupo energiją OLED ekrane';

  @override
  String get setAccent => 'Akcento spalva';

  @override
  String get setAccentArtwork => 'Pagal viršelį';

  @override
  String get setAccentFixed => 'Viena mano pasirinkta spalva';

  @override
  String get setLanguage => 'Kalba';

  @override
  String get setLanguageSystem => 'Pagal sistemą';

  @override
  String get setAccessibility => 'Pritaikymas neįgaliesiems';

  @override
  String get setTextSize => 'Teksto dydis';

  @override
  String get setTextSizeSub => 'Be sistemos nustatymo';

  @override
  String get setReduceMotion => 'Mažinti judesį';

  @override
  String get setReduceMotionSub =>
      'Sustabdo juosteles, vizualizatorių, šokinėjantį slinkimą, spyruokliuojančius palietimus ir puslapių perėjimus';

  @override
  String get setHighContrast => 'Didelis kontrastas';

  @override
  String get setHighContrastSub => 'Ryškesnis atskyrimas ir matomi kontūrai';

  @override
  String get setBoldText => 'Pusjuodis tekstas';

  @override
  String get setPlayback => 'Grojimas';

  @override
  String get setAutoRadio => 'Nenutraukti muzikos';

  @override
  String get setAutoRadioSub =>
      'Pasibaigus eilei, tęsiama radiju, sukurtu pagal paskutinę dainą';

  @override
  String get setSmartShuffle => 'Išmanusis maišymas';

  @override
  String get setSmartShuffleSub => 'Maišo pagal skonį, o ne atsitiktinai';

  @override
  String get setResume => 'Tęsti ten, kur baigiau';

  @override
  String get setResumeSub => 'Atidarius programą atkuria eilę, sustabdytą';

  @override
  String get setDataSaver => 'Duomenų taupymas be „Wi-Fi“';

  @override
  String get setDataSaverSub =>
      'Mobiliuoju ryšiu srautą ir atsisiuntimus riboja iki 128 kbps';

  @override
  String get setHaptics => 'Vibracijos atsakas';

  @override
  String get setShowReasons => 'Rodyti, kodėl kažkas rekomenduota';

  @override
  String get setSkipSilence => 'Praleisti tylą';

  @override
  String get setQuality => 'Garso kokybė';

  @override
  String get setQualityLow => 'Žema · 64 kbps';

  @override
  String get setQualityNormal => 'Įprasta · 128 kbps';

  @override
  String get setQualityHigh => 'Aukšta · 192 kbps';

  @override
  String get setQualityBest => 'Geriausia galima';

  @override
  String get setStorage => 'Atsisiuntimai ir saugykla';

  @override
  String get setWifiOnly => 'Atsisiųsti tik per „Wi-Fi“';

  @override
  String get setDailyLimit => 'Dienos riba DI';

  @override
  String setDailyLimitSub(int count) {
    return '$count per dieną';
  }

  @override
  String get setBudget => 'Saugykla, kurią gali naudoti DI';

  @override
  String setUsed(Object size) {
    return 'Atsisiuntimai užima $size';
  }

  @override
  String get setYourMusic => 'Tavo muzika';

  @override
  String get setImport => 'Pridėti muzikos iš šio įrenginio';

  @override
  String get setImportSub => 'Pasirink aplankus arba pavienius failus';

  @override
  String get setCleanup => 'Išvalyti trūkstamus failus';

  @override
  String get setCleanupSub => 'Pašalinti dainas, kurių failo nebėra';

  @override
  String setCleanupDone(int count) {
    return 'Pašalinta trūkstamų failų: $count.';
  }

  @override
  String get setExport => 'Išsiųsti mano skonį į kitą įrenginį';

  @override
  String get setExportSub =>
      'Išsaugo failą su tavo patiktukais, grojimais ir viskuo, ką DI išmoko';

  @override
  String get setImportTaste => 'Įkelti skonį iš kito įrenginio';

  @override
  String get setImportTasteSub =>
      'Pasirink išsaugotą skonio failą ir sujunk – saugu kartoti';

  @override
  String get setAbout => 'Apie';

  @override
  String get setAboutBody =>
      'Muzika iš „YouTube“ ir tavo paties failų. DI veikia visiškai šiame įrenginyje – niekas iš jo neišeina.';

  @override
  String get setSource => 'Šaltinio kodas';

  @override
  String get importTitle => 'Pridėti muzikos';

  @override
  String get importPickFolder => 'Pasirinkti aplanką';

  @override
  String get importPickFiles => 'Pasirinkti failus';

  @override
  String importScanning(Object file) {
    return 'Nuskaitoma: $file';
  }

  @override
  String importAdded(int count) {
    return 'Pridėta: $count';
  }

  @override
  String get importDenied =>
      'Leidimas atmestas – nepavyksta nuskaityti tavo muzikos.';

  @override
  String get importWatched => 'Stebimi aplankai';

  @override
  String get importIosHint =>
      'Atidaryk programą „Failai“, eik į „Mano iPhone“ → TuneBox ir įmesk ten muzikos.';

  @override
  String get playerQueue => 'Eilė';

  @override
  String get playerUpNext => 'Toliau';

  @override
  String get playerLyrics => 'Žodžiai';

  @override
  String get playerNoLyrics => 'Šiai dainai žodžių nėra.';

  @override
  String get playerRepeat => 'Kartoti';

  @override
  String get playerShuffle => 'Maišyti';

  @override
  String errorPlayback(Object title) {
    return 'Nepavyko paleisti „$title“';
  }

  @override
  String errorSkipping(Object title) {
    return 'Praleidžiama „$title“ – srautas neatsidarė.';
  }

  @override
  String get undo => 'Atšaukti';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Dabar: $tags, pirmauja $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Dabar: $tags.';
  }

  @override
  String get setColour => 'Spalva';

  @override
  String get setColourSub => 'Visa programa seka šią spalvą';

  @override
  String get setCoverArt => 'Viršelis';

  @override
  String get setMyColour => 'Mano spalva';

  @override
  String get setCoverArtSub =>
      'Kiekviena daina perdažo programą pagal savo viršelį.';

  @override
  String get setMyColourSub => 'Viena spalva, visur ir visada.';

  @override
  String get setPickColour => 'Pasirinkti bet kokią spalvą';

  @override
  String get setWifiOnlyTitle => 'Atsisiųsti tik per „Wi-Fi“';

  @override
  String get setDownloadLikes => 'Atsisiųsti viską, kas man patinka';

  @override
  String get setDownloadLikesSub => 'Širdelės mygtukas taip pat išsaugo failą';

  @override
  String get setAiInstall => 'Leisti DI įdiegti jos pasirinktą muziką';

  @override
  String get setSkipSilenceSub =>
      'Tik „Android“. Gali nukirpti tylius įžangos, nutilimo ir švelnius fragmentus – išjunk, jei muzika šokinėja';

  @override
  String get setStorageUsed => 'Atsisiuntimų užimta vieta';

  @override
  String get setLibrary => 'Biblioteka';

  @override
  String get setUpdates => 'Naujinimai';

  @override
  String get setAutoUpdate => 'Tikrinti naujinimus savaime';

  @override
  String get setAutoUpdateSub =>
      'Kas kelias valandas, tyliai, o atsisiunčia per „Wi-Fi“. Diegti vis tiek klausia.';

  @override
  String setUpdateReady(Object version) {
    return 'Naujinimas į $version paruoštas';
  }

  @override
  String get setUpdateReadySub => 'Atsisiųsta – bakstelėk, kad įdiegtum';

  @override
  String get setUpdateAvailableSub =>
      'Gauk jį leidimų puslapyje – bakstelėk, kad nukopijuotum nuorodą';

  @override
  String get setLinkCopied => 'Nuoroda nukopijuota';

  @override
  String get setCheckNow => 'Tikrinti dabar';

  @override
  String get setUpToDate => 'TuneBox yra naujausios versijos';

  @override
  String get setChecking => 'Ieškoma naujesnės versijos…';
}
