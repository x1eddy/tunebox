import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of L
/// returned by `L.of(context)`.
///
/// Applications need to include `L.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L.localizationsDelegates,
///   supportedLocales: L.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L.supportedLocales
/// property.
abstract class L {
  L(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L of(BuildContext context) {
    return Localizations.of<L>(context, L)!;
  }

  static const LocalizationsDelegate<L> delegate = _LDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
  ];

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navExplore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get navExplore;

  /// No description provided for @navLibrary.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get navLibrary;

  /// No description provided for @navTaste.
  ///
  /// In en, this message translates to:
  /// **'Your taste'**
  String get navTaste;

  /// No description provided for @actionDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get actionDone;

  /// No description provided for @actionCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get actionCancel;

  /// No description provided for @actionCreate.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get actionCreate;

  /// No description provided for @actionPlay.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get actionPlay;

  /// No description provided for @actionShuffle.
  ///
  /// In en, this message translates to:
  /// **'Shuffle'**
  String get actionShuffle;

  /// No description provided for @actionPlayAll.
  ///
  /// In en, this message translates to:
  /// **'Play all'**
  String get actionPlayAll;

  /// No description provided for @actionAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get actionAdd;

  /// No description provided for @actionRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get actionRemove;

  /// No description provided for @actionName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get actionName;

  /// No description provided for @greetingNight.
  ///
  /// In en, this message translates to:
  /// **'Still up?'**
  String get greetingNight;

  /// No description provided for @greetingMorning.
  ///
  /// In en, this message translates to:
  /// **'Good morning'**
  String get greetingMorning;

  /// No description provided for @greetingAfternoon.
  ///
  /// In en, this message translates to:
  /// **'Good afternoon'**
  String get greetingAfternoon;

  /// No description provided for @greetingEvening.
  ///
  /// In en, this message translates to:
  /// **'Good evening'**
  String get greetingEvening;

  /// No description provided for @homeBuilding.
  ///
  /// In en, this message translates to:
  /// **'The AI is building your shelves…'**
  String get homeBuilding;

  /// No description provided for @homeOffline.
  ///
  /// In en, this message translates to:
  /// **'Offline — showing what is on the device'**
  String get homeOffline;

  /// No description provided for @homeNothingYet.
  ///
  /// In en, this message translates to:
  /// **'Nothing to show yet'**
  String get homeNothingYet;

  /// No description provided for @homeShelfCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 shelf, refreshed just now} other{{count} shelves, refreshed just now}}'**
  String homeShelfCount(int count);

  /// No description provided for @homeRebuild.
  ///
  /// In en, this message translates to:
  /// **'Rebuild shelves'**
  String get homeRebuild;

  /// No description provided for @homeAddMusic.
  ///
  /// In en, this message translates to:
  /// **'Add music from this device'**
  String get homeAddMusic;

  /// No description provided for @homeQuickPicks.
  ///
  /// In en, this message translates to:
  /// **'Quick picks'**
  String get homeQuickPicks;

  /// No description provided for @homeQuickPicksSub.
  ///
  /// In en, this message translates to:
  /// **'Straight back into what you were on'**
  String get homeQuickPicksSub;

  /// No description provided for @homeEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Your library is empty'**
  String get homeEmptyTitle;

  /// No description provided for @homeEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Search for something, or add the music already on this device. The AI starts learning from your very first play.'**
  String get homeEmptyBody;

  /// No description provided for @homeAddMyMusic.
  ///
  /// In en, this message translates to:
  /// **'Add my music'**
  String get homeAddMyMusic;

  /// No description provided for @homeCouldNotReach.
  ///
  /// In en, this message translates to:
  /// **'Could not reach YouTube: {error}'**
  String homeCouldNotReach(Object error);

  /// No description provided for @moodFocus.
  ///
  /// In en, this message translates to:
  /// **'Focus'**
  String get moodFocus;

  /// No description provided for @moodWorkout.
  ///
  /// In en, this message translates to:
  /// **'Workout'**
  String get moodWorkout;

  /// No description provided for @moodChill.
  ///
  /// In en, this message translates to:
  /// **'Chill'**
  String get moodChill;

  /// No description provided for @moodCommute.
  ///
  /// In en, this message translates to:
  /// **'Commute'**
  String get moodCommute;

  /// No description provided for @moodParty.
  ///
  /// In en, this message translates to:
  /// **'Party'**
  String get moodParty;

  /// No description provided for @moodBuilding.
  ///
  /// In en, this message translates to:
  /// **'Building a {mood} mix…'**
  String moodBuilding(Object mood);

  /// No description provided for @moodFailed.
  ///
  /// In en, this message translates to:
  /// **'No luck: {error}'**
  String moodFailed(Object error);

  /// No description provided for @shelfRepeat.
  ///
  /// In en, this message translates to:
  /// **'On repeat'**
  String get shelfRepeat;

