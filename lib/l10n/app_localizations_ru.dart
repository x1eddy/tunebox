// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class LRu extends L {
  LRu([String locale = 'ru']) : super(locale);

  @override
  String get navHome => 'Главная';

  @override
  String get navExplore => 'Обзор';

  @override
  String get navLibrary => 'Медиатека';

  @override
  String get navTaste => 'Ваши вкусы';

  @override
  String get actionDone => 'Готово';

  @override
  String get actionCancel => 'Отмена';

  @override
  String get actionCreate => 'Создать';

  @override
  String get actionPlay => 'Играть';

  @override
  String get actionShuffle => 'Вперемешку';

  @override
  String get actionPlayAll => 'Играть все';

  @override
  String get actionAdd => 'Добавить';

  @override
  String get actionRemove => 'Удалить';

  @override
  String get actionName => 'Название';

  @override
  String get greetingNight => 'Ещё не спите?';

  @override
  String get greetingMorning => 'Доброе утро';

  @override
  String get greetingAfternoon => 'Добрый день';

  @override
  String get greetingEvening => 'Добрый вечер';

  @override
  String get homeBuilding => 'ИИ собирает ваши подборки…';

  @override
  String get homeOffline => 'Нет сети — показано то, что есть на устройстве';

  @override
  String get homeNothingYet => 'Пока нечего показать';

  @override
  String homeShelfCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count подборки, только что обновлены',
      many: '$count подборок, только что обновлены',
      few: '$count подборки, только что обновлены',
      one: '$count подборка, только что обновлена',
    );
    return '$_temp0';
  }

  @override
  String get homeRebuild => 'Пересобрать подборки';

  @override
  String get homeAddMusic => 'Добавить музыку с этого устройства';

  @override
  String get homeQuickPicks => 'Быстрый выбор';

  @override
  String get homeQuickPicksSub => 'Сразу вернуться к тому, что играло';

  @override
  String get homeEmptyTitle => 'Ваша медиатека пуста';

  @override
  String get homeEmptyBody =>
      'Найдите что-нибудь или добавьте музыку, которая уже есть на устройстве. ИИ начинает учиться с самого первого прослушивания.';

  @override
  String get homeAddMyMusic => 'Добавить мою музыку';

  @override
  String homeCouldNotReach(Object error) {
    return 'Не удалось связаться с YouTube: $error';
  }

  @override
  String get moodFocus => 'Фокус';

  @override
  String get moodWorkout => 'Тренировка';

  @override
  String get moodChill => 'Расслабление';

  @override
  String get moodCommute => 'В дороге';

  @override
  String get moodParty => 'Вечеринка';

  @override
  String moodBuilding(Object mood) {
    return 'Собираем микс «$mood»…';
  }

  @override
  String moodFailed(Object error) {
    return 'Не получилось: $error';
  }

  @override
  String get shelfRepeat => 'На повторе';

  @override
  String get shelfRepeatSub => 'Ваши последние две недели';

  @override
  String get shelfForgotten => 'Забытые хиты, которые вам нравились';

  @override
  String get shelfForgottenSub => 'Когда-то любимые, давно не слушали';

  @override
  String get shelfNew => 'Новое';

  @override
  String get shelfNewSub => 'Свежие треки, которые, по мнению ИИ, вам подойдут';

  @override
  String shelfBecause(Object artist) {
    return 'Потому что вы слушали $artist';
  }

  @override
  String get shelfBecauseSub => 'Тот же уголок ваших вкусов';

  @override
  String get shelfDeep => 'Почти не тронуто';

  @override
  String get shelfDeepSub => 'В вашей медиатеке, но почти не играло';

  @override
  String get shelfMix => 'Ваш микс';

  @override
  String get shelfMixSub => 'Собирается заново при каждом запуске приложения';

  @override
  String get shelfAdded => 'Недавно добавленные';

  @override
  String get shelfAddedSub => 'Загрузки и импортированные файлы';

  @override
  String get shelfStarter => 'Начните здесь';

  @override
  String get shelfStarterSub =>
      'Послушайте несколько треков, и ИИ сразу начнёт учиться';

  @override
  String reasonPlays(int count) {
    return 'Прослушиваний: $count';
  }

  @override
  String reasonLikedLast(Object when) {
    return 'Нравится, последний раз играл $when';
  }

  @override
  String reasonPlaysLast(int count, Object when) {
    return 'Прослушиваний: $count, последний раз $when';
  }

  @override
  String get reasonTopArtist =>
      'Один из ваших самых прослушиваемых исполнителей';

  @override
  String reasonMore(Object artist) {
    return 'Ещё $artist';
  }

  @override
  String reasonComeBack(Object artist) {
    return 'Вы постоянно возвращаетесь к $artist';
  }

  @override
  String reasonYourKind(Object tag) {
    return 'Ваш тип: $tag';
  }

  @override
  String reasonHeavyOn(Object tag) {
    return 'В последнее время много: $tag';
  }

  @override
  String get reasonOutThisYear => 'Вышло в этом году';

  @override
  String get reasonReleasedRecently => 'Недавний релиз';

  @override
  String get reasonClose => 'Близко к тому, что вы слушали';

  @override
  String reasonNear(Object artist) {
    return 'Рядом с $artist';
  }

  @override
  String get reasonNeverPlayed => 'Ни разу не играло';

  @override
  String get reasonPlayedOnce => 'Играло один раз';

  @override
  String get reasonPopular => 'Сейчас популярно';

  @override
  String whenYearsAgo(int count) {
    return '$count г. назад';
  }

  @override
  String whenMonthsAgo(int count) {
    return '$count мес. назад';
  }

  @override
  String whenDaysAgo(int count) {
    return '$count дн. назад';
  }

  @override
  String get searchHint => 'Песни, исполнители, альбомы';

  @override
  String searchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count результата',
      many: '$count результатов',
      few: '$count результата',
      one: '$count результат',
    );
    return '$_temp0';
  }

  @override
  String get searchRecent => 'Недавние запросы';

  @override
  String get searchEmptyTitle => 'Ничего не найдено';

  @override
  String get searchEmptyBody =>
      'Попробуйте другое написание или только имя исполнителя.';

  @override
  String get searchStartTitle => 'Найдите, что послушать';

  @override
  String get searchStartBody =>
      'Поиск в YouTube Music — находятся только песни, никаких видео о другом.';

  @override
  String get libPlaylists => 'Плейлисты';

  @override
  String get libSongs => 'Песни';

  @override
  String get libArtists => 'Исполнители';

  @override
  String get libLiked => 'Понравившиеся';

  @override
  String get libDownloads => 'Загрузки';

  @override
  String get libImported => 'Импортированные';

  @override
  String get libLikedSongs => 'Понравившиеся песни';

  @override
  String libSongCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count песни',
      many: '$count песен',
      few: '$count песни',
      one: '$count песня',
    );
    return '$_temp0';
  }

  @override
  String libOfflineCount(int count) {
    return 'Офлайн: $count';
  }

  @override
  String get libMyFiles => 'Мои файлы';

  @override
  String libFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count файла',
      many: '$count файлов',
      few: '$count файла',
      one: '$count файл',
    );
    return '$_temp0';
  }

  @override
  String get libNewPlaylist => 'Новый плейлист';

  @override
  String get libMakeOne => 'Создать';

  @override
  String get libSortRecent => 'Недавно добавленные';

  @override
  String get libSortTitle => 'Название';

  @override
  String get libSortArtist => 'Исполнитель';

  @override
  String get libSortPlays => 'Самые прослушиваемые';

  @override
  String get sheetNotForMe => 'Не для меня';

  @override
  String get sheetNotForMeSub => 'Больше никогда не рекомендовать это';

  @override
  String get sheetBlocked => 'Заблокировано — нажмите, чтобы разрешить снова';

  @override
  String get sheetBlockedSub => 'Может снова появляться в рекомендациях';

  @override
  String get sheetPlayNext => 'Играть следующим';

  @override
  String get sheetAddToPlaylist => 'Добавить в плейлист';

  @override
  String get sheetDownloaded => 'Загружено';

  @override
  String get sheetRemoveFile => 'Нажмите, чтобы удалить файл';

  @override
  String get sheetDownload => 'Загрузить';

  @override
  String get sheetKeepOffline => 'Сохранить для офлайн';

  @override
  String get sheetRadio => 'Запустить радио';

  @override
  String get sheetRadioSub => 'Очередь на основе этой песни';

  @override
  String get sheetQueue => 'Очередь';

  @override
  String get sheetSleepTimer => 'Таймер сна';

  @override
  String get sheetSleepOff => 'Выкл.';

  @override
  String sheetSleepMinutes(int count) {
    return '$count мин.';
  }

  @override
  String get sheetSleepEndOfTrack => 'Конец этой песни';

  @override
  String sheetSleepSet(int count) {
    return 'Музыка остановится через $count мин.';
  }

  @override
  String get tasteTitle => 'Ваши вкусы';

  @override
  String get tasteRetrain => 'Переобучить';

  @override
  String get tasteRetraining => 'Переобучение на вашей истории…';

  @override
  String get tasteRetrained => 'ИИ пересобрал свою модель.';

  @override
  String tasteConfidence(int percent) {
    return 'Уверенность $percent%';
  }

  @override
  String tasteCounts(int plays, int skips, int likes) {
    return 'Прослушиваний: $plays · пропусков: $skips · лайков: $likes';
  }

  @override
  String get tasteEmptySummary =>
      'Послушайте несколько песен, и здесь появятся данные.';

  @override
  String get tasteKeepLearning => 'Учиться, пока я слушаю';

  @override
  String get tasteKeepLearningSub =>
      'Выключите, чтобы заморозить текущий профиль';

  @override
  String get tasteDownloadsTitle => 'Загрузки от ИИ';

  @override
  String get tasteDownloadsSub =>
      'Музыка появляется на устройстве без вашего запроса';

  @override
  String get tasteDownloadLikes => 'Загружать всё, что мне нравится';

  @override
  String get tasteDownloadLikesSub =>
      'Нажмите на сердце, и файл сохранится для офлайн';

  @override
  String get tasteAiInstall => 'Разрешить ИИ устанавливать выбранную музыку';

  @override
  String get tasteAiInstallSub => 'Он будет загружать треки, в которых уверен';

  @override
  String get tasteWhatItThinks => 'Что, по его мнению, вам нравится';

  @override
  String get tasteWhatItThinksSub =>
      'Выводы из прослушиваний, пропусков, лайков и повторов';

  @override
  String get tasteArtists => 'Исполнители, на которых он опирается';

  @override
  String get tasteWhenYouListen => 'Когда вы слушаете';

  @override
  String get tasteWhenYouListenSub =>
      'Прослушиваний по часам — текущий час весит больше';

  @override
  String get tasteDecades => 'Десятилетия';

  @override
  String get tasteTune => 'Настроить рекомендации';

  @override
  String get tasteTuneSub => 'Вступит в силу при следующем обновлении главной';

  @override
  String get tasteDiscovery => 'Открытия';

  @override
  String get tasteDiscoverySub => 'Знакомое ↔ то, что вы ещё не слышали';

  @override
  String get tasteEnergy => 'Энергия';

  @override
  String get tasteEnergySub => 'Спокойно ↔ громко';

  @override
  String get tasteRecency => 'Новизна';

  @override
  String get tasteRecencySub => 'Вне времени ↔ совсем новое';

  @override
  String get tasteNostalgia => 'Ностальгия';

  @override
  String get tasteNostalgiaSub =>
      'Как давно должен быть любимый трек, чтобы считаться забытым';

  @override
  String get tasteSignals => 'Какие сигналы можно использовать';

  @override
  String get tasteSignalsSub => 'Всё остаётся на этом устройстве';

  @override
  String get tasteUseHistory => 'Что я слушал';

  @override
  String get tasteUseSkips => 'Что я пропускаю';

  @override
  String get tasteUseTime => 'Время суток';

  @override
  String get tasteUseYouTube => 'Предложения YouTube';

  @override
  String get tasteAlwaysMore => 'Всегда больше';

  @override
  String get tasteNeverAgain => 'Больше никогда';

  @override
  String get tasteAddArtist => 'Добавить исполнителя';

  @override
  String get tasteMoreOfPrompt => 'Всегда больше…';

  @override
  String get tasteNeverAgainPrompt => 'Больше никогда…';

  @override
  String get tasteReset => 'Сбросить, чему он научился';

  @override
  String get tasteResetSub => 'Ваша музыка останется; профиль начнётся с нуля';

  @override
  String get trainCard => 'Обучите его оценками';

  @override
  String get trainCardSub =>
      'Листайте настоящие песни. Вправо — больше такого, влево — больше никогда. Две минуты здесь стоят недели прослушивания.';

  @override
  String get trainStart => 'Начать раунд обучения';

  @override
  String get trainTitle => 'Раунд обучения';

  @override
  String get trainQuestion => 'Хотели бы вы видеть это на главной?';

  @override
  String get trainMoreLikeThis => 'Больше такого';

  @override
  String get trainNeverAgain => 'Больше никогда';

  @override
  String get trainDone => 'Раунд завершён';

  @override
  String trainSummary(int liked, int blocked, int before, int after) {
    return 'Оставлено: $liked · заблокировано: $blocked. Уверенность $before% → $after%';
  }

  @override
  String get trainBackToTaste => 'Назад к вашим вкусам';

  @override
  String get trainNothingTitle => 'Пока нечего оценивать';

  @override
  String get trainNothingBody =>
      'Добавьте музыку или дайте ИИ подобрать кандидатов, затем возвращайтесь.';

  @override
  String get trainLeaveTitle => 'Выйти из раунда обучения?';

  @override
  String trainLeaveBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Если выйти сейчас, ИИ отбросит всё из этого раунда — все $count только что оценённой песни.',
      many:
          'Если выйти сейчас, ИИ отбросит всё из этого раунда — все $count только что оценённых песен.',
      few:
          'Если выйти сейчас, ИИ отбросит всё из этого раунда — все $count только что оценённые песни.',
      one:
          'Если выйти сейчас, ИИ отбросит всё из этого раунда — $count только что оценённую песню.',
    );
    return '$_temp0';
  }

  @override
  String get trainKeepGoing => 'Продолжить обучение';

  @override
  String get trainDiscard => 'Отбросить и выйти';

  @override
  String get setTitle => 'Настройки';

  @override
  String get setAppearance => 'Оформление';

  @override
  String get setTheme => 'Тема';

  @override
  String get setThemeSystem => 'Как в системе';

  @override
  String get setThemeLight => 'Светлая';

  @override
  String get setThemeDark => 'Тёмная';

  @override
  String get setPureBlack => 'Чисто чёрный';

  @override
  String get setPureBlackSub => 'Экономит энергию на OLED-экране';

  @override
  String get setAccent => 'Акцентный цвет';

  @override
  String get setAccentArtwork => 'Из обложки';

  @override
  String get setAccentFixed => 'Один выбранный мной цвет';

  @override
  String get setLanguage => 'Язык';

  @override
  String get setLanguageSystem => 'Как в системе';

  @override
  String get setAccessibility => 'Специальные возможности';

  @override
  String get setTextSize => 'Размер текста';

  @override
  String get setTextSizeSub => 'Поверх системной настройки';

  @override
  String get setReduceMotion => 'Уменьшить анимацию';

  @override
  String get setReduceMotionSub =>
      'Отключает полосы, визуализатор, пружинящую прокрутку, упругие нажатия и переходы между страницами';

  @override
  String get setHighContrast => 'Высокая контрастность';

  @override
  String get setHighContrastSub => 'Более чёткое разделение и видимые контуры';

  @override
  String get setBoldText => 'Жирный текст';

  @override
  String get setPlayback => 'Воспроизведение';

  @override
  String get setAutoRadio => 'Не прерывать музыку';

  @override
  String get setAutoRadioSub =>
      'Когда очередь закончится, продолжить радио на основе последней песни';

  @override
  String get setSmartShuffle => 'Умное перемешивание';

  @override
  String get setSmartShuffleSub => 'Перемешивает по вкусу, а не случайно';

  @override
  String get setResume => 'Продолжить с того же места';

  @override
  String get setResumeSub =>
      'Восстанавливает очередь при запуске приложения, на паузе';

  @override
  String get setDataSaver => 'Экономия трафика вне Wi-Fi';

  @override
  String get setDataSaverSub =>
      'Ограничивает потоки и загрузки до 128 кбит/с в мобильной сети';

  @override
  String get setHaptics => 'Виброотклик';

  @override
  String get setShowReasons => 'Показывать, почему это рекомендовано';

  @override
  String get setSkipSilence => 'Пропускать тишину';

  @override
  String get setQuality => 'Качество звука';

  @override
  String get setQualityLow => 'Низкое · 64 кбит/с';

  @override
  String get setQualityNormal => 'Обычное · 128 кбит/с';

  @override
  String get setQualityHigh => 'Высокое · 192 кбит/с';

  @override
  String get setQualityBest => 'Лучшее доступное';

  @override
  String get setStorage => 'Загрузки и хранилище';

  @override
  String get setWifiOnly => 'Загружать только по Wi-Fi';

  @override
  String get setDailyLimit => 'Дневной лимит для ИИ';

  @override
  String setDailyLimitSub(int count) {
    return 'Песен в день: $count';
  }

  @override
  String get setBudget => 'Место, которое может занять ИИ';

  @override
  String setUsed(Object size) {
    return 'Загрузки занимают $size';
  }

  @override
  String get setYourMusic => 'Ваша музыка';

  @override
  String get setImport => 'Добавить музыку с этого устройства';

  @override
  String get setImportSub => 'Выберите папки или отдельные файлы';

  @override
  String get setCleanup => 'Очистить отсутствующие файлы';

  @override
  String get setCleanupSub => 'Убрать песни, файлы которых пропали';

  @override
  String setCleanupDone(int count) {
    return 'Удалено отсутствующих файлов: $count.';
  }

  @override
  String get setExport => 'Отправить мои вкусы на другое устройство';

  @override
  String get setExportSub =>
      'Сохраняет файл с вашими лайками, прослушиваниями и всем, чему научился ИИ';

  @override
  String get setImportTaste => 'Загрузить вкусы с другого устройства';

  @override
  String get setImportTasteSub =>
      'Выберите сохранённый файл и объедините — можно повторять безопасно';

  @override
  String get setAbout => 'О приложении';

  @override
  String get setAboutBody =>
      'Музыка из YouTube и ваших файлов. ИИ работает целиком на этом устройстве — ничто его не покидает.';

  @override
  String get setSource => 'Исходный код';

  @override
  String get importTitle => 'Добавить музыку';

  @override
  String get importPickFolder => 'Выбрать папку';

  @override
  String get importPickFiles => 'Выбрать файлы';

  @override
  String importScanning(Object file) {
    return 'Сканирование: $file';
  }

  @override
  String importAdded(int count) {
    return 'Добавлено: $count';
  }

  @override
  String get importDenied =>
      'Доступ запрещён — не удаётся прочитать вашу музыку.';

  @override
  String get importWatched => 'Отслеживаемые папки';

  @override
  String get importIosHint =>
      'Откройте приложение «Файлы», перейдите в «На iPhone» → TuneBox и положите музыку туда.';

  @override
  String get playerQueue => 'Очередь';

  @override
  String get playerUpNext => 'Далее';

  @override
  String get playerLyrics => 'Текст песни';

  @override
  String get playerNoLyrics => 'Для этой песни нет текста.';

  @override
  String get playerRepeat => 'Повтор';

  @override
  String get playerShuffle => 'Вперемешку';

  @override
  String errorPlayback(Object title) {
    return 'Не удалось воспроизвести «$title»';
  }

  @override
  String errorSkipping(Object title) {
    return 'Пропускаем «$title» — поток не открылся.';
  }

  @override
  String get undo => 'Отменить';

  @override
  String tasteSummaryLed(Object tags, Object artist) {
    return 'Сейчас: $tags, лидирует $artist.';
  }

  @override
  String tasteSummaryPlain(Object tags) {
    return 'Сейчас: $tags.';
  }

  @override
  String get setColour => 'Цвет';

  @override
  String get setColourSub => 'Всё приложение следует ему';

  @override
  String get setCoverArt => 'Обложка';

  @override
  String get setMyColour => 'Мой цвет';

  @override
  String get setCoverArtSub =>
      'Каждая песня перекрашивает приложение по своей обложке.';

  @override
  String get setMyColourSub => 'Один цвет, везде и всегда.';

  @override
  String get setPickColour => 'Выбрать любой цвет';

  @override
  String get setWifiOnlyTitle => 'Загружать только по Wi-Fi';

  @override
  String get setDownloadLikes => 'Загружать всё, что мне нравится';

  @override
  String get setDownloadLikesSub => 'Кнопка с сердцем также сохраняет файл';

  @override
  String get setAiInstall => 'Разрешить ИИ устанавливать выбранную музыку';

  @override
  String get setSkipSilenceSub =>
      'Только Android. Может обрезать тихие вступления, затухания и тихие фрагменты — выключите, если музыка прерывается';

  @override
  String get setStorageUsed => 'Место, занятое загрузками';

  @override
  String get setLibrary => 'Медиатека';

  @override
  String get setUpdates => 'Обновления';

  @override
  String get setAutoUpdate => 'Проверять обновления автоматически';

  @override
  String get setAutoUpdateSub =>
      'Раз в несколько часов, незаметно, и загружает по Wi-Fi. Установка всё равно спросит вас.';

  @override
  String setUpdateReady(Object version) {
    return 'Обновление до $version готово';
  }

  @override
  String get setUpdateReadySub => 'Загружено — нажмите, чтобы установить';

  @override
  String get setUpdateAvailableSub =>
      'Возьмите на странице релизов — нажмите, чтобы скопировать ссылку';

  @override
  String get setLinkCopied => 'Ссылка скопирована';

  @override
  String get setCheckNow => 'Проверить сейчас';

  @override
  String get setUpToDate => 'У вас последняя версия TuneBox';

  @override
  String get setChecking => 'Поиск новой версии…';

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
}
