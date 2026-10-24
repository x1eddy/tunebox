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