  /// No description provided for @shelfRepeatSub.
  ///
  /// In en, this message translates to:
  /// **'Your last two weeks'**
  String get shelfRepeatSub;

  /// No description provided for @shelfForgotten.
  ///
  /// In en, this message translates to:
  /// **'Old forgotten hits you liked'**
  String get shelfForgotten;

  /// No description provided for @shelfForgottenSub.
  ///
  /// In en, this message translates to:
  /// **'Loved once, untouched for a while'**
  String get shelfForgottenSub;

  /// No description provided for @shelfNew.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get shelfNew;

  /// No description provided for @shelfNewSub.
  ///
  /// In en, this message translates to:
  /// **'Fresh tracks the AI thinks are for you'**
  String get shelfNewSub;

  /// No description provided for @shelfBecause.
  ///
  /// In en, this message translates to:
  /// **'Because you played {artist}'**
  String shelfBecause(Object artist);

  /// No description provided for @shelfBecauseSub.
  ///
  /// In en, this message translates to:
  /// **'Same corner of your taste'**
  String get shelfBecauseSub;

  /// No description provided for @shelfDeep.
  ///
  /// In en, this message translates to:
  /// **'Barely touched'**
  String get shelfDeep;

  /// No description provided for @shelfDeepSub.
  ///
  /// In en, this message translates to:
  /// **'In your library, hardly ever played'**
  String get shelfDeepSub;

  /// No description provided for @shelfMix.
  ///
  /// In en, this message translates to:
  /// **'Your mix'**
  String get shelfMix;

  /// No description provided for @shelfMixSub.
  ///
  /// In en, this message translates to:
  /// **'Rebuilt every time you open the app'**
  String get shelfMixSub;

  /// No description provided for @shelfAdded.
  ///
  /// In en, this message translates to:
  /// **'Recently added'**
  String get shelfAdded;

  /// No description provided for @shelfAddedSub.
  ///
  /// In en, this message translates to:
  /// **'Downloads and files you imported'**
  String get shelfAddedSub;

  /// No description provided for @shelfStarter.
  ///
  /// In en, this message translates to:
  /// **'Start here'**
  String get shelfStarter;

  /// No description provided for @shelfStarterSub.
  ///
  /// In en, this message translates to:
  /// **'Play a few and the AI starts learning immediately'**
  String get shelfStarterSub;

  /// No description provided for @reasonPlays.
  ///
  /// In en, this message translates to:
  /// **'{count} plays'**
  String reasonPlays(int count);

  /// No description provided for @reasonLikedLast.
  ///
  /// In en, this message translates to:
  /// **'Liked, last played {when}'**
  String reasonLikedLast(Object when);

  /// No description provided for @reasonPlaysLast.
  ///
  /// In en, this message translates to:
  /// **'{count} plays, last {when}'**
  String reasonPlaysLast(int count, Object when);

  /// No description provided for @reasonTopArtist.
  ///
  /// In en, this message translates to:
  /// **'One of your most played artists'**
  String get reasonTopArtist;

  /// No description provided for @reasonMore.
  ///
  /// In en, this message translates to:
  /// **'More {artist}'**
  String reasonMore(Object artist);

  /// No description provided for @reasonComeBack.
  ///
  /// In en, this message translates to:
  /// **'You keep coming back to {artist}'**
  String reasonComeBack(Object artist);

  /// No description provided for @reasonYourKind.
  ///
  /// In en, this message translates to:
  /// **'Your kind of {tag}'**
  String reasonYourKind(Object tag);

  /// No description provided for @reasonHeavyOn.
  ///
  /// In en, this message translates to:
  /// **'Heavy on {tag} lately'**
  String reasonHeavyOn(Object tag);

  /// No description provided for @reasonOutThisYear.
  ///
  /// In en, this message translates to:
  /// **'Out this year'**
  String get reasonOutThisYear;

  /// No description provided for @reasonReleasedRecently.
  ///
  /// In en, this message translates to:
  /// **'Released recently'**
  String get reasonReleasedRecently;

  /// No description provided for @reasonClose.
  ///
  /// In en, this message translates to:
  /// **'Close to what you have been playing'**
  String get reasonClose;

  /// No description provided for @reasonNear.
  ///
  /// In en, this message translates to:
  /// **'Sits near {artist}'**
  String reasonNear(Object artist);

  /// No description provided for @reasonNeverPlayed.
  ///
  /// In en, this message translates to:
  /// **'Never played'**
  String get reasonNeverPlayed;

  /// No description provided for @reasonPlayedOnce.
  ///
  /// In en, this message translates to:
  /// **'Played once'**
  String get reasonPlayedOnce;

  /// No description provided for @reasonPopular.
  ///
  /// In en, this message translates to:
  /// **'Popular right now'**
  String get reasonPopular;

  /// No description provided for @whenYearsAgo.
  ///
  /// In en, this message translates to:
  /// **'{count}y ago'**
  String whenYearsAgo(int count);

