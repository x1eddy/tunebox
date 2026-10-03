import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app/theme.dart';

/// Injected in main() once SharedPreferences has loaded.
final prefsProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError('prefs not ready'),
);

/// Every language the app ships: code -> (name in that language, English name).
/// The English name only exists so the search box finds "German" as well as
/// "Deutsch". '' follows the system.
const kLanguageInfo = <String, (String, String)>{
  '': ('Follow the system', 'System default'),
  'en': ('English', 'English'),
  'de': ('Deutsch', 'German'),
  'es': ('Español', 'Spanish'),
  'fr': ('Français', 'French'),
  'it': ('Italiano', 'Italian'),
  'nl': ('Nederlands', 'Dutch'),
  'pl': ('Polski', 'Polish'),
  'pt': ('Português', 'Portuguese'),
  'af': ('Afrikaans', 'Afrikaans'),
  'am': ('አማርኛ', 'Amharic'),
  'ar': ('العربية', 'Arabic'),
  'as': ('অসমীয়া', 'Assamese'),
  'az': ('Azərbaycanca', 'Azerbaijani'),
  'be': ('Беларуская', 'Belarusian'),
  'bg': ('Български', 'Bulgarian'),
  'bn': ('বাংলা', 'Bengali'),
  'bo': ('བོད་སྐད་', 'Tibetan'),
  'bs': ('Bosanski', 'Bosnian'),
  'ca': ('Català', 'Catalan'),
  'cs': ('Čeština', 'Czech'),
  'cy': ('Cymraeg', 'Welsh'),
  'da': ('Dansk', 'Danish'),
  'el': ('Ελληνικά', 'Greek'),
  'et': ('Eesti', 'Estonian'),
  'eu': ('Euskara', 'Basque'),
  'fa': ('فارسی', 'Persian'),
  'fi': ('Suomi', 'Finnish'),
  'fil': ('Filipino', 'Filipino'),
  'ga': ('Gaeilge', 'Irish'),
  'gl': ('Galego', 'Galician'),
  'gsw': ('Schwiizertüütsch', 'Swiss German'),
  'gu': ('ગુજરાતી', 'Gujarati'),
  'he': ('עברית', 'Hebrew'),
  'hi': ('हिन्दी', 'Hindi'),
  'hr': ('Hrvatski', 'Croatian'),
  'hu': ('Magyar', 'Hungarian'),
  'hy': ('Հայերեն', 'Armenian'),
  'id': ('Bahasa Indonesia', 'Indonesian'),
  'is': ('Íslenska', 'Icelandic'),
  'ja': ('日本語', 'Japanese'),
  'ka': ('ქართული', 'Georgian'),
  'kk': ('Қазақша', 'Kazakh'),
  'km': ('ខ្មែរ', 'Khmer'),
  'kn': ('ಕನ್ನಡ', 'Kannada'),
  'ko': ('한국어', 'Korean'),
  'ky': ('Кыргызча', 'Kyrgyz'),
  'lo': ('ລາວ', 'Lao'),
  'lt': ('Lietuvių', 'Lithuanian'),
  'lv': ('Latviešu', 'Latvian'),
  'mk': ('Македонски', 'Macedonian'),
  'ml': ('മലയാളം', 'Malayalam'),
  'mn': ('Монгол', 'Mongolian'),
  'mr': ('मराठी', 'Marathi'),
  'ms': ('Bahasa Melayu', 'Malay'),
  'my': ('မြန်မာ', 'Burmese'),
  'nb': ('Norsk bokmål', 'Norwegian'),
  'ne': ('नेपाली', 'Nepali'),
  'or': ('ଓଡ଼ିଆ', 'Odia'),
  'pa': ('ਪੰਜਾਬੀ', 'Punjabi'),
  'ps': ('پښتو', 'Pashto'),
  'ro': ('Română', 'Romanian'),
  'ru': ('Русский', 'Russian'),
  'si': ('සිංහල', 'Sinhala'),
  'sk': ('Slovenčina', 'Slovak'),
  'sl': ('Slovenščina', 'Slovenian'),
  'sq': ('Shqip', 'Albanian'),
  'sr': ('Српски', 'Serbian'),
  'sr_Latn': ('Srpski (latinica)', 'Serbian Latin'),
  'sv': ('Svenska', 'Swedish'),
  'sw': ('Kiswahili', 'Swahili'),
  'ta': ('தமிழ்', 'Tamil'),
  'te': ('తెలుగు', 'Telugu'),
  'th': ('ไทย', 'Thai'),
  'tr': ('Türkçe', 'Turkish'),
  'ug': ('ئۇيغۇرچە', 'Uyghur'),
  'uk': ('Українська', 'Ukrainian'),
  'ur': ('اردو', 'Urdu'),
  'uz': ('Oʻzbekcha', 'Uzbek'),
  'vi': ('Tiếng Việt', 'Vietnamese'),
  'zh': ('简体中文', 'Chinese Simplified'),
  'zh_TW': ('繁體中文', 'Chinese Traditional'),
  'zu': ('isiZulu', 'Zulu'),
};

