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

  @override
  String addedToPlaylist(String name) {
    return 'Added to \"$name\"';
  }
}