  /// No description provided for @whenMonthsAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} months ago'**
  String whenMonthsAgo(int count);

  /// No description provided for @whenDaysAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} days ago'**
  String whenDaysAgo(int count);

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Songs, artists, albums'**
  String get searchHint;

  /// No description provided for @searchResults.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 result} other{{count} results}}'**
  String searchResults(int count);

  /// No description provided for @searchRecent.
  ///
  /// In en, this message translates to:
  /// **'Recent searches'**
  String get searchRecent;

  /// No description provided for @searchEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Nothing found'**
  String get searchEmptyTitle;

  /// No description provided for @searchEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Try another spelling, or the artist\'s name on its own.'**
  String get searchEmptyBody;

  /// No description provided for @searchStartTitle.
  ///
  /// In en, this message translates to:
  /// **'Find something to play'**
  String get searchStartTitle;

  /// No description provided for @searchStartBody.
  ///
  /// In en, this message translates to:
  /// **'Search YouTube Music — only songs come back, never videos of other things.'**
  String get searchStartBody;

  /// No description provided for @libPlaylists.
  ///
  /// In en, this message translates to:
  /// **'Playlists'**
  String get libPlaylists;

  /// No description provided for @libSongs.
  ///
  /// In en, this message translates to:
  /// **'Songs'**
  String get libSongs;

  /// No description provided for @libArtists.
  ///
  /// In en, this message translates to:
  /// **'Artists'**
  String get libArtists;

  /// No description provided for @libLiked.
  ///
  /// In en, this message translates to:
  /// **'Liked'**
  String get libLiked;

  /// No description provided for @libDownloads.
  ///
  /// In en, this message translates to:
  /// **'Downloads'**
  String get libDownloads;

  /// No description provided for @libImported.
  ///
  /// In en, this message translates to:
  /// **'Imported'**
  String get libImported;

  /// No description provided for @libLikedSongs.
  ///
  /// In en, this message translates to:
  /// **'Liked songs'**
  String get libLikedSongs;

  /// No description provided for @libSongCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 song} other{{count} songs}}'**
  String libSongCount(int count);

  /// No description provided for @libOfflineCount.
  ///
  /// In en, this message translates to:
  /// **'{count} offline'**
  String libOfflineCount(int count);

  /// No description provided for @libMyFiles.
  ///
  /// In en, this message translates to:
  /// **'My own files'**
  String get libMyFiles;

  /// No description provided for @libFileCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 file} other{{count} files}}'**
  String libFileCount(int count);

  /// No description provided for @libNewPlaylist.
  ///
  /// In en, this message translates to:
  /// **'New playlist'**
  String get libNewPlaylist;

  /// No description provided for @libMakeOne.
  ///
  /// In en, this message translates to:
  /// **'Make one'**
  String get libMakeOne;

  /// No description provided for @libSortRecent.
  ///
  /// In en, this message translates to:
  /// **'Recently added'**
  String get libSortRecent;

  /// No description provided for @libSortTitle.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get libSortTitle;

  /// No description provided for @libSortArtist.
  ///
  /// In en, this message translates to:
  /// **'Artist'**
  String get libSortArtist;

  /// No description provided for @libSortPlays.
  ///
  /// In en, this message translates to:
  /// **'Most played'**
  String get libSortPlays;

  /// No description provided for @sheetNotForMe.
  ///
  /// In en, this message translates to:
  /// **'Not for me'**
  String get sheetNotForMe;

  /// No description provided for @sheetNotForMeSub.
  ///
  /// In en, this message translates to:
  /// **'Never recommend this again'**
  String get sheetNotForMeSub;

  /// No description provided for @sheetBlocked.
  ///
  /// In en, this message translates to:
  /// **'Blocked — tap to allow again'**
  String get sheetBlocked;

  /// No description provided for @sheetBlockedSub.
  ///
  /// In en, this message translates to:
  /// **'It can show up in recommendations again'**
  String get sheetBlockedSub;

  /// No description provided for @sheetPlayNext.
  ///
  /// In en, this message translates to:
  /// **'Play next'**
  String get sheetPlayNext;

  /// No description provided for @sheetAddToPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Add to playlist'**
  String get sheetAddToPlaylist;

  /// No description provided for @sheetDownloaded.
  ///
  /// In en, this message translates to:
  /// **'Downloaded'**
  String get sheetDownloaded;

  /// No description provided for @sheetRemoveFile.
  ///
  /// In en, this message translates to:
  /// **'Tap to remove the file'**
  String get sheetRemoveFile;

  /// No description provided for @sheetDownload.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get sheetDownload;

  /// No description provided for @sheetKeepOffline.
  ///
  /// In en, this message translates to:
  /// **'Keep it for offline'**
  String get sheetKeepOffline;

  /// No description provided for @sheetRadio.
  ///
  /// In en, this message translates to:
  /// **'Start radio'**
  String get sheetRadio;

