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
}
