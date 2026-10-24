// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class LPl extends L {
  LPl([String locale = 'pl']) : super(locale);

  @override
  String get navHome => 'Start';

  @override
  String get navExplore => 'Odkrywaj';

  @override
  String get navLibrary => 'Biblioteka';

  @override
  String get navTaste => 'Twój gust';

  @override
  String get actionDone => 'Gotowe';

  @override
  String get actionCancel => 'Anuluj';

  @override
  String get actionCreate => 'Utwórz';

  @override
  String get actionPlay => 'Odtwórz';

  @override
  String get actionShuffle => 'Losowo';

  @override
  String get actionPlayAll => 'Odtwórz wszystko';

  @override
  String get actionAdd => 'Dodaj';

  @override
  String get actionRemove => 'Usuń';

  @override
  String get actionName => 'Nazwa';

  @override
  String get greetingNight => 'Jeszcze nie śpisz?';

  @override
  String get greetingMorning => 'Dzień dobry';

  @override
  String get greetingAfternoon => 'Dzień dobry';

  @override
  String get greetingEvening => 'Dobry wieczór';

  @override
  String get homeBuilding => 'AI buduje twoje półki…';

  @override
  String get homeOffline => 'Offline — pokazuję to, co jest na urządzeniu';

  @override
  String get homeNothingYet => 'Nie ma jeszcze czego pokazać';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count półki, właśnie odświeżone',
      many: '$count półek, właśnie odświeżonych',
      few: '$count półki, właśnie odświeżone',
      one: '1 półka, właśnie odświeżona',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Zbuduj półki na nowo';

  @override
  String get homeAddMusic => 'Dodaj muzykę z tego urządzenia';

  @override
  String get homeQuickPicks => 'Szybkie wybory';

  @override
  String get homeQuickPicksSub => 'Wróć do tego, czego słuchałeś';

  @override
  String get homeEmptyTitle => 'Twoja biblioteka jest pusta';

  @override
  String get homeEmptyBody =>
      'Poszukaj czegoś albo dodaj muzykę, którą już masz na tym urządzeniu. AI uczy się od pierwszego odtworzenia.';

  @override
  String get homeAddMyMusic => 'Dodaj moją muzykę';

  @override
  String homeCouldNotReach(Object error) {
    return 'Nie udało się połączyć z YouTube: $error';
  }

  @override
  String get moodFocus => 'Skupienie';

  @override
  String get moodWorkout => 'Trening';

  @override
  String get moodChill => 'Chill';

  @override
  String get moodCommute => 'W drodze';

  @override
  String get moodParty => 'Impreza';

  @override
  String moodBuilding(Object mood) {
    return 'Buduję składankę $mood…';
  }

  @override
  String moodFailed(Object error) {
    return 'Nie wyszło: $error';
  }

  @override
  String get shelfRepeat => 'Na okrągło';

  @override
  String get shelfRepeatSub => 'Twoje ostatnie dwa tygodnie';

  @override
  String get shelfForgotten => 'Stare kawałki, które lubiłeś';

  @override
  String get shelfForgottenSub => 'Kiedyś kochane, od dawna nietykane';

  @override
  String get shelfNew => 'Nowe';

  @override
  String get shelfNewSub => 'Świeże utwory, które według AI są dla ciebie';

  @override
  String shelfBecause(Object artist) {
    return 'Bo słuchałeś $artist';
  }

  @override
  String get shelfBecauseSub => 'Ten sam zakątek twojego gustu';

  @override
  String get shelfDeep => 'Ledwo tknięte';

  @override
  String get shelfDeepSub => 'W twojej bibliotece, prawie nigdy nieodtwarzane';

  @override
  String get shelfMix => 'Twój miks';

  @override
  String get shelfMixSub => 'Budowany od nowa przy każdym otwarciu aplikacji';

  @override
  String get shelfAdded => 'Ostatnio dodane';

  @override
  String get shelfAddedSub => 'Pobrania i zaimportowane pliki';

  @override
  String get shelfStarter => 'Zacznij tutaj';

  @override
  String get shelfStarterSub =>
      'Posłuchaj kilku, a AI od razu zacznie się uczyć';

  @override
  String reasonPlays(int count) {
    return 'odtworzeń: $count';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Polubione, ostatnio $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'odtworzeń: $count, ostatnio $when';
  }

  @override
  String get reasonTopArtist =>
      'Jeden z twoich najczęściej słuchanych wykonawców';

  @override
  String reasonMore(Object artist) {
    return 'Więcej $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Ciągle wracasz do $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Twój rodzaj $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'Ostatnio dużo $tag';
  }

  @override
  String get reasonOutThisYear => 'Wyszło w tym roku';

  @override
  String get reasonReleasedRecently => 'Niedawno wydane';

  @override
  String get reasonClose => 'Blisko tego, czego ostatnio słuchasz';

  @override
  String reasonNear(Object artist) {
    return 'Blisko $artist';
  }

  @override
  String get reasonNeverPlayed => 'Nigdy nieodtwarzane';

  @override
  String get reasonPlayedOnce => 'Odtworzone raz';

  @override
  String get reasonPopular => 'Popularne teraz';

  @override
  String whenYearsAgo(int count) {
    return '$count lat temu';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count miesięcy temu';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count dni temu';
  }

  @override
  String get searchHint => 'Utwory, wykonawcy, albumy';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wyniku',
      many: '$count wyników',
      few: '$count wyniki',
      one: '1 wynik',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Ostatnie wyszukiwania';

  @override
  String get searchEmptyTitle => 'Nic nie znaleziono';

  @override
  String get searchEmptyBody =>
      'Spróbuj inaczej to zapisać albo wpisz samą nazwę wykonawcy.';

  @override
  String get searchStartTitle => 'Znajdź coś do słuchania';

  @override
  String get searchStartBody =>
      'Przeszukuje YouTube Music — wracają tylko utwory, nigdy filmy o czymś innym.';

  @override
  String get libPlaylists => 'Playlisty';

  @override
  String get libSongs => 'Utwory';

  @override
  String get libArtists => 'Wykonawcy';

  @override
  String get libLiked => 'Polubione';

  @override
  String get libDownloads => 'Pobrane';

  @override
  String get libImported => 'Zaimportowane';

  @override
  String get libLikedSongs => 'Polubione utwory';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count utworu',
      many: '$count utworów',
      few: '$count utwory',
      one: '1 utwór',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return '$count offline';
  }

  @override
  String get libMyFiles => 'Moje własne pliki';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pliku',
      many: '$count plików',
      few: '$count pliki',
      one: '1 plik',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Nowa playlista';

  @override
  String get libMakeOne => 'Utwórz';

  @override
  String get libSortRecent => 'Ostatnio dodane';

  @override
  String get libSortTitle => 'Tytuł';

  @override
  String get libSortArtist => 'Wykonawca';

  @override
  String get libSortPlays => 'Najczęściej odtwarzane';

  @override
  String get sheetNotForMe => 'Nie dla mnie';

  @override
  String get sheetNotForMeSub => 'Nigdy więcej tego nie polecaj';

  @override
  String get sheetBlocked => 'Zablokowane — dotknij, by znów zezwolić';

  @override
  String get sheetBlockedSub => 'Może wrócić do polecanych';

  @override
  String get sheetPlayNext => 'Odtwórz jako następne';

  @override
  String get sheetAddToPlaylist => 'Dodaj do playlisty';

  @override
  String get sheetDownloaded => 'Pobrane';

  @override
  String get sheetRemoveFile => 'Dotknij, by usunąć plik';

  @override
  String get sheetDownload => 'Pobierz';

  @override
  String get sheetKeepOffline => 'Zachowaj offline';

  @override
  String get sheetRadio => 'Włącz radio';

  @override
  String get sheetRadioSub => 'Kolejka zbudowana wokół tego utworu';

  @override
  String get sheetQueue => 'Kolejka';

  @override
  String get sheetSleepTimer => 'Wyłącznik czasowy';

  @override
  String get sheetSleepOff => 'Wyłączony';

  @override
  String sheetSleepMinutes(int count) {
    return '$count minut';
  }

  @override
  String get sheetSleepEndOfTrack => 'Na końcu tego utworu';

  @override
  String sheetSleepSet(int count) {
    return 'Muzyka ucichnie za $count min';
  }

  @override
  String get tasteTitle => 'Twój gust';

  @override
  String get tasteRetrain => 'Naucz od nowa';

  @override
  String get tasteRetraining => 'Uczę się od nowa z twojej historii…';

  @override
  String get tasteRetrained => 'AI przebudowała swój model.';

  @override
  String tasteConfidence(int percent) {
    return 'Pewność $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'odtworzeń: $plays · pominięć: $skips · polubień: $likes';
  }

  @override
  String get tasteEmptySummary => 'Posłuchaj kilku utworów, a to się wypełni.';

  @override
  String get tasteKeepLearning => 'Ucz się dalej, gdy słucham';

  @override
  String get tasteKeepLearningSub => 'Wyłącz, by zamrozić obecny profil';

  @override
  String get tasteDownloadsTitle => 'Pobieraniem zajmuje się AI';

  @override
  String get tasteDownloadsSub => 'Muzyka trafia na urządzenie bez proszenia';

  @override
  String get tasteDownloadLikes => 'Pobieraj wszystko, co polubię';

  @override
  String get tasteDownloadLikesSub =>
      'Dotknij serduszka, a plik zostanie zapisany offline';

  @override
  String get tasteAiInstall => 'Pozwól AI samej instalować muzykę';

  @override
  String get tasteAiInstallSub => 'Pobierze utwory, których jest pewna';

  @override
  String get tasteWhatItThinks => 'Co według niej lubisz';

  @override
  String get tasteWhatItThinksSub =>
      'Nauczone z odtworzeń, pominięć, polubień i powtórek';

  @override
  String get tasteArtists => 'Wykonawcy, na których się opiera';

  @override
  String get tasteWhenYouListen => 'Kiedy słuchasz';

  @override
  String get tasteWhenYouListenSub =>
      'Odtworzenia na godzinę — bieżąca godzina liczy się bardziej';

  @override
  String get tasteDecades => 'Dekady';

  @override
  String get tasteTune => 'Dostrój polecane';

  @override
  String get tasteTuneSub => 'Zadziała przy następnym odświeżeniu ekranu Start';

  @override
  String get tasteDiscovery => 'Odkrywanie';

  @override
  String get tasteDiscoverySub => 'Znajome ↔ nigdy niesłyszane';

  @override
  String get tasteEnergy => 'Energia';

  @override
  String get tasteEnergySub => 'Spokojnie ↔ głośno';

  @override
  String get tasteRecency => 'Świeżość';

  @override
  String get tasteRecencySub => 'Ponadczasowe ↔ prosto z pieca';

  @override
  String get tasteNostalgia => 'Nostalgia';

  @override
  String get tasteNostalgiaSub =>
      'Po jakim czasie stary faworyt liczy się jako zapomniany';

  @override
  String get tasteSignals => 'Sygnały, których może używać';

  @override
  String get tasteSignalsSub => 'Wszystko zostaje na tym urządzeniu';

  @override
  String get tasteUseHistory => 'Co odtwarzałem';

  @override
  String get tasteUseSkips => 'Co pomijam';

  @override
  String get tasteUseTime => 'Pora dnia';

  @override
  String get tasteUseYouTube => 'Podpowiedzi z YouTube';

  @override
  String get tasteAlwaysMore => 'Zawsze więcej';

  @override
  String get tasteNeverAgain => 'Nigdy więcej';

  @override
  String get tasteAddArtist => 'Dodaj wykonawcę';

  @override
  String get tasteMoreOfPrompt => 'Zawsze więcej…';

  @override
  String get tasteNeverAgainPrompt => 'Nigdy więcej…';

  @override
  String get tasteReset => 'Wyczyść to, czego się nauczyła';

  @override
  String get tasteResetSub => 'Muzyka zostaje; profil startuje od zera';

  @override
  String get trainCard => 'Ucz ją ocenianiem';

  @override
  String get trainCardSub =>
      'Przewijaj prawdziwe utwory. W prawo po więcej takich, w lewo — nigdy więcej. Dwie minuty tutaj dają więcej niż tydzień słuchania.';

  @override
  String get trainStart => 'Zacznij rundę treningową';

  @override
  String get trainTitle => 'Runda treningowa';

  @override
  String get trainQuestion => 'Chciałbyś to mieć na swoim ekranie Start?';

  @override
  String get trainMoreLikeThis => 'Więcej takich';

  @override
  String get trainNeverAgain => 'Nigdy więcej';

  @override
  String get trainDone => 'Runda zakończona';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'zostawione: $liked · zablokowane: $blocked. Pewność $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Wróć do swojego gustu';

  @override
  String get trainNothingTitle => 'Nie ma jeszcze czego oceniać';

  @override
  String get trainNothingBody =>
      'Dodaj muzykę albo pozwól AI najpierw znaleźć kandydatów, a potem wróć.';

  @override
  String get trainLeaveTitle => 'Opuścić rundę treningową?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Jeśli teraz wyjdziesz, AI wyrzuci wszystko z tej rundy — wszystkie $count utworu, które właśnie oceniłeś.',
      many:
          'Jeśli teraz wyjdziesz, AI wyrzuci wszystko z tej rundy — wszystkie $count utworów, które właśnie oceniłeś.',
      few:
          'Jeśli teraz wyjdziesz, AI wyrzuci wszystko z tej rundy — wszystkie $count utwory, które właśnie oceniłeś.',
      one:
          'Jeśli teraz wyjdziesz, AI wyrzuci wszystko z tej rundy — ten 1 utwór, który właśnie oceniłeś.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Trenuj dalej';

  @override
  String get trainDiscard => 'Odrzuć i wyjdź';

  @override
  String get setTitle => 'Ustawienia';

  @override
  String get setAppearance => 'Wygląd';

  @override
  String get setTheme => 'Motyw';

  @override
  String get setThemeSystem => 'Jak w systemie';

  @override
  String get setThemeLight => 'Jasny';

  @override
  String get setThemeDark => 'Ciemny';

  @override
  String get setPureBlack => 'Czysta czerń';

  @override
  String get setPureBlackSub => 'Oszczędza baterię na ekranie OLED';

  @override
  String get setAccent => 'Kolor akcentu';

  @override
  String get setAccentArtwork => 'Z okładki';

  @override
  String get setAccentFixed => 'Kolor, który wybiorę';

  @override
  String get setLanguage => 'Język';

  @override
  String get setLanguageSystem => 'Jak w systemie';

  @override
  String get setAccessibility => 'Dostępność';

  @override
  String get setTextSize => 'Wielkość tekstu';

  @override
  String get setTextSizeSub => 'Oprócz ustawienia systemowego';

  @override
  String get setReduceMotion => 'Ogranicz ruch';

  @override
  String get setReduceMotionSub =>
      'Zatrzymuje słupki, wizualizer i przejścia między ekranami';

  @override
  String get setHighContrast => 'Wysoki kontrast';

  @override
  String get setHighContrastSub =>
      'Mocniejsze oddzielenie i widoczne obramowania';

  @override
  String get setBoldText => 'Pogrubiony tekst';

  @override
  String get setPlayback => 'Odtwarzanie';

  @override
  String get setAutoRadio => 'Niech muzyka gra dalej';

  @override
  String get setAutoRadioSub =>
      'Gdy kolejka się kończy, radio gra dalej od ostatniego utworu';

  @override
  String get setSmartShuffle => 'Mądre losowanie';

  @override
  String get setSmartShuffleSub => 'Tasuje według gustu, a nie na ślepo';

  @override
  String get setResume => 'Wznów tam, gdzie skończyłem';

  @override
  String get setResumeSub => 'Przywraca kolejkę przy otwarciu, wstrzymaną';

  @override
  String get setDataSaver => 'Oszczędzanie danych poza Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Ogranicza strumienie i pobrania do 128 kb/s na danych komórkowych';

  @override
  String get setHaptics => 'Wibracje';

  @override
  String get setShowReasons => 'Pokazuj, dlaczego coś polecono';

  @override
  String get setSkipSilence => 'Pomijaj ciszę';

  @override
  String get setQuality => 'Jakość dźwięku';

  @override
  String get setQualityLow => 'Niska · 64 kb/s';

  @override
  String get setQualityNormal => 'Normalna · 128 kb/s';

  @override
  String get setQualityHigh => 'Wysoka · 192 kb/s';

  @override
  String get setQualityBest => 'Najlepsza dostępna';

  @override
  String get setStorage => 'Pobrane i pamięć';

  @override
  String get setWifiOnly => 'Pobieraj tylko przez Wi-Fi';

  @override
  String get setDailyLimit => 'Dzienny limit dla AI';

  @override
  String setDailyLimitSub(int count) {
    return '$count utworów dziennie';
  }

  @override
  String get setBudget => 'Miejsce, które AI może zająć';

  @override
  String setUsed(Object size) {
    return '$size zajęte przez pobrane';
  }

  @override
  String get setYourMusic => 'Twoja muzyka';

  @override
  String get setImport => 'Dodaj muzykę z tego urządzenia';

  @override
  String get setImportSub => 'Wybierz foldery albo pojedyncze pliki';

  @override
  String get setCleanup => 'Posprzątaj brakujące pliki';

  @override
  String get setCleanupSub => 'Usuwa utwory, których plik zniknął';

  @override
  String setCleanupDone(int count) {
    return 'Usunięto brakujące pliki: $count.';
  }

  @override
  String get setExport => 'Wyślij mój gust na inne urządzenie';

  @override
  String get setExportSub =>
      'Zapisuje plik przenoszenia: polubienia, odtworzenia i wszystko, czego AI się nauczyła';

  @override
  String get setImportTaste => 'Wczytaj gust z innego urządzenia';

  @override
  String get setImportTasteSub => 'Łączy go z tym, co to urządzenie już wie';

  @override
  String get setAbout => 'O aplikacji';

  @override
  String get setAboutBody =>
      'Muzyka z YouTube i z twoich własnych plików. AI działa w całości na tym urządzeniu — nic stąd nie wychodzi.';

  @override
  String get setSource => 'Kod źródłowy';

  @override
  String get importTitle => 'Dodaj muzykę';

  @override
  String get importPickFolder => 'Wybierz folder';

  @override
  String get importPickFiles => 'Wybierz pliki';

  @override
  String importScanning(Object file) {
    return 'Przeglądam $file';
  }

  @override
  String importAdded(int count) {
    return 'dodano: $count';
  }

  @override
  String get importDenied =>
      'Brak uprawnień — nie mogę odczytać twojej muzyki.';

  @override
  String get importWatched => 'Obserwowane foldery';

  @override
  String get importIosHint =>
      'Otwórz aplikację Pliki, przejdź do Na moim iPhonie → TuneBox i wrzuć tam muzykę.';

  @override
  String get playerQueue => 'Kolejka';

  @override
  String get playerUpNext => 'Dalej';

  @override
  String get playerLyrics => 'Tekst';

  @override
  String get playerNoLyrics => 'Brak tekstu do tego utworu.';

  @override
  String get playerRepeat => 'Powtarzaj';

  @override
  String get playerShuffle => 'Losowo';

  @override
  String errorPlayback(Object title) {
    return 'Nie udało się odtworzyć „$title”';
  }

  @override
  String errorSkipping(Object title) {
    return 'Pomijam „$title” — strumień się nie otworzył.';
  }

  @override
  String get undo => 'Cofnij';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Teraz: $tags, na czele $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Teraz: $tags.';
  }

  @override
  String get setColour => 'Kolor';

  @override
  String get setColourSub => 'Cała aplikacja się nim kieruje';

  @override
  String get setCoverArt => 'Okładka';

  @override
  String get setMyColour => 'Mój kolor';

  @override
  String get setCoverArtSub => 'Każdy utwór barwi aplikację swoją okładką.';

  @override
  String get setMyColourSub => 'Jeden kolor, wszędzie, przez cały czas.';

  @override
  String get setPickColour => 'Wybierz inny kolor';

  @override
  String get setWifiOnlyTitle => 'Pobieraj tylko przez Wi-Fi';

  @override
  String get setDownloadLikes => 'Pobieraj wszystko, co polubię';

  @override
  String get setDownloadLikesSub => 'Serduszko zapisuje też plik';

  @override
  String get setAiInstall => 'Pozwól AI samej instalować muzykę';

  @override
  String get setSkipSilenceSub => 'Tylko Android';

  @override
  String get setStorageUsed => 'Miejsce zajęte przez pobrane';

  @override
  String get setLibrary => 'Biblioteka';

  @override
  String get setUpdates => 'Aktualizacje';

  @override
  String get setAutoUpdate => 'Sam szukaj aktualizacji';

  @override
  String get setAutoUpdateSub =>
      'Co kilka godzin, po cichu, i pobiera przez Wi-Fi. Instalacja nadal cię pyta.';

  @override
  String setUpdateReady(Object version) {
    return 'Aktualizacja do $version jest gotowa';
  }

  @override
  String get setUpdateReadySub => 'Pobrana — dotknij, aby zainstalować';

  @override
  String get setUpdateAvailableSub =>
      'Dostępna na stronie wydań — dotknij, aby skopiować link';

  @override
  String get setLinkCopied => 'Link skopiowany';

  @override
  String get setCheckNow => 'Szukaj teraz';

  @override
  String get setUpToDate => 'TuneBox jest aktualny';

  @override
  String get setChecking => 'Szukam nowszej wersji…';

  @override
  String get homeCantReach => 'Brak połączenia z YouTube';

  @override
  String get homeOfflineHint =>
      'Sprawdź połączenie. Wszystko, co jest już na urządzeniu, nadal działa.';

  @override
  String get actionRetry => 'Spróbuj ponownie';

  @override
  String get actionClear => 'Wyczyść';

  @override
  String get searchFailed => 'Wyszukiwanie nie powiodło się';

  @override
  String get profWho => 'Kto słucha?';

  @override
  String get profExplain =>
      'Każdy profil ma własną bibliotekę, polubienia, playlisty i gust.';

  @override
  String get profActive => 'Aktywny';

  @override
  String get profRename => 'Zmień nazwę';

  @override
  String get profDeleteMenu => 'Usuń profil';

  @override
  String get profAdd => 'Dodaj profil';

  @override
  String get profNew => 'Nowy profil';

  @override
  String get profName => 'Nazwa';

  @override
  String profDeleteTitle(String name) {
    return 'Usunąć \"$name\"?';
  }

  @override
  String get profDeleteBody =>
      'Jego biblioteka, polubienia, playlisty i wyuczony gust zostaną usunięte na stałe. Pliki muzyczne pozostaną na urządzeniu.';

  @override
  String get profKeep => 'Zachowaj';

  @override
  String get actionOk => 'OK';

  @override
  String get actionDelete => 'Usuń';

  @override
  String get xferTitle => 'Przenieś swój gust';

  @override
  String xferIntro(String profile) {
    return 'Polubienia, odtworzenia i reguły wykonawców z profilu \"$profile\". Odbiór scala dane z tym profilem i można go bezpiecznie powtarzać – nic się nie zdubluje.';
  }

  @override
  String get xferSectionWifi => 'Między urządzeniami w tej samej sieci Wi-Fi';

  @override
  String get xferSend => 'Wyślij na pobliskie urządzenie';

  @override
  String get xferSendSub => 'Pokazuje kod; drugie urządzenie znajdzie to';

  @override
  String get xferReceive => 'Odbierz z pobliskiego urządzenia';

  @override
  String get xferReceiveSub =>
      'Znajduje nadawców automatycznie – ty wpisujesz kod';

  @override
  String get xferSectionFile => 'Za pomocą pliku';

  @override
  String get xferSave => 'Zapisz do pliku';

  @override
  String get xferSaveSub => 'Wybierz miejsce: Pobrane, USB, czat…';

  @override
  String get xferLoad => 'Wczytaj z pliku';

  @override
  String get xferLoadSub => 'Dowolny plik gustu TuneBox, stary lub nowy';

  @override
  String get xferSectionText => 'Jako tekst';

  @override
  String get xferCopy => 'Kopiuj jako tekst';

  @override
  String get xferCopySub =>
      'Jedna linijka, którą wkleisz do dowolnego czatu lub notatki';

  @override
  String get xferPaste => 'Wklej tekst';

  @override
  String get xferPasteSub => 'Ze schowka';

  @override
  String get xferSaveDialog => 'Zapisz swój gust';

  @override
  String xferSaved(String kb) {
    return 'Zapisano $kb KB. Na drugim urządzeniu wybierz \"Wczytaj z pliku\".';
  }

  @override
  String xferSaveFailed(String error) {
    return 'Nie udało się zapisać: $error';
  }

  @override
  String xferFileUnreadable(String error) {
    return 'Nie udało się odczytać tego pliku jako gustu: $error';
  }

  @override
  String xferCopied(String kb) {
    return 'Skopiowano ($kb KB tekstu). Wklej go na drugim urządzeniu przez \"Wklej tekst\".';
  }

  @override
  String xferCopyFailed(String error) {
    return 'Nie udało się skopiować: $error';
  }

  @override
  String get xferClipboardEmpty =>
      'Schowek nie zawiera gustu TuneBox. Najpierw skopiuj go na drugim urządzeniu.';

  @override
  String get xferNewerTitle => 'Nowsze niż ta aplikacja';

  @override
  String get xferNewerBody =>
      'Ten gust został utworzony w nowszej wersji TuneBox. Najpierw zaktualizuj to urządzenie.';

  @override
  String xferMergeTitle(String profile) {
    return 'Scalić z \"$profile\"?';
  }

  @override
  String xferMergeBody(
    String source,
    int songs,
    int liked,
    int plays,
    int rules,
  ) {
    return 'Z $source:\n• $songs utworów, $liked polubionych\n• $plays odtworzeń\n• $rules reguł wykonawców\n\nTwoje polubienia i historia zostają. Dwukrotne wykonanie niczego nie zmienia.';
  }

  @override
  String get xferSourceFile => 'pliku';

  @override
  String get xferSourceClipboard => 'schowka';

  @override
  String get xferMerge => 'Scal';

  @override
  String get xferMerging => 'Scalanie…';

  @override
  String xferMerged(String summary) {
    return 'Scalono: $summary';
  }

  @override
  String xferMergeFailed(String error) {
    return 'Scalanie nie powiodło się: $error';
  }

  @override
  String get xferSendTitle => 'Wyślij swój gust';

  @override
  String xferCouldNotStart(String error) {
    return 'Nie udało się uruchomić: $error';
  }

  @override
  String get xferSent => 'Wysłano. Drugie urządzenie ma twój gust.';

  @override
  String get xferClosed =>
      'Zamknięto – kod wygasł lub podano zły zbyt wiele razy. Zacznij od nowa, aby dostać nowy.';

  @override
  String get xferSendHow =>
      'Na drugim urządzeniu otwórz Ustawienia → Przenieś swój gust → Odbierz, wybierz to urządzenie i wpisz:';

  @override
  String get xferNoWifi =>
      'Nie znaleziono adresu Wi-Fi – połącz oba urządzenia z tą samą siecią.';

  @override
  String xferThisDevice(String addresses, int port) {
    return 'To urządzenie: $addresses (port $port)';
  }

  @override
  String get xferWaiting =>
      'Czekam na drugie urządzenie… (zamknie się po 5 minutach)';

  @override
  String xferCodeFor(String name) {
    return 'Kod wyświetlony na $name';
  }

  @override
  String get xferCodeLabel => '6-cyfrowy kod';

  @override
  String get xferReceiveAction => 'Odbierz';

  @override
  String xferReceivingFrom(String name) {
    return 'Odbieranie z $name…';
  }

  @override
  String get xferWrongCode => 'Zły kod. Sprawdź numer na drugim urządzeniu.';

  @override
  String get xferNotTaste => 'To nie był gust TuneBox.';

  @override
  String xferCouldNotReach(String error) {
    return 'Nie udało się połączyć: $error';
  }

  @override
  String xferLooking(String host) {
    return 'Szukam $host…';
  }

  @override
  String xferNothingAt(String host) {
    return 'Nic nie odpowiedziało pod $host. Czy tam jest otwarte Wyślij?';
  }

  @override
  String get xferReceiveTitle => 'Odbierz gust';

  @override
  String get xferOpenSendFirst =>
      'Najpierw otwórz Wyślij na drugim urządzeniu (to samo Wi-Fi).';

  @override
  String get xferSearching => 'Szukam pobliskich urządzeń…';

  @override
  String get xferNoSender => 'Nie znaleziono jeszcze nadawcy.';

  @override
  String get xferSearchAgain => 'Szukaj ponownie';

  @override
  String get xferTypeAddress => 'Nie ma na liście? Wpisz jego adres';

  @override
  String get xferConnect => 'Połącz';

  @override
  String get qUndo => 'Cofnij';

  @override
  String qRemoved(String title) {
    return 'Usunięto \"$title\"';
  }

  @override
  String get qCleared => 'Kolejka wyczyszczona';

  @override
  String qSaved(String songs, String name) {
    return 'Zapisano $songs w \"$name\"';
  }

  @override
  String qTitle(int count) {
    return 'Kolejka · $count';
  }

  @override
  String get qSavePlaylist => 'Zapisz jako playlistę';

  @override
  String get qClear => 'Wyczyść kolejkę';

  @override
  String get qClearSub => 'Zostawia odtwarzany utwór';

  @override
  String get qEmptyTitle => 'Kolejka jest pusta';

  @override
  String get qEmptyBody => 'Odtwórz coś, a kolejka zapełni się tutaj.';

  @override
  String get qDrag => 'Przeciągnij, aby zmienić kolejność';

  @override
  String plDeleted(String name) {
    return 'Usunięto \"$name\"';
  }

  @override
  String get plDeleteSub => 'Utwory zostają w twojej bibliotece';

  @override
  String get plDelete => 'Usuń playlistę';

  @override
  String get plRenameOrDelete => 'Zmień nazwę lub usuń';

  @override
  String get aLibListView => 'Widok listy';

  @override
  String get aLibGridView => 'Widok siatki';

  @override
  String get aLibSortAlpha => 'A–Z';

  @override
  String get aLibSortYear => 'Rok';

  @override
  String get aLibNothingYet => 'Na razie nic tu nie ma';

  @override
  String get aLibImportedEmptyBody =>
      'Dodaj muzykę, która jest już na tym urządzeniu.';

  @override
  String get aLibEmptyBody => 'Odtwórz lub pobierz coś, a pojawi się tutaj.';

  @override
  String aLibBannerSummary(String songs, String size) {
    return '$songs · $size na tym urządzeniu';
  }

  @override
  String get aLibOfflineNote => 'Te grają bez żadnego połączenia';

  @override
  String aLibAiPicked(String count) {
    return '$count z nich wybrała dla ciebie AI';
  }

  @override
  String get aPlaylistLabel => 'Playlista';

  @override
  String get aLibNoArtists => 'Brak artystów';

  @override
  String get aLibNoArtistsBody => 'Odtwórz kilka utworów, a zbiorą się tutaj.';

  @override
  String get aHomeSearch => 'Szukaj';

  @override
  String get aHomeInYourLibrary => 'W twojej bibliotece';

  @override
  String get aHomeInYourLibrarySub => 'To, co dotąd dodałeś';

  @override
  String get aSearchHintDots => 'Utwory, artyści, albumy…';

  @override
  String get aSearchEmptyBody =>
      'Spróbuj innej pisowni albo wklej link do YouTube.';

  @override
  String get aSearchTrySomething => 'Spróbuj czegoś';

  @override
  String get aSearchLearnedFrom => 'Z tego, czego nauczyła się AI';

  @override
  String get aSearchAnything => 'Szukaj czegokolwiek na YouTube';

  @override
  String get aSearchSeedTap => 'Dotknij punktu wyjścia, by poszperać';

  @override
  String get aSearchArtistsYouPlay => 'Artyści, których słuchasz';

  @override
  String aSearchAffinity(String percent) {
    return '$percent% zgodności';
  }

  @override
  String get aArtistAlwaysMore => 'Zawsze więcej tego';

  @override
  String get aArtistClearRule => 'Usuń regułę';

  @override
  String get aArtistBoosted => 'wyróżniony';

  @override
  String get aArtistBlocked => 'zablokowany';

  @override
  String get aArtistRadio => 'Radio';

  @override
  String get aPlLikedSub => 'Wszystko, co oznaczyłeś sercem';

  @override
  String get aPlDownloadsSub => 'Gra bez połączenia';

  @override
  String get aPlImportedSub => 'Muzyka dodana z tego urządzenia';

  @override
  String get aPlEmptyTitle => 'Na razie pusta';

  @override
  String get aPlEmptyBody => 'Dodawaj utwory z menu ⋮ przy dowolnym utworze.';

  @override
  String aPlDownloading(String songs) {
    return 'Pobieranie: $songs…';
  }

  @override
  String bTasteAiBudgetSub(String count, String gb) {
    return 'Do $count utworów dziennie, budżet $gb GB';
  }

  @override
  String get bTasteSongsPerDay => 'Utwory dziennie';

  @override
  String get bTasteStorageMayUse => 'Dozwolone miejsce na dysku';

  @override
  String bTasteGb(String gb) {
    return '$gb GB';
  }

  @override
  String get bTasteNothingToDownload => 'Na razie nic nowego wartego pobrania.';

  @override
  String bTasteQueuedSongs(String count) {
    return 'Dodano do kolejki $count utworów wybranych przez AI.';
  }

  @override
  String get bTasteFetchNow => 'Pobierz teraz';

  @override
  String get bTasteNotEnoughListening =>
      'Za mało odsłuchań. Odtwórz kilka utworów albo uruchom poniżej rundę treningową.';

  @override
  String get bTasteFamiliar => 'Znane';

  @override
  String get bTasteDiscoveryCap1 => 'Głównie utwory, które już znasz';

  @override
  String get bTasteDiscoveryCap2 => 'Kilka nowych utworów na półkę';

  @override
  String get bTasteDiscoveryCap3 =>
      'Połowa Strony głównej będzie dla ciebie nowa';

  @override
  String get bTasteDiscoveryCap4 =>
      'Pokaż mi rzeczy, których jeszcze nie słyszałem';

  @override
  String get bTasteCalm => 'Spokojnie';

  @override
  String get bTasteHighEnergy => 'Pełna energia';

  @override
  String get bTasteEnergyCaption =>
      'Przesuwa wybór w stronę głośniejszych i szybszych';

  @override
  String get bTasteTimeless => 'Ponadczasowe';

  @override
  String get bTasteFresh => 'Świeże';

  @override
  String get bTasteRecencyCaption =>
      'Jak mocno \"Nowe ⭐\" opiera się na dacie wydania';

  @override
  String get bTasteRarely => 'Rzadko';

  @override
  String get bTasteOften => 'Często';

  @override
  String get bTasteNostalgiaCaption =>
      'Jak głęboko szukać dawno zapomnianych hitów';

  @override
  String get bTasteListeningHistory => 'Historia słuchania';

  @override
  String bTastePlaysRecorded(String count) {
    return 'Zapisano $count odtworzeń';
  }

  @override
  String get bTasteSkips => 'Pominięcia';

  @override
  String bTasteSkipsCounted(String count) {
    return '$count pominięć liczy się przeciw utworom';
  }

  @override
  String get bTasteTimeOfDaySub => 'Inne propozycje o 08:00 i o 23:00';

  @override
  String get bTasteYoutubeRelated => 'Powiązane utwory z YouTube';

  @override
  String get bTasteYoutubeRelatedSub =>
      'Dodaje utwory, których jeszcze nie masz';

  @override
  String get bTasteResetSub =>
      'Czyści odtworzenia, pominięcia i wagi. Zachowuje bibliotekę.';

  @override
  String get bTasteResetDialogTitle => 'Zresetować AI?';

  @override
  String get bTasteResetDialogBody =>
      'Biblioteka, playlisty i pobrane pliki zostają. Wszystko, czego nauczyła się o tobie, zostanie usunięte, a Strona główna wróci do ustawień domyślnych.';

  @override
  String get bTasteResetAction => 'Zresetuj';

  @override
  String get bTrainHearIt => 'Posłuchaj';

  @override
  String bImportDoneAdded(String count) {
    return 'Gotowe · dodano $count nowych utworów';
  }

  @override
  String bImportScanningProgress(String scanned, String total) {
    return 'Skanowanie · $scanned z $total plików';
  }

  @override
  String get bImportWatchedFolders => 'Obserwowane foldery';

  @override
  String get bImportWatchedFoldersSub =>
      'Skanowane ponownie przy starcie aplikacji';

  @override
  String get bImportNoneYet =>
      'Jeszcze żadnych. Wybierz folder, a będzie obserwowany automatycznie.';

  @override
  String get bImportFoundOnDevice => 'Znaleziono na tym urządzeniu';

  @override
  String get bImportFoundOnDeviceSub => 'Dotknij, aby zeskanować i obserwować';

  @override
  String get bImportYourFiles => 'Twoje pliki';

  @override
  String bImportImportedSoFar(String count) {
    return 'Dotąd zaimportowano: $count';
  }

  @override
  String get bImportFilesStayNote =>
      'Pliki zostają tam, gdzie są — TuneBox tylko je indeksuje. Usuń plik, a po następnym skanowaniu po cichu zniknie z biblioteki.';

  @override
  String get bImportRescan => 'Skanuj ponownie';

  @override
  String get cMore => 'Więcej';

  @override
  String cBlockedSnack(String title) {
    return 'Zablokowano \"$title\" — AI będzie tego unikać';
  }

  @override
  String get cLike => 'Lubię';

  @override
  String get cUnlike => 'Cofnij polubienie';

  @override
  String get cRemoveFromLiked => 'Usuń z polubionych';

  @override
  String get cLikeSub => 'AI uczy się od razu';

  @override
  String get cSave => 'Zapisz';

  @override
  String get cNothingPlaying => 'Nic nie gra';

  @override
  String get cNothingPlayingBody => 'Wybierz utwór, a pojawi się tutaj.';

  @override
  String get cPlayingFrom => 'Odtwarzanie z';

  @override
  String get cSeek => 'Przewiń';

  @override
  String cTimeOf(String done, String total) {
    return '$done z $total';
  }

  @override
  String get cShuffleOn => 'Losowo: włączone';

  @override
  String get cShuffleOff => 'Losowo: wyłączone';

  @override
  String get cPrevious => 'Poprzedni';

  @override
  String get cNext => 'Następny';

  @override
  String get cPause => 'Pauza';

  @override
  String get cRepeatOne => 'Powtarzanie: ten utwór';

  @override
  String get cRepeatOff => 'Powtarzanie: wyłączone';

  @override
  String get cRepeatAll => 'Powtarzanie: cała kolejka';

  @override
  String get cSaved => 'Zapisano';

  @override
  String get cAudio => 'Dźwięk';

  @override
  String get cSpeed => 'Prędkość';

  @override
  String get cAndroidOnly => 'Tylko Android';

  @override
  String get cPlaylist => 'Playlista';

  @override
  String get cSearchResults => 'Wyniki wyszukiwania';

  @override
  String get cYourLibrary => 'Twoja biblioteka';

  @override
  String get cRadio => 'Radio';

  @override
  String get cYourQueue => 'Twoja kolejka';

  @override
  String cDownloadFailed(String title) {
    return 'Pobieranie nie powiodło się: $title';
  }

  @override
  String cAiDownloading(String title) {
    return 'AI pobiera $title';
  }

  @override
  String cDownloading(String title) {
    return 'Pobieranie $title';
  }

  @override
  String get cSaveQueueAs => 'Zapisz kolejkę jako';

  @override
  String cProfileSwitch(String count) {
    return 'Profil · dotknij, aby zmienić ($count)';
  }

  @override
  String get cProfileAddAnother =>
      'Profil · dotknij, aby dodać kolejnego słuchacza';

  @override
  String get cUseIt => 'Użyj';

  @override
  String cAiBudgetSub(String daily, String gb) {
    return 'Do $daily dziennie · budżet $gb GB · ustawisz w Twoim guście';
  }

  @override
  String cFoldersWatched(String count) {
    return 'Obserwowane foldery: $count';
  }

  @override
  String get cMoveTasteSub =>
      'Między urządzeniami przez Wi-Fi, plikiem lub tekstem';

  @override
  String get cSearchLanguages => 'Szukaj języków';

  @override
  String cNoLanguageMatch(String query) {
    return 'Brak języka pasującego do \"$query\"';
  }

  @override
  String addedToPlaylist(String name) {
    return 'Dodano do „$name”';
  }
}