  /// No description provided for @sheetRadioSub.
  ///
  /// In en, this message translates to:
  /// **'A queue built around this song'**
  String get sheetRadioSub;

  /// No description provided for @sheetQueue.
  ///
  /// In en, this message translates to:
  /// **'Queue'**
  String get sheetQueue;

  /// No description provided for @sheetSleepTimer.
  ///
  /// In en, this message translates to:
  /// **'Sleep timer'**
  String get sheetSleepTimer;

  /// No description provided for @sheetSleepOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get sheetSleepOff;

  /// No description provided for @sheetSleepMinutes.
  ///
  /// In en, this message translates to:
  /// **'{count} minutes'**
  String sheetSleepMinutes(int count);

  /// No description provided for @sheetSleepEndOfTrack.
  ///
  /// In en, this message translates to:
  /// **'End of this song'**
  String get sheetSleepEndOfTrack;

  /// No description provided for @sheetSleepSet.
  ///
  /// In en, this message translates to:
  /// **'Music stops in {count} min'**
  String sheetSleepSet(int count);

  /// No description provided for @tasteTitle.
  ///
  /// In en, this message translates to:
  /// **'Your taste'**
  String get tasteTitle;

  /// No description provided for @tasteRetrain.
  ///
  /// In en, this message translates to:
  /// **'Retrain'**
  String get tasteRetrain;

  /// No description provided for @tasteRetraining.
  ///
  /// In en, this message translates to:
  /// **'Retraining on your history…'**
  String get tasteRetraining;

  /// No description provided for @tasteRetrained.
  ///
  /// In en, this message translates to:
  /// **'The AI rebuilt its model.'**
  String get tasteRetrained;

  /// No description provided for @tasteConfidence.
  ///
  /// In en, this message translates to:
  /// **'Confidence {percent}%'**
  String tasteConfidence(int percent);

  /// No description provided for @tasteCounts.
  ///
  /// In en, this message translates to:
  /// **'{plays} plays · {skips} skips · {likes} likes'**
  String tasteCounts(int plays, int skips, int likes);

  /// No description provided for @tasteEmptySummary.
  ///
  /// In en, this message translates to:
  /// **'Play a few songs and this fills in.'**
  String get tasteEmptySummary;

  /// No description provided for @tasteKeepLearning.
  ///
  /// In en, this message translates to:
  /// **'Keep learning while I listen'**
  String get tasteKeepLearning;

  /// No description provided for @tasteKeepLearningSub.
  ///
  /// In en, this message translates to:
  /// **'Turn off to freeze the current profile'**
  String get tasteKeepLearningSub;

  /// No description provided for @tasteDownloadsTitle.
  ///
  /// In en, this message translates to:
  /// **'Downloads the AI handles'**
  String get tasteDownloadsTitle;

  /// No description provided for @tasteDownloadsSub.
  ///
  /// In en, this message translates to:
  /// **'Music lands on the device without you asking'**
  String get tasteDownloadsSub;

  /// No description provided for @tasteDownloadLikes.
  ///
  /// In en, this message translates to:
  /// **'Download everything I like'**
  String get tasteDownloadLikes;

  /// No description provided for @tasteDownloadLikesSub.
  ///
  /// In en, this message translates to:
  /// **'Hit the heart and the file is saved for offline'**
  String get tasteDownloadLikesSub;

  /// No description provided for @tasteAiInstall.
  ///
  /// In en, this message translates to:
  /// **'Let the AI install music it picks'**
  String get tasteAiInstall;

  /// No description provided for @tasteAiInstallSub.
  ///
  /// In en, this message translates to:
  /// **'It will fetch tracks it is confident about'**
  String get tasteAiInstallSub;

  /// No description provided for @tasteWhatItThinks.
  ///
  /// In en, this message translates to:
  /// **'What it thinks you like'**
  String get tasteWhatItThinks;

  /// No description provided for @tasteWhatItThinksSub.
  ///
  /// In en, this message translates to:
  /// **'Learned from plays, skips, likes and repeats'**
  String get tasteWhatItThinksSub;

  /// No description provided for @tasteArtists.
  ///
  /// In en, this message translates to:
  /// **'Artists it leans on'**
  String get tasteArtists;

  /// No description provided for @tasteWhenYouListen.
  ///
  /// In en, this message translates to:
  /// **'When you listen'**
  String get tasteWhenYouListen;

  /// No description provided for @tasteWhenYouListenSub.
  ///
  /// In en, this message translates to:
  /// **'Plays per hour — the current hour gets weighted'**
  String get tasteWhenYouListenSub;

  /// No description provided for @tasteDecades.
  ///
  /// In en, this message translates to:
  /// **'Decades'**
  String get tasteDecades;

  /// No description provided for @tasteTune.
  ///
  /// In en, this message translates to:
  /// **'Tune the recommendations'**
  String get tasteTune;

  /// No description provided for @tasteTuneSub.
  ///
  /// In en, this message translates to:
  /// **'Takes effect on the next Home refresh'**
  String get tasteTuneSub;

