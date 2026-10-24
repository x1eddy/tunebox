// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class LFi extends L {
  LFi([String locale = 'fi']) : super(locale);

  @override
  String get navHome => 'Koti';

  @override
  String get navExplore => 'Selaa';

  @override
  String get navLibrary => 'Kirjasto';

  @override
  String get navTaste => 'Makusi';

  @override
  String get actionDone => 'Valmis';

  @override
  String get actionCancel => 'Peruuta';

  @override
  String get actionCreate => 'Luo';

  @override
  String get actionPlay => 'Toista';

  @override
  String get actionShuffle => 'Sekoita';

  @override
  String get actionPlayAll => 'Toista kaikki';

  @override
  String get actionAdd => 'Lisää';

  @override
  String get actionRemove => 'Poista';

  @override
  String get actionName => 'Nimi';

  @override
  String get greetingNight => 'Vielä hereillä?';

  @override
  String get greetingMorning => 'Hyvää huomenta';

  @override
  String get greetingAfternoon => 'Hyvää päivää';

  @override
  String get greetingEvening => 'Hyvää iltaa';

  @override
  String get homeBuilding => 'Tekoäly rakentaa hyllyjäsi…';

  @override
  String get homeOffline => 'Ei yhteyttä – näytetään laitteella oleva';

  @override
  String get homeNothingYet => 'Ei vielä mitään näytettävää';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hyllyä, päivitetty juuri nyt',
      one: '1 hylly, päivitetty juuri nyt',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Rakenna hyllyt uudelleen';

  @override
  String get homeAddMusic => 'Lisää musiikkia tältä laitteelta';

  @override
  String get homeQuickPicks => 'Pikavalinnat';

  @override
  String get homeQuickPicksSub => 'Suoraan takaisin siihen, mitä kuuntelit';

  @override
  String get homeEmptyTitle => 'Kirjastosi on tyhjä';

  @override
  String get homeEmptyBody =>
      'Hae jotain tai lisää laitteella jo oleva musiikki. Tekoäly alkaa oppia heti ensimmäisestä toistosta.';

  @override
  String get homeAddMyMusic => 'Lisää musiikkini';

  @override
  String homeCouldNotReach(Object error) {
    return 'YouTubeen ei saatu yhteyttä: $error';
  }

  @override
  String get moodFocus => 'Keskittyminen';

  @override
  String get moodWorkout => 'Treeni';

  @override
  String get moodChill => 'Rentoutuminen';

  @override
  String get moodCommute => 'Työmatka';

  @override
  String get moodParty => 'Bileet';

  @override
  String moodBuilding(Object mood) {
    return 'Rakennetaan $mood-miksiä…';
  }

  @override
  String moodFailed(Object error) {
    return 'Ei onnistunut: $error';
  }

  @override
  String get shelfRepeat => 'Toistolla';

  @override
  String get shelfRepeatSub => 'Kaksi viimeistä viikkoasi';

  @override
  String get shelfForgotten => 'Unohtuneet vanhat suosikit';

  @override
  String get shelfForgottenSub => 'Joskus rakastettuja, pitkään koskemattomia';

  @override
  String get shelfNew => 'Uutta';

  @override
  String get shelfNewSub =>
      'Tuoreita kappaleita, jotka tekoäly arvelee sinulle sopiviksi';

  @override
  String shelfBecause(Object artist) {
    return 'Koska kuuntelit artistia $artist';
  }

  @override
  String get shelfBecauseSub => 'Samaa makusi kulmaa';

  @override
  String get shelfDeep => 'Lähes koskemattomat';

  @override
  String get shelfDeepSub => 'Kirjastossasi, mutta tuskin koskaan kuunneltu';

  @override
  String get shelfMix => 'Sinun miksisi';

  @override
  String get shelfMixSub => 'Rakentuu uudelleen aina kun avaat sovelluksen';

  @override
  String get shelfAdded => 'Viimeksi lisätyt';

  @override
  String get shelfAddedSub => 'Lataukset ja tuomasi tiedostot';

  @override
  String get shelfStarter => 'Aloita tästä';

  @override
  String get shelfStarterSub =>
      'Kuuntele muutama, niin tekoäly alkaa heti oppia';

  @override
  String reasonPlays(int count) {
    return '$count toistoa';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Tykätty, viimeksi toistettu $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count toistoa, viimeksi $when';
  }

  @override
  String get reasonTopArtist => 'Yksi kuunnelluimmista artisteistasi';

  @override
  String reasonMore(Object artist) {
    return 'Lisää artistia $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Palaat yhä artistin $artist pariin';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Sinun tyyliäsi: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Viime aikoina paljon: $tag';
  }

  @override
  String get reasonOutThisYear => 'Julkaistu tänä vuonna';

  @override
  String get reasonReleasedRecently => 'Julkaistu äskettäin';

  @override
  String get reasonClose => 'Lähellä sitä, mitä olet kuunnellut';

  @override
  String reasonNear(Object artist) {
    return 'Lähellä artistia $artist';
  }

  @override
  String get reasonNeverPlayed => 'Ei koskaan toistettu';

  @override
  String get reasonPlayedOnce => 'Toistettu kerran';

  @override
  String get reasonPopular => 'Suosittua juuri nyt';

  @override
  String whenYearsAgo(int count) {
    return '$count v sitten';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count kk sitten';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count pv sitten';
  }

  @override
  String get searchHint => 'Kappaleet, artistit, albumit';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tulosta',
      one: '1 tulos',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Viimeisimmät haut';

  @override
  String get searchEmptyTitle => 'Mitään ei löytynyt';

  @override
  String get searchEmptyBody =>
      'Kokeile toista kirjoitusasua tai pelkkää artistin nimeä.';

  @override
  String get searchStartTitle => 'Etsi jotain kuunneltavaa';

  @override
  String get searchStartBody =>
      'Hae YouTube Musicista – vain kappaleita, ei koskaan muita videoita.';

  @override
  String get libPlaylists => 'Soittolistat';

  @override
  String get libSongs => 'Kappaleet';

  @override
  String get libArtists => 'Artistit';

  @override
  String get libLiked => 'Tykätyt';

  @override
  String get libDownloads => 'Lataukset';

  @override
  String get libImported => 'Tuodut';

  @override
  String get libLikedSongs => 'Tykätyt kappaleet';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kappaletta',
      one: '1 kappale',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline-tilassa';
  }

  @override
  String get libMyFiles => 'Omat tiedostoni';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tiedostoa',
      one: '1 tiedosto',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Uusi soittolista';

  @override
  String get libMakeOne => 'Luo yksi';

  @override
  String get libSortRecent => 'Viimeksi lisätyt';

  @override
  String get libSortTitle => 'Nimi';

  @override
  String get libSortArtist => 'Artisti';

  @override
  String get libSortPlays => 'Eniten toistetut';

  @override
  String get sheetNotForMe => 'Ei minulle';

  @override
  String get sheetNotForMeSub => 'Älä suosittele tätä enää koskaan';

  @override
  String get sheetBlocked => 'Estetty – napauta sallimiseksi';

  @override
  String get sheetBlockedSub => 'Se voi taas näkyä suosituksissa';

  @override
  String get sheetPlayNext => 'Toista seuraavaksi';

  @override
  String get sheetAddToPlaylist => 'Lisää soittolistaan';

  @override
  String get sheetDownloaded => 'Ladattu';

  @override
  String get sheetRemoveFile => 'Napauta poistaaksesi tiedoston';

  @override
  String get sheetDownload => 'Lataa';

  @override
  String get sheetKeepOffline => 'Säilytä offline-käyttöön';

  @override
  String get sheetRadio => 'Aloita radio';

  @override
  String get sheetRadioSub => 'Jono, joka rakentuu tämän kappaleen ympärille';

  @override
  String get sheetQueue => 'Jono';

  @override
  String get sheetSleepTimer => 'Uniajastin';

  @override
  String get sheetSleepOff => 'Pois';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minuuttia';
  }

  @override
  String get sheetSleepEndOfTrack => 'Tämän kappaleen loppu';

  @override
  String sheetSleepSet(int count) {
    return 'Musiikki pysähtyy $count min kuluttua';
  }

  @override
  String get tasteTitle => 'Makusi';

  @override
  String get tasteRetrain => 'Opeta uudelleen';

  @override
  String get tasteRetraining => 'Opetetaan uudelleen historiasi pohjalta…';

  @override
  String get tasteRetrained => 'Tekoäly rakensi mallinsa uudelleen.';

  @override
  String tasteConfidence(int percent) {
    return 'Varmuus $percent %';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays toistoa · $skips ohitusta · $likes tykkäystä';
  }

  @override
  String get tasteEmptySummary =>
      'Kuuntele muutama kappale, niin tämä täyttyy.';

  @override
  String get tasteKeepLearning => 'Opi kuunnellessani';

  @override
  String get tasteKeepLearningSub =>
      'Poista käytöstä jäädyttääksesi nykyisen profiilin';

  @override
  String get tasteDownloadsTitle => 'Tekoälyn hoitamat lataukset';

  @override
  String get tasteDownloadsSub =>
      'Musiikkia ilmestyy laitteelle ilman pyyntöäsi';

  @override
  String get tasteDownloadLikes => 'Lataa kaikki, mistä tykkään';

  @override
  String get tasteDownloadLikesSub =>
      'Napauta sydäntä, niin tiedosto tallentuu offline-käyttöön';

  @override
  String get tasteAiInstall => 'Anna tekoälyn asentaa valitsemaansa musiikkia';

  @override
  String get tasteAiInstallSub => 'Se hakee kappaleet, joista se on varma';

  @override
  String get tasteWhatItThinks => 'Mistä se luulee sinun pitävän';

  @override
  String get tasteWhatItThinksSub =>
      'Opittu toistoista, ohituksista, tykkäyksistä ja uudelleenkuuntelusta';

  @override
  String get tasteArtists => 'Artistit, joihin se nojaa';

  @override
  String get tasteWhenYouListen => 'Milloin kuuntelet';

  @override
  String get tasteWhenYouListenSub =>
      'Toistot tunnittain – nykyinen tunti painottuu';

  @override
  String get tasteDecades => 'Vuosikymmenet';

  @override
  String get tasteTune => 'Säädä suosituksia';

  @override
  String get tasteTuneSub => 'Tulee voimaan seuraavalla Kodin päivityksellä';

  @override
  String get tasteDiscovery => 'Löytäminen';

  @override
  String get tasteDiscoverySub => 'Tuttu ↔ asiat, joita et ole kuullut';

  @override
  String get tasteEnergy => 'Energia';

  @override
  String get tasteEnergySub => 'Rauhallinen ↔ kova';

  @override
  String get tasteRecency => 'Tuoreus';

  @override
  String get tasteRecencySub => 'Ajaton ↔ aivan uusi';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Kuinka kauas menneisyyteen vanha suosikki lasketaan unohtuneeksi';

  @override
  String get tasteSignals => 'Signaalit, joita se saa käyttää';

  @override
  String get tasteSignalsSub => 'Kaikki pysyy tällä laitteella';

  @override
  String get tasteUseHistory => 'Mitä olen kuunnellut';

  @override
  String get tasteUseSkips => 'Mitä ohitan';

  @override
  String get tasteUseTime => 'Vuorokaudenaika';

  @override
  String get tasteUseYouTube => 'YouTuben ehdotukset';

  @override
  String get tasteAlwaysMore => 'Aina lisää';

  @override
  String get tasteNeverAgain => 'Ei enää koskaan';

  @override
  String get tasteAddArtist => 'Lisää artisti';

  @override
  String get tasteMoreOfPrompt => 'Aina lisää…';

  @override
  String get tasteNeverAgainPrompt => 'Ei enää koskaan…';

  @override
  String get tasteReset => 'Nollaa opitut';

  @override
  String get tasteResetSub => 'Musiikkisi säilyy; profiili alkaa nollasta';

  @override
  String get trainCard => 'Opeta arvioimalla';

  @override
  String get trainCardSub =>
      'Selaa oikeita kappaleita. Oikealle, jos haluat lisää samanlaista, vasemmalle, jos et enää koskaan. Kaksi minuuttia täällä voittaa viikon kuuntelun.';

  @override
  String get trainStart => 'Aloita opetuskierros';

  @override
  String get trainTitle => 'Opetuskierros';

  @override
  String get trainQuestion => 'Haluaisitko tämän Kotiisi?';

  @override
  String get trainMoreLikeThis => 'Lisää tällaista';

  @override
  String get trainNeverAgain => 'Ei enää koskaan';

  @override
  String get trainDone => 'Kierros valmis';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked säilytetty · $blocked estetty. Varmuus $before % → $after %';
  }

  @override
  String get trainBackToTaste => 'Takaisin makuusi';

  @override
  String get trainNothingTitle => 'Ei vielä arvioitavaa';

  @override
  String get trainNothingBody =>
      'Lisää musiikkia tai anna tekoälyn hakea ehdokkaita ensin ja palaa sitten.';

  @override
  String get trainLeaveTitle => 'Poistutaanko opetuskierrokselta?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Jos poistut nyt, tekoäly hylkää kaiken tältä kierrokselta – kaikki $count juuri arvioimaasi kappaletta.',
      one:
          'Jos poistut nyt, tekoäly hylkää kaiken tältä kierrokselta – juuri arvioimasi 1 kappaleen.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Jatka opetusta';

  @override
  String get trainDiscard => 'Hylkää ja poistu';

  @override
  String get setTitle => 'Asetukset';

  @override
  String get setAppearance => 'Ulkoasu';

  @override
  String get setTheme => 'Teema';

  @override
  String get setThemeSystem => 'Seuraa järjestelmää';

  @override
  String get setThemeLight => 'Vaalea';

  @override
  String get setThemeDark => 'Tumma';

  @override
  String get setPureBlack => 'Puhdas musta';

  @override
  String get setPureBlackSub => 'Säästää virtaa OLED-näytöllä';

  @override
  String get setAccent => 'Korostusväri';

  @override
  String get setAccentArtwork => 'Kansikuvasta';

  @override
  String get setAccentFixed => 'Valitsemani väri';

  @override
  String get setLanguage => 'Kieli';

  @override
  String get setLanguageSystem => 'Seuraa järjestelmää';

  @override
  String get setAccessibility => 'Käytettävyys';

  @override
  String get setTextSize => 'Tekstin koko';

  @override
  String get setTextSizeSub => 'Järjestelmäasetuksen lisäksi';

  @override
  String get setReduceMotion => 'Vähennä liikettä';

  @override
  String get setReduceMotionSub =>
      'Pysäyttää palkit, visualisoinnin, pomppivan vierityksen, joustavat napautukset ja sivusiirtymät';

  @override
  String get setHighContrast => 'Korkea kontrasti';

  @override
  String get setHighContrastSub => 'Selkeämpi erottelu ja näkyvät ääriviivat';

  @override
  String get setBoldText => 'Lihavoitu teksti';

  @override
  String get setPlayback => 'Toisto';

  @override
  String get setAutoRadio => 'Pidä musiikki soimassa';

  @override
  String get setAutoRadioSub =>
      'Kun jono loppuu, jatka viimeisen kappaleen pohjalta rakennetulla radiolla';

  @override
  String get setSmartShuffle => 'Älykäs sekoitus';

  @override
  String get setSmartShuffleSub => 'Sekoittaa maun mukaan satunnaisen sijaan';

  @override
  String get setResume => 'Jatka siitä, mihin jäin';

  @override
  String get setResumeSub =>
      'Palauttaa jonon sovellusta avattaessa, tauotettuna';

  @override
  String get setDataSaver => 'Datansäästö mobiiliverkossa';

  @override
  String get setDataSaverSub =>
      'Rajoittaa suoratoiston ja lataukset 128 kbps:iin mobiilidatalla';

  @override
  String get setHaptics => 'Haptinen palaute';

  @override
  String get setShowReasons => 'Näytä, miksi jotain suositeltiin';

  @override
  String get setSkipSilence => 'Ohita hiljaisuus';

  @override
  String get setQuality => 'Äänenlaatu';

  @override
  String get setQualityLow => 'Matala · 64 kbps';

  @override
  String get setQualityNormal => 'Normaali · 128 kbps';

  @override
  String get setQualityHigh => 'Korkea · 192 kbps';

  @override
  String get setQualityBest => 'Paras saatavilla';

  @override
  String get setStorage => 'Lataukset ja tallennustila';

  @override
  String get setWifiOnly => 'Lataa vain Wi-Fi-yhteydellä';

  @override
  String get setDailyLimit => 'Tekoälyn päiväraja';

  @override
  String setDailyLimitSub(int count) {
    return '$count kappaletta päivässä';
  }

  @override
  String get setBudget => 'Tekoälyn käyttämä tallennustila';

  @override
  String setUsed(Object size) {
    return '$size latausten käytössä';
  }

  @override
  String get setYourMusic => 'Musiikkisi';

  @override
  String get setImport => 'Lisää musiikkia tältä laitteelta';

  @override
  String get setImportSub => 'Valitse kansioita tai yksittäisiä tiedostoja';

  @override
  String get setCleanup => 'Siivoa puuttuvat tiedostot';

  @override
  String get setCleanupSub => 'Poista kappaleet, joiden tiedosto on kadonnut';

  @override
  String setCleanupDone(int count) {
    return 'Poistettiin $count puuttuvaa tiedostoa.';
  }

  @override
  String get setExport => 'Lähetä makuni toiselle laitteelle';

  @override
  String get setExportSub =>
      'Tallentaa tiedoston, jossa on tykkäyksesi, toistosi ja kaikki tekoälyn oppima';

  @override
  String get setImportTaste => 'Lataa maku toiselta laitteelta';

  @override
  String get setImportTasteSub =>
      'Valitse tallennettu makutiedosto ja yhdistä se – turvallista toistaa';

  @override
  String get setAbout => 'Tietoja';

  @override
  String get setAboutBody =>
      'Musiikkia YouTubesta ja omista tiedostoistasi. Tekoäly toimii kokonaan tällä laitteella – mikään ei poistu sieltä.';

  @override
  String get setSource => 'Lähdekoodi';

  @override
  String get importTitle => 'Lisää musiikkia';

  @override
  String get importPickFolder => 'Valitse kansio';

  @override
  String get importPickFiles => 'Valitse tiedostoja';

  @override
  String importScanning(Object file) {
    return 'Skannataan $file';
  }

  @override
  String importAdded(int count) {
    return '$count lisätty';
  }

  @override
  String get importDenied => 'Lupa evätty – musiikkiasi ei voi lukea.';

  @override
  String get importWatched => 'Seurattavat kansiot';

  @override
  String get importIosHint =>
      'Avaa Tiedostot-sovellus, siirry kohtaan iPhonessa → TuneBox ja pudota musiikki sinne.';

  @override
  String get playerQueue => 'Jono';

  @override
  String get playerUpNext => 'Seuraavaksi';

  @override
  String get playerLyrics => 'Sanat';

  @override
  String get playerNoLyrics => 'Tälle ei ole sanoja.';

  @override
  String get playerRepeat => 'Toista uudelleen';

  @override
  String get playerShuffle => 'Sekoita';

  @override
  String errorPlayback(Object title) {
    return 'Kohdetta \"$title\" ei voitu toistaa';
  }

  @override
  String errorSkipping(Object title) {
    return 'Ohitetaan \"$title\" – suoratoisto ei avautunut.';
  }

  @override
  String get undo => 'Kumoa';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Juuri nyt: $tags, johtajana $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Juuri nyt: $tags.';
  }

  @override
  String get setColour => 'Väri';

  @override
  String get setColourSub => 'Koko sovellus seuraa tätä';

  @override
  String get setCoverArt => 'Kansikuva';

  @override
  String get setMyColour => 'Oma värini';

  @override
  String get setCoverArtSub =>
      'Jokainen kappale sävyttää sovelluksen kansikuvansa mukaan.';

  @override
  String get setMyColourSub => 'Yksi väri, kaikkialla, koko ajan.';

  @override
  String get setPickColour => 'Valitse mikä tahansa väri';

  @override
  String get setWifiOnlyTitle => 'Lataa vain Wi-Fi-yhteydellä';

  @override
  String get setDownloadLikes => 'Lataa kaikki, mistä tykkään';

  @override
  String get setDownloadLikesSub => 'Sydänpainike tallentaa myös tiedoston';

  @override
  String get setAiInstall => 'Anna tekoälyn asentaa valitsemaansa musiikkia';

  @override
  String get setSkipSilenceSub =>
      'Vain Androidilla. Voi leikata hiljaisia intoja, häivytyksiä ja pehmeitä kohtia – pidä pois, jos musiikki hyppii';

  @override
  String get setStorageUsed => 'Latausten käyttämä tila';

  @override
  String get setLibrary => 'Kirjasto';

  @override
  String get setUpdates => 'Päivitykset';

  @override
  String get setAutoUpdate => 'Tarkista päivitykset itsestään';

  @override
  String get setAutoUpdateSub =>
      'Muutaman tunnin välein, hiljaa, ja lataa Wi-Fi-yhteydellä. Asennus kysyy silti lupaa.';

  @override
  String setUpdateReady(Object version) {
    return 'Päivitys versioon $version on valmis';
  }

  @override
  String get setUpdateReadySub => 'Ladattu – napauta asentaaksesi';

  @override
  String get setUpdateAvailableSub =>
      'Hae se julkaisusivulta – napauta kopioidaksesi linkin';

  @override
  String get setLinkCopied => 'Linkki kopioitu';

  @override
  String get setCheckNow => 'Tarkista nyt';

  @override
  String get setUpToDate => 'TuneBox on ajan tasalla';

  @override
  String get setChecking => 'Etsitään uudempaa versiota…';

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
