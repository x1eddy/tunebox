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
  String get setShare => 'Share TuneBox';

  @override
  String get setShareBody => 'Send the link to a friend';

  @override
  String get setShareText =>
      'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev';

  @override
  String get setShareCopied => 'Link copied';

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

  @override
  String get blendTitle => 'Blend';

  @override
  String get blendEntry => 'One queue from two tastes';

  @override
  String get blendIntro =>
      'For a party, a car or a shared speaker. TuneBox finds what you both like and takes turns fairly. The other taste is only read, never added to yours.';

  @override
  String get blendWith => 'Blend with';

  @override
  String get blendProfile => 'A profile on this device';

  @override
  String get blendPaste => 'A friend\'s taste code';

  @override
  String get blendPasteSub =>
      'Copy it first (Move your taste → As text), then tap here';

  @override
  String get blendFile => 'A taste file';

  @override
  String get blendFriend => 'Your friend';

  @override
  String get blendBad => 'That is not a TuneBox taste';

  @override
  String blendYouAnd(String name) {
    return 'You and $name';
  }

  @override
  String get blendHigh => 'Practically the same ears.';

  @override
  String get blendMid => 'Plenty in common, and some to discover.';

  @override
  String get blendLow =>
      'Very different tastes. This one will be an adventure.';

  @override
  String get blendPlay => 'Play the blend';

  @override
  String get blendOther => 'Blend with someone else';

  @override
  String get blendLearn => 'Let the blend teach TuneBox';

  @override
  String get blendLearnSub =>
      'Off: what plays in a blend does not change your taste';

  @override
  String get blendBothArtists => 'Artists you both have';

  @override
  String get blendQueue => 'The queue';

  @override
  String get blendBoth => 'you both';

  @override
  String get blendYours => 'yours';

  @override
  String get syncTitle => 'Synced devices';

  @override
  String get syncHeadline => 'One taste, on all your devices';

  @override
  String get syncIntro =>
      'Pair your phone and computer once. After that they swap what they learned by themselves, about every 45 minutes and whenever you open the app, while both are on the same Wi-Fi. No account and no server.';

  @override
  String get syncDevices => 'Paired devices';

  @override
  String get syncNow => 'Sync now';

  @override
  String get syncNone => 'Nothing paired yet';

  @override
  String get syncNoneSub =>
      'Show a code on one device and type it on the other.';

  @override
  String syncLast(String when) {
    return 'Last synced $when';
  }

  @override
  String get syncNever => 'not yet';

  @override
  String get syncJustNow => 'just now';

  @override
  String syncMinutesAgo(int n) {
    return '$n min ago';
  }

  @override
  String syncHoursAgo(int n) {
    return '$n h ago';
  }

  @override
  String get syncForget => 'Unpair';

  @override
  String syncForgetQ(String name) {
    return 'Unpair $name?';
  }

  @override
  String get syncForgetBody =>
      'Nothing is deleted. The two devices just stop swapping taste.';

  @override
  String get syncAdd => 'Add a device';

  @override
  String get syncShowCode => 'Show a pairing code';

  @override
  String get syncShowCodeSub => 'On this device';

  @override
  String get syncEnterCode => 'Type a pairing code';

  @override
  String get syncEnterCodeSub => 'Shown on your other device';

  @override
  String get syncPrivate => 'Stays on your network';

  @override
  String get syncPrivateSub =>
      'Devices talk directly and every transfer is encrypted with a key only they know.';

  @override
  String get syncTypeThis => 'Type this code on your other device';

  @override
  String get syncWaiting => 'Waiting for it… keep this open.';

  @override
  String syncAddress(String address) {
    return 'If it is not found, type this address there: $address';
  }

  @override
  String get syncCodeExpired => 'That code has expired.';

  @override
  String get syncNewCode => 'New code';

  @override
  String syncPaired(String name) {
    return 'Paired with $name';
  }

  @override
  String get syncPair => 'Pair';

  @override
  String get syncNotFound => 'Not found? Type its address';

  @override
  String get syncAddressLabel => 'Address (e.g. 192.168.1.20)';

  @override
  String syncDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Synced with $count devices',
      one: 'Synced with 1 device',
    );
    return '$_temp0';
  }

  @override
  String get syncNoneReached =>
      'Could not reach your other devices. Are they on and on the same Wi-Fi?';

  @override
  String get syncNoDevice =>
      'No device with an open code was found on this Wi-Fi';

  @override
  String get syncWrongCode => 'That code is not right';

  @override
  String get syncNotPaired => 'The other device no longer knows this one';

  @override
  String get syncUnreachable => 'Not reachable right now';

  @override
  String get syncSettingsOff =>
      'Keep your taste the same on phone and computer';

  @override
  String syncSettingsOn(String names) {
    return 'Syncing with $names';
  }

  @override
  String get stMirror => 'Mirror';

  @override
  String get stLine2 => 'Curve';

  @override
  String get stDots => 'Dots';

  @override
  String get stLive => 'Live visualiser';

  @override
  String get stLiveSub =>
      'Moves with the real music. Android asks for the microphone permission for this, but only TuneBox\'s own sound is read, never the microphone.';

  @override
  String get stLiveDenied =>
      'Without the permission the visualiser keeps its own animation.';
}