  /// No description provided for @tasteDiscovery.
  ///
  /// In en, this message translates to:
  /// **'Discovery'**
  String get tasteDiscovery;

  /// No description provided for @tasteDiscoverySub.
  ///
  /// In en, this message translates to:
  /// **'Familiar ↔ things you have never heard'**
  String get tasteDiscoverySub;

  /// No description provided for @tasteEnergy.
  ///
  /// In en, this message translates to:
  /// **'Energy'**
  String get tasteEnergy;

  /// No description provided for @tasteEnergySub.
  ///
  /// In en, this message translates to:
  /// **'Calm ↔ loud'**
  String get tasteEnergySub;

  /// No description provided for @tasteRecency.
  ///
  /// In en, this message translates to:
  /// **'Recency'**
  String get tasteRecency;

  /// No description provided for @tasteRecencySub.
  ///
  /// In en, this message translates to:
  /// **'Timeless ↔ brand new'**
  String get tasteRecencySub;

  /// No description provided for @tasteNostalgia.
  ///
  /// In en, this message translates to:
  /// **'Nostalgia'**
  String get tasteNostalgia;

  /// No description provided for @tasteNostalgiaSub.
  ///
  /// In en, this message translates to:
  /// **'How far back an old favourite counts as forgotten'**
  String get tasteNostalgiaSub;

  /// No description provided for @tasteSignals.
  ///
  /// In en, this message translates to:
  /// **'Signals it may use'**
  String get tasteSignals;

  /// No description provided for @tasteSignalsSub.
  ///
  /// In en, this message translates to:
  /// **'Everything stays on this device'**
  String get tasteSignalsSub;

  /// No description provided for @tasteUseHistory.
  ///
  /// In en, this message translates to:
  /// **'What I have played'**
  String get tasteUseHistory;

  /// No description provided for @tasteUseSkips.
  ///
  /// In en, this message translates to:
  /// **'What I skip'**
  String get tasteUseSkips;

  /// No description provided for @tasteUseTime.
  ///
  /// In en, this message translates to:
  /// **'Time of day'**
  String get tasteUseTime;

  /// No description provided for @tasteUseYouTube.
  ///
  /// In en, this message translates to:
  /// **'Suggestions from YouTube'**
  String get tasteUseYouTube;

  /// No description provided for @tasteAlwaysMore.
  ///
  /// In en, this message translates to:
  /// **'Always more of'**
  String get tasteAlwaysMore;

  /// No description provided for @tasteNeverAgain.
  ///
  /// In en, this message translates to:
  /// **'Never again'**
  String get tasteNeverAgain;

  /// No description provided for @tasteAddArtist.
  ///
  /// In en, this message translates to:
  /// **'Add an artist'**
  String get tasteAddArtist;

  /// No description provided for @tasteMoreOfPrompt.
  ///
  /// In en, this message translates to:
  /// **'Always more of…'**
  String get tasteMoreOfPrompt;

  /// No description provided for @tasteNeverAgainPrompt.
  ///
  /// In en, this message translates to:
  /// **'Never again…'**
  String get tasteNeverAgainPrompt;

  /// No description provided for @tasteReset.
  ///
  /// In en, this message translates to:
  /// **'Reset what it learned'**
  String get tasteReset;

  /// No description provided for @tasteResetSub.
  ///
  /// In en, this message translates to:
  /// **'Your music stays; the profile starts from zero'**
  String get tasteResetSub;

  /// No description provided for @trainCard.
  ///
  /// In en, this message translates to:
  /// **'Train it by rating'**
  String get trainCard;

  /// No description provided for @trainCardSub.
  ///
  /// In en, this message translates to:
  /// **'Swipe through real songs. Right for more like this, left for never again. Two minutes here beats a week of listening.'**
  String get trainCardSub;

  /// No description provided for @trainStart.
  ///
  /// In en, this message translates to:
  /// **'Start a training round'**
  String get trainStart;

  /// No description provided for @trainTitle.
  ///
  /// In en, this message translates to:
  /// **'Training round'**
  String get trainTitle;

  /// No description provided for @trainQuestion.
  ///
  /// In en, this message translates to:
  /// **'Would you want this on your Home?'**
  String get trainQuestion;

  /// No description provided for @trainMoreLikeThis.
  ///
  /// In en, this message translates to:
  /// **'More like this'**
  String get trainMoreLikeThis;

  /// No description provided for @trainNeverAgain.
  ///
  /// In en, this message translates to:
  /// **'Never again'**
  String get trainNeverAgain;

  /// No description provided for @trainDone.
  ///
  /// In en, this message translates to:
  /// **'Round complete'**
  String get trainDone;

  /// No description provided for @trainSummary.
  ///
  /// In en, this message translates to:
  /// **'{liked} kept · {blocked} blocked. Confidence {before}% → {after}%'**
  String trainSummary(int liked, int blocked, int before, int after);

