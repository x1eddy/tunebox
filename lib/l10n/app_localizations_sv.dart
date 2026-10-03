// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class LSv extends L {
  LSv([String locale = 'sv']) : super(locale);

  @override
  String get navHome => 'Hem';

  @override
  String get navExplore => 'Utforska';

  @override
  String get navLibrary => 'Bibliotek';

  @override
  String get navTaste => 'Din smak';

  @override
  String get actionDone => 'Klar';

  @override
  String get actionCancel => 'Avbryt';

  @override
  String get actionCreate => 'Skapa';

  @override
  String get actionPlay => 'Spela';

  @override
  String get actionShuffle => 'Blanda';

  @override
  String get actionPlayAll => 'Spela alla';

  @override
  String get actionAdd => 'Lägg till';

  @override
  String get actionRemove => 'Ta bort';

  @override
  String get actionName => 'Namn';

  @override
  String get greetingNight => 'Fortfarande uppe?';

  @override
  String get greetingMorning => 'God morgon';

  @override
  String get greetingAfternoon => 'God eftermiddag';

  @override
  String get greetingEvening => 'God kväll';

  @override
  String get homeBuilding => 'AI:n bygger dina hyllor…';

  @override
  String get homeOffline => 'Offline – visar det som finns på enheten';

  @override
  String get homeNothingYet => 'Inget att visa än';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hyllor, nyss uppdaterade',
      one: '1 hylla, nyss uppdaterad',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Bygg om hyllorna';

  @override
  String get homeAddMusic => 'Lägg till musik från den här enheten';

  @override
  String get homeQuickPicks => 'Snabbval';

  @override
  String get homeQuickPicksSub => 'Direkt tillbaka till det du lyssnade på';

  @override
  String get homeEmptyTitle => 'Ditt bibliotek är tomt';

  @override
  String get homeEmptyBody =>
      'Sök efter något, eller lägg till musiken som redan finns på enheten. AI:n börjar lära sig från din allra första låt.';

  @override
  String get homeAddMyMusic => 'Lägg till min musik';

  @override
  String homeCouldNotReach(Object error) {
    return 'Kunde inte nå YouTube: $error';
  }

  @override
  String get moodFocus => 'Fokus';

  @override
  String get moodWorkout => 'Träning';

  @override
  String get moodChill => 'Chill';

  @override
  String get moodCommute => 'Pendling';

  @override
  String get moodParty => 'Fest';

  @override
  String moodBuilding(Object mood) {
    return 'Bygger en $mood-mix…';
  }

  @override
  String moodFailed(Object error) {
    return 'Misslyckades: $error';
  }

  @override
  String get shelfRepeat => 'På repeat';

  @override
  String get shelfRepeatSub => 'Dina senaste två veckor';

  @override
  String get shelfForgotten => 'Bortglömda hits du gillade';

  @override
  String get shelfForgottenSub => 'Älskade en gång, orörda en tid';

  @override
  String get shelfNew => 'Nytt';

  @override
  String get shelfNewSub => 'Fräscha låtar som AI:n tror är för dig';

  @override
  String shelfBecause(Object artist) {
    return 'För att du spelade $artist';
  }

  @override
  String get shelfBecauseSub => 'Samma hörn av din smak';

  @override
  String get shelfDeep => 'Knappt rörda';

  @override
  String get shelfDeepSub => 'I ditt bibliotek, nästan aldrig spelade';

  @override
  String get shelfMix => 'Din mix';

  @override
  String get shelfMixSub => 'Byggs om varje gång du öppnar appen';

  @override
  String get shelfAdded => 'Nyligen tillagt';

  @override
  String get shelfAddedSub => 'Nedladdningar och filer du importerat';

  @override
  String get shelfStarter => 'Börja här';

  @override
  String get shelfStarterSub => 'Spela några så börjar AI:n lära sig direkt';

  @override
  String reasonPlays(int count) {
    return '$count lyssningar';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Gillad, senast spelad $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count lyssningar, senast $when';
  }

  @override
  String get reasonTopArtist => 'En av dina mest spelade artister';

  @override
  String reasonMore(Object artist) {
    return 'Mer $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Du återvänder hela tiden till $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Din typ av $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Mycket $tag på sistone';
  }

  @override
  String get reasonOutThisYear => 'Släppt i år';

  @override
  String get reasonReleasedRecently => 'Nyligen släppt';

  @override
  String get reasonClose => 'Nära det du har spelat';

  @override
  String reasonNear(Object artist) {
    return 'Ligger nära $artist';
  }

  @override
  String get reasonNeverPlayed => 'Aldrig spelad';

  @override
  String get reasonPlayedOnce => 'Spelad en gång';

  @override
  String get reasonPopular => 'Populärt just nu';

  @override
  String whenYearsAgo(int count) {
    return 'för $count år sedan';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'för $count månader sedan';
  }

  @override
  String whenDaysAgo(int count) {
    return 'för $count dagar sedan';
  }

  @override
  String get searchHint => 'Låtar, artister, album';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultat',
      one: '1 resultat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Senaste sökningar';

  @override
  String get searchEmptyTitle => 'Inget hittades';

  @override
  String get searchEmptyBody =>
      'Prova en annan stavning, eller bara artistens namn.';

  @override
  String get searchStartTitle => 'Hitta något att spela';

  @override
  String get searchStartBody =>
      'Sök på YouTube Music – bara låtar kommer tillbaka, aldrig videor om annat.';

  @override
  String get libPlaylists => 'Spellistor';

  @override
  String get libSongs => 'Låtar';

  @override
  String get libArtists => 'Artister';

  @override
  String get libLiked => 'Gillade';

  @override
  String get libDownloads => 'Nedladdningar';

  @override
  String get libImported => 'Importerade';

  @override
  String get libLikedSongs => 'Gillade låtar';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count låtar',
      one: '1 låt',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'Mina egna filer';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count filer',
      one: '1 fil',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Ny spellista';

  @override
  String get libMakeOne => 'Skapa en';

  @override
  String get libSortRecent => 'Nyligen tillagda';

  @override
  String get libSortTitle => 'Titel';

  @override
  String get libSortArtist => 'Artist';

  @override
  String get libSortPlays => 'Mest spelade';

  @override
  String get sheetNotForMe => 'Inget för mig';

  @override
  String get sheetNotForMeSub => 'Rekommendera aldrig detta igen';

  @override
  String get sheetBlocked => 'Blockerad – tryck för att tillåta igen';

  @override
  String get sheetBlockedSub => 'Den kan dyka upp i rekommendationer igen';

  @override
  String get sheetPlayNext => 'Spela härnäst';

  @override
  String get sheetAddToPlaylist => 'Lägg till i spellista';

  @override
  String get sheetDownloaded => 'Nedladdad';

  @override
  String get sheetRemoveFile => 'Tryck för att ta bort filen';

  @override
  String get sheetDownload => 'Ladda ner';

  @override
  String get sheetKeepOffline => 'Behåll för offline';

  @override
  String get sheetRadio => 'Starta radio';

  @override
  String get sheetRadioSub => 'En kö byggd kring den här låten';

  @override
  String get sheetQueue => 'Kö';

  @override
  String get sheetSleepTimer => 'Insomningstimer';

  @override
  String get sheetSleepOff => 'Av';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minuter';
  }

  @override
  String get sheetSleepEndOfTrack => 'Slutet av den här låten';

  @override
  String sheetSleepSet(int count) {
    return 'Musiken stannar om $count min';
  }

  @override
  String get tasteTitle => 'Din smak';

  @override
  String get tasteRetrain => 'Träna om';

  @override
  String get tasteRetraining => 'Tränar om på din historik…';

  @override
  String get tasteRetrained => 'AI:n byggde om sin modell.';

  @override
  String tasteConfidence(int percent) {
    return 'Säkerhet $percent %';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays lyssningar · $skips överhoppade · $likes gillade';
  }

  @override
  String get tasteEmptySummary => 'Spela några låtar så fylls det här i.';

  @override
  String get tasteKeepLearning => 'Fortsätt lära dig medan jag lyssnar';

  @override
  String get tasteKeepLearningSub =>
      'Stäng av för att frysa den nuvarande profilen';

  @override
  String get tasteDownloadsTitle => 'Nedladdningar som AI:n sköter';

  @override
  String get tasteDownloadsSub =>
      'Musik hamnar på enheten utan att du ber om det';

  @override
  String get tasteDownloadLikes => 'Ladda ner allt jag gillar';

  @override
  String get tasteDownloadLikesSub =>
      'Tryck på hjärtat så sparas filen för offline';

  @override
  String get tasteAiInstall => 'Låt AI:n installera musik den väljer';

  @override
  String get tasteAiInstallSub => 'Den hämtar låtar den är säker på';

  @override
  String get tasteWhatItThinks => 'Vad den tror att du gillar';

  @override
  String get tasteWhatItThinksSub =>
      'Lärt från lyssningar, överhoppningar, gillanden och repriser';

  @override
  String get tasteArtists => 'Artister den lutar sig mot';

  @override
  String get tasteWhenYouListen => 'När du lyssnar';

  @override
  String get tasteWhenYouListenSub =>
      'Lyssningar per timme – nuvarande timme väger tyngre';

  @override
  String get tasteDecades => 'Decennier';

  @override
  String get tasteTune => 'Justera rekommendationerna';

  @override
  String get tasteTuneSub => 'Gäller vid nästa uppdatering av Hem';

  @override
  String get tasteDiscovery => 'Upptäckande';

  @override
  String get tasteDiscoverySub => 'Bekant ↔ sådant du aldrig hört';

  @override
  String get tasteEnergy => 'Energi';

  @override
  String get tasteEnergySub => 'Lugn ↔ högljudd';

  @override
  String get tasteRecency => 'Aktualitet';

  @override
  String get tasteRecencySub => 'Tidlöst ↔ helt nytt';

  @override
  String get tasteNostalgia => 'Nostalgi';

  @override
  String get tasteNostalgiaSub =>
      'Hur långt tillbaka en gammal favorit räknas som bortglömd';

  @override
  String get tasteSignals => 'Signaler den får använda';

  @override
  String get tasteSignalsSub => 'Allt stannar på den här enheten';

  @override
  String get tasteUseHistory => 'Vad jag har spelat';

  @override
  String get tasteUseSkips => 'Vad jag hoppar över';

  @override
  String get tasteUseTime => 'Tid på dagen';

  @override
  String get tasteUseYouTube => 'Förslag från YouTube';

  @override
  String get tasteAlwaysMore => 'Alltid mer av';

  @override
  String get tasteNeverAgain => 'Aldrig mer';

  @override
  String get tasteAddArtist => 'Lägg till en artist';

  @override
  String get tasteMoreOfPrompt => 'Alltid mer av…';

  @override
  String get tasteNeverAgainPrompt => 'Aldrig mer…';

  @override
  String get tasteReset => 'Nollställ det den lärt sig';

  @override
  String get tasteResetSub =>
      'Din musik finns kvar; profilen börjar om från noll';

  @override
  String get trainCard => 'Träna den genom att betygsätta';

  @override
  String get trainCardSub =>
      'Svep igenom riktiga låtar. Höger för mer som detta, vänster för aldrig mer. Två minuter här slår en veckas lyssnande.';

  @override
  String get trainStart => 'Starta en träningsrunda';

  @override
  String get trainTitle => 'Träningsrunda';

  @override
  String get trainQuestion => 'Vill du ha den här på ditt Hem?';

  @override
  String get trainMoreLikeThis => 'Mer som detta';

  @override
  String get trainNeverAgain => 'Aldrig mer';

  @override
  String get trainDone => 'Rundan klar';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked behållna · $blocked blockerade. Säkerhet $before % → $after %';
  }

  @override
  String get trainBackToTaste => 'Tillbaka till din smak';

  @override
  String get trainNothingTitle => 'Inget att betygsätta än';

  @override
  String get trainNothingBody =>
      'Lägg till musik eller låt AI:n hämta kandidater först, kom sedan tillbaka.';

  @override
  String get trainLeaveTitle => 'Lämna träningsrundan?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Om du lämnar nu kastar AI:n allt från den här rundan – alla $count låtar du just betygsatt.',
      one:
          'Om du lämnar nu kastar AI:n allt från den här rundan – den 1 låt du just betygsatt.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Fortsätt träna';

  @override
  String get trainDiscard => 'Kasta och lämna';

  @override
  String get setTitle => 'Inställningar';

  @override
  String get setAppearance => 'Utseende';

  @override
  String get setTheme => 'Tema';

  @override
  String get setThemeSystem => 'Följ systemet';

  @override
  String get setThemeLight => 'Ljust';

  @override
  String get setThemeDark => 'Mörkt';

  @override
  String get setPureBlack => 'Äkta svart';

  @override
  String get setPureBlackSub => 'Sparar ström på en OLED-skärm';

  @override
  String get setAccent => 'Accentfärg';

  @override
  String get setAccentArtwork => 'Från omslaget';

  @override
  String get setAccentFixed => 'En färg jag valt';

  @override
  String get setLanguage => 'Språk';

  @override
  String get setLanguageSystem => 'Följ systemet';

  @override
  String get setAccessibility => 'Tillgänglighet';

  @override
  String get setTextSize => 'Textstorlek';

  @override
  String get setTextSizeSub => 'Ovanpå din systeminställning';

  @override
  String get setReduceMotion => 'Minska rörelse';

  @override
  String get setReduceMotionSub =>
      'Stoppar staplarna, visualiseraren, studsande scrollning, fjädrande tryck och sidövergångar';

  @override
  String get setHighContrast => 'Hög kontrast';

  @override
  String get setHighContrastSub => 'Tydligare avgränsning och synliga konturer';

  @override
  String get setBoldText => 'Fet text';

  @override
  String get setPlayback => 'Uppspelning';

  @override
  String get setAutoRadio => 'Håll musiken igång';

  @override
  String get setAutoRadioSub =>
      'När kön tar slut fortsätter en radio byggd på den sista låten';

  @override
  String get setSmartShuffle => 'Smart blandning';

  @override
  String get setSmartShuffleSub =>
      'Blandar efter smak i stället för slumpmässigt';

  @override
  String get setResume => 'Fortsätt där jag slutade';

  @override
  String get setResumeSub => 'Återställer kön när appen öppnas, pausad';

  @override
  String get setDataSaver => 'Datasparläge utanför Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Begränsar strömmar och nedladdningar till 128 kbit/s på mobildata';

  @override
  String get setHaptics => 'Haptisk återkoppling';

  @override
  String get setShowReasons => 'Visa varför något rekommenderades';

  @override
  String get setSkipSilence => 'Hoppa över tystnad';

  @override
  String get setQuality => 'Ljudkvalitet';

  @override
  String get setQualityLow => 'Låg · 64 kbit/s';

  @override
  String get setQualityNormal => 'Normal · 128 kbit/s';

  @override
  String get setQualityHigh => 'Hög · 192 kbit/s';

  @override
  String get setQualityBest => 'Bästa möjliga';

  @override
  String get setStorage => 'Nedladdningar och lagring';

  @override
  String get setWifiOnly => 'Ladda ner endast på Wi-Fi';

  @override
  String get setDailyLimit => 'Daglig gräns för AI:n';

  @override
  String setDailyLimitSub(int count) {
    return '$count låtar per dag';
  }

  @override
  String get setBudget => 'Lagring AI:n får använda';

  @override
  String setUsed(Object size) {
    return '$size används av nedladdningar';
  }

  @override
  String get setYourMusic => 'Din musik';

  @override
  String get setImport => 'Lägg till musik från den här enheten';

  @override
  String get setImportSub => 'Välj mappar eller enstaka filer';

  @override
  String get setCleanup => 'Rensa saknade filer';

  @override
  String get setCleanupSub => 'Ta bort låtar vars fil är borta';

  @override
  String setCleanupDone(int count) {
    return 'Tog bort $count saknade filer.';
  }

  @override
  String get setExport => 'Skicka min smak till en annan enhet';

  @override
  String get setExportSub =>
      'Sparar en fil med dina gillanden, lyssningar och allt AI:n lärt sig';

  @override
  String get setImportTaste => 'Läs in smak från en annan enhet';

  @override
  String get setImportTasteSub =>
      'Välj en sparad smakfil och slå ihop den – säkert att upprepa';

  @override
  String get setAbout => 'Om';

  @override
  String get setAboutBody =>
      'Musik från YouTube och dina egna filer. AI:n körs helt på den här enheten – inget lämnar den.';

  @override
  String get setSource => 'Källkod';

  @override
  String get importTitle => 'Lägg till musik';

  @override
  String get importPickFolder => 'Välj en mapp';

  @override
  String get importPickFiles => 'Välj filer';

  @override
  String importScanning(Object file) {
    return 'Skannar $file';
  }

  @override
  String importAdded(int count) {
    return '$count tillagda';
  }

  @override
  String get importDenied => 'Åtkomst nekad – kan inte läsa din musik.';

  @override
  String get importWatched => 'Mappar den bevakar';

  @override
  String get importIosHint =>
      'Öppna appen Filer, gå till På min iPhone → TuneBox och släpp musik där.';

  @override
  String get playerQueue => 'Kö';

  @override
  String get playerUpNext => 'Härnäst';

  @override
  String get playerLyrics => 'Text';

  @override
  String get playerNoLyrics => 'Ingen text till den här.';

  @override
  String get playerRepeat => 'Upprepa';

  @override
  String get playerShuffle => 'Blanda';

  @override
  String errorPlayback(Object title) {
    return 'Kunde inte spela \"$title\"';
  }

  @override
  String errorSkipping(Object title) {
    return 'Hoppar över \"$title\" – strömmen ville inte öppnas.';
  }

  @override
  String get undo => 'Ångra';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Just nu: $tags, med $artist i täten.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Just nu: $tags.';
  }

  @override
  String get setColour => 'Färg';

  @override
  String get setColourSub => 'Hela appen följer detta';

  @override
  String get setCoverArt => 'Omslag';

  @override
  String get setMyColour => 'Min färg';

  @override
  String get setCoverArtSub => 'Varje låt färgar om appen efter sitt omslag.';

  @override
  String get setMyColourSub => 'En färg, överallt, hela tiden.';

  @override
  String get setPickColour => 'Välj valfri färg';

  @override
  String get setWifiOnlyTitle => 'Ladda ner endast på Wi-Fi';

  @override
  String get setDownloadLikes => 'Ladda ner allt jag gillar';

  @override
  String get setDownloadLikesSub => 'Hjärtknappen sparar också filen';

  @override
  String get setAiInstall => 'Låt AI:n installera musik den väljer';

  @override
  String get setSkipSilenceSub =>
      'Endast Android. Kan klippa tysta intron, uttoningar och mjuka partier – lämna av om musiken hackar';

  @override
  String get setStorageUsed => 'Lagring som används av nedladdningar';

  @override
  String get setLibrary => 'Bibliotek';

  @override
  String get setUpdates => 'Uppdateringar';

  @override
  String get setAutoUpdate => 'Sök efter uppdateringar automatiskt';

  @override
  String get setAutoUpdateSub =>
      'Med några timmars mellanrum, i det tysta, och laddar ner på Wi-Fi. Installationen frågar dig fortfarande.';

  @override
  String setUpdateReady(Object version) {
    return 'Uppdatering till $version är klar';
  }

  @override
  String get setUpdateReadySub => 'Nedladdad – tryck för att installera';

  @override
  String get setUpdateAvailableSub =>
      'Hämta den från utgivningssidan – tryck för att kopiera länken';

  @override
  String get setLinkCopied => 'Länk kopierad';

  @override
  String get setCheckNow => 'Sök nu';

  @override
  String get setUpToDate => 'TuneBox är uppdaterad';

  @override
  String get setChecking => 'Letar efter en nyare version…';
}
