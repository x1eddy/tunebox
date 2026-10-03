// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class LEt extends L {
  LEt([String locale = 'et']) : super(locale);

  @override
  String get navHome => 'Avaleht';

  @override
  String get navExplore => 'Avasta';

  @override
  String get navLibrary => 'Kogu';

  @override
  String get navTaste => 'Sinu maitse';

  @override
  String get actionDone => 'Valmis';

  @override
  String get actionCancel => 'Tühista';

  @override
  String get actionCreate => 'Loo';

  @override
  String get actionPlay => 'Esita';

  @override
  String get actionShuffle => 'Juhuesitus';

  @override
  String get actionPlayAll => 'Esita kõik';

  @override
  String get actionAdd => 'Lisa';

  @override
  String get actionRemove => 'Eemalda';

  @override
  String get actionName => 'Nimi';

  @override
  String get greetingNight => 'Alles üleval?';

  @override
  String get greetingMorning => 'Tere hommikust';

  @override
  String get greetingAfternoon => 'Tere päevast';

  @override
  String get greetingEvening => 'Tere õhtust';

  @override
  String get homeBuilding => 'Tehisintellekt koostab sinu riiuleid…';

  @override
  String get homeOffline => 'Võrguühenduseta – näidatakse seda, mis on seadmes';

  @override
  String get homeNothingYet => 'Siin pole veel midagi näidata';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count riiulit, just värskendatud',
      one: '1 riiul, just värskendatud',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Koosta riiulid uuesti';

  @override
  String get homeAddMusic => 'Lisa muusikat sellest seadmest';

  @override
  String get homeQuickPicks => 'Kiirvalikud';

  @override
  String get homeQuickPicksSub => 'Otse tagasi selle juurde, mida kuulasid';

  @override
  String get homeEmptyTitle => 'Sinu kogu on tühi';

  @override
  String get homeEmptyBody =>
      'Otsi midagi või lisa muusika, mis on juba selles seadmes. Tehisintellekt hakkab õppima juba sinu esimesest esitusest.';

  @override
  String get homeAddMyMusic => 'Lisa minu muusika';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTube\'iga ei õnnestunud ühendust saada: $error';
  }

  @override
  String get moodFocus => 'Keskendumine';

  @override
  String get moodWorkout => 'Trenn';

  @override
  String get moodChill => 'Lõõgastus';

  @override
  String get moodCommute => 'Teel';

  @override
  String get moodParty => 'Pidu';

  @override
  String moodBuilding(Object mood) {
    return 'Koostan miksi: $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Ei õnnestunud: $error';
  }

  @override
  String get shelfRepeat => 'Kordusel';

  @override
  String get shelfRepeatSub => 'Sinu viimased kaks nädalat';

  @override
  String get shelfForgotten => 'Vanad unustatud hitid, mis sulle meeldisid';

  @override
  String get shelfForgottenSub => 'Kunagi armastatud, aga mõnda aega puutumata';

  @override
  String get shelfNew => 'Uus';

  @override
  String get shelfNewSub =>
      'Värsked lood, mis tehisintellekti arvates sulle sobivad';

  @override
  String shelfBecause(Object artist) {
    return 'Kuna kuulasid: $artist';
  }

  @override
  String get shelfBecauseSub => 'Sama nurgake sinu maitsest';

  @override
  String get shelfDeep => 'Vaevu kuulatud';

  @override
  String get shelfDeepSub => 'Sinu kogus, aga peaaegu kunagi esitamata';

  @override
  String get shelfMix => 'Sinu miks';

  @override
  String get shelfMixSub => 'Koostatakse uuesti iga kord, kui rakenduse avad';

  @override
  String get shelfAdded => 'Hiljuti lisatud';

  @override
  String get shelfAddedSub => 'Allalaadimised ja imporditud failid';

  @override
  String get shelfStarter => 'Alusta siit';

  @override
  String get shelfStarterSub =>
      'Kuula mõnda lugu ja tehisintellekt hakkab kohe õppima';

  @override
  String reasonPlays(int count) {
    return '$count esitust';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Meeldib, viimati esitatud $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count esitust, viimati $when';
  }

  @override
  String get reasonTopArtist => 'Üks sinu enim kuulatud esitajaid';

  @override
  String reasonMore(Object artist) {
    return 'Rohkem: $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Naased pidevalt esitaja $artist juurde';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Sinu stiilis: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Viimasel ajal palju: $tag';
  }

  @override
  String get reasonOutThisYear => 'Ilmus sel aastal';

  @override
  String get reasonReleasedRecently => 'Ilmus hiljuti';

  @override
  String get reasonClose => 'Sarnane sellele, mida oled kuulanud';

  @override
  String reasonNear(Object artist) {
    return 'Sarnane esitajale $artist';
  }

  @override
  String get reasonNeverPlayed => 'Pole kunagi esitatud';

  @override
  String get reasonPlayedOnce => 'Esitatud üks kord';

  @override
  String get reasonPopular => 'Praegu populaarne';

  @override
  String whenYearsAgo(int count) {
    return '$count a tagasi';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count kuud tagasi';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count päeva tagasi';
  }

  @override
  String get searchHint => 'Lood, esitajad, albumid';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tulemust',
      one: '1 tulemus',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Hiljutised otsingud';

  @override
  String get searchEmptyTitle => 'Midagi ei leitud';

  @override
  String get searchEmptyBody =>
      'Proovi teistsugust kirjapilti või ainult esitaja nime.';

  @override
  String get searchStartTitle => 'Leia midagi esitamiseks';

  @override
  String get searchStartBody =>
      'Otsi YouTube Musicust – tulemuseks on ainult lood, mitte kunagi muude asjade videod.';

  @override
  String get libPlaylists => 'Esitusloendid';

  @override
  String get libSongs => 'Lood';

  @override
  String get libArtists => 'Esitajad';

  @override
  String get libLiked => 'Meeldinud';

  @override
  String get libDownloads => 'Allalaadimised';

  @override
  String get libImported => 'Imporditud';

  @override
  String get libLikedSongs => 'Meeldinud lood';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lugu',
      one: '1 lugu',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count võrguühenduseta';
  }

  @override
  String get libMyFiles => 'Minu enda failid';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count faili',
      one: '1 fail',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Uus esitusloend';

  @override
  String get libMakeOne => 'Loo üks';

  @override
  String get libSortRecent => 'Hiljuti lisatud';

  @override
  String get libSortTitle => 'Pealkiri';

  @override
  String get libSortArtist => 'Esitaja';

  @override
  String get libSortPlays => 'Enim esitatud';

  @override
  String get sheetNotForMe => 'Pole minu jaoks';

  @override
  String get sheetNotForMeSub => 'Ära soovita seda enam kunagi';

  @override
  String get sheetBlocked => 'Blokeeritud – puuduta, et uuesti lubada';

  @override
  String get sheetBlockedSub => 'See võib taas soovitustes ilmuda';

  @override
  String get sheetPlayNext => 'Esita järgmisena';

  @override
  String get sheetAddToPlaylist => 'Lisa esitusloendisse';

  @override
  String get sheetDownloaded => 'Alla laaditud';

  @override
  String get sheetRemoveFile => 'Puuduta faili eemaldamiseks';

  @override
  String get sheetDownload => 'Laadi alla';

  @override
  String get sheetKeepOffline => 'Hoia võrguühenduseta kasutamiseks';

  @override
  String get sheetRadio => 'Käivita raadio';

  @override
  String get sheetRadioSub => 'Selle loo põhjal koostatud järjekord';

  @override
  String get sheetQueue => 'Järjekord';

  @override
  String get sheetSleepTimer => 'Uinumistaimer';

  @override
  String get sheetSleepOff => 'Väljas';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minutit';
  }

  @override
  String get sheetSleepEndOfTrack => 'Selle loo lõpp';

  @override
  String sheetSleepSet(int count) {
    return 'Muusika peatub $count min pärast';
  }

  @override
  String get tasteTitle => 'Sinu maitse';

  @override
  String get tasteRetrain => 'Õpeta uuesti';

  @override
  String get tasteRetraining => 'Õpin uuesti sinu ajaloo põhjal…';

  @override
  String get tasteRetrained => 'Tehisintellekt koostas oma mudeli uuesti.';

  @override
  String tasteConfidence(int percent) {
    return 'Kindlus $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays esitust · $skips vahelejätmist · $likes meeldimist';
  }

  @override
  String get tasteEmptySummary => 'Kuula mõnda lugu ja siia ilmub sisu.';

  @override
  String get tasteKeepLearning => 'Õpi, kui ma kuulan';

  @override
  String get tasteKeepLearningSub =>
      'Lülita välja, et praegune profiil külmutada';

  @override
  String get tasteDownloadsTitle =>
      'Allalaadimised, mida tehisintellekt haldab';

  @override
  String get tasteDownloadsSub =>
      'Muusika jõuab seadmesse ilma, et sa seda küsiksid';

  @override
  String get tasteDownloadLikes => 'Laadi alla kõik, mis mulle meeldib';

  @override
  String get tasteDownloadLikesSub =>
      'Vajuta südamele ja fail salvestatakse võrguühenduseta kasutamiseks';

  @override
  String get tasteAiInstall =>
      'Lase tehisintellektil paigaldada valitud muusikat';

  @override
  String get tasteAiInstallSub => 'See toob lood, milles ta on kindel';

  @override
  String get tasteWhatItThinks => 'Mis talle sinu arvates meeldib';

  @override
  String get tasteWhatItThinksSub =>
      'Õpitud esitustest, vahelejätmistest, meeldimistest ja kordustest';

  @override
  String get tasteArtists => 'Esitajad, millele ta toetub';

  @override
  String get tasteWhenYouListen => 'Millal sa kuulad';

  @override
  String get tasteWhenYouListenSub =>
      'Esitusi tunnis – praegune tund saab suurema kaalu';

  @override
  String get tasteDecades => 'Kümnendid';

  @override
  String get tasteTune => 'Häälesta soovitusi';

  @override
  String get tasteTuneSub => 'Jõustub avalehe järgmisel värskendamisel';

  @override
  String get tasteDiscovery => 'Avastamine';

  @override
  String get tasteDiscoverySub => 'Tuttav ↔ asjad, mida pole kunagi kuulnud';

  @override
  String get tasteEnergy => 'Energia';

  @override
  String get tasteEnergySub => 'Rahulik ↔ vali';

  @override
  String get tasteRecency => 'Värskus';

  @override
  String get tasteRecencySub => 'Ajatu ↔ päris uus';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Kui kaugele tagasi loetakse vana lemmik unustatuks';

  @override
  String get tasteSignals => 'Signaalid, mida see võib kasutada';

  @override
  String get tasteSignalsSub => 'Kõik jääb sellesse seadmesse';

  @override
  String get tasteUseHistory => 'Mida olen kuulanud';

  @override
  String get tasteUseSkips => 'Mida jätan vahele';

  @override
  String get tasteUseTime => 'Kellaaeg';

  @override
  String get tasteUseYouTube => 'YouTube\'i soovitused';

  @override
  String get tasteAlwaysMore => 'Alati rohkem';

  @override
  String get tasteNeverAgain => 'Enam mitte kunagi';

  @override
  String get tasteAddArtist => 'Lisa esitaja';

  @override
  String get tasteMoreOfPrompt => 'Alati rohkem…';

  @override
  String get tasteNeverAgainPrompt => 'Enam mitte kunagi…';

  @override
  String get tasteReset => 'Lähtesta õpitu';

  @override
  String get tasteResetSub => 'Sinu muusika jääb; profiil algab nullist';

  @override
  String get trainCard => 'Õpeta hinnates';

  @override
  String get trainCardSub =>
      'Libista läbi päris lugusid. Paremale rohkem sellist, vasakule enam mitte kunagi. Kaks minutit siin on väärt nädalat kuulamist.';

  @override
  String get trainStart => 'Alusta treeningringi';

  @override
  String get trainTitle => 'Treeningring';

  @override
  String get trainQuestion => 'Kas tahaksid seda oma avalehele?';

  @override
  String get trainMoreLikeThis => 'Rohkem sellist';

  @override
  String get trainNeverAgain => 'Enam mitte kunagi';

  @override
  String get trainDone => 'Ring on läbi';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked jäeti alles · $blocked blokeeriti. Kindlus $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Tagasi sinu maitse juurde';

  @override
  String get trainNothingTitle => 'Hinnata pole veel midagi';

  @override
  String get trainNothingBody =>
      'Lisa muusikat või lase tehisintellektil kõigepealt kandidaate tuua ning tule siis tagasi.';

  @override
  String get trainLeaveTitle => 'Lahkud treeningringist?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Kui lahkud nüüd, kaotab tehisintellekt kõik selle ringi tulemused – kõik $count lugu, mida just hindasid.',
      one:
          'Kui lahkud nüüd, kaotab tehisintellekt kõik selle ringi tulemused – 1 lugu, mida just hindasid.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Jätka treenimist';

  @override
  String get trainDiscard => 'Loobu ja lahku';

  @override
  String get setTitle => 'Seaded';

  @override
  String get setAppearance => 'Välimus';

  @override
  String get setTheme => 'Teema';

  @override
  String get setThemeSystem => 'Järgi süsteemi';

  @override
  String get setThemeLight => 'Hele';

  @override
  String get setThemeDark => 'Tume';

  @override
  String get setPureBlack => 'Puhas must';

  @override
  String get setPureBlackSub => 'Säästab OLED-ekraanil energiat';

  @override
  String get setAccent => 'Rõhuvärv';

  @override
  String get setAccentArtwork => 'Albumi kaanelt';

  @override
  String get setAccentFixed => 'Üks minu valitud värv';

  @override
  String get setLanguage => 'Keel';

  @override
  String get setLanguageSystem => 'Järgi süsteemi';

  @override
  String get setAccessibility => 'Juurdepääsetavus';

  @override
  String get setTextSize => 'Teksti suurus';

  @override
  String get setTextSizeSub => 'Lisaks süsteemi seadele';

  @override
  String get setReduceMotion => 'Vähenda liikumist';

  @override
  String get setReduceMotionSub =>
      'Peatab ribad, visualiseerija, põrkava kerimise, vedruvad puudutused ja lehtede üleminekud';

  @override
  String get setHighContrast => 'Kõrge kontrast';

  @override
  String get setHighContrastSub => 'Tugevam eraldatus ja nähtavad piirjooned';

  @override
  String get setBoldText => 'Rasvane tekst';

  @override
  String get setPlayback => 'Taasesitus';

  @override
  String get setAutoRadio => 'Hoia muusika käimas';

  @override
  String get setAutoRadioSub =>
      'Kui järjekord lõpeb, jätkatakse viimase loo põhjal koostatud raadioga';

  @override
  String get setSmartShuffle => 'Nutikas juhuesitus';

  @override
  String get setSmartShuffleSub => 'Segab maitse järgi, mitte juhuslikult';

  @override
  String get setResume => 'Jätka sealt, kus pooleli jäi';

  @override
  String get setResumeSub => 'Taastab järjekorra rakenduse avamisel, peatatuna';

  @override
  String get setDataSaver => 'Andmesääst väljaspool Wi-Fi-t';

  @override
  String get setDataSaverSub =>
      'Piirab voogedastuse ja allalaadimised mobiilse andmeside korral 128 kbit/s peale';

  @override
  String get setHaptics => 'Haptiline tagasiside';

  @override
  String get setShowReasons => 'Näita, miks midagi soovitati';

  @override
  String get setSkipSilence => 'Jäta vaikus vahele';

  @override
  String get setQuality => 'Heli kvaliteet';

  @override
  String get setQualityLow => 'Madal · 64 kbps';

  @override
  String get setQualityNormal => 'Tavaline · 128 kbps';

  @override
  String get setQualityHigh => 'Kõrge · 192 kbps';

  @override
  String get setQualityBest => 'Parim saadaolev';

  @override
  String get setStorage => 'Allalaadimised ja talletus';

  @override
  String get setWifiOnly => 'Laadi alla ainult Wi-Fi kaudu';

  @override
  String get setDailyLimit => 'Tehisintellekti päevalimiit';

  @override
  String setDailyLimitSub(int count) {
    return '$count lugu päevas';
  }

  @override
  String get setBudget => 'Talletusruum, mida tehisintellekt tohib kasutada';

  @override
  String setUsed(Object size) {
    return '$size kasutusel allalaadimistega';
  }

  @override
  String get setYourMusic => 'Sinu muusika';

  @override
  String get setImport => 'Lisa muusikat sellest seadmest';

  @override
  String get setImportSub => 'Vali kaustu või üksikuid faile';

  @override
  String get setCleanup => 'Puhasta puuduvad failid';

  @override
  String get setCleanupSub => 'Eemalda lood, mille fail on kadunud';

  @override
  String setCleanupDone(int count) {
    return 'Eemaldati $count puuduvat faili.';
  }

  @override
  String get setExport => 'Saada minu maitse teise seadmesse';

  @override
  String get setExportSub =>
      'Salvestab faili sinu meeldimiste, esituste ja kõigega, mida tehisintellekt õppis';

  @override
  String get setImportTaste => 'Laadi maitse teisest seadmest';

  @override
  String get setImportTasteSub =>
      'Vali salvestatud maitsefail ja liida see – turvaline korrata';

  @override
  String get setAbout => 'Teave';

  @override
  String get setAboutBody =>
      'Muusika YouTube\'ist ja sinu enda failidest. Tehisintellekt töötab täielikult selles seadmes – midagi ei lahku sellest.';

  @override
  String get setSource => 'Lähtekood';

  @override
  String get importTitle => 'Lisa muusikat';

  @override
  String get importPickFolder => 'Vali kaust';

  @override
  String get importPickFiles => 'Vali failid';

  @override
  String importScanning(Object file) {
    return 'Skannin: $file';
  }

  @override
  String importAdded(int count) {
    return '$count lisatud';
  }

  @override
  String get importDenied => 'Luba keelati – sinu muusikat ei saa lugeda.';

  @override
  String get importWatched => 'Jälgitavad kaustad';

  @override
  String get importIosHint =>
      'Ava rakendus Failid, mine kohta iPhone\'is → TuneBox ja tõsta muusika sinna.';

  @override
  String get playerQueue => 'Järjekord';

  @override
  String get playerUpNext => 'Järgmisena';

  @override
  String get playerLyrics => 'Sõnad';

  @override
  String get playerNoLyrics => 'Sellel lool pole sõnu.';

  @override
  String get playerRepeat => 'Kordus';

  @override
  String get playerShuffle => 'Juhuesitus';

  @override
  String errorPlayback(Object title) {
    return 'Lugu \"$title\" ei õnnestunud esitada';
  }

  @override
  String errorSkipping(Object title) {
    return 'Jätan loo \"$title\" vahele – voog ei avanenud.';
  }

  @override
  String get undo => 'Võta tagasi';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Praegu: $tags, eesotsas $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Praegu: $tags.';
  }

  @override
  String get setColour => 'Värv';

  @override
  String get setColourSub => 'Kogu rakendus järgib seda';

  @override
  String get setCoverArt => 'Albumi kaas';

  @override
  String get setMyColour => 'Minu värv';

  @override
  String get setCoverArtSub => 'Iga lugu toonib rakenduse oma kaane järgi.';

  @override
  String get setMyColourSub => 'Üks värv, kõikjal, kogu aeg.';

  @override
  String get setPickColour => 'Vali suvaline värv';

  @override
  String get setWifiOnlyTitle => 'Laadi alla ainult Wi-Fi kaudu';

  @override
  String get setDownloadLikes => 'Laadi alla kõik, mis mulle meeldib';

  @override
  String get setDownloadLikesSub => 'Südamenupp salvestab ka faili';

  @override
  String get setAiInstall =>
      'Lase tehisintellektil paigaldada valitud muusikat';

  @override
  String get setSkipSilenceSub =>
      'Ainult Androidis. Võib lõigata ära vaiksed sissejuhatused, hajumised ja pehmed osad – jäta välja, kui muusika hüppab';

  @override
  String get setStorageUsed => 'Allalaadimistega kasutatud talletus';

  @override
  String get setLibrary => 'Kogu';

  @override
  String get setUpdates => 'Uuendused';

  @override
  String get setAutoUpdate => 'Kontrolli uuendusi ise';

  @override
  String get setAutoUpdateSub =>
      'Iga paari tunni tagant, vaikselt, ja laeb alla Wi-Fi kaudu. Paigaldamiseks küsitakse siiski luba.';

  @override
  String setUpdateReady(Object version) {
    return 'Uuendus versioonile $version on valmis';
  }

  @override
  String get setUpdateReadySub => 'Alla laaditud – puuduta paigaldamiseks';

  @override
  String get setUpdateAvailableSub =>
      'Hangi see väljalaskelehelt – puuduta lingi kopeerimiseks';

  @override
  String get setLinkCopied => 'Link kopeeritud';

  @override
  String get setCheckNow => 'Kontrolli kohe';

  @override
  String get setUpToDate => 'TuneBox on ajakohane';

  @override
  String get setChecking => 'Otsin uuemat versiooni…';
}