  /// No description provided for @trainBackToTaste.
  ///
  /// In en, this message translates to:
  /// **'Back to your taste'**
  String get trainBackToTaste;

  /// No description provided for @trainNothingTitle.
  ///
  /// In en, this message translates to:
  /// **'Nothing to rate yet'**
  String get trainNothingTitle;

  /// No description provided for @trainNothingBody.
  ///
  /// In en, this message translates to:
  /// **'Add some music or let the AI fetch candidates first, then come back.'**
  String get trainNothingBody;

  /// No description provided for @trainLeaveTitle.
  ///
  /// In en, this message translates to:
  /// **'Leave the training round?'**
  String get trainLeaveTitle;

  /// No description provided for @trainLeaveBody.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{If you leave now, the AI discards everything from this round — the 1 song you just rated.} other{If you leave now, the AI discards everything from this round — all {count} songs you just rated.}}'**
  String trainLeaveBody(int count);

  /// No description provided for @trainKeepGoing.
  ///
  /// In en, this message translates to:
  /// **'Keep training'**
  String get trainKeepGoing;

  /// No description provided for @trainDiscard.
  ///
  /// In en, this message translates to:
  /// **'Discard and leave'**
  String get trainDiscard;

  /// No description provided for @setTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get setTitle;

  /// No description provided for @setAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get setAppearance;

  /// No description provided for @setTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get setTheme;

  /// No description provided for @setThemeSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow the system'**
  String get setThemeSystem;

  /// No description provided for @setThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get setThemeLight;

  /// No description provided for @setThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get setThemeDark;

  /// No description provided for @setPureBlack.
  ///
  /// In en, this message translates to:
  /// **'Pure black'**
  String get setPureBlack;

  /// No description provided for @setPureBlackSub.
  ///
  /// In en, this message translates to:
  /// **'Saves power on an OLED screen'**
  String get setPureBlackSub;

  /// No description provided for @setAccent.
  ///
  /// In en, this message translates to:
  /// **'Accent colour'**
  String get setAccent;

  /// No description provided for @setAccentArtwork.
  ///
  /// In en, this message translates to:
  /// **'From the cover art'**
  String get setAccentArtwork;

  /// No description provided for @setAccentFixed.
  ///
  /// In en, this message translates to:
  /// **'One colour I picked'**
  String get setAccentFixed;

  /// No description provided for @setLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get setLanguage;

  /// No description provided for @setLanguageSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow the system'**
  String get setLanguageSystem;

  /// No description provided for @setAccessibility.
  ///
  /// In en, this message translates to:
  /// **'Accessibility'**
  String get setAccessibility;

  /// No description provided for @setTextSize.
  ///
  /// In en, this message translates to:
  /// **'Text size'**
  String get setTextSize;

  /// No description provided for @setTextSizeSub.
  ///
  /// In en, this message translates to:
  /// **'On top of your system setting'**
  String get setTextSizeSub;

  /// No description provided for @setReduceMotion.
  ///
  /// In en, this message translates to:
  /// **'Reduce motion'**
  String get setReduceMotion;

  /// No description provided for @setReduceMotionSub.
  ///
  /// In en, this message translates to:
  /// **'Stops the bars, the visualiser and page transitions'**
  String get setReduceMotionSub;

  /// No description provided for @setHighContrast.
  ///
  /// In en, this message translates to:
  /// **'High contrast'**
  String get setHighContrast;

  /// No description provided for @setHighContrastSub.
  ///
  /// In en, this message translates to:
  /// **'Stronger separation and visible outlines'**
  String get setHighContrastSub;

  /// No description provided for @setBoldText.
  ///
  /// In en, this message translates to:
  /// **'Bold text'**
  String get setBoldText;

  /// No description provided for @setPlayback.
  ///
  /// In en, this message translates to:
  /// **'Playback'**
  String get setPlayback;

  /// No description provided for @setAutoRadio.
  ///
  /// In en, this message translates to:
  /// **'Keep the music going'**
  String get setAutoRadio;

  /// No description provided for @setAutoRadioSub.
  ///
  /// In en, this message translates to:
  /// **'When the queue ends, carry on with a radio built from the last song'**
  String get setAutoRadioSub;

  /// No description provided for @setSmartShuffle.
  ///
  /// In en, this message translates to:
  /// **'Smart shuffle'**
  String get setSmartShuffle;

  /// No description provided for @setSmartShuffleSub.
  ///
  /// In en, this message translates to:
  /// **'Shuffles by taste instead of at random'**
  String get setSmartShuffleSub;

  /// No description provided for @setResume.
  ///
  /// In en, this message translates to:
  /// **'Pick up where I left off'**
  String get setResume;

  /// No description provided for @setResumeSub.
  ///
  /// In en, this message translates to:
  /// **'Restores the queue when the app opens, paused'**
  String get setResumeSub;

  /// No description provided for @setDataSaver.
  ///
  /// In en, this message translates to:
  /// **'Data saver off Wi-Fi'**
  String get setDataSaver;

