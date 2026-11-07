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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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
