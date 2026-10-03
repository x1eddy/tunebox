// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class LCs extends L {
  LCs([String locale = 'cs']) : super(locale);

  @override
  String get navHome => 'Domů';

  @override
  String get navExplore => 'Objevovat';

  @override
  String get navLibrary => 'Knihovna';

  @override
  String get navTaste => 'Váš vkus';

  @override
  String get actionDone => 'Hotovo';

  @override
  String get actionCancel => 'Zrušit';

  @override
  String get actionCreate => 'Vytvořit';

  @override
  String get actionPlay => 'Přehrát';

  @override
  String get actionShuffle => 'Náhodně';

  @override
  String get actionPlayAll => 'Přehrát vše';

  @override
  String get actionAdd => 'Přidat';

  @override
  String get actionRemove => 'Odebrat';

  @override
  String get actionName => 'Název';

  @override
  String get greetingNight => 'Ještě nespíte?';

  @override
  String get greetingMorning => 'Dobré ráno';

  @override
  String get greetingAfternoon => 'Dobré odpoledne';

  @override
  String get greetingEvening => 'Dobrý večer';

  @override
  String get homeBuilding => 'AI skládá vaše police…';

  @override
  String get homeOffline => 'Offline – zobrazuje se obsah zařízení';

  @override
  String get homeNothingYet => 'Zatím není co zobrazit';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count polic, právě aktualizováno',
      many: '$count police, právě aktualizovány',
      few: '$count police, právě aktualizovány',
      one: '$count police, právě aktualizována',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Přestavět police';

  @override
  String get homeAddMusic => 'Přidat hudbu z tohoto zařízení';

  @override
  String get homeQuickPicks => 'Rychlý výběr';

  @override
  String get homeQuickPicksSub => 'Rovnou zpět k tomu, co jste poslouchali';

  @override
  String get homeEmptyTitle => 'Vaše knihovna je prázdná';

  @override
  String get homeEmptyBody =>
      'Něco vyhledejte nebo přidejte hudbu, která už v tomto zařízení je. AI se začne učit od vašeho úplně prvního přehrání.';

  @override
  String get homeAddMyMusic => 'Přidat mou hudbu';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube není dostupný: $error';
  }

  @override
  String get moodFocus => 'Soustředění';

  @override
  String get moodWorkout => 'Cvičení';

  @override
  String get moodChill => 'Pohoda';

  @override
  String get moodCommute => 'Cestování';

  @override
  String get moodParty => 'Párty';

  @override
  String moodBuilding(Object mood) {
    return 'Připravuje se mix: $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Nepovedlo se: $error';
  }

  @override
  String get shelfRepeat => 'Pořád dokola';

  @override
  String get shelfRepeatSub => 'Vaše poslední dva týdny';

  @override
  String get shelfForgotten => 'Zapomenuté hity, které se vám líbily';

  @override
  String get shelfForgottenSub => 'Kdysi oblíbené, delší dobu nepřehrané';

  @override
  String get shelfNew => 'Novinky';

  @override
  String get shelfNewSub =>
      'Čerstvé skladby, o kterých si AI myslí, že jsou pro vás';

  @override
  String shelfBecause(Object artist) {
    return 'Protože jste poslouchali $artist';
  }

  @override
  String get shelfBecauseSub => 'Stejný kout vašeho vkusu';

  @override
  String get shelfDeep => 'Sotva dotčené';

  @override
  String get shelfDeepSub => 'Ve vaší knihovně, skoro nikdy nepřehrané';

  @override
  String get shelfMix => 'Váš mix';

  @override
  String get shelfMixSub => 'Skládá se znovu při každém otevření aplikace';

  @override
  String get shelfAdded => 'Nedávno přidané';

  @override
  String get shelfAddedSub => 'Stažené a importované soubory';

  @override
  String get shelfStarter => 'Začněte tady';

  @override
  String get shelfStarterSub => 'Pusťte si pár skladeb a AI se hned začne učit';

  @override
  String reasonPlays(int count) {
    return 'Přehrání: $count';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Líbí se, naposledy přehráno $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Přehrání: $count, naposledy $when';
  }

  @override
  String get reasonTopArtist => 'Jeden z vašich nejposlouchanějších interpretů';

  @override
  String reasonMore(Object artist) {
    return 'Více od interpreta $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Stále se vracíte k interpretovi $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Váš styl: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'V poslední době hodně: $tag';
  }

  @override
  String get reasonOutThisYear => 'Vyšlo letos';

  @override
  String get reasonReleasedRecently => 'Nedávno vydáno';

  @override
  String get reasonClose => 'Blízko tomu, co jste poslouchali';

  @override
  String reasonNear(Object artist) {
    return 'Blízko interpreta $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nikdy nepřehráno';

  @override
  String get reasonPlayedOnce => 'Přehráno jednou';

  @override
  String get reasonPopular => 'Právě oblíbené';

  @override
  String whenYearsAgo(int count) {
    return 'před $count lety';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'před $count měsíci';
  }

  @override
  String whenDaysAgo(int count) {
    return 'před $count dny';
  }

  @override
  String get searchHint => 'Skladby, interpreti, alba';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count výsledků',
      many: '$count výsledku',
      few: '$count výsledky',
      one: '$count výsledek',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Nedávná hledání';

  @override
  String get searchEmptyTitle => 'Nic nenalezeno';

  @override
  String get searchEmptyBody =>
      'Zkuste jiný pravopis nebo samotné jméno interpreta.';

  @override
  String get searchStartTitle => 'Najděte něco k poslechu';

  @override
  String get searchStartBody =>
      'Hledejte na YouTube Music – vrátí se jen skladby, nikdy videa o něčem jiném.';

  @override
  String get libPlaylists => 'Playlisty';

  @override
  String get libSongs => 'Skladby';

  @override
  String get libArtists => 'Interpreti';

  @override
  String get libLiked => 'Oblíbené';

  @override
  String get libDownloads => 'Stažené';

  @override
  String get libImported => 'Importované';

  @override
  String get libLikedSongs => 'Oblíbené skladby';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count skladeb',
      many: '$count skladby',
      few: '$count skladby',
      one: '$count skladba',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'Moje vlastní soubory';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count souborů',
      many: '$count souboru',
      few: '$count soubory',
      one: '$count soubor',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nový playlist';

  @override
  String get libMakeOne => 'Vytvořit';

  @override
  String get libSortRecent => 'Nedávno přidané';

  @override
  String get libSortTitle => 'Název';

  @override
  String get libSortArtist => 'Interpret';

  @override
  String get libSortPlays => 'Nejpřehrávanější';

  @override
  String get sheetNotForMe => 'Není pro mě';

  @override
  String get sheetNotForMeSub => 'Už to nikdy nedoporučovat';

  @override
  String get sheetBlocked => 'Zablokováno – klepnutím znovu povolíte';

  @override
  String get sheetBlockedSub => 'Může se znovu objevit v doporučeních';

  @override
  String get sheetPlayNext => 'Přehrát jako další';

  @override
  String get sheetAddToPlaylist => 'Přidat do playlistu';

  @override
  String get sheetDownloaded => 'Staženo';

  @override
  String get sheetRemoveFile => 'Klepnutím odstraníte soubor';

  @override
  String get sheetDownload => 'Stáhnout';

  @override
  String get sheetKeepOffline => 'Uložit pro offline';

  @override
  String get sheetRadio => 'Spustit rádio';

  @override
  String get sheetRadioSub => 'Fronta postavená kolem této skladby';

  @override
  String get sheetQueue => 'Fronta';

  @override
  String get sheetSleepTimer => 'Časovač spánku';

  @override
  String get sheetSleepOff => 'Vypnuto';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minut';
  }

  @override
  String get sheetSleepEndOfTrack => 'Konec této skladby';

  @override
  String sheetSleepSet(int count) {
    return 'Hudba se zastaví za $count min';
  }

  @override
  String get tasteTitle => 'Váš vkus';

  @override
  String get tasteRetrain => 'Přetrénovat';

  @override
  String get tasteRetraining => 'Přetrénování na základě vaší historie…';

  @override
  String get tasteRetrained => 'AI přestavěla svůj model.';

  @override
  String tasteConfidence(int percent) {
    return 'Jistota $percent %';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays přehrání · $skips přeskočení · $likes oblíbených';
  }

  @override
  String get tasteEmptySummary => 'Pusťte si pár skladeb a tady se to zaplní.';

  @override
  String get tasteKeepLearning => 'Učit se, když poslouchám';

  @override
  String get tasteKeepLearningSub => 'Vypnutím zmrazíte aktuální profil';

  @override
  String get tasteDownloadsTitle => 'Stahování řízené AI';

  @override
  String get tasteDownloadsSub =>
      'Hudba se v zařízení objeví, aniž byste o ni žádali';

  @override
  String get tasteDownloadLikes => 'Stahovat vše, co se mi líbí';

  @override
  String get tasteDownloadLikesSub =>
      'Klepněte na srdce a soubor se uloží pro offline';

  @override
  String get tasteAiInstall => 'Nechat AI instalovat hudbu, kterou vybere';

  @override
  String get tasteAiInstallSub => 'Stáhne skladby, u kterých si je jistá';

  @override
  String get tasteWhatItThinks => 'Co si myslí, že máte rádi';

  @override
  String get tasteWhatItThinksSub =>
      'Naučeno z přehrání, přeskočení, oblíbených a opakování';

  @override
  String get tasteArtists => 'Interpreti, o které se opírá';

  @override
  String get tasteWhenYouListen => 'Kdy posloucháte';

  @override
  String get tasteWhenYouListenSub =>
      'Přehrání za hodinu – aktuální hodina má větší váhu';

  @override
  String get tasteDecades => 'Desetiletí';

  @override
  String get tasteTune => 'Doladit doporučení';

  @override
  String get tasteTuneSub => 'Projeví se při dalším obnovení Domů';

  @override
  String get tasteDiscovery => 'Objevování';

  @override
  String get tasteDiscoverySub => 'Známé ↔ věci, které jste nikdy neslyšeli';

  @override
  String get tasteEnergy => 'Energie';

  @override
  String get tasteEnergySub => 'Klidné ↔ hlasité';

  @override
  String get tasteRecency => 'Novost';

  @override
  String get tasteRecencySub => 'Nadčasové ↔ zbrusu nové';

  @override
  String get tasteNostalgia => 'Nostalgie';

  @override
  String get tasteNostalgiaSub =>
      'Jak dávno musí být stará oblíbená skladba, aby se považovala za zapomenutou';

  @override
  String get tasteSignals => 'Signály, které smí používat';

  @override
  String get tasteSignalsSub => 'Vše zůstává v tomto zařízení';

  @override
  String get tasteUseHistory => 'Co jsem přehrál(a)';

  @override
  String get tasteUseSkips => 'Co přeskakuji';

  @override
  String get tasteUseTime => 'Denní doba';

  @override
  String get tasteUseYouTube => 'Návrhy z YouTube';

  @override
  String get tasteAlwaysMore => 'Vždy více od';

  @override
  String get tasteNeverAgain => 'Už nikdy';

  @override
  String get tasteAddArtist => 'Přidat interpreta';

  @override
  String get tasteMoreOfPrompt => 'Vždy více od…';

  @override
  String get tasteNeverAgainPrompt => 'Už nikdy…';

  @override
  String get tasteReset => 'Zapomenout naučené';

  @override
  String get tasteResetSub => 'Vaše hudba zůstane; profil začne od nuly';

  @override
  String get trainCard => 'Trénujte hodnocením';

  @override
  String get trainCardSub =>
      'Procházejte skutečné skladby. Doprava pro více takových, doleva pro už nikdy. Dvě minuty tady poslouží víc než týden poslechu.';

  @override
  String get trainStart => 'Začít trénink';

  @override
  String get trainTitle => 'Trénink';

  @override
  String get trainQuestion => 'Chtěli byste to na Domů?';

  @override
  String get trainMoreLikeThis => 'Více takových';

  @override
  String get trainNeverAgain => 'Už nikdy';

  @override
  String get trainDone => 'Kolo dokončeno';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked ponecháno · $blocked zablokováno. Jistota $before % → $after %';
  }

  @override
  String get trainBackToTaste => 'Zpět na váš vkus';

  @override
  String get trainNothingTitle => 'Zatím není co hodnotit';

  @override
  String get trainNothingBody =>
      'Přidejte hudbu nebo nejprve nechte AI stáhnout kandidáty a pak se vraťte.';

  @override
  String get trainLeaveTitle => 'Opustit trénink?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Pokud odejdete teď, AI zahodí vše z tohoto kola – všech $count skladeb, které jste právě ohodnotili.',
      many:
          'Pokud odejdete teď, AI zahodí vše z tohoto kola – všech $count skladby, které jste právě ohodnotili.',
      few:
          'Pokud odejdete teď, AI zahodí vše z tohoto kola – všechny $count skladby, které jste právě ohodnotili.',
      one:
          'Pokud odejdete teď, AI zahodí vše z tohoto kola – $count skladbu, kterou jste právě ohodnotili.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Pokračovat v tréninku';

  @override
  String get trainDiscard => 'Zahodit a odejít';

  @override
  String get setTitle => 'Nastavení';

  @override
  String get setAppearance => 'Vzhled';

  @override
  String get setTheme => 'Motiv';

  @override
  String get setThemeSystem => 'Podle systému';

  @override
  String get setThemeLight => 'Světlý';

  @override
  String get setThemeDark => 'Tmavý';

  @override
  String get setPureBlack => 'Čistě černá';

  @override
  String get setPureBlackSub => 'Šetří energii na displeji OLED';

  @override
  String get setAccent => 'Barva zvýraznění';

  @override
  String get setAccentArtwork => 'Z obalu';

  @override
  String get setAccentFixed => 'Jedna barva, kterou jsem vybral(a)';

  @override
  String get setLanguage => 'Jazyk';

  @override
  String get setLanguageSystem => 'Podle systému';

  @override
  String get setAccessibility => 'Přístupnost';

  @override
  String get setTextSize => 'Velikost textu';

  @override
  String get setTextSizeSub => 'Navíc k nastavení systému';

  @override
  String get setReduceMotion => 'Omezit pohyb';

  @override
  String get setReduceMotionSub =>
      'Zastaví sloupce, vizualizér, pružné posouvání, pružné klepnutí a přechody stránek';

  @override
  String get setHighContrast => 'Vysoký kontrast';

  @override
  String get setHighContrastSub => 'Výraznější oddělení a viditelné obrysy';

  @override
  String get setBoldText => 'Tučný text';

  @override
  String get setPlayback => 'Přehrávání';

  @override
  String get setAutoRadio => 'Nechat hudbu hrát';

  @override
  String get setAutoRadioSub =>
      'Po skončení fronty pokračuje rádio postavené na poslední skladbě';

  @override
  String get setSmartShuffle => 'Chytré náhodné pořadí';

  @override
  String get setSmartShuffleSub => 'Míchá podle vkusu, ne náhodně';

  @override
  String get setResume => 'Navázat, kde jsem skončil(a)';

  @override
  String get setResumeSub =>
      'Při otevření aplikace obnoví frontu, pozastavenou';

  @override
  String get setDataSaver => 'Úspora dat mimo Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Omezí streamy a stahování na 128 kb/s v mobilních datech';

  @override
  String get setHaptics => 'Haptická odezva';

  @override
  String get setShowReasons => 'Zobrazit, proč bylo něco doporučeno';

  @override
  String get setSkipSilence => 'Přeskakovat ticho';

  @override
  String get setQuality => 'Kvalita zvuku';

  @override
  String get setQualityLow => 'Nízká · 64 kb/s';

  @override
  String get setQualityNormal => 'Běžná · 128 kb/s';

  @override
  String get setQualityHigh => 'Vysoká · 192 kb/s';

  @override
  String get setQualityBest => 'Nejlepší dostupná';

  @override
  String get setStorage => 'Stahování a úložiště';

  @override
  String get setWifiOnly => 'Stahovat jen přes Wi-Fi';

  @override
  String get setDailyLimit => 'Denní limit pro AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count skladeb denně';
  }

  @override
  String get setBudget => 'Úložiště, které smí AI využít';

  @override
  String setUsed(Object size) {
    return '$size využito staženými soubory';
  }

  @override
  String get setYourMusic => 'Vaše hudba';

  @override
  String get setImport => 'Přidat hudbu z tohoto zařízení';

  @override
  String get setImportSub => 'Vyberte složky nebo jednotlivé soubory';

  @override
  String get setCleanup => 'Vyčistit chybějící soubory';

  @override
  String get setCleanupSub => 'Odebrat skladby, jejichž soubor zmizel';

  @override
  String setCleanupDone(int count) {
    return 'Odebráno chybějících souborů: $count.';
  }

  @override
  String get setExport => 'Poslat můj vkus do jiného zařízení';

  @override
  String get setExportSub =>
      'Uloží soubor s vašimi oblíbenými, přehráními a vším, co se AI naučila';

  @override
  String get setImportTaste => 'Načíst vkus z jiného zařízení';

  @override
  String get setImportTasteSub =>
      'Vyberte uložený soubor vkusu a sloučte ho – lze bezpečně opakovat';

  @override
  String get setAbout => 'O aplikaci';

  @override
  String get setAboutBody =>
      'Hudba z YouTube a vašich vlastních souborů. AI běží celá v tomto zařízení – nic jej neopouští.';

  @override
  String get setSource => 'Zdrojový kód';

  @override
  String get importTitle => 'Přidat hudbu';

  @override
  String get importPickFolder => 'Vybrat složku';

  @override
  String get importPickFiles => 'Vybrat soubory';

  @override
  String importScanning(Object file) {
    return 'Prohledává se $file';
  }

  @override
  String importAdded(int count) {
    return 'Přidáno: $count';
  }

  @override
  String get importDenied => 'Přístup odepřen – nelze číst vaši hudbu.';

  @override
  String get importWatched => 'Sledované složky';

  @override
  String get importIosHint =>
      'Otevřete aplikaci Soubory, přejděte na V iPhonu → TuneBox a vložte tam hudbu.';

  @override
  String get playerQueue => 'Fronta';

  @override
  String get playerUpNext => 'Další';

  @override
  String get playerLyrics => 'Text';

  @override
  String get playerNoLyrics => 'Pro tuto skladbu není text.';

  @override
  String get playerRepeat => 'Opakovat';

  @override
  String get playerShuffle => 'Náhodně';

  @override
  String errorPlayback(Object title) {
    return 'Skladbu „$title“ se nepodařilo přehrát';
  }

  @override
  String errorSkipping(Object title) {
    return 'Přeskakuje se „$title“ – stream se nepodařilo otevřít.';
  }

  @override
  String get undo => 'Zpět';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Právě teď: $tags, v čele s interpretem $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Právě teď: $tags.';
  }

  @override
  String get setColour => 'Barva';

  @override
  String get setColourSub => 'Řídí se tím celá aplikace';

  @override
  String get setCoverArt => 'Obal alba';

  @override
  String get setMyColour => 'Moje barva';

  @override
  String get setCoverArtSub =>
      'Každá skladba přebarví aplikaci podle svého obalu.';

  @override
  String get setMyColourSub => 'Jedna barva, všude, pořád.';

  @override
  String get setPickColour => 'Vybrat libovolnou barvu';

  @override
  String get setWifiOnlyTitle => 'Stahovat jen přes Wi-Fi';

  @override
  String get setDownloadLikes => 'Stahovat vše, co se mi líbí';

  @override
  String get setDownloadLikesSub => 'Tlačítko srdce uloží i soubor';

  @override
  String get setAiInstall => 'Nechat AI instalovat hudbu, kterou vybere';

  @override
  String get setSkipSilenceSub =>
      'Pouze Android. Může oříznout tiché úvody, prolínání a jemné pasáže – pokud hudba přeskakuje, nechte vypnuto';

  @override
  String get setStorageUsed => 'Úložiště využité staženými soubory';

  @override
  String get setLibrary => 'Knihovna';

  @override
  String get setUpdates => 'Aktualizace';

  @override
  String get setAutoUpdate => 'Kontrolovat aktualizace automaticky';

  @override
  String get setAutoUpdateSub =>
      'Každých pár hodin, nenápadně, a stahuje přes Wi-Fi. Instalace se vás stále zeptá.';

  @override
  String setUpdateReady(Object version) {
    return 'Aktualizace na $version je připravena';
  }

  @override
  String get setUpdateReadySub => 'Staženo – klepnutím nainstalujete';

  @override
  String get setUpdateAvailableSub =>
      'Získejte ji na stránce vydání – klepnutím zkopírujete odkaz';

  @override
  String get setLinkCopied => 'Odkaz zkopírován';

  @override
  String get setCheckNow => 'Zkontrolovat';

  @override
  String get setUpToDate => 'TuneBox je aktuální';

  @override
  String get setChecking => 'Hledá se novější verze…';
}
