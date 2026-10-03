// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class LSk extends L {
  LSk([String locale = 'sk']) : super(locale);

  @override
  String get navHome => 'Domov';

  @override
  String get navExplore => 'Objavovať';

  @override
  String get navLibrary => 'Knižnica';

  @override
  String get navTaste => 'Tvoj vkus';

  @override
  String get actionDone => 'Hotovo';

  @override
  String get actionCancel => 'Zrušiť';

  @override
  String get actionCreate => 'Vytvoriť';

  @override
  String get actionPlay => 'Prehrať';

  @override
  String get actionShuffle => 'Náhodne';

  @override
  String get actionPlayAll => 'Prehrať všetko';

  @override
  String get actionAdd => 'Pridať';

  @override
  String get actionRemove => 'Odstrániť';

  @override
  String get actionName => 'Názov';

  @override
  String get greetingNight => 'Ešte hore?';

  @override
  String get greetingMorning => 'Dobré ráno';

  @override
  String get greetingAfternoon => 'Dobrý deň';

  @override
  String get greetingEvening => 'Dobrý večer';

  @override
  String get homeBuilding => 'AI skladá tvoje police…';

  @override
  String get homeOffline => 'Offline — zobrazuje sa obsah zariadenia';

  @override
  String get homeNothingYet => 'Zatiaľ nie je čo zobraziť';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count políc, práve obnovených',
      few: '$count police, práve obnovené',
      one: '1 polica, práve obnovená',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Znovu zostaviť police';

  @override
  String get homeAddMusic => 'Pridať hudbu z tohto zariadenia';

  @override
  String get homeQuickPicks => 'Rýchly výber';

  @override
  String get homeQuickPicksSub => 'Rovno späť k tomu, čo hralo';

  @override
  String get homeEmptyTitle => 'Tvoja knižnica je prázdna';

  @override
  String get homeEmptyBody =>
      'Vyhľadaj niečo alebo pridaj hudbu, ktorú už máš v zariadení. AI sa začne učiť už od tvojho prvého prehratia.';

  @override
  String get homeAddMyMusic => 'Pridať moju hudbu';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube sa nepodarilo kontaktovať: $error';
  }

  @override
  String get moodFocus => 'Sústredenie';

  @override
  String get moodWorkout => 'Cvičenie';

  @override
  String get moodChill => 'Oddych';

  @override
  String get moodCommute => 'Cestovanie';

  @override
  String get moodParty => 'Párty';

  @override
  String moodBuilding(Object mood) {
    return 'Zostavuje sa mix $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Nepodarilo sa: $error';
  }

  @override
  String get shelfRepeat => 'Stále dokola';

  @override
  String get shelfRepeatSub => 'Tvoje posledné dva týždne';

  @override
  String get shelfForgotten => 'Zabudnuté hity, ktoré si mal rád';

  @override
  String get shelfForgottenSub => 'Kedysi obľúbené, dlho nepočuté';

  @override
  String get shelfNew => 'Novinky';

  @override
  String get shelfNewSub =>
      'Čerstvé skladby, o ktorých si AI myslí, že sú pre teba';

  @override
  String shelfBecause(Object artist) {
    return 'Pretože si počúval $artist';
  }

  @override
  String get shelfBecauseSub => 'Ten istý kútik tvojho vkusu';

  @override
  String get shelfDeep => 'Sotva dotknuté';

  @override
  String get shelfDeepSub => 'V tvojej knižnici, takmer nikdy neprehrané';

  @override
  String get shelfMix => 'Tvoj mix';

  @override
  String get shelfMixSub => 'Zostavuje sa nanovo pri každom otvorení aplikácie';

  @override
  String get shelfAdded => 'Nedávno pridané';

  @override
  String get shelfAddedSub => 'Stiahnuté a importované súbory';

  @override
  String get shelfStarter => 'Začni tu';

  @override
  String get shelfStarterSub =>
      'Prehraj zopár skladieb a AI sa hneď začne učiť';

  @override
  String reasonPlays(int count) {
    return 'Prehratí: $count';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Páči sa, naposledy prehrané $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Prehratí: $count, naposledy $when';
  }

  @override
  String get reasonTopArtist => 'Jeden z tvojich najpočúvanejších interpretov';

  @override
  String reasonMore(Object artist) {
    return 'Viac od $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Stále sa vraciaš k $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Tvoj typ: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'V poslednom čase veľa: $tag';
  }

  @override
  String get reasonOutThisYear => 'Vyšlo tento rok';

  @override
  String get reasonReleasedRecently => 'Nedávno vydané';

  @override
  String get reasonClose => 'Blízko tomu, čo si počúval';

  @override
  String reasonNear(Object artist) {
    return 'Pri $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nikdy neprehrané';

  @override
  String get reasonPlayedOnce => 'Prehrané raz';

  @override
  String get reasonPopular => 'Teraz populárne';

  @override
  String whenYearsAgo(int count) {
    return 'pred $count r.';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'pred $count mes.';
  }

  @override
  String whenDaysAgo(int count) {
    return 'pred $count d.';
  }

  @override
  String get searchHint => 'Skladby, interpreti, albumy';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count výsledkov',
      few: '$count výsledky',
      one: '1 výsledok',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Nedávne hľadania';

  @override
  String get searchEmptyTitle => 'Nič sa nenašlo';

  @override
  String get searchEmptyBody =>
      'Skús iný pravopis alebo samotné meno interpreta.';

  @override
  String get searchStartTitle => 'Nájdi niečo na prehratie';

  @override
  String get searchStartBody =>
      'Hľadaj v YouTube Music — vrátia sa iba skladby, nikdy videá o iných veciach.';

  @override
  String get libPlaylists => 'Playlisty';

  @override
  String get libSongs => 'Skladby';

  @override
  String get libArtists => 'Interpreti';

  @override
  String get libLiked => 'Obľúbené';

  @override
  String get libDownloads => 'Stiahnuté';

  @override
  String get libImported => 'Importované';

  @override
  String get libLikedSongs => 'Obľúbené skladby';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count skladieb',
      few: '$count skladby',
      one: '1 skladba',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return 'Offline: $count';
  }

  @override
  String get libMyFiles => 'Moje vlastné súbory';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count súborov',
      few: '$count súbory',
      one: '1 súbor',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nový playlist';

  @override
  String get libMakeOne => 'Vytvoriť';

  @override
  String get libSortRecent => 'Nedávno pridané';

  @override
  String get libSortTitle => 'Názov';

  @override
  String get libSortArtist => 'Interpret';

  @override
  String get libSortPlays => 'Najviac prehrávané';

  @override
  String get sheetNotForMe => 'Nie pre mňa';

  @override
  String get sheetNotForMeSub => 'Už nikdy to neodporúčať';

  @override
  String get sheetBlocked => 'Zablokované — ťuknutím znova povolíš';

  @override
  String get sheetBlockedSub => 'Môže sa opäť objaviť v odporúčaniach';

  @override
  String get sheetPlayNext => 'Prehrať ako ďalšie';

  @override
  String get sheetAddToPlaylist => 'Pridať do playlistu';

  @override
  String get sheetDownloaded => 'Stiahnuté';

  @override
  String get sheetRemoveFile => 'Ťuknutím odstrániš súbor';

  @override
  String get sheetDownload => 'Stiahnuť';

  @override
  String get sheetKeepOffline => 'Uchovať offline';

  @override
  String get sheetRadio => 'Spustiť rádio';

  @override
  String get sheetRadioSub => 'Fronta postavená okolo tejto skladby';

  @override
  String get sheetQueue => 'Fronta';

  @override
  String get sheetSleepTimer => 'Časovač spánku';

  @override
  String get sheetSleepOff => 'Vypnuté';

  @override
  String sheetSleepMinutes(int count) {
    return '$count min';
  }

  @override
  String get sheetSleepEndOfTrack => 'Koniec tejto skladby';

  @override
  String sheetSleepSet(int count) {
    return 'Hudba sa zastaví o $count min';
  }

  @override
  String get tasteTitle => 'Tvoj vkus';

  @override
  String get tasteRetrain => 'Pretrénovať';

  @override
  String get tasteRetraining => 'Pretrénovanie na tvojej histórii…';

  @override
  String get tasteRetrained => 'AI zostavila svoj model nanovo.';

  @override
  String tasteConfidence(int percent) {
    return 'Istota $percent %';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'Prehratí: $plays · preskočení: $skips · páči sa: $likes';
  }

  @override
  String get tasteEmptySummary => 'Prehraj zopár skladieb a tu sa to naplní.';

  @override
  String get tasteKeepLearning => 'Učiť sa, kým počúvam';

  @override
  String get tasteKeepLearningSub => 'Vypni, aby sa aktuálny profil zmrazil';

  @override
  String get tasteDownloadsTitle => 'Sťahovanie, ktoré rieši AI';

  @override
  String get tasteDownloadsSub =>
      'Hudba sa dostane do zariadenia bez tvojej žiadosti';

  @override
  String get tasteDownloadLikes => 'Sťahovať všetko, čo sa mi páči';

  @override
  String get tasteDownloadLikesSub => 'Ťukni na srdce a súbor sa uloží offline';

  @override
  String get tasteAiInstall => 'Nechať AI inštalovať hudbu, ktorú vyberie';

  @override
  String get tasteAiInstallSub => 'Stiahne skladby, v ktorých si je istá';

  @override
  String get tasteWhatItThinks => 'Čo si myslí, že máš rád';

  @override
  String get tasteWhatItThinksSub =>
      'Naučené z prehratí, preskočení, lajkov a opakovaní';

  @override
  String get tasteArtists => 'Interpreti, o ktorých sa opiera';

  @override
  String get tasteWhenYouListen => 'Kedy počúvaš';

  @override
  String get tasteWhenYouListenSub =>
      'Prehratia za hodinu — aktuálna hodina má väčšiu váhu';

  @override
  String get tasteDecades => 'Desaťročia';

  @override
  String get tasteTune => 'Doladiť odporúčania';

  @override
  String get tasteTuneSub => 'Prejaví sa pri ďalšom obnovení domovskej stránky';

  @override
  String get tasteDiscovery => 'Objavovanie';

  @override
  String get tasteDiscoverySub => 'Známe ↔ veci, ktoré si ešte nepočul';

  @override
  String get tasteEnergy => 'Energia';

  @override
  String get tasteEnergySub => 'Pokojné ↔ hlasné';

  @override
  String get tasteRecency => 'Novosť';

  @override
  String get tasteRecencySub => 'Nadčasové ↔ úplne nové';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Ako dávno musí byť stará obľúbená skladba, aby sa považovala za zabudnutú';

  @override
  String get tasteSignals => 'Signály, ktoré smie používať';

  @override
  String get tasteSignalsSub => 'Všetko zostáva v tomto zariadení';

  @override
  String get tasteUseHistory => 'Čo som prehral';

  @override
  String get tasteUseSkips => 'Čo preskakujem';

  @override
  String get tasteUseTime => 'Denný čas';

  @override
  String get tasteUseYouTube => 'Návrhy z YouTube';

  @override
  String get tasteAlwaysMore => 'Vždy viac';

  @override
  String get tasteNeverAgain => 'Už nikdy';

  @override
  String get tasteAddArtist => 'Pridať interpreta';

  @override
  String get tasteMoreOfPrompt => 'Vždy viac…';

  @override
  String get tasteNeverAgainPrompt => 'Už nikdy…';

  @override
  String get tasteReset => 'Vynulovať, čo sa naučila';

  @override
  String get tasteResetSub => 'Tvoja hudba zostane; profil začne od nuly';

  @override
  String get trainCard => 'Trénuj ju hodnotením';

  @override
  String get trainCardSub =>
      'Prechádzaj skutočné skladby. Doprava pre viac podobných, doľava pre už nikdy. Dve minúty tu zaberú viac než týždeň počúvania.';

  @override
  String get trainStart => 'Začať tréningové kolo';

  @override
  String get trainTitle => 'Tréningové kolo';

  @override
  String get trainQuestion => 'Chcel by si to na domovskej stránke?';

  @override
  String get trainMoreLikeThis => 'Viac takých';

  @override
  String get trainNeverAgain => 'Už nikdy';

  @override
  String get trainDone => 'Kolo dokončené';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'Ponechané: $liked · zablokované: $blocked. Istota $before % → $after %';
  }

  @override
  String get trainBackToTaste => 'Späť na tvoj vkus';

  @override
  String get trainNothingTitle => 'Zatiaľ nie je čo hodnotiť';

  @override
  String get trainNothingBody =>
      'Pridaj hudbu alebo nechaj AI stiahnuť kandidátov a potom sa vráť.';

  @override
  String get trainLeaveTitle => 'Opustiť tréningové kolo?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ak teraz odídeš, AI zahodí všetko z tohto kola — všetkých $count skladieb, ktoré si práve ohodnotil.',
      few:
          'Ak teraz odídeš, AI zahodí všetko z tohto kola — všetky $count skladby, ktoré si práve ohodnotil.',
      one:
          'Ak teraz odídeš, AI zahodí všetko z tohto kola — 1 skladbu, ktorú si práve ohodnotil.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Pokračovať v tréningu';

  @override
  String get trainDiscard => 'Zahodiť a odísť';

  @override
  String get setTitle => 'Nastavenia';

  @override
  String get setAppearance => 'Vzhľad';

  @override
  String get setTheme => 'Motív';

  @override
  String get setThemeSystem => 'Podľa systému';

  @override
  String get setThemeLight => 'Svetlý';

  @override
  String get setThemeDark => 'Tmavý';

  @override
  String get setPureBlack => 'Čisto čierna';

  @override
  String get setPureBlackSub => 'Šetrí energiu na OLED displeji';

  @override
  String get setAccent => 'Farba zvýraznenia';

  @override
  String get setAccentArtwork => 'Z obalu albumu';

  @override
  String get setAccentFixed => 'Jedna farba, ktorú som vybral';

  @override
  String get setLanguage => 'Jazyk';

  @override
  String get setLanguageSystem => 'Podľa systému';

  @override
  String get setAccessibility => 'Dostupnosť';

  @override
  String get setTextSize => 'Veľkosť textu';

  @override
  String get setTextSizeSub => 'Navyše k nastaveniu systému';

  @override
  String get setReduceMotion => 'Obmedziť pohyb';

  @override
  String get setReduceMotionSub =>
      'Vypne pruhy, vizualizér, pružné posúvanie, pružné ťuknutia a prechody medzi stránkami';

  @override
  String get setHighContrast => 'Vysoký kontrast';

  @override
  String get setHighContrastSub => 'Výraznejšie oddelenie a viditeľné obrysy';

  @override
  String get setBoldText => 'Tučný text';

  @override
  String get setPlayback => 'Prehrávanie';

  @override
  String get setAutoRadio => 'Nechať hudbu hrať';

  @override
  String get setAutoRadioSub =>
      'Keď sa fronta skončí, pokračuje rádiom postaveným na poslednej skladbe';

  @override
  String get setSmartShuffle => 'Inteligentné náhodné poradie';

  @override
  String get setSmartShuffleSub => 'Mieša podľa vkusu namiesto náhody';

  @override
  String get setResume => 'Pokračovať, kde som skončil';

  @override
  String get setResumeSub =>
      'Pri otvorení aplikácie obnoví frontu, pozastavenú';

  @override
  String get setDataSaver => 'Šetrenie dát mimo Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Obmedzí streamy a sťahovanie na 128 kb/s v mobilných dátach';

  @override
  String get setHaptics => 'Haptická odozva';

  @override
  String get setShowReasons => 'Zobrazovať, prečo bolo niečo odporúčané';

  @override
  String get setSkipSilence => 'Preskakovať ticho';

  @override
  String get setQuality => 'Kvalita zvuku';

  @override
  String get setQualityLow => 'Nízka · 64 kb/s';

  @override
  String get setQualityNormal => 'Normálna · 128 kb/s';

  @override
  String get setQualityHigh => 'Vysoká · 192 kb/s';

  @override
  String get setQualityBest => 'Najlepšia dostupná';

  @override
  String get setStorage => 'Sťahovanie a úložisko';

  @override
  String get setWifiOnly => 'Sťahovať iba cez Wi-Fi';

  @override
  String get setDailyLimit => 'Denný limit pre AI';

  @override
  String setDailyLimitSub(int count) {
    return 'Skladieb za deň: $count';
  }

  @override
  String get setBudget => 'Úložisko, ktoré môže AI použiť';

  @override
  String setUsed(Object size) {
    return 'Stiahnuté súbory zaberajú $size';
  }

  @override
  String get setYourMusic => 'Tvoja hudba';

  @override
  String get setImport => 'Pridať hudbu z tohto zariadenia';

  @override
  String get setImportSub => 'Vyber priečinky alebo jednotlivé súbory';

  @override
  String get setCleanup => 'Vyčistiť chýbajúce súbory';

  @override
  String get setCleanupSub => 'Odstrániť skladby, ktorých súbor zmizol';

  @override
  String setCleanupDone(int count) {
    return 'Odstránených chýbajúcich súborov: $count.';
  }

  @override
  String get setExport => 'Poslať môj vkus do iného zariadenia';

  @override
  String get setExportSub =>
      'Uloží súbor s tvojimi lajkami, prehratiami a všetkým, čo sa AI naučila';

  @override
  String get setImportTaste => 'Načítať vkus z iného zariadenia';

  @override
  String get setImportTasteSub =>
      'Vyber uložený súbor vkusu a zlúč ho — bezpečné opakovať';

  @override
  String get setAbout => 'O aplikácii';

  @override
  String get setAboutBody =>
      'Hudba z YouTube a tvojich vlastných súborov. AI beží výlučne v tomto zariadení — nič ho neopúšťa.';

  @override
  String get setSource => 'Zdrojový kód';

  @override
  String get importTitle => 'Pridať hudbu';

  @override
  String get importPickFolder => 'Vybrať priečinok';

  @override
  String get importPickFiles => 'Vybrať súbory';

  @override
  String importScanning(Object file) {
    return 'Skenuje sa $file';
  }

  @override
  String importAdded(int count) {
    return 'Pridané: $count';
  }

  @override
  String get importDenied =>
      'Povolenie zamietnuté — nemožno čítať tvoju hudbu.';

  @override
  String get importWatched => 'Sledované priečinky';

  @override
  String get importIosHint =>
      'Otvor aplikáciu Súbory, choď do Na mojom iPhone → TuneBox a vlož tam hudbu.';

  @override
  String get playerQueue => 'Fronta';

  @override
  String get playerUpNext => 'Ďalej';

  @override
  String get playerLyrics => 'Text piesne';

  @override
  String get playerNoLyrics => 'Pre túto skladbu nie je text.';

  @override
  String get playerRepeat => 'Opakovať';

  @override
  String get playerShuffle => 'Náhodne';

  @override
  String errorPlayback(Object title) {
    return 'Skladbu „$title“ sa nepodarilo prehrať';
  }

  @override
  String errorSkipping(Object title) {
    return 'Preskakuje sa „$title“ — stream sa nepodarilo otvoriť.';
  }

  @override
  String get undo => 'Späť';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Práve teraz: $tags, na čele s $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Práve teraz: $tags.';
  }

  @override
  String get setColour => 'Farba';

  @override
  String get setColourSub => 'Riadi sa ňou celá aplikácia';

  @override
  String get setCoverArt => 'Obal albumu';

  @override
  String get setMyColour => 'Moja farba';

  @override
  String get setCoverArtSub =>
      'Každá skladba prefarbí aplikáciu podľa svojho obalu.';

  @override
  String get setMyColourSub => 'Jedna farba, všade a stále.';

  @override
  String get setPickColour => 'Vybrať ľubovoľnú farbu';

  @override
  String get setWifiOnlyTitle => 'Sťahovať iba cez Wi-Fi';

  @override
  String get setDownloadLikes => 'Sťahovať všetko, čo sa mi páči';

  @override
  String get setDownloadLikesSub => 'Tlačidlo srdca súbor aj uloží';

  @override
  String get setAiInstall => 'Nechať AI inštalovať hudbu, ktorú vyberie';

  @override
  String get setSkipSilenceSub =>
      'Iba Android. Môže odrezať tiché úvody, doznievania a tiché časti — nechaj vypnuté, ak hudba preskakuje';

  @override
  String get setStorageUsed => 'Úložisko využité sťahovaním';

  @override
  String get setLibrary => 'Knižnica';

  @override
  String get setUpdates => 'Aktualizácie';

  @override
  String get setAutoUpdate => 'Kontrolovať aktualizácie automaticky';

  @override
  String get setAutoUpdateSub =>
      'Každých pár hodín, nenápadne, a sťahuje cez Wi-Fi. Inštalácia sa stále pýta.';

  @override
  String setUpdateReady(Object version) {
    return 'Aktualizácia na $version je pripravená';
  }

  @override
  String get setUpdateReadySub => 'Stiahnuté — ťuknutím nainštaluj';

  @override
  String get setUpdateAvailableSub =>
      'Získaj ju zo stránky vydaní — ťuknutím skopíruješ odkaz';

  @override
  String get setLinkCopied => 'Odkaz skopírovaný';

  @override
  String get setCheckNow => 'Skontrolovať teraz';

  @override
  String get setUpToDate => 'TuneBox je aktuálny';

  @override
  String get setChecking => 'Hľadá sa novšia verzia…';
}