/// Native names only, in the order above.
final kLanguages = <String, String>{
  for (final e in kLanguageInfo.entries) e.key: e.value.$1,
};

String languageName(String code) => kLanguages[code] ?? code;

/// "zh_TW" -> zh-TW, "sr_Latn" -> sr in Latin script, "" -> follow the system.
Locale? localeFromCode(String code) {
  if (code.isEmpty) return null;
  final parts = code.split('_');
  if (parts.length == 1) return Locale(parts[0]);
  final second = parts[1];
  return second.length == 4
      ? Locale.fromSubtags(languageCode: parts[0], scriptCode: second)
      : Locale(parts[0], second);
}

/// Where the app's accent colour comes from.
enum AccentMode {
  artwork('From the cover art'),
  fixed('One colour I picked');

  const AccentMode(this.label);
  final String label;
}

/// Hand-picked seeds for the colour picker, plus whatever custom colour the
/// user lands on with the wheel.
const kAccentPresets = <String, Color>{
  'Ember': Color(0xFFFF6B35),
  'Sunflower': Color(0xFFFFB703),
  'Lime': Color(0xFF7CB518),
  'Mint': Color(0xFF00C9A7),
  'Ice': Color(0xFF48CAE4),
  'Cobalt': Color(0xFF3F5EFB),
  'Violet': Color(0xFF9B5DE5),
  'Magenta': Color(0xFFFF006E),
  'Rose': Color(0xFFEF476F),
  'Sand': Color(0xFFB08968),
  'Slate': Color(0xFF6C7A89),
  'Mono': Color(0xFF9AA0A6),
};

@immutable
class Settings {
  const Settings({
    this.themeMode = ThemeMode.dark,
    this.pureBlack = false,
    this.accentMode = AccentMode.artwork,
    this.accentColor = kDefaultSeed,
    this.skipSilence = false,
    this.audioQualityKbps = 0,
    this.wifiOnlyDownloads = true,
    this.downloadLikes = true,
    this.aiAutoDownload = false,
    this.aiDailyDownloads = 5,
    this.aiStorageBudgetMb = 2048,
    this.watchedFolders = const [],
    // AI dials
    this.learning = true,
    this.discovery = 0.45,
    this.energy = 0.55,
    this.recency = 0.55,
    this.nostalgia = 0.65,
    this.useHistory = true,
    this.useSkips = true,
    this.useTimeOfDay = true,
    this.useYouTubeSignals = true,
    // language
    this.localeCode = '',
    // accessibility
    this.textScale = 1.0,
    this.reduceMotion = false,
    this.highContrast = false,
    this.boldText = false,
    // advanced — deliberately on out of the box
    this.autoRadio = true,
    this.smartShuffle = true,
    this.resumePlayback = true,
    this.dataSaverOffWifi = true,
    this.haptics = true,
    this.showReasons = true,
    this.autoUpdate = true,
  });

  final ThemeMode themeMode;
  final bool pureBlack;
  final AccentMode accentMode;
  final Color accentColor;
  final bool skipSilence;
  final int audioQualityKbps; // 0 = best available
  final bool wifiOnlyDownloads;

  /// "Every time I like something, download it."
  final bool downloadLikes;

  /// "Let the AI install things it thinks I like."
  final bool aiAutoDownload;
  final int aiDailyDownloads;
  final int aiStorageBudgetMb;

  final List<String> watchedFolders;

  final bool learning;
  final double discovery;
  final double energy;
  final double recency;
  final double nostalgia;
  final bool useHistory;
  final bool useSkips;
  final bool useTimeOfDay;
  final bool useYouTubeSignals;

  /// Empty means "follow the system language".
  final String localeCode;

  // ------------------------------------------------------------ accessibility

  /// Multiplies every text size in the app, on top of the system setting.
  final double textScale;

  /// Stops anything that moves on its own: the equalizer bars, the visualiser,
  /// shimmering placeholders and page transitions.
  final bool reduceMotion;

  /// Stronger foreground/background separation and visible outlines.
  final bool highContrast;
  final bool boldText;