  /// No description provided for @setDataSaverSub.
  ///
  /// In en, this message translates to:
  /// **'Caps streams and downloads at 128 kbps on mobile data'**
  String get setDataSaverSub;

  /// No description provided for @setHaptics.
  ///
  /// In en, this message translates to:
  /// **'Haptic feedback'**
  String get setHaptics;

  /// No description provided for @setShowReasons.
  ///
  /// In en, this message translates to:
  /// **'Show why something was recommended'**
  String get setShowReasons;

  /// No description provided for @setSkipSilence.
  ///
  /// In en, this message translates to:
  /// **'Skip silence'**
  String get setSkipSilence;

  /// No description provided for @setQuality.
  ///
  /// In en, this message translates to:
  /// **'Audio quality'**
  String get setQuality;

  /// No description provided for @setQualityLow.
  ///
  /// In en, this message translates to:
  /// **'Low · 64 kbps'**
  String get setQualityLow;

  /// No description provided for @setQualityNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal · 128 kbps'**
  String get setQualityNormal;

  /// No description provided for @setQualityHigh.
  ///
  /// In en, this message translates to:
  /// **'High · 192 kbps'**
  String get setQualityHigh;

  /// No description provided for @setQualityBest.
  ///
  /// In en, this message translates to:
  /// **'Best available'**
  String get setQualityBest;

  /// No description provided for @setStorage.
  ///
  /// In en, this message translates to:
  /// **'Downloads and storage'**
  String get setStorage;

  /// No description provided for @setWifiOnly.
  ///
  /// In en, this message translates to:
  /// **'Download on Wi-Fi only'**
  String get setWifiOnly;

  /// No description provided for @setDailyLimit.
  ///
  /// In en, this message translates to:
  /// **'Daily limit for the AI'**
  String get setDailyLimit;

  /// No description provided for @setDailyLimitSub.
  ///
  /// In en, this message translates to:
  /// **'{count} songs a day'**
  String setDailyLimitSub(int count);

  /// No description provided for @setBudget.
  ///
  /// In en, this message translates to:
  /// **'Storage the AI may use'**
  String get setBudget;

  /// No description provided for @setUsed.
  ///
  /// In en, this message translates to:
  /// **'{size} used by downloads'**
  String setUsed(Object size);

  /// No description provided for @setYourMusic.
  ///
  /// In en, this message translates to:
  /// **'Your music'**
  String get setYourMusic;

  /// No description provided for @setImport.
  ///
  /// In en, this message translates to:
  /// **'Add music from this device'**
  String get setImport;

  /// No description provided for @setImportSub.
  ///
  /// In en, this message translates to:
  /// **'Pick folders or single files'**
  String get setImportSub;

  /// No description provided for @setCleanup.
  ///
  /// In en, this message translates to:
  /// **'Clean up missing files'**
  String get setCleanup;

  /// No description provided for @setCleanupSub.
  ///
  /// In en, this message translates to:
  /// **'Drop songs whose file is gone'**
  String get setCleanupSub;

  /// No description provided for @setCleanupDone.
  ///
  /// In en, this message translates to:
  /// **'Removed {count} missing files.'**
  String setCleanupDone(int count);

  /// No description provided for @setExport.
  ///
  /// In en, this message translates to:
  /// **'Send my taste to another device'**
  String get setExport;

  /// No description provided for @setExportSub.
  ///
  /// In en, this message translates to:
  /// **'Writes a transfer file: likes, plays and everything the AI learned'**
  String get setExportSub;

  /// No description provided for @setImportTaste.
  ///
  /// In en, this message translates to:
  /// **'Load taste from another device'**
  String get setImportTaste;

  /// No description provided for @setImportTasteSub.
  ///
  /// In en, this message translates to:
  /// **'Merges it with what this device knows'**
  String get setImportTasteSub;

  /// No description provided for @setAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get setAbout;

  /// No description provided for @setAboutBody.
  ///
  /// In en, this message translates to:
  /// **'Music from YouTube and your own files. The AI runs entirely on this device — nothing leaves it.'**
  String get setAboutBody;

  /// No description provided for @setSource.
  ///
  /// In en, this message translates to:
  /// **'Source code'**
  String get setSource;

  /// No description provided for @importTitle.
  ///
  /// In en, this message translates to:
  /// **'Add music'**
  String get importTitle;

  /// No description provided for @importPickFolder.
  ///
  /// In en, this message translates to:
  /// **'Pick a folder'**
  String get importPickFolder;

  /// No description provided for @importPickFiles.
  ///
  /// In en, this message translates to:
  /// **'Pick files'**
  String get importPickFiles;

  /// No description provided for @importScanning.
  ///
  /// In en, this message translates to:
  /// **'Scanning {file}'**
  String importScanning(Object file);

  /// No description provided for @importAdded.
  ///
  /// In en, this message translates to:
  /// **'{count} added'**
  String importAdded(int count);

