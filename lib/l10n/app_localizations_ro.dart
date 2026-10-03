// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class LRo extends L {
  LRo([String locale = 'ro']) : super(locale);

  @override
  String get navHome => 'Acasă';

  @override
  String get navExplore => 'Explorează';

  @override
  String get navLibrary => 'Bibliotecă';

  @override
  String get navTaste => 'Gusturile tale';

  @override
  String get actionDone => 'Gata';

  @override
  String get actionCancel => 'Anulează';

  @override
  String get actionCreate => 'Creează';

  @override
  String get actionPlay => 'Redă';

  @override
  String get actionShuffle => 'Aleatoriu';

  @override
  String get actionPlayAll => 'Redă tot';

  @override
  String get actionAdd => 'Adaugă';

  @override
  String get actionRemove => 'Elimină';

  @override
  String get actionName => 'Nume';

  @override
  String get greetingNight => 'Încă treaz?';

  @override
  String get greetingMorning => 'Bună dimineața';

  @override
  String get greetingAfternoon => 'Bună ziua';

  @override
  String get greetingEvening => 'Bună seara';

  @override
  String get homeBuilding => 'IA construiește rafturile tale…';

  @override
  String get homeOffline => 'Offline — se afișează ce este pe dispozitiv';

  @override
  String get homeNothingYet => 'Încă nu e nimic de arătat';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de rafturi, actualizate chiar acum',
      few: '$count rafturi, actualizate chiar acum',
      one: '1 raft, actualizat chiar acum',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Reconstruiește rafturile';

  @override
  String get homeAddMusic => 'Adaugă muzică de pe acest dispozitiv';

  @override
  String get homeQuickPicks => 'Alegeri rapide';

  @override
  String get homeQuickPicksSub => 'Direct înapoi la ce ascultai';

  @override
  String get homeEmptyTitle => 'Biblioteca ta este goală';

  @override
  String get homeEmptyBody =>
      'Caută ceva sau adaugă muzica deja aflată pe acest dispozitiv. IA începe să învețe de la prima ta ascultare.';

  @override
  String get homeAddMyMusic => 'Adaugă muzica mea';

  @override
  String homeCouldNotReach(Object error) {
    return 'Nu s-a putut contacta YouTube: $error';
  }

  @override
  String get moodFocus => 'Concentrare';

  @override
  String get moodWorkout => 'Antrenament';

  @override
  String get moodChill => 'Relaxare';

  @override
  String get moodCommute => 'Navetă';

  @override
  String get moodParty => 'Petrecere';

  @override
  String moodBuilding(Object mood) {
    return 'Se construiește un mix $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'N-a ieșit: $error';
  }

  @override
  String get shelfRepeat => 'Din nou și din nou';

  @override
  String get shelfRepeatSub => 'Ultimele tale două săptămâni';

  @override
  String get shelfForgotten => 'Hituri vechi uitate care ți-au plăcut';

  @override
  String get shelfForgottenSub => 'Îndrăgite cândva, neatinse de ceva vreme';

  @override
  String get shelfNew => 'Nou';

  @override
  String get shelfNewSub => 'Piese noi pe care IA crede că le vei iubi';

  @override
  String shelfBecause(Object artist) {
    return 'Pentru că ai ascultat $artist';
  }

  @override
  String get shelfBecauseSub => 'Același colț al gusturilor tale';

  @override
  String get shelfDeep => 'Abia atinse';

  @override
  String get shelfDeepSub => 'În biblioteca ta, aproape niciodată redate';

  @override
  String get shelfMix => 'Mixul tău';

  @override
  String get shelfMixSub => 'Reconstruit la fiecare deschidere a aplicației';

  @override
  String get shelfAdded => 'Adăugate recent';

  @override
  String get shelfAddedSub => 'Descărcări și fișiere importate';

  @override
  String get shelfStarter => 'Începe aici';

  @override
  String get shelfStarterSub => 'Ascultă câteva și IA începe imediat să învețe';

  @override
  String reasonPlays(int count) {
    return '$count redări';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Apreciată, ultima redare $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return '$count redări, ultima $when';
  }

  @override
  String get reasonTopArtist => 'Unul dintre artiștii tăi cei mai ascultați';

  @override
  String reasonMore(Object artist) {
    return 'Mai mult $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Te întorci mereu la $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Genul tău de $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Mult $tag în ultima vreme';
  }

  @override
  String get reasonOutThisYear => 'Lansată anul acesta';

  @override
  String get reasonReleasedRecently => 'Lansată recent';

  @override
  String get reasonClose => 'Aproape de ce ai ascultat';

  @override
  String reasonNear(Object artist) {
    return 'E aproape de $artist';
  }

  @override
  String get reasonNeverPlayed => 'Niciodată redată';

  @override
  String get reasonPlayedOnce => 'Redată o dată';

  @override
  String get reasonPopular => 'Populară acum';

  @override
  String whenYearsAgo(int count) {
    return 'acum $count ani';
  }

  @override
  String whenMonthsAgo(int count) {
    return 'acum $count luni';
  }

  @override
  String whenDaysAgo(int count) {
    return 'acum $count zile';
  }

  @override
  String get searchHint => 'Melodii, artiști, albume';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de rezultate',
      few: '$count rezultate',
      one: '1 rezultat',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Căutări recente';

  @override
  String get searchEmptyTitle => 'Nu s-a găsit nimic';

  @override
  String get searchEmptyBody =>
      'Încearcă altă ortografie sau doar numele artistului.';

  @override
  String get searchStartTitle => 'Găsește ceva de ascultat';

  @override
  String get searchStartBody =>
      'Caută în YouTube Music — se întorc doar melodii, niciodată videoclipuri cu alte lucruri.';

  @override
  String get libPlaylists => 'Liste de redare';

  @override
  String get libSongs => 'Melodii';

  @override
  String get libArtists => 'Artiști';

  @override
  String get libLiked => 'Apreciate';

  @override
  String get libDownloads => 'Descărcări';

  @override
  String get libImported => 'Importate';

  @override
  String get libLikedSongs => 'Melodii apreciate';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de melodii',
      few: '$count melodii',
      one: '1 melodie',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'Fișierele mele';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de fișiere',
      few: '$count fișiere',
      one: '1 fișier',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Listă de redare nouă';

  @override
  String get libMakeOne => 'Creează una';

  @override
  String get libSortRecent => 'Adăugate recent';

  @override
  String get libSortTitle => 'Titlu';

  @override
  String get libSortArtist => 'Artist';

  @override
  String get libSortPlays => 'Cele mai ascultate';

  @override
  String get sheetNotForMe => 'Nu e pentru mine';

  @override
  String get sheetNotForMeSub => 'Nu mai recomanda niciodată asta';

  @override
  String get sheetBlocked => 'Blocată — atinge pentru a permite din nou';

  @override
  String get sheetBlockedSub => 'Poate apărea din nou în recomandări';

  @override
  String get sheetPlayNext => 'Redă următoarea';

  @override
  String get sheetAddToPlaylist => 'Adaugă în listă';

  @override
  String get sheetDownloaded => 'Descărcată';

  @override
  String get sheetRemoveFile => 'Atinge pentru a șterge fișierul';

  @override
  String get sheetDownload => 'Descarcă';

  @override
  String get sheetKeepOffline => 'Păstreaz-o offline';

  @override
  String get sheetRadio => 'Pornește radio';

  @override
  String get sheetRadioSub => 'O coadă construită în jurul acestei melodii';

  @override
  String get sheetQueue => 'Coadă';

  @override
  String get sheetSleepTimer => 'Temporizator de somn';

  @override
  String get sheetSleepOff => 'Oprit';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minute';
  }

  @override
  String get sheetSleepEndOfTrack => 'Sfârșitul acestei melodii';

  @override
  String sheetSleepSet(int count) {
    return 'Muzica se oprește în $count min';
  }

  @override
  String get tasteTitle => 'Gusturile tale';

  @override
  String get tasteRetrain => 'Reantrenează';

  @override
  String get tasteRetraining => 'Se reantrenează pe istoricul tău…';

  @override
  String get tasteRetrained => 'IA și-a reconstruit modelul.';

  @override
  String tasteConfidence(int percent) {
    return 'Încredere $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return '$plays redări · $skips sărite · $likes apreciate';
  }

  @override
  String get tasteEmptySummary =>
      'Ascultă câteva melodii și aici apare conținut.';

  @override
  String get tasteKeepLearning => 'Continuă să înveți cât ascult';

  @override
  String get tasteKeepLearningSub =>
      'Dezactivează pentru a îngheța profilul actual';

  @override
  String get tasteDownloadsTitle => 'Descărcările gestionate de IA';

  @override
  String get tasteDownloadsSub => 'Muzica ajunge pe dispozitiv fără să ceri';

  @override
  String get tasteDownloadLikes => 'Descarcă tot ce îmi place';

  @override
  String get tasteDownloadLikesSub =>
      'Apasă pe inimă și fișierul se salvează offline';

  @override
  String get tasteAiInstall => 'Lasă IA să instaleze muzica aleasă';

  @override
  String get tasteAiInstallSub => 'Va aduce piesele de care e sigură';

  @override
  String get tasteWhatItThinks => 'Ce crede că îți place';

  @override
  String get tasteWhatItThinksSub =>
      'Învățat din redări, sărituri, aprecieri și repetări';

  @override
  String get tasteArtists => 'Artiștii pe care se bazează';

  @override
  String get tasteWhenYouListen => 'Când asculți';

  @override
  String get tasteWhenYouListenSub =>
      'Redări pe oră — ora curentă contează mai mult';

  @override
  String get tasteDecades => 'Deceniile';

  @override
  String get tasteTune => 'Reglează recomandările';

  @override
  String get tasteTuneSub =>
      'Se aplică la următoarea reîmprospătare a ecranului Acasă';

  @override
  String get tasteDiscovery => 'Descoperire';

  @override
  String get tasteDiscoverySub =>
      'Familiar ↔ lucruri pe care nu le-ai auzit niciodată';

  @override
  String get tasteEnergy => 'Energie';

  @override
  String get tasteEnergySub => 'Calm ↔ puternic';

  @override
  String get tasteRecency => 'Noutate';

  @override
  String get tasteRecencySub => 'Atemporal ↔ foarte nou';

  @override
  String get tasteNostalgia => 'Nostalgie';

  @override
  String get tasteNostalgiaSub =>
      'Cât de departe în timp un favorit vechi se consideră uitat';

  @override
  String get tasteSignals => 'Semnale pe care le poate folosi';

  @override
  String get tasteSignalsSub => 'Totul rămâne pe acest dispozitiv';

  @override
  String get tasteUseHistory => 'Ce am ascultat';

  @override
  String get tasteUseSkips => 'Ce sar peste';

  @override
  String get tasteUseTime => 'Ora din zi';

  @override
  String get tasteUseYouTube => 'Sugestii de la YouTube';

  @override
  String get tasteAlwaysMore => 'Întotdeauna mai mult din';

  @override
  String get tasteNeverAgain => 'Niciodată';

  @override
  String get tasteAddArtist => 'Adaugă un artist';

  @override
  String get tasteMoreOfPrompt => 'Întotdeauna mai mult din…';

  @override
  String get tasteNeverAgainPrompt => 'Niciodată…';

  @override
  String get tasteReset => 'Resetează ce a învățat';

  @override
  String get tasteResetSub => 'Muzica ta rămâne; profilul începe de la zero';

  @override
  String get trainCard => 'Antrenează-l prin evaluare';

  @override
  String get trainCardSub =>
      'Parcurge melodii reale. Dreapta pentru mai multe asemenea, stânga pentru niciodată. Două minute aici valorează cât o săptămână de ascultat.';

  @override
  String get trainStart => 'Începe o rundă de antrenament';

  @override
  String get trainTitle => 'Rundă de antrenament';

  @override
  String get trainQuestion => 'Ai vrea asta în ecranul Acasă?';

  @override
  String get trainMoreLikeThis => 'Mai multe ca asta';

  @override
  String get trainNeverAgain => 'Niciodată';

  @override
  String get trainDone => 'Rundă încheiată';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return '$liked păstrate · $blocked blocate. Încredere $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Înapoi la gusturile tale';

  @override
  String get trainNothingTitle => 'Nimic de evaluat încă';

  @override
  String get trainNothingBody =>
      'Adaugă muzică sau lasă IA să aducă candidați, apoi revino.';

  @override
  String get trainLeaveTitle => 'Părăsești runda de antrenament?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Dacă pleci acum, IA renunță la tot din această rundă — toate cele $count de melodii pe care tocmai le-ai evaluat.',
      few:
          'Dacă pleci acum, IA renunță la tot din această rundă — toate cele $count melodii pe care tocmai le-ai evaluat.',
      one:
          'Dacă pleci acum, IA renunță la tot din această rundă — melodia pe care tocmai ai evaluat-o.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Continuă antrenamentul';

  @override
  String get trainDiscard => 'Renunță și ieși';

  @override
  String get setTitle => 'Setări';

  @override
  String get setAppearance => 'Aspect';

  @override
  String get setTheme => 'Temă';

  @override
  String get setThemeSystem => 'Urmează sistemul';

  @override
  String get setThemeLight => 'Luminoasă';

  @override
  String get setThemeDark => 'Întunecată';

  @override
  String get setPureBlack => 'Negru pur';

  @override
  String get setPureBlackSub => 'Economisește energie pe ecranele OLED';

  @override
  String get setAccent => 'Culoare de accent';

  @override
  String get setAccentArtwork => 'Din coperta albumului';

  @override
  String get setAccentFixed => 'O culoare aleasă de mine';

  @override
  String get setLanguage => 'Limbă';

  @override
  String get setLanguageSystem => 'Urmează sistemul';

  @override
  String get setAccessibility => 'Accesibilitate';

  @override
  String get setTextSize => 'Dimensiunea textului';

  @override
  String get setTextSizeSub => 'Peste setarea sistemului';

  @override
  String get setReduceMotion => 'Reduce mișcarea';

  @override
  String get setReduceMotionSub =>
      'Oprește barele, vizualizatorul, derularea elastică, atingerile cu efect de arc și tranzițiile între pagini';

  @override
  String get setHighContrast => 'Contrast ridicat';

  @override
  String get setHighContrastSub =>
      'Separare mai puternică și contururi vizibile';

  @override
  String get setBoldText => 'Text aldin';

  @override
  String get setPlayback => 'Redare';

  @override
  String get setAutoRadio => 'Menține muzica pornită';

  @override
  String get setAutoRadioSub =>
      'Când coada se termină, continuă cu un radio construit după ultima melodie';

  @override
  String get setSmartShuffle => 'Amestecare inteligentă';

  @override
  String get setSmartShuffleSub => 'Amestecă după gusturi, nu la întâmplare';

  @override
  String get setResume => 'Reia de unde am rămas';

  @override
  String get setResumeSub =>
      'Restaurează coada la deschiderea aplicației, în pauză';

  @override
  String get setDataSaver => 'Economizor de date în afara Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Limitează redările și descărcările la 128 kbps pe date mobile';

  @override
  String get setHaptics => 'Răspuns haptic';

  @override
  String get setShowReasons => 'Arată de ce a fost recomandat ceva';

  @override
  String get setSkipSilence => 'Sari peste liniște';

  @override
  String get setQuality => 'Calitate audio';

  @override
  String get setQualityLow => 'Redusă · 64 kbps';

  @override
  String get setQualityNormal => 'Normală · 128 kbps';

  @override
  String get setQualityHigh => 'Ridicată · 192 kbps';

  @override
  String get setQualityBest => 'Cea mai bună disponibilă';

  @override
  String get setStorage => 'Descărcări și stocare';

  @override
  String get setWifiOnly => 'Descarcă doar pe Wi-Fi';

  @override
  String get setDailyLimit => 'Limită zilnică pentru IA';

  @override
  String setDailyLimitSub(int count) {
    return '$count melodii pe zi';
  }

  @override
  String get setBudget => 'Spațiul pe care îl poate folosi IA';

  @override
  String setUsed(Object size) {
    return '$size folosiți de descărcări';
  }

  @override
  String get setYourMusic => 'Muzica ta';

  @override
  String get setImport => 'Adaugă muzică de pe acest dispozitiv';

  @override
  String get setImportSub => 'Alege foldere sau fișiere individuale';

  @override
  String get setCleanup => 'Curăță fișierele lipsă';

  @override
  String get setCleanupSub => 'Elimină melodiile al căror fișier a dispărut';

  @override
  String setCleanupDone(int count) {
    return '$count fișiere lipsă eliminate.';
  }

  @override
  String get setExport => 'Trimite-mi gusturile pe alt dispozitiv';

  @override
  String get setExportSub =>
      'Salvează un fișier cu aprecierile, redările și tot ce a învățat IA';

  @override
  String get setImportTaste => 'Încarcă gusturile de pe alt dispozitiv';

  @override
  String get setImportTasteSub =>
      'Alege un fișier salvat și îmbină-l — poate fi repetat în siguranță';

  @override
  String get setAbout => 'Despre';

  @override
  String get setAboutBody =>
      'Muzică de pe YouTube și din fișierele tale. IA rulează în întregime pe acest dispozitiv — nimic nu pleacă de pe el.';

  @override
  String get setSource => 'Cod sursă';

  @override
  String get importTitle => 'Adaugă muzică';

  @override
  String get importPickFolder => 'Alege un folder';

  @override
  String get importPickFiles => 'Alege fișiere';

  @override
  String importScanning(Object file) {
    return 'Se scanează $file';
  }

  @override
  String importAdded(int count) {
    return '$count adăugate';
  }

  @override
  String get importDenied => 'Permisiune refuzată — nu pot citi muzica ta.';

  @override
  String get importWatched => 'Foldere urmărite';

  @override
  String get importIosHint =>
      'Deschide aplicația Fișiere, mergi la Pe iPhone-ul meu → TuneBox și pune muzica acolo.';

  @override
  String get playerQueue => 'Coadă';

  @override
  String get playerUpNext => 'Urmează';

  @override
  String get playerLyrics => 'Versuri';

  @override
  String get playerNoLyrics => 'Nu există versuri pentru aceasta.';

  @override
  String get playerRepeat => 'Repetă';

  @override
  String get playerShuffle => 'Aleatoriu';

  @override
  String errorPlayback(Object title) {
    return 'Nu s-a putut reda „$title”';
  }

  @override
  String errorSkipping(Object title) {
    return 'Se sare peste „$title” — fluxul nu s-a deschis.';
  }

  @override
  String get undo => 'Anulează acțiunea';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Acum: $tags, în frunte cu $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Acum: $tags.';
  }

  @override
  String get setColour => 'Culoare';

  @override
  String get setColourSub => 'Toată aplicația o urmează';

  @override
  String get setCoverArt => 'Coperta albumului';

  @override
  String get setMyColour => 'Culoarea mea';

  @override
  String get setCoverArtSub =>
      'Fiecare melodie recolorează aplicația după copertă.';

  @override
  String get setMyColourSub => 'O singură culoare, peste tot, mereu.';

  @override
  String get setPickColour => 'Alege orice culoare';

  @override
  String get setWifiOnlyTitle => 'Descarcă doar pe Wi-Fi';

  @override
  String get setDownloadLikes => 'Descarcă tot ce îmi place';

  @override
  String get setDownloadLikesSub => 'Butonul inimă salvează și fișierul';

  @override
  String get setAiInstall => 'Lasă IA să instaleze muzica aleasă';

  @override
  String get setSkipSilenceSub =>
      'Doar Android. Poate tăia introduceri liniștite, estompări și pasaje line — las-o oprită dacă muzica sare';

  @override
  String get setStorageUsed => 'Spațiu folosit de descărcări';

  @override
  String get setLibrary => 'Bibliotecă';

  @override
  String get setUpdates => 'Actualizări';

  @override
  String get setAutoUpdate => 'Caută actualizări automat';

  @override
  String get setAutoUpdateSub =>
      'La câteva ore, discret, și descarcă pe Wi-Fi. Instalarea tot te întreabă.';

  @override
  String setUpdateReady(Object version) {
    return 'Actualizarea la $version este gata';
  }

  @override
  String get setUpdateReadySub => 'Descărcată — atinge pentru a instala';

  @override
  String get setUpdateAvailableSub =>
      'Ia-o de pe pagina de versiuni — atinge pentru a copia linkul';

  @override
  String get setLinkCopied => 'Link copiat';

  @override
  String get setCheckNow => 'Verifică acum';

  @override
  String get setUpToDate => 'TuneBox este la zi';

  @override
  String get setChecking => 'Se caută o versiune mai nouă…';
}