  // ---------------------------------------------------------------- advanced

  /// When the queue runs dry, keep going with a radio built from the last
  /// song instead of falling silent.
  final bool autoRadio;

  /// Shuffle by taste rather than at random: the songs the AI rates highest
  /// surface earlier, but the order still changes every time.
  final bool smartShuffle;

  /// Put the queue back where it was on the next launch, paused.
  final bool resumePlayback;

  /// Cap streaming and downloads at 128 kbps when off Wi-Fi.
  final bool dataSaverOffWifi;

  final bool haptics;

  /// Show "because you played X" under recommendations.
  final bool showReasons;

  /// Look for a newer TuneBox every few hours, quietly, and fetch it on
  /// Wi-Fi. Installing still needs a tap — Android always asks.
  final bool autoUpdate;

  String get qualityLabel => switch (audioQualityKbps) {
    64 => 'Low · 64 kbps',
    128 => 'Normal · 128 kbps',
    192 => 'High · 192 kbps',
    _ => 'Best available',
  };

  Settings copyWith({
    ThemeMode? themeMode,
    bool? pureBlack,
    AccentMode? accentMode,
    Color? accentColor,
    bool? skipSilence,
    int? audioQualityKbps,
    bool? wifiOnlyDownloads,
    bool? downloadLikes,
    bool? aiAutoDownload,
    int? aiDailyDownloads,
    int? aiStorageBudgetMb,
    List<String>? watchedFolders,
    bool? learning,
    double? discovery,
    double? energy,
    double? recency,
    double? nostalgia,
    bool? useHistory,
    bool? useSkips,
    bool? useTimeOfDay,
    bool? useYouTubeSignals,
    String? localeCode,
    double? textScale,
    bool? reduceMotion,
    bool? highContrast,
    bool? boldText,
    bool? autoRadio,
    bool? smartShuffle,
    bool? resumePlayback,
    bool? dataSaverOffWifi,
    bool? haptics,
    bool? showReasons,
    bool? autoUpdate,
  }) => Settings(
    themeMode: themeMode ?? this.themeMode,
    pureBlack: pureBlack ?? this.pureBlack,
    accentMode: accentMode ?? this.accentMode,
    accentColor: accentColor ?? this.accentColor,
    skipSilence: skipSilence ?? this.skipSilence,
    audioQualityKbps: audioQualityKbps ?? this.audioQualityKbps,
    wifiOnlyDownloads: wifiOnlyDownloads ?? this.wifiOnlyDownloads,
    downloadLikes: downloadLikes ?? this.downloadLikes,
    aiAutoDownload: aiAutoDownload ?? this.aiAutoDownload,
    aiDailyDownloads: aiDailyDownloads ?? this.aiDailyDownloads,
    aiStorageBudgetMb: aiStorageBudgetMb ?? this.aiStorageBudgetMb,
    watchedFolders: watchedFolders ?? this.watchedFolders,
    learning: learning ?? this.learning,
    discovery: discovery ?? this.discovery,
    energy: energy ?? this.energy,
    recency: recency ?? this.recency,
    nostalgia: nostalgia ?? this.nostalgia,
    useHistory: useHistory ?? this.useHistory,
    useSkips: useSkips ?? this.useSkips,
    useTimeOfDay: useTimeOfDay ?? this.useTimeOfDay,
    useYouTubeSignals: useYouTubeSignals ?? this.useYouTubeSignals,
    localeCode: localeCode ?? this.localeCode,
    textScale: textScale ?? this.textScale,
    reduceMotion: reduceMotion ?? this.reduceMotion,
    highContrast: highContrast ?? this.highContrast,
    boldText: boldText ?? this.boldText,
    autoRadio: autoRadio ?? this.autoRadio,
    smartShuffle: smartShuffle ?? this.smartShuffle,
    resumePlayback: resumePlayback ?? this.resumePlayback,
    dataSaverOffWifi: dataSaverOffWifi ?? this.dataSaverOffWifi,
    haptics: haptics ?? this.haptics,
    showReasons: showReasons ?? this.showReasons,
    autoUpdate: autoUpdate ?? this.autoUpdate,
  );