  /// No description provided for @importDenied.
  ///
  /// In en, this message translates to:
  /// **'Permission denied — cannot read your music.'**
  String get importDenied;

  /// No description provided for @importWatched.
  ///
  /// In en, this message translates to:
  /// **'Folders it watches'**
  String get importWatched;

  /// No description provided for @importIosHint.
  ///
  /// In en, this message translates to:
  /// **'Open the Files app, go to On My iPhone → TuneBox, and drop music in there.'**
  String get importIosHint;

  /// No description provided for @playerQueue.
  ///
  /// In en, this message translates to:
  /// **'Queue'**
  String get playerQueue;

  /// No description provided for @playerUpNext.
  ///
  /// In en, this message translates to:
  /// **'Up next'**
  String get playerUpNext;

  /// No description provided for @playerLyrics.
  ///
  /// In en, this message translates to:
  /// **'Lyrics'**
  String get playerLyrics;

  /// No description provided for @playerNoLyrics.
  ///
  /// In en, this message translates to:
  /// **'No lyrics for this one.'**
  String get playerNoLyrics;

  /// No description provided for @playerRepeat.
  ///
  /// In en, this message translates to:
  /// **'Repeat'**
  String get playerRepeat;

  /// No description provided for @playerShuffle.
  ///
  /// In en, this message translates to:
  /// **'Shuffle'**
  String get playerShuffle;

  /// No description provided for @errorPlayback.
  ///
  /// In en, this message translates to:
  /// **'Could not play \"{title}\"'**
  String errorPlayback(Object title);

  /// No description provided for @errorSkipping.
  ///
  /// In en, this message translates to:
  /// **'Skipping \"{title}\" — the stream would not open.'**
  String errorSkipping(Object title);

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @tasteSummaryLed.
  ///
  /// In en, this message translates to:
  /// **'Right now: {tags}, led by {artist}.'**
  String tasteSummaryLed(Object tags, Object artist);

  /// No description provided for @tasteSummaryPlain.
  ///
  /// In en, this message translates to:
  /// **'Right now: {tags}.'**
  String tasteSummaryPlain(Object tags);

  /// No description provided for @setColour.
  ///
  /// In en, this message translates to:
  /// **'Colour'**
  String get setColour;

  /// No description provided for @setColourSub.
  ///
  /// In en, this message translates to:
  /// **'The whole app follows this'**
  String get setColourSub;

  /// No description provided for @setCoverArt.
  ///
  /// In en, this message translates to:
  /// **'Cover art'**
  String get setCoverArt;

  /// No description provided for @setMyColour.
  ///
  /// In en, this message translates to:
  /// **'My colour'**
  String get setMyColour;

  /// No description provided for @setCoverArtSub.
  ///
  /// In en, this message translates to:
  /// **'Every song retints the app from its cover.'**
  String get setCoverArtSub;

  /// No description provided for @setMyColourSub.
  ///
  /// In en, this message translates to:
  /// **'One colour, everywhere, all the time.'**
  String get setMyColourSub;

  /// No description provided for @setPickColour.
  ///
  /// In en, this message translates to:
  /// **'Pick any colour'**
  String get setPickColour;

  /// No description provided for @setWifiOnlyTitle.
  ///
  /// In en, this message translates to:
  /// **'Download on Wi-Fi only'**
  String get setWifiOnlyTitle;

  /// No description provided for @setDownloadLikes.
  ///
  /// In en, this message translates to:
  /// **'Download everything I like'**
  String get setDownloadLikes;

  /// No description provided for @setDownloadLikesSub.
  ///
  /// In en, this message translates to:
  /// **'The heart button also saves the file'**
  String get setDownloadLikesSub;

  /// No description provided for @setAiInstall.
  ///
  /// In en, this message translates to:
  /// **'Let the AI install music it picks'**
  String get setAiInstall;

  /// No description provided for @setSkipSilenceSub.
  ///
  /// In en, this message translates to:
  /// **'Android only'**
  String get setSkipSilenceSub;

  /// No description provided for @setStorageUsed.
  ///
  /// In en, this message translates to:
  /// **'Storage used by downloads'**
  String get setStorageUsed;

  /// No description provided for @setLibrary.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get setLibrary;
}

class _LDelegate extends LocalizationsDelegate<L> {
  const _LDelegate();

  @override
  Future<L> load(Locale locale) {
    return SynchronousFuture<L>(lookupL(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'de',
    'en',
    'es',
    'fr',
    'it',
    'nl',
    'pl',
    'pt',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_LDelegate old) => false;
}

L lookupL(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return LDe();
    case 'en':
      return LEn();
    case 'es':
      return LEs();
    case 'fr':
      return LFr();
    case 'it':
      return LIt();
    case 'nl':
      return LNl();
    case 'pl':
      return LPl();
    case 'pt':
      return LPt();
  }

  throw FlutterError(
    'L.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
