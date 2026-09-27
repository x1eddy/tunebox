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
  String get setCheckNow => 'Szukaj teraz';

  @override
  String get setUpToDate => 'TuneBox jest aktualny';

  @override
  String get setChecking => 'Szukam nowszej wersji…';
}