  static Settings load(SharedPreferences p) => Settings(
    themeMode: ThemeMode.values[p.getInt('themeMode') ?? ThemeMode.dark.index],
    pureBlack: p.getBool('pureBlack') ?? false,
    accentMode:
        AccentMode.values[p.getInt('accentMode') ?? AccentMode.artwork.index],
    accentColor: Color(p.getInt('accentColor') ?? kDefaultSeed.toARGB32()),
    skipSilence: p.getBool('skipSilence') ?? false,
    audioQualityKbps: p.getInt('audioQualityKbps') ?? 0,
    wifiOnlyDownloads: p.getBool('wifiOnlyDownloads') ?? true,
    downloadLikes: p.getBool('downloadLikes') ?? true,
    aiAutoDownload: p.getBool('aiAutoDownload') ?? false,
    aiDailyDownloads: p.getInt('aiDailyDownloads') ?? 5,
    aiStorageBudgetMb: p.getInt('aiStorageBudgetMb') ?? 2048,
    watchedFolders: p.getStringList('watchedFolders') ?? const [],
    learning: p.getBool('learning') ?? true,
    discovery: p.getDouble('discovery') ?? 0.45,
    energy: p.getDouble('energy') ?? 0.55,
    recency: p.getDouble('recency') ?? 0.55,
    nostalgia: p.getDouble('nostalgia') ?? 0.65,
    useHistory: p.getBool('useHistory') ?? true,
    useSkips: p.getBool('useSkips') ?? true,
    useTimeOfDay: p.getBool('useTimeOfDay') ?? true,
    useYouTubeSignals: p.getBool('useYouTubeSignals') ?? true,
    localeCode: p.getString('localeCode') ?? '',
    textScale: p.getDouble('textScale') ?? 1.0,
    reduceMotion: p.getBool('reduceMotion') ?? false,
    highContrast: p.getBool('highContrast') ?? false,
    boldText: p.getBool('boldText') ?? false,
    autoRadio: p.getBool('autoRadio') ?? true,
    smartShuffle: p.getBool('smartShuffle') ?? true,
    resumePlayback: p.getBool('resumePlayback') ?? true,
    dataSaverOffWifi: p.getBool('dataSaverOffWifi') ?? true,
    haptics: p.getBool('haptics') ?? true,
    showReasons: p.getBool('showReasons') ?? true,
    autoUpdate: p.getBool('autoUpdate') ?? true,
  );

  Future<void> save(SharedPreferences p) async {
    await p.setInt('themeMode', themeMode.index);
    await p.setBool('pureBlack', pureBlack);
    await p.setInt('accentMode', accentMode.index);
    await p.setInt('accentColor', accentColor.toARGB32());
    await p.setBool('skipSilence', skipSilence);
    await p.setInt('audioQualityKbps', audioQualityKbps);
    await p.setBool('wifiOnlyDownloads', wifiOnlyDownloads);
    await p.setBool('downloadLikes', downloadLikes);
    await p.setBool('aiAutoDownload', aiAutoDownload);
    await p.setInt('aiDailyDownloads', aiDailyDownloads);
    await p.setInt('aiStorageBudgetMb', aiStorageBudgetMb);
    await p.setStringList('watchedFolders', watchedFolders);
    await p.setBool('learning', learning);
    await p.setDouble('discovery', discovery);
    await p.setDouble('energy', energy);
    await p.setDouble('recency', recency);
    await p.setDouble('nostalgia', nostalgia);
    await p.setBool('useHistory', useHistory);
    await p.setBool('useSkips', useSkips);
    await p.setBool('useTimeOfDay', useTimeOfDay);
    await p.setBool('useYouTubeSignals', useYouTubeSignals);
    await p.setString('localeCode', localeCode);
    await p.setDouble('textScale', textScale);
    await p.setBool('reduceMotion', reduceMotion);
    await p.setBool('highContrast', highContrast);
    await p.setBool('boldText', boldText);
    await p.setBool('autoRadio', autoRadio);
    await p.setBool('smartShuffle', smartShuffle);
    await p.setBool('resumePlayback', resumePlayback);
    await p.setBool('dataSaverOffWifi', dataSaverOffWifi);
    await p.setBool('haptics', haptics);
    await p.setBool('showReasons', showReasons);
    await p.setBool('autoUpdate', autoUpdate);
  }
}

class SettingsController extends Notifier<Settings> {
  @override
  Settings build() => Settings.load(ref.read(prefsProvider));

  void update(Settings Function(Settings) change) {
    state = change(state);
    state.save(ref.read(prefsProvider));
  }

  void addWatchedFolder(String path) {
    if (state.watchedFolders.contains(path)) return;
    update((s) => s.copyWith(watchedFolders: [...s.watchedFolders, path]));
  }

  void removeWatchedFolder(String path) => update(
    (s) => s.copyWith(
      watchedFolders: [...s.watchedFolders]..remove(path),
    ),
  );
}

final settingsProvider =
    NotifierProvider<SettingsController, Settings>(SettingsController.new);
