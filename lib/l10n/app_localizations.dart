import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gsw.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_my.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

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
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('as'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('bo'),
    Locale('bs'),
    Locale('ca'),
    Locale('cs'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('ga'),
    Locale('gl'),
    Locale('gsw'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ky'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('my'),
    Locale('nb'),
    Locale('ne'),
    Locale('nl'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale.fromSubtags(languageCode: 'sr', scriptCode: 'Latn'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('ug'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'TW'),
    Locale('zu'),
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
  /// **'Putting your shelves together…'**
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
  /// **'Search for something, or bring in the music already on this device. TuneBox starts learning from the first song you play.'**
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
  /// **'Fresh finds that fit your taste'**
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
  /// **'Play a few. It learns from the very first one'**
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
  /// **'Rebuilt from everything you have played.'**
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
  /// **'Automatic downloads'**
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
  /// **'Download songs it picks for me'**
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
  /// **'Add some music first, or let TuneBox fetch a few songs to rate, then come back.'**
  String get trainNothingBody;

  /// No description provided for @trainLeaveTitle.
  ///
  /// In en, this message translates to:
  /// **'Leave the training round?'**
  String get trainLeaveTitle;

  /// No description provided for @trainLeaveBody.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Leave now and the 1 song you just rated is forgotten.} other{Leave now and the {count} songs you just rated are forgotten.}}'**
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
  /// **'Stops the bars, the visualiser, bouncy scrolling, springy taps and page transitions'**
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
  /// **'Songs per day'**
  String get setDailyLimit;

  /// No description provided for @setDailyLimitSub.
  ///
  /// In en, this message translates to:
  /// **'{count} songs a day'**
  String setDailyLimitSub(int count);

  /// No description provided for @setBudget.
  ///
  /// In en, this message translates to:
  /// **'Space it may use'**
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
  /// **'One file with your likes, plays and everything TuneBox learned'**
  String get setExportSub;

  /// No description provided for @setImportTaste.
  ///
  /// In en, this message translates to:
  /// **'Load taste from another device'**
  String get setImportTaste;

  /// No description provided for @setImportTasteSub.
  ///
  /// In en, this message translates to:
  /// **'Pick a saved taste file and merge it in — safe to repeat'**
  String get setImportTasteSub;

  /// No description provided for @setAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get setAbout;

  /// No description provided for @setAboutBody.
  ///
  /// In en, this message translates to:
  /// **'Music from YouTube and your own files. Everything it learns stays on this device.'**
  String get setAboutBody;

  /// No description provided for @setShare.
  ///
  /// In en, this message translates to:
  /// **'Share TuneBox'**
  String get setShare;

  /// No description provided for @setShareBody.
  ///
  /// In en, this message translates to:
  /// **'Send the link to a friend'**
  String get setShareBody;

  /// No description provided for @setShareText.
  ///
  /// In en, this message translates to:
  /// **'TuneBox — a free music player that learns your taste, on your device. No account, no ads: https://tunebox.pages.dev'**
  String get setShareText;

  /// No description provided for @setShareCopied.
  ///
  /// In en, this message translates to:
  /// **'Link copied'**
  String get setShareCopied;

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
  /// **'Download songs it picks for me'**
  String get setAiInstall;

  /// No description provided for @setSkipSilenceSub.
  ///
  /// In en, this message translates to:
  /// **'Android only. Can cut quiet intros, fades and soft parts — leave off if music skips'**
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

  /// No description provided for @setUpdates.
  ///
  /// In en, this message translates to:
  /// **'Updates'**
  String get setUpdates;

  /// No description provided for @setAutoUpdate.
  ///
  /// In en, this message translates to:
  /// **'Check for updates by itself'**
  String get setAutoUpdate;

  /// No description provided for @setAutoUpdateSub.
  ///
  /// In en, this message translates to:
  /// **'Every few hours, quietly, and downloads on Wi-Fi. Installing still asks you.'**
  String get setAutoUpdateSub;

  /// No description provided for @setUpdateReady.
  ///
  /// In en, this message translates to:
  /// **'Update to {version} is ready'**
  String setUpdateReady(Object version);

  /// No description provided for @setUpdateReadySub.
  ///
  /// In en, this message translates to:
  /// **'Downloaded — tap to install'**
  String get setUpdateReadySub;

  /// No description provided for @setUpdateAvailableSub.
  ///
  /// In en, this message translates to:
  /// **'Get it from the releases page — tap to copy the link'**
  String get setUpdateAvailableSub;

  /// No description provided for @setLinkCopied.
  ///
  /// In en, this message translates to:
  /// **'Link copied'**
  String get setLinkCopied;

  /// No description provided for @setCheckNow.
  ///
  /// In en, this message translates to:
  /// **'Check now'**
  String get setCheckNow;

  /// No description provided for @setUpToDate.
  ///
  /// In en, this message translates to:
  /// **'TuneBox is up to date'**
  String get setUpToDate;

  /// No description provided for @setChecking.
  ///
  /// In en, this message translates to:
  /// **'Looking for a newer version…'**
  String get setChecking;

  /// No description provided for @homeCantReach.
  ///
  /// In en, this message translates to:
  /// **'Can\'t reach YouTube'**
  String get homeCantReach;

  /// No description provided for @homeOfflineHint.
  ///
  /// In en, this message translates to:
  /// **'Check your connection. Everything already on this device still works.'**
  String get homeOfflineHint;

  /// No description provided for @actionRetry.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get actionRetry;

  /// No description provided for @actionClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get actionClear;

  /// No description provided for @searchFailed.
  ///
  /// In en, this message translates to:
  /// **'Search didn\'t work'**
  String get searchFailed;

  /// No description provided for @profWho.
  ///
  /// In en, this message translates to:
  /// **'Who is listening?'**
  String get profWho;

  /// No description provided for @profExplain.
  ///
  /// In en, this message translates to:
  /// **'Each profile has its own library, likes, playlists and taste.'**
  String get profExplain;

  /// No description provided for @profActive.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get profActive;

  /// No description provided for @profRename.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get profRename;

  /// No description provided for @profDeleteMenu.
  ///
  /// In en, this message translates to:
  /// **'Delete profile'**
  String get profDeleteMenu;

  /// No description provided for @profAdd.
  ///
  /// In en, this message translates to:
  /// **'Add profile'**
  String get profAdd;

  /// No description provided for @profNew.
  ///
  /// In en, this message translates to:
  /// **'New profile'**
  String get profNew;

  /// No description provided for @profName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get profName;

  /// No description provided for @profDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete \"{name}\"?'**
  String profDeleteTitle(String name);

  /// No description provided for @profDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'Its library, likes, playlists and learned taste are removed for good. Music files stay on the device.'**
  String get profDeleteBody;

  /// No description provided for @profKeep.
  ///
  /// In en, this message translates to:
  /// **'Keep'**
  String get profKeep;

  /// No description provided for @actionOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get actionOk;

  /// No description provided for @actionDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get actionDelete;

  /// No description provided for @xferTitle.
  ///
  /// In en, this message translates to:
  /// **'Move your taste'**
  String get xferTitle;

  /// No description provided for @xferIntro.
  ///
  /// In en, this message translates to:
  /// **'Likes, plays and artist rules of \"{profile}\". Receiving merges into this profile and is safe to repeat — nothing is doubled.'**
  String xferIntro(String profile);

  /// No description provided for @xferSectionWifi.
  ///
  /// In en, this message translates to:
  /// **'Between devices on the same Wi-Fi'**
  String get xferSectionWifi;

  /// No description provided for @xferSend.
  ///
  /// In en, this message translates to:
  /// **'Send to a nearby device'**
  String get xferSend;

  /// No description provided for @xferSendSub.
  ///
  /// In en, this message translates to:
  /// **'Shows a code; the other device finds this one'**
  String get xferSendSub;

  /// No description provided for @xferReceive.
  ///
  /// In en, this message translates to:
  /// **'Receive from a nearby device'**
  String get xferReceive;

  /// No description provided for @xferReceiveSub.
  ///
  /// In en, this message translates to:
  /// **'Finds senders automatically — you type the code'**
  String get xferReceiveSub;

  /// No description provided for @xferSectionFile.
  ///
  /// In en, this message translates to:
  /// **'With a file'**
  String get xferSectionFile;

  /// No description provided for @xferSave.
  ///
  /// In en, this message translates to:
  /// **'Save to a file'**
  String get xferSave;

  /// No description provided for @xferSaveSub.
  ///
  /// In en, this message translates to:
  /// **'Pick where it goes: Downloads, USB, a chat…'**
  String get xferSaveSub;

  /// No description provided for @xferLoad.
  ///
  /// In en, this message translates to:
  /// **'Load from a file'**
  String get xferLoad;

  /// No description provided for @xferLoadSub.
  ///
  /// In en, this message translates to:
  /// **'Any TuneBox taste file, old or new'**
  String get xferLoadSub;

  /// No description provided for @xferSectionText.
  ///
  /// In en, this message translates to:
  /// **'As text'**
  String get xferSectionText;

  /// No description provided for @xferCopy.
  ///
  /// In en, this message translates to:
  /// **'Copy as text'**
  String get xferCopy;

  /// No description provided for @xferCopySub.
  ///
  /// In en, this message translates to:
  /// **'One line you can paste into any chat or note'**
  String get xferCopySub;

  /// No description provided for @xferPaste.
  ///
  /// In en, this message translates to:
  /// **'Paste text'**
  String get xferPaste;

  /// No description provided for @xferPasteSub.
  ///
  /// In en, this message translates to:
  /// **'From the clipboard'**
  String get xferPasteSub;

  /// No description provided for @xferSaveDialog.
  ///
  /// In en, this message translates to:
  /// **'Save your taste'**
  String get xferSaveDialog;

  /// No description provided for @xferSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved {kb} KB. On the other device choose \"Load from a file\".'**
  String xferSaved(String kb);

  /// No description provided for @xferSaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not save: {error}'**
  String xferSaveFailed(String error);

  /// No description provided for @xferFileUnreadable.
  ///
  /// In en, this message translates to:
  /// **'That file could not be read as a taste: {error}'**
  String xferFileUnreadable(String error);

  /// No description provided for @xferCopied.
  ///
  /// In en, this message translates to:
  /// **'Copied ({kb} KB of text). Paste it on the other device with \"Paste text\".'**
  String xferCopied(String kb);

  /// No description provided for @xferCopyFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not copy: {error}'**
  String xferCopyFailed(String error);

  /// No description provided for @xferClipboardEmpty.
  ///
  /// In en, this message translates to:
  /// **'The clipboard does not hold a TuneBox taste. Copy it on the other device first.'**
  String get xferClipboardEmpty;

  /// No description provided for @xferNewerTitle.
  ///
  /// In en, this message translates to:
  /// **'Newer than this app'**
  String get xferNewerTitle;

  /// No description provided for @xferNewerBody.
  ///
  /// In en, this message translates to:
  /// **'This taste was made by a newer TuneBox. Update this device first.'**
  String get xferNewerBody;

  /// No description provided for @xferMergeTitle.
  ///
  /// In en, this message translates to:
  /// **'Merge into \"{profile}\"?'**
  String xferMergeTitle(String profile);

  /// No description provided for @xferMergeBody.
  ///
  /// In en, this message translates to:
  /// **'From {source}:\n• {songs} songs, {liked} liked\n• {plays} plays\n• {rules} artist rules\n\nYour own likes and history stay. Doing this twice changes nothing.'**
  String xferMergeBody(
    String source,
    int songs,
    int liked,
    int plays,
    int rules,
  );

  /// No description provided for @xferSourceFile.
  ///
  /// In en, this message translates to:
  /// **'the file'**
  String get xferSourceFile;

  /// No description provided for @xferSourceClipboard.
  ///
  /// In en, this message translates to:
  /// **'the clipboard'**
  String get xferSourceClipboard;

  /// No description provided for @xferMerge.
  ///
  /// In en, this message translates to:
  /// **'Merge'**
  String get xferMerge;

  /// No description provided for @xferMerging.
  ///
  /// In en, this message translates to:
  /// **'Merging…'**
  String get xferMerging;

  /// No description provided for @xferMerged.
  ///
  /// In en, this message translates to:
  /// **'Merged: {summary}'**
  String xferMerged(String summary);

  /// No description provided for @xferMergeFailed.
  ///
  /// In en, this message translates to:
  /// **'Merge failed: {error}'**
  String xferMergeFailed(String error);

  /// No description provided for @xferSendTitle.
  ///
  /// In en, this message translates to:
  /// **'Send your taste'**
  String get xferSendTitle;

  /// No description provided for @xferCouldNotStart.
  ///
  /// In en, this message translates to:
  /// **'Could not start: {error}'**
  String xferCouldNotStart(String error);

  /// No description provided for @xferSent.
  ///
  /// In en, this message translates to:
  /// **'Sent. The other device has your taste.'**
  String get xferSent;

  /// No description provided for @xferClosed.
  ///
  /// In en, this message translates to:
  /// **'Closed — the code expired or was guessed wrong too often. Start again for a new one.'**
  String get xferClosed;

  /// No description provided for @xferSendHow.
  ///
  /// In en, this message translates to:
  /// **'On the other device open Settings → Move your taste → Receive, then pick this device and type:'**
  String get xferSendHow;

  /// No description provided for @xferNoWifi.
  ///
  /// In en, this message translates to:
  /// **'No Wi-Fi address found — connect both devices to the same network.'**
  String get xferNoWifi;

  /// No description provided for @xferThisDevice.
  ///
  /// In en, this message translates to:
  /// **'This device: {addresses} (port {port})'**
  String xferThisDevice(String addresses, int port);

  /// No description provided for @xferWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the other device… (closes after 5 minutes)'**
  String get xferWaiting;

  /// No description provided for @xferCodeFor.
  ///
  /// In en, this message translates to:
  /// **'Code shown on {name}'**
  String xferCodeFor(String name);

  /// No description provided for @xferCodeLabel.
  ///
  /// In en, this message translates to:
  /// **'6-digit code'**
  String get xferCodeLabel;

  /// No description provided for @xferReceiveAction.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get xferReceiveAction;

  /// No description provided for @xferReceivingFrom.
  ///
  /// In en, this message translates to:
  /// **'Receiving from {name}…'**
  String xferReceivingFrom(String name);

  /// No description provided for @xferWrongCode.
  ///
  /// In en, this message translates to:
  /// **'Wrong code. Check the number on the other device.'**
  String get xferWrongCode;

  /// No description provided for @xferNotTaste.
  ///
  /// In en, this message translates to:
  /// **'That was not a TuneBox taste.'**
  String get xferNotTaste;

  /// No description provided for @xferCouldNotReach.
  ///
  /// In en, this message translates to:
  /// **'Could not reach it: {error}'**
  String xferCouldNotReach(String error);

  /// No description provided for @xferLooking.
  ///
  /// In en, this message translates to:
  /// **'Looking for {host}…'**
  String xferLooking(String host);

  /// No description provided for @xferNothingAt.
  ///
  /// In en, this message translates to:
  /// **'Nothing answered at {host}. Is Send open there?'**
  String xferNothingAt(String host);

  /// No description provided for @xferReceiveTitle.
  ///
  /// In en, this message translates to:
  /// **'Receive a taste'**
  String get xferReceiveTitle;

  /// No description provided for @xferOpenSendFirst.
  ///
  /// In en, this message translates to:
  /// **'Open Send on the other device first (same Wi-Fi).'**
  String get xferOpenSendFirst;

  /// No description provided for @xferSearching.
  ///
  /// In en, this message translates to:
  /// **'Looking for nearby devices…'**
  String get xferSearching;

  /// No description provided for @xferNoSender.
  ///
  /// In en, this message translates to:
  /// **'No sender found yet.'**
  String get xferNoSender;

  /// No description provided for @xferSearchAgain.
  ///
  /// In en, this message translates to:
  /// **'Search again'**
  String get xferSearchAgain;

  /// No description provided for @xferTypeAddress.
  ///
  /// In en, this message translates to:
  /// **'Not listed? Type its address'**
  String get xferTypeAddress;

  /// No description provided for @xferConnect.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get xferConnect;

  /// No description provided for @qUndo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get qUndo;

  /// No description provided for @qRemoved.
  ///
  /// In en, this message translates to:
  /// **'Removed \"{title}\"'**
  String qRemoved(String title);

  /// No description provided for @qCleared.
  ///
  /// In en, this message translates to:
  /// **'Queue cleared'**
  String get qCleared;

  /// No description provided for @qSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved {songs} to \"{name}\"'**
  String qSaved(String songs, String name);

  /// No description provided for @qTitle.
  ///
  /// In en, this message translates to:
  /// **'Queue · {count}'**
  String qTitle(int count);

  /// No description provided for @qSavePlaylist.
  ///
  /// In en, this message translates to:
  /// **'Save as playlist'**
  String get qSavePlaylist;

  /// No description provided for @qClear.
  ///
  /// In en, this message translates to:
  /// **'Clear queue'**
  String get qClear;

  /// No description provided for @qClearSub.
  ///
  /// In en, this message translates to:
  /// **'Keeps the song that is playing'**
  String get qClearSub;

  /// No description provided for @qEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'The queue is empty'**
  String get qEmptyTitle;

  /// No description provided for @qEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Play something and it fills up here.'**
  String get qEmptyBody;

  /// No description provided for @qDrag.
  ///
  /// In en, this message translates to:
  /// **'Drag to reorder'**
  String get qDrag;

  /// No description provided for @plDeleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted \"{name}\"'**
  String plDeleted(String name);

  /// No description provided for @plDeleteSub.
  ///
  /// In en, this message translates to:
  /// **'The songs stay in your library'**
  String get plDeleteSub;

  /// No description provided for @plDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete playlist'**
  String get plDelete;

  /// No description provided for @plRenameOrDelete.
  ///
  /// In en, this message translates to:
  /// **'Rename or delete'**
  String get plRenameOrDelete;

  /// No description provided for @aLibListView.
  ///
  /// In en, this message translates to:
  /// **'List view'**
  String get aLibListView;

  /// No description provided for @aLibGridView.
  ///
  /// In en, this message translates to:
  /// **'Grid view'**
  String get aLibGridView;

  /// No description provided for @aLibSortAlpha.
  ///
  /// In en, this message translates to:
  /// **'A–Z'**
  String get aLibSortAlpha;

  /// No description provided for @aLibSortYear.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get aLibSortYear;

  /// No description provided for @aLibNothingYet.
  ///
  /// In en, this message translates to:
  /// **'Nothing here yet'**
  String get aLibNothingYet;

  /// No description provided for @aLibImportedEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Add the music that is already on this device.'**
  String get aLibImportedEmptyBody;

  /// No description provided for @aLibEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Play or download something and it lands here.'**
  String get aLibEmptyBody;

  /// No description provided for @aLibBannerSummary.
  ///
  /// In en, this message translates to:
  /// **'{songs} · {size} on this device'**
  String aLibBannerSummary(String songs, String size);

  /// No description provided for @aLibOfflineNote.
  ///
  /// In en, this message translates to:
  /// **'These play with no connection at all'**
  String get aLibOfflineNote;

  /// No description provided for @aLibAiPicked.
  ///
  /// In en, this message translates to:
  /// **'{count} of them picked for you'**
  String aLibAiPicked(String count);

  /// No description provided for @aPlaylistLabel.
  ///
  /// In en, this message translates to:
  /// **'Playlist'**
  String get aPlaylistLabel;

  /// No description provided for @aLibNoArtists.
  ///
  /// In en, this message translates to:
  /// **'No artists yet'**
  String get aLibNoArtists;

  /// No description provided for @aLibNoArtistsBody.
  ///
  /// In en, this message translates to:
  /// **'Play a few songs and they collect here.'**
  String get aLibNoArtistsBody;

  /// No description provided for @aHomeSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get aHomeSearch;

  /// No description provided for @aHomeInYourLibrary.
  ///
  /// In en, this message translates to:
  /// **'In your library'**
  String get aHomeInYourLibrary;

  /// No description provided for @aHomeInYourLibrarySub.
  ///
  /// In en, this message translates to:
  /// **'What you have added so far'**
  String get aHomeInYourLibrarySub;

  /// No description provided for @aSearchHintDots.
  ///
  /// In en, this message translates to:
  /// **'Songs, artists, albums…'**
  String get aSearchHintDots;

  /// No description provided for @aSearchEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Try a different spelling, or paste a YouTube link.'**
  String get aSearchEmptyBody;

  /// No description provided for @aSearchTrySomething.
  ///
  /// In en, this message translates to:
  /// **'Try something'**
  String get aSearchTrySomething;

  /// No description provided for @aSearchLearnedFrom.
  ///
  /// In en, this message translates to:
  /// **'Based on what you play'**
  String get aSearchLearnedFrom;

  /// No description provided for @aSearchAnything.
  ///
  /// In en, this message translates to:
  /// **'Search for anything on YouTube'**
  String get aSearchAnything;

  /// No description provided for @aSearchSeedTap.
  ///
  /// In en, this message translates to:
  /// **'Tap a seed to dig around it'**
  String get aSearchSeedTap;

  /// No description provided for @aSearchArtistsYouPlay.
  ///
  /// In en, this message translates to:
  /// **'Artists you play'**
  String get aSearchArtistsYouPlay;

  /// No description provided for @aSearchAffinity.
  ///
  /// In en, this message translates to:
  /// **'{percent}% affinity'**
  String aSearchAffinity(String percent);

  /// No description provided for @aArtistAlwaysMore.
  ///
  /// In en, this message translates to:
  /// **'Always more of this'**
  String get aArtistAlwaysMore;

  /// No description provided for @aArtistClearRule.
  ///
  /// In en, this message translates to:
  /// **'Clear rule'**
  String get aArtistClearRule;

  /// No description provided for @aArtistBoosted.
  ///
  /// In en, this message translates to:
  /// **'boosted'**
  String get aArtistBoosted;

  /// No description provided for @aArtistBlocked.
  ///
  /// In en, this message translates to:
  /// **'blocked'**
  String get aArtistBlocked;

  /// No description provided for @aArtistRadio.
  ///
  /// In en, this message translates to:
  /// **'Radio'**
  String get aArtistRadio;

  /// No description provided for @aPlLikedSub.
  ///
  /// In en, this message translates to:
  /// **'Everything you hit the heart on'**
  String get aPlLikedSub;

  /// No description provided for @aPlDownloadsSub.
  ///
  /// In en, this message translates to:
  /// **'Plays with no connection'**
  String get aPlDownloadsSub;

  /// No description provided for @aPlImportedSub.
  ///
  /// In en, this message translates to:
  /// **'Music you added from this device'**
  String get aPlImportedSub;

  /// No description provided for @aPlEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Empty for now'**
  String get aPlEmptyTitle;

  /// No description provided for @aPlEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Add songs from the ⋮ menu on any track.'**
  String get aPlEmptyBody;

  /// No description provided for @aPlDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading {songs}…'**
  String aPlDownloading(String songs);

  /// No description provided for @bTasteAiBudgetSub.
  ///
  /// In en, this message translates to:
  /// **'Up to {count} songs a day, {gb} GB budget'**
  String bTasteAiBudgetSub(String count, String gb);

  /// No description provided for @bTasteSongsPerDay.
  ///
  /// In en, this message translates to:
  /// **'Songs per day'**
  String get bTasteSongsPerDay;

  /// No description provided for @bTasteStorageMayUse.
  ///
  /// In en, this message translates to:
  /// **'Storage it may use'**
  String get bTasteStorageMayUse;

  /// No description provided for @bTasteGb.
  ///
  /// In en, this message translates to:
  /// **'{gb} GB'**
  String bTasteGb(String gb);

  /// No description provided for @bTasteNothingToDownload.
  ///
  /// In en, this message translates to:
  /// **'Nothing new worth downloading right now.'**
  String get bTasteNothingToDownload;

  /// No description provided for @bTasteQueuedSongs.
  ///
  /// In en, this message translates to:
  /// **'Queued {count} songs picked for you.'**
  String bTasteQueuedSongs(String count);

  /// No description provided for @bTasteFetchNow.
  ///
  /// In en, this message translates to:
  /// **'Fetch some now'**
  String get bTasteFetchNow;

  /// No description provided for @bTasteNotEnoughListening.
  ///
  /// In en, this message translates to:
  /// **'Not enough listening yet. Play a handful of songs, or run a training round below.'**
  String get bTasteNotEnoughListening;

  /// No description provided for @bTasteFamiliar.
  ///
  /// In en, this message translates to:
  /// **'Familiar'**
  String get bTasteFamiliar;

  /// No description provided for @bTasteDiscoveryCap1.
  ///
  /// In en, this message translates to:
  /// **'Mostly songs you already know'**
  String get bTasteDiscoveryCap1;

  /// No description provided for @bTasteDiscoveryCap2.
  ///
  /// In en, this message translates to:
  /// **'A few new songs per shelf'**
  String get bTasteDiscoveryCap2;

  /// No description provided for @bTasteDiscoveryCap3.
  ///
  /// In en, this message translates to:
  /// **'Half of Home will be new to you'**
  String get bTasteDiscoveryCap3;

  /// No description provided for @bTasteDiscoveryCap4.
  ///
  /// In en, this message translates to:
  /// **'Show me things I have never heard'**
  String get bTasteDiscoveryCap4;

  /// No description provided for @bTasteCalm.
  ///
  /// In en, this message translates to:
  /// **'Calm'**
  String get bTasteCalm;

  /// No description provided for @bTasteHighEnergy.
  ///
  /// In en, this message translates to:
  /// **'High energy'**
  String get bTasteHighEnergy;

  /// No description provided for @bTasteEnergyCaption.
  ///
  /// In en, this message translates to:
  /// **'Nudges picks louder and faster'**
  String get bTasteEnergyCaption;

  /// No description provided for @bTasteTimeless.
  ///
  /// In en, this message translates to:
  /// **'Timeless'**
  String get bTasteTimeless;

  /// No description provided for @bTasteFresh.
  ///
  /// In en, this message translates to:
  /// **'Fresh'**
  String get bTasteFresh;

  /// No description provided for @bTasteRecencyCaption.
  ///
  /// In en, this message translates to:
  /// **'How much \"New ⭐\" leans on release date'**
  String get bTasteRecencyCaption;

  /// No description provided for @bTasteRarely.
  ///
  /// In en, this message translates to:
  /// **'Rarely'**
  String get bTasteRarely;

  /// No description provided for @bTasteOften.
  ///
  /// In en, this message translates to:
  /// **'Often'**
  String get bTasteOften;

  /// No description provided for @bTasteNostalgiaCaption.
  ///
  /// In en, this message translates to:
  /// **'How hard to dig for old forgotten hits'**
  String get bTasteNostalgiaCaption;

  /// No description provided for @bTasteListeningHistory.
  ///
  /// In en, this message translates to:
  /// **'Listening history'**
  String get bTasteListeningHistory;

  /// No description provided for @bTastePlaysRecorded.
  ///
  /// In en, this message translates to:
  /// **'{count} plays recorded'**
  String bTastePlaysRecorded(String count);

  /// No description provided for @bTasteSkips.
  ///
  /// In en, this message translates to:
  /// **'Skips'**
  String get bTasteSkips;

  /// No description provided for @bTasteSkipsCounted.
  ///
  /// In en, this message translates to:
  /// **'{count} skips counted against songs'**
  String bTasteSkipsCounted(String count);

  /// No description provided for @bTasteTimeOfDaySub.
  ///
  /// In en, this message translates to:
  /// **'Different picks at 08:00 and 23:00'**
  String get bTasteTimeOfDaySub;

  /// No description provided for @bTasteYoutubeRelated.
  ///
  /// In en, this message translates to:
  /// **'YouTube related tracks'**
  String get bTasteYoutubeRelated;

  /// No description provided for @bTasteYoutubeRelatedSub.
  ///
  /// In en, this message translates to:
  /// **'Pull in songs you do not own yet'**
  String get bTasteYoutubeRelatedSub;

  /// No description provided for @bTasteResetSub.
  ///
  /// In en, this message translates to:
  /// **'Clears plays, skips and weights. Keeps library.'**
  String get bTasteResetSub;

  /// No description provided for @bTasteResetDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Start learning from scratch?'**
  String get bTasteResetDialogTitle;

  /// No description provided for @bTasteResetDialogBody.
  ///
  /// In en, this message translates to:
  /// **'Your library, playlists and downloads stay. Everything it learned about you is deleted and Home goes back to defaults.'**
  String get bTasteResetDialogBody;

  /// No description provided for @bTasteResetAction.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get bTasteResetAction;

  /// No description provided for @bTrainHearIt.
  ///
  /// In en, this message translates to:
  /// **'Hear it'**
  String get bTrainHearIt;

  /// No description provided for @bImportDoneAdded.
  ///
  /// In en, this message translates to:
  /// **'Done · {count} new songs added'**
  String bImportDoneAdded(String count);

  /// No description provided for @bImportScanningProgress.
  ///
  /// In en, this message translates to:
  /// **'Scanning · {scanned} of {total} files'**
  String bImportScanningProgress(String scanned, String total);

  /// No description provided for @bImportWatchedFolders.
  ///
  /// In en, this message translates to:
  /// **'Watched folders'**
  String get bImportWatchedFolders;

  /// No description provided for @bImportWatchedFoldersSub.
  ///
  /// In en, this message translates to:
  /// **'Rescanned when the app starts'**
  String get bImportWatchedFoldersSub;

  /// No description provided for @bImportNoneYet.
  ///
  /// In en, this message translates to:
  /// **'None yet. Pick a folder and it gets watched automatically.'**
  String get bImportNoneYet;

  /// No description provided for @bImportFoundOnDevice.
  ///
  /// In en, this message translates to:
  /// **'Found on this device'**
  String get bImportFoundOnDevice;

  /// No description provided for @bImportFoundOnDeviceSub.
  ///
  /// In en, this message translates to:
  /// **'Tap to scan and keep watching'**
  String get bImportFoundOnDeviceSub;

  /// No description provided for @bImportYourFiles.
  ///
  /// In en, this message translates to:
  /// **'Your files'**
  String get bImportYourFiles;

  /// No description provided for @bImportImportedSoFar.
  ///
  /// In en, this message translates to:
  /// **'{count} imported so far'**
  String bImportImportedSoFar(String count);

  /// No description provided for @bImportFilesStayNote.
  ///
  /// In en, this message translates to:
  /// **'Files stay where they are — TuneBox only indexes them. Delete a file and it quietly leaves your library on the next scan.'**
  String get bImportFilesStayNote;

  /// No description provided for @bImportRescan.
  ///
  /// In en, this message translates to:
  /// **'Rescan'**
  String get bImportRescan;

  /// No description provided for @cMore.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get cMore;

  /// No description provided for @cBlockedSnack.
  ///
  /// In en, this message translates to:
  /// **'\"{title}\" won\'t come up again'**
  String cBlockedSnack(String title);

  /// No description provided for @cLike.
  ///
  /// In en, this message translates to:
  /// **'Like'**
  String get cLike;

  /// No description provided for @cUnlike.
  ///
  /// In en, this message translates to:
  /// **'Unlike'**
  String get cUnlike;

  /// No description provided for @cRemoveFromLiked.
  ///
  /// In en, this message translates to:
  /// **'Remove from liked'**
  String get cRemoveFromLiked;

  /// No description provided for @cLikeSub.
  ///
  /// In en, this message translates to:
  /// **'Counts right away'**
  String get cLikeSub;

  /// No description provided for @cSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get cSave;

  /// No description provided for @cNothingPlaying.
  ///
  /// In en, this message translates to:
  /// **'Nothing playing'**
  String get cNothingPlaying;

  /// No description provided for @cNothingPlayingBody.
  ///
  /// In en, this message translates to:
  /// **'Pick a song and it shows up here.'**
  String get cNothingPlayingBody;

  /// No description provided for @cPlayingFrom.
  ///
  /// In en, this message translates to:
  /// **'Playing from'**
  String get cPlayingFrom;

  /// No description provided for @cSeek.
  ///
  /// In en, this message translates to:
  /// **'Seek'**
  String get cSeek;

  /// No description provided for @cTimeOf.
  ///
  /// In en, this message translates to:
  /// **'{done} of {total}'**
  String cTimeOf(String done, String total);

  /// No description provided for @cShuffleOn.
  ///
  /// In en, this message translates to:
  /// **'Shuffle: on'**
  String get cShuffleOn;

  /// No description provided for @cShuffleOff.
  ///
  /// In en, this message translates to:
  /// **'Shuffle: off'**
  String get cShuffleOff;

  /// No description provided for @cPrevious.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get cPrevious;

  /// No description provided for @cNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get cNext;

  /// No description provided for @cPause.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get cPause;

  /// No description provided for @cRepeatOne.
  ///
  /// In en, this message translates to:
  /// **'Repeat: this song'**
  String get cRepeatOne;

  /// No description provided for @cRepeatOff.
  ///
  /// In en, this message translates to:
  /// **'Repeat: off'**
  String get cRepeatOff;

  /// No description provided for @cRepeatAll.
  ///
  /// In en, this message translates to:
  /// **'Repeat: whole queue'**
  String get cRepeatAll;

  /// No description provided for @cSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get cSaved;

  /// No description provided for @cAudio.
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get cAudio;

  /// No description provided for @cSpeed.
  ///
  /// In en, this message translates to:
  /// **'Speed'**
  String get cSpeed;

  /// No description provided for @cAndroidOnly.
  ///
  /// In en, this message translates to:
  /// **'Android only'**
  String get cAndroidOnly;

  /// No description provided for @cPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Playlist'**
  String get cPlaylist;

  /// No description provided for @cSearchResults.
  ///
  /// In en, this message translates to:
  /// **'Search results'**
  String get cSearchResults;

  /// No description provided for @cYourLibrary.
  ///
  /// In en, this message translates to:
  /// **'Your library'**
  String get cYourLibrary;

  /// No description provided for @cRadio.
  ///
  /// In en, this message translates to:
  /// **'Radio'**
  String get cRadio;

  /// No description provided for @cYourQueue.
  ///
  /// In en, this message translates to:
  /// **'Your queue'**
  String get cYourQueue;

  /// No description provided for @cDownloadFailed.
  ///
  /// In en, this message translates to:
  /// **'Download failed: {title}'**
  String cDownloadFailed(String title);

  /// No description provided for @cAiDownloading.
  ///
  /// In en, this message translates to:
  /// **'Fetching {title} for you'**
  String cAiDownloading(String title);

  /// No description provided for @cDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading {title}'**
  String cDownloading(String title);

  /// No description provided for @cSaveQueueAs.
  ///
  /// In en, this message translates to:
  /// **'Save queue as'**
  String get cSaveQueueAs;

  /// No description provided for @cProfileSwitch.
  ///
  /// In en, this message translates to:
  /// **'Profile · tap to switch ({count})'**
  String cProfileSwitch(String count);

  /// No description provided for @cProfileAddAnother.
  ///
  /// In en, this message translates to:
  /// **'Profile · tap to add another listener'**
  String get cProfileAddAnother;

  /// No description provided for @cUseIt.
  ///
  /// In en, this message translates to:
  /// **'Use it'**
  String get cUseIt;

  /// No description provided for @cAiBudgetSub.
  ///
  /// In en, this message translates to:
  /// **'Up to {daily}/day · {gb} GB budget · tune it in Your taste'**
  String cAiBudgetSub(String daily, String gb);

  /// No description provided for @cFoldersWatched.
  ///
  /// In en, this message translates to:
  /// **'{count} folders watched'**
  String cFoldersWatched(String count);

  /// No description provided for @cMoveTasteSub.
  ///
  /// In en, this message translates to:
  /// **'Between devices over Wi-Fi, or with a file or text'**
  String get cMoveTasteSub;

  /// No description provided for @cSearchLanguages.
  ///
  /// In en, this message translates to:
  /// **'Search languages'**
  String get cSearchLanguages;

  /// No description provided for @cNoLanguageMatch.
  ///
  /// In en, this message translates to:
  /// **'No language matches \"{query}\"'**
  String cNoLanguageMatch(String query);

  /// No description provided for @addedToPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Added to \"{name}\"'**
  String addedToPlaylist(String name);

  /// No description provided for @sndTitle.
  ///
  /// In en, this message translates to:
  /// **'Sound'**
  String get sndTitle;

  /// No description provided for @sndSub.
  ///
  /// In en, this message translates to:
  /// **'Crossfade, equaliser, loudness, sleep timer'**
  String get sndSub;

  /// No description provided for @sndAll.
  ///
  /// In en, this message translates to:
  /// **'All sound settings'**
  String get sndAll;

  /// No description provided for @sndBetween.
  ///
  /// In en, this message translates to:
  /// **'Between songs'**
  String get sndBetween;

  /// No description provided for @sndCrossfade.
  ///
  /// In en, this message translates to:
  /// **'Crossfade'**
  String get sndCrossfade;

  /// No description provided for @sndGapless.
  ///
  /// In en, this message translates to:
  /// **'Gapless'**
  String get sndGapless;

  /// No description provided for @sndSeconds.
  ///
  /// In en, this message translates to:
  /// **'{n} s'**
  String sndSeconds(int n);

  /// No description provided for @sndSmart.
  ///
  /// In en, this message translates to:
  /// **'Smart crossfade'**
  String get sndSmart;

  /// No description provided for @sndSmartSub.
  ///
  /// In en, this message translates to:
  /// **'Albums and live sets play straight through; short songs fade quicker'**
  String get sndSmartSub;

  /// No description provided for @sndLoudness.
  ///
  /// In en, this message translates to:
  /// **'Loudness'**
  String get sndLoudness;

  /// No description provided for @sndNormalize.
  ///
  /// In en, this message translates to:
  /// **'Even out loudness'**
  String get sndNormalize;

  /// No description provided for @sndNormalizeSub.
  ///
  /// In en, this message translates to:
  /// **'Turns down songs that are mastered louder than the rest'**
  String get sndNormalizeSub;

  /// No description provided for @sndQuiet.
  ///
  /// In en, this message translates to:
  /// **'Quiet'**
  String get sndQuiet;

  /// No description provided for @sndNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get sndNormal;

  /// No description provided for @sndLoud.
  ///
  /// In en, this message translates to:
  /// **'Loud'**
  String get sndLoud;

  /// No description provided for @sndEq.
  ///
  /// In en, this message translates to:
  /// **'Equaliser'**
  String get sndEq;

  /// No description provided for @sndEqOn.
  ///
  /// In en, this message translates to:
  /// **'Use the equaliser'**
  String get sndEqOn;

  /// No description provided for @sndEqOnlyAndroid.
  ///
  /// In en, this message translates to:
  /// **'The equaliser is available on Android.'**
  String get sndEqOnlyAndroid;

  /// No description provided for @sndEqFor.
  ///
  /// In en, this message translates to:
  /// **'Each output keeps its own sound'**
  String get sndEqFor;

  /// No description provided for @sndInUse.
  ///
  /// In en, this message translates to:
  /// **'in use'**
  String get sndInUse;

  /// No description provided for @sndSpeaker.
  ///
  /// In en, this message translates to:
  /// **'Speaker'**
  String get sndSpeaker;

  /// No description provided for @sndWired.
  ///
  /// In en, this message translates to:
  /// **'Wired'**
  String get sndWired;

  /// No description provided for @sndBluetooth.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth'**
  String get sndBluetooth;

  /// No description provided for @sndSavePreset.
  ///
  /// In en, this message translates to:
  /// **'Save as preset'**
  String get sndSavePreset;

  /// No description provided for @sndPresetName.
  ///
  /// In en, this message translates to:
  /// **'Preset name'**
  String get sndPresetName;

  /// No description provided for @sndDeletePreset.
  ///
  /// In en, this message translates to:
  /// **'Delete preset'**
  String get sndDeletePreset;

  /// No description provided for @sndCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get sndCustom;

  /// No description provided for @sndBoost.
  ///
  /// In en, this message translates to:
  /// **'Extra loudness'**
  String get sndBoost;

  /// No description provided for @sndBoostSub.
  ///
  /// In en, this message translates to:
  /// **'Lifts quiet phones and earbuds. Too much can distort.'**
  String get sndBoostSub;

  /// No description provided for @sndSpeedPitch.
  ///
  /// In en, this message translates to:
  /// **'Speed and pitch'**
  String get sndSpeedPitch;

  /// No description provided for @sndSpeed.
  ///
  /// In en, this message translates to:
  /// **'Speed'**
  String get sndSpeed;

  /// No description provided for @sndPitch.
  ///
  /// In en, this message translates to:
  /// **'Pitch'**
  String get sndPitch;

  /// No description provided for @sndReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get sndReset;

  /// No description provided for @eqFlat.
  ///
  /// In en, this message translates to:
  /// **'Flat'**
  String get eqFlat;

  /// No description provided for @eqBass.
  ///
  /// In en, this message translates to:
  /// **'Bass'**
  String get eqBass;

  /// No description provided for @eqVocal.
  ///
  /// In en, this message translates to:
  /// **'Vocal'**
  String get eqVocal;

  /// No description provided for @eqNight.
  ///
  /// In en, this message translates to:
  /// **'Night'**
  String get eqNight;

  /// No description provided for @eqHeadphones.
  ///
  /// In en, this message translates to:
  /// **'Headphones'**
  String get eqHeadphones;

  /// No description provided for @eqCar.
  ///
  /// In en, this message translates to:
  /// **'Car'**
  String get eqCar;

  /// No description provided for @eqTreble.
  ///
  /// In en, this message translates to:
  /// **'Treble'**
  String get eqTreble;

  /// No description provided for @sleepTitle.
  ///
  /// In en, this message translates to:
  /// **'Sleep timer'**
  String get sleepTitle;

  /// No description provided for @sleepMinutes.
  ///
  /// In en, this message translates to:
  /// **'{n} min'**
  String sleepMinutes(int n);

  /// No description provided for @sleepEndSong.
  ///
  /// In en, this message translates to:
  /// **'End of song'**
  String get sleepEndSong;

  /// No description provided for @sleepEndQueue.
  ///
  /// In en, this message translates to:
  /// **'End of queue'**
  String get sleepEndQueue;

  /// No description provided for @sleepLeft.
  ///
  /// In en, this message translates to:
  /// **'Stops in {time}'**
  String sleepLeft(String time);

  /// No description provided for @sleepAfterSong.
  ///
  /// In en, this message translates to:
  /// **'Stops after this song'**
  String get sleepAfterSong;

  /// No description provided for @sleepAfterQueue.
  ///
  /// In en, this message translates to:
  /// **'Stops when the queue ends'**
  String get sleepAfterQueue;

  /// No description provided for @sleepShake.
  ///
  /// In en, this message translates to:
  /// **'Shake the phone for 10 more minutes'**
  String get sleepShake;

  /// No description provided for @sleepCancel.
  ///
  /// In en, this message translates to:
  /// **'Turn off'**
  String get sleepCancel;

  /// No description provided for @lyrRetry.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get lyrRetry;

  /// No description provided for @lyrOffline.
  ///
  /// In en, this message translates to:
  /// **'Lyrics need a connection the first time. After that they work offline.'**
  String get lyrOffline;

  /// No description provided for @lyrCredit.
  ///
  /// In en, this message translates to:
  /// **'Lyrics from LRCLIB, an open community database'**
  String get lyrCredit;

  /// No description provided for @lyrShow.
  ///
  /// In en, this message translates to:
  /// **'Show lyrics'**
  String get lyrShow;

  /// No description provided for @lyrShowArt.
  ///
  /// In en, this message translates to:
  /// **'Show cover'**
  String get lyrShowArt;

  /// No description provided for @rwTitle.
  ///
  /// In en, this message translates to:
  /// **'Rewind'**
  String get rwTitle;

  /// No description provided for @rwEntry.
  ///
  /// In en, this message translates to:
  /// **'Your listening, as a story'**
  String get rwEntry;

  /// No description provided for @rwWeek.
  ///
  /// In en, this message translates to:
  /// **'This week'**
  String get rwWeek;

  /// No description provided for @rwMonth.
  ///
  /// In en, this message translates to:
  /// **'This month'**
  String get rwMonth;

  /// No description provided for @rwYear.
  ///
  /// In en, this message translates to:
  /// **'This year'**
  String get rwYear;

  /// No description provided for @rwAll.
  ///
  /// In en, this message translates to:
  /// **'All time'**
  String get rwAll;

  /// No description provided for @rwNotYet.
  ///
  /// In en, this message translates to:
  /// **'Not enough listening yet'**
  String get rwNotYet;

  /// No description provided for @rwNotYetBody.
  ///
  /// In en, this message translates to:
  /// **'Play a few songs in this period and your story fills in. Try a longer period.'**
  String get rwNotYetBody;

  /// No description provided for @rwShare.
  ///
  /// In en, this message translates to:
  /// **'Share this card'**
  String get rwShare;

  /// No description provided for @rwShareText.
  ///
  /// In en, this message translates to:
  /// **'My listening, from TuneBox — https://tunebox.pages.dev'**
  String get rwShareText;

  /// No description provided for @rwSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved to {path}'**
  String rwSaved(String path);

  /// No description provided for @rwMinutes.
  ///
  /// In en, this message translates to:
  /// **'minutes of music'**
  String get rwMinutes;

  /// No description provided for @rwPlaysSongs.
  ///
  /// In en, this message translates to:
  /// **'{plays, plural, =1{1 play} other{{plays} plays}} of {songs, plural, =1{1 song} other{{songs} different songs}}'**
  String rwPlaysSongs(int plays, int songs);

  /// No description provided for @rwPlays.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 play} other{{count} plays}}'**
  String rwPlays(int count);

  /// No description provided for @rwPlaysMinutes.
  ///
  /// In en, this message translates to:
  /// **'{plays, plural, =1{1 play} other{{plays} plays}} · {minutes} min'**
  String rwPlaysMinutes(int plays, int minutes);

  /// No description provided for @rwTopSong.
  ///
  /// In en, this message translates to:
  /// **'Your song'**
  String get rwTopSong;

  /// No description provided for @rwTopSongs.
  ///
  /// In en, this message translates to:
  /// **'On repeat'**
  String get rwTopSongs;

  /// No description provided for @rwTopArtists.
  ///
  /// In en, this message translates to:
  /// **'Your artists'**
  String get rwTopArtists;

  /// No description provided for @rwSound.
  ///
  /// In en, this message translates to:
  /// **'Your sound'**
  String get rwSound;

  /// No description provided for @rwYourHour.
  ///
  /// In en, this message translates to:
  /// **'Your hour'**
  String get rwYourHour;

  /// No description provided for @rwStreak.
  ///
  /// In en, this message translates to:
  /// **'Longest streak'**
  String get rwStreak;

  /// No description provided for @rwDaysInARow.
  ///
  /// In en, this message translates to:
  /// **'days in a row with music'**
  String get rwDaysInARow;

  /// No description provided for @rwDiscovery.
  ///
  /// In en, this message translates to:
  /// **'{percent}% of what you played was new to you'**
  String rwDiscovery(int percent);

  /// No description provided for @rwUnskippable.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t skip it'**
  String get rwUnskippable;

  /// No description provided for @rwNeverSkipped.
  ///
  /// In en, this message translates to:
  /// **'Played again and again, not skipped once.'**
  String get rwNeverSkipped;

  /// No description provided for @rwYouAre.
  ///
  /// In en, this message translates to:
  /// **'You are'**
  String get rwYouAre;

  /// No description provided for @rwExplorer.
  ///
  /// In en, this message translates to:
  /// **'The Explorer'**
  String get rwExplorer;

  /// No description provided for @rwExplorerSub.
  ///
  /// In en, this message translates to:
  /// **'Most of what you played was new. Your taste keeps moving.'**
  String get rwExplorerSub;

  /// No description provided for @rwLoyalist.
  ///
  /// In en, this message translates to:
  /// **'The Loyalist'**
  String get rwLoyalist;

  /// No description provided for @rwLoyalistSub.
  ///
  /// In en, this message translates to:
  /// **'A few artists, played properly. You know what you love.'**
  String get rwLoyalistSub;

  /// No description provided for @rwCollector.
  ///
  /// In en, this message translates to:
  /// **'The Collector'**
  String get rwCollector;

  /// No description provided for @rwCollectorSub.
  ///
  /// In en, this message translates to:
  /// **'Dozens of artists, rarely the same song twice.'**
  String get rwCollectorSub;

  /// No description provided for @rwRepeater.
  ///
  /// In en, this message translates to:
  /// **'The Repeater'**
  String get rwRepeater;

  /// No description provided for @rwRepeaterSub.
  ///
  /// In en, this message translates to:
  /// **'When a song gets you, it really gets you.'**
  String get rwRepeaterSub;

  /// No description provided for @rwAllRounder.
  ///
  /// In en, this message translates to:
  /// **'The All-Rounder'**
  String get rwAllRounder;

  /// No description provided for @rwAllRounderSub.
  ///
  /// In en, this message translates to:
  /// **'A bit of everything, in good balance.'**
  String get rwAllRounderSub;

  /// No description provided for @shelfYearAgo.
  ///
  /// In en, this message translates to:
  /// **'A year ago'**
  String get shelfYearAgo;

  /// No description provided for @shelfMonthAgo.
  ///
  /// In en, this message translates to:
  /// **'A month ago'**
  String get shelfMonthAgo;

  /// No description provided for @shelfOnThisDaySub.
  ///
  /// In en, this message translates to:
  /// **'What you were playing around this day'**
  String get shelfOnThisDaySub;

  /// No description provided for @mixTitle.
  ///
  /// In en, this message translates to:
  /// **'Describe a mix'**
  String get mixTitle;

  /// No description provided for @mixEntry.
  ///
  /// In en, this message translates to:
  /// **'Describe a mix…'**
  String get mixEntry;

  /// No description provided for @mixAsk.
  ///
  /// In en, this message translates to:
  /// **'What do you want to hear?'**
  String get mixAsk;

  /// No description provided for @mixHint.
  ///
  /// In en, this message translates to:
  /// **'rainy sunday 2000s rock, no Linkin Park'**
  String get mixHint;

  /// No description provided for @mixPrivate.
  ///
  /// In en, this message translates to:
  /// **'Read on this phone. Your words never leave it.'**
  String get mixPrivate;

  /// No description provided for @mixMake.
  ///
  /// In en, this message translates to:
  /// **'Make it'**
  String get mixMake;

  /// No description provided for @mixTry.
  ///
  /// In en, this message translates to:
  /// **'Try one of these'**
  String get mixTry;

  /// No description provided for @mixEx1.
  ///
  /// In en, this message translates to:
  /// **'chill lofi to study, 1 hour'**
  String get mixEx1;

  /// No description provided for @mixEx2.
  ///
  /// In en, this message translates to:
  /// **'workout hip hop, getting faster'**
  String get mixEx2;

  /// No description provided for @mixEx3.
  ///
  /// In en, this message translates to:
  /// **'80s synthwave like The Midnight'**
  String get mixEx3;

  /// No description provided for @mixEx4.
  ///
  /// In en, this message translates to:
  /// **'party afrobeats, 20 songs'**
  String get mixEx4;

  /// No description provided for @mixNothing.
  ///
  /// In en, this message translates to:
  /// **'Nothing fits that yet'**
  String get mixNothing;

  /// No description provided for @mixNothingBody.
  ///
  /// In en, this message translates to:
  /// **'Try fewer conditions, or turn on YouTube suggestions in Your taste.'**
  String get mixNothingBody;

  /// No description provided for @mixUnderstood.
  ///
  /// In en, this message translates to:
  /// **'Understood as'**
  String get mixUnderstood;

  /// No description provided for @mixLike.
  ///
  /// In en, this message translates to:
  /// **'like {artist}'**
  String mixLike(String artist);

  /// No description provided for @mixRising.
  ///
  /// In en, this message translates to:
  /// **'getting faster'**
  String get mixRising;

  /// No description provided for @mixFalling.
  ///
  /// In en, this message translates to:
  /// **'winding down'**
  String get mixFalling;

  /// No description provided for @mixSave.
  ///
  /// In en, this message translates to:
  /// **'Save as playlist'**
  String get mixSave;

  /// No description provided for @mixSaveAs.
  ///
  /// In en, this message translates to:
  /// **'Name for this playlist'**
  String get mixSaveAs;

  /// No description provided for @mixAgain.
  ///
  /// In en, this message translates to:
  /// **'Shuffle it up'**
  String get mixAgain;

  /// No description provided for @reasonMatches.
  ///
  /// In en, this message translates to:
  /// **'Fits: {what}'**
  String reasonMatches(String what);

  /// No description provided for @reasonNewFind.
  ///
  /// In en, this message translates to:
  /// **'A new find'**
  String get reasonNewFind;

  /// No description provided for @stTitle.
  ///
  /// In en, this message translates to:
  /// **'Appearance studio'**
  String get stTitle;

  /// No description provided for @stSub.
  ///
  /// In en, this message translates to:
  /// **'Themes, fonts, player styles, tabs, gestures'**
  String get stSub;

  /// No description provided for @stThemes.
  ///
  /// In en, this message translates to:
  /// **'Themes'**
  String get stThemes;

  /// No description provided for @stFollow.
  ///
  /// In en, this message translates to:
  /// **'My colour'**
  String get stFollow;

  /// No description provided for @stType.
  ///
  /// In en, this message translates to:
  /// **'Type and shape'**
  String get stType;

  /// No description provided for @stSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get stSystem;

  /// No description provided for @stCorners.
  ///
  /// In en, this message translates to:
  /// **'Corners'**
  String get stCorners;

  /// No description provided for @stSharp.
  ///
  /// In en, this message translates to:
  /// **'Sharp'**
  String get stSharp;

  /// No description provided for @stSoft.
  ///
  /// In en, this message translates to:
  /// **'Soft'**
  String get stSoft;

  /// No description provided for @stRound.
  ///
  /// In en, this message translates to:
  /// **'Round'**
  String get stRound;

  /// No description provided for @stDensity.
  ///
  /// In en, this message translates to:
  /// **'Spacing'**
  String get stDensity;

  /// No description provided for @stCompact.
  ///
  /// In en, this message translates to:
  /// **'Compact'**
  String get stCompact;

  /// No description provided for @stComfy.
  ///
  /// In en, this message translates to:
  /// **'Comfy'**
  String get stComfy;

  /// No description provided for @stPlayer.
  ///
  /// In en, this message translates to:
  /// **'Player'**
  String get stPlayer;

  /// No description provided for @stClassic.
  ///
  /// In en, this message translates to:
  /// **'Classic'**
  String get stClassic;

  /// No description provided for @stVinyl.
  ///
  /// In en, this message translates to:
  /// **'Vinyl'**
  String get stVinyl;

  /// No description provided for @stFullBleed.
  ///
  /// In en, this message translates to:
  /// **'Big art'**
  String get stFullBleed;

  /// No description provided for @stMinimal.
  ///
  /// In en, this message translates to:
  /// **'Minimal'**
  String get stMinimal;

  /// No description provided for @stCassette.
  ///
  /// In en, this message translates to:
  /// **'Cassette'**
  String get stCassette;

  /// No description provided for @stVisualizer.
  ///
  /// In en, this message translates to:
  /// **'Visualiser'**
  String get stVisualizer;

  /// No description provided for @stSeek.
  ///
  /// In en, this message translates to:
  /// **'Seek bar'**
  String get stSeek;

  /// No description provided for @stBars.
  ///
  /// In en, this message translates to:
  /// **'Bars'**
  String get stBars;

  /// No description provided for @stWave.
  ///
  /// In en, this message translates to:
  /// **'Wave'**
  String get stWave;

  /// No description provided for @stLine.
  ///
  /// In en, this message translates to:
  /// **'Line'**
  String get stLine;

  /// No description provided for @stThick.
  ///
  /// In en, this message translates to:
  /// **'Thick'**
  String get stThick;

  /// No description provided for @stOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get stOff;

  /// No description provided for @stLiving.
  ///
  /// In en, this message translates to:
  /// **'Living background'**
  String get stLiving;

  /// No description provided for @stLivingSub.
  ///
  /// In en, this message translates to:
  /// **'Colours from the cover drift slowly behind the player'**
  String get stLivingSub;

  /// No description provided for @stDoubleTap.
  ///
  /// In en, this message translates to:
  /// **'Double-tap the cover to like'**
  String get stDoubleTap;

  /// No description provided for @stTabs.
  ///
  /// In en, this message translates to:
  /// **'Tabs'**
  String get stTabs;

  /// No description provided for @stTabsSub.
  ///
  /// In en, this message translates to:
  /// **'Drag to reorder, switch off what you never use'**
  String get stTabsSub;

  /// No description provided for @stLabels.
  ///
  /// In en, this message translates to:
  /// **'Show tab names'**
  String get stLabels;

  /// No description provided for @stGlass.
  ///
  /// In en, this message translates to:
  /// **'Frosted navigation'**
  String get stGlass;

  /// No description provided for @stHome.
  ///
  /// In en, this message translates to:
  /// **'Home layout'**
  String get stHome;

  /// No description provided for @stHomeSub.
  ///
  /// In en, this message translates to:
  /// **'Which shelves, in which order'**
  String get stHomeSub;

  /// No description provided for @stGestures.
  ///
  /// In en, this message translates to:
  /// **'Gestures'**
  String get stGestures;

  /// No description provided for @stSwipeRight.
  ///
  /// In en, this message translates to:
  /// **'Swipe a song right'**
  String get stSwipeRight;

  /// No description provided for @stSwipeLeft.
  ///
  /// In en, this message translates to:
  /// **'Swipe a song left'**
  String get stSwipeLeft;

  /// No description provided for @stNothing.
  ///
  /// In en, this message translates to:
  /// **'Nothing'**
  String get stNothing;

  /// No description provided for @stShake.
  ///
  /// In en, this message translates to:
  /// **'Shake to skip'**
  String get stShake;

  /// No description provided for @stShakeSub.
  ///
  /// In en, this message translates to:
  /// **'A firm shake of the phone plays the next song'**
  String get stShakeSub;

  /// No description provided for @stShareLook.
  ///
  /// In en, this message translates to:
  /// **'Share your look'**
  String get stShareLook;

  /// No description provided for @stCopyCode.
  ///
  /// In en, this message translates to:
  /// **'Copy theme code'**
  String get stCopyCode;

  /// No description provided for @stCodeSub.
  ///
  /// In en, this message translates to:
  /// **'Send it to a friend; pasting it gives them exactly this look'**
  String get stCodeSub;

  /// No description provided for @stPasteCode.
  ///
  /// In en, this message translates to:
  /// **'Paste a theme code'**
  String get stPasteCode;

  /// No description provided for @stCodeCopied.
  ///
  /// In en, this message translates to:
  /// **'Theme code copied'**
  String get stCodeCopied;

  /// No description provided for @stCodeApplied.
  ///
  /// In en, this message translates to:
  /// **'New look applied'**
  String get stCodeApplied;

  /// No description provided for @stCodeBad.
  ///
  /// In en, this message translates to:
  /// **'That is not a TuneBox theme code'**
  String get stCodeBad;

  /// No description provided for @stReset.
  ///
  /// In en, this message translates to:
  /// **'Back to the default look'**
  String get stReset;

  /// No description provided for @swLiked.
  ///
  /// In en, this message translates to:
  /// **'Liked \"{title}\"'**
  String swLiked(String title);

  /// No description provided for @swQueued.
  ///
  /// In en, this message translates to:
  /// **'\"{title}\" plays next'**
  String swQueued(String title);

  /// No description provided for @glxTitle.
  ///
  /// In en, this message translates to:
  /// **'Taste Galaxy'**
  String get glxTitle;

  /// No description provided for @glxEntry.
  ///
  /// In en, this message translates to:
  /// **'Your artists as a map of stars'**
  String get glxEntry;

  /// No description provided for @glxHint.
  ///
  /// In en, this message translates to:
  /// **'Big stars are played most. Neighbours sound alike. Tap a star.'**
  String get glxHint;

  /// No description provided for @glxLasso.
  ///
  /// In en, this message translates to:
  /// **'Draw around a cluster'**
  String get glxLasso;

  /// No description provided for @glxLassoHint.
  ///
  /// In en, this message translates to:
  /// **'Draw a loop around some stars to play that corner of your taste'**
  String get glxLassoHint;

  /// No description provided for @glxLassoEmpty.
  ///
  /// In en, this message translates to:
  /// **'No stars inside that loop'**
  String get glxLassoEmpty;

  /// No description provided for @glxLassoPlaying.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Playing 1 artist} other{Playing {count} artists}}'**
  String glxLassoPlaying(int count);

  /// No description provided for @glxRecenter.
  ///
  /// In en, this message translates to:
  /// **'Back to the whole sky'**
  String get glxRecenter;

  /// No description provided for @glxPlay.
  ///
  /// In en, this message translates to:
  /// **'Play {artist}'**
  String glxPlay(String artist);

  /// No description provided for @glxOpen.
  ///
  /// In en, this message translates to:
  /// **'Open artist page'**
  String get glxOpen;

  /// No description provided for @glxMore.
  ///
  /// In en, this message translates to:
  /// **'More of this artist'**
  String get glxMore;

  /// No description provided for @glxNever.
  ///
  /// In en, this message translates to:
  /// **'Never play this artist'**
  String get glxNever;

  /// No description provided for @glxEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your sky is still dark'**
  String get glxEmpty;

  /// No description provided for @glxEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Add songs from a few different artists and the stars appear.'**
  String get glxEmptyBody;

  /// No description provided for @blendTitle.
  ///
  /// In en, this message translates to:
  /// **'Blend'**
  String get blendTitle;

  /// No description provided for @blendEntry.
  ///
  /// In en, this message translates to:
  /// **'One queue from two tastes'**
  String get blendEntry;

  /// No description provided for @blendIntro.
  ///
  /// In en, this message translates to:
  /// **'For a party, a car or a shared speaker. TuneBox finds what you both like and takes turns fairly. The other taste is only read, never added to yours.'**
  String get blendIntro;

  /// No description provided for @blendWith.
  ///
  /// In en, this message translates to:
  /// **'Blend with'**
  String get blendWith;

  /// No description provided for @blendProfile.
  ///
  /// In en, this message translates to:
  /// **'A profile on this device'**
  String get blendProfile;

  /// No description provided for @blendPaste.
  ///
  /// In en, this message translates to:
  /// **'A friend\'s taste code'**
  String get blendPaste;

  /// No description provided for @blendPasteSub.
  ///
  /// In en, this message translates to:
  /// **'Copy it first (Move your taste → As text), then tap here'**
  String get blendPasteSub;

  /// No description provided for @blendFile.
  ///
  /// In en, this message translates to:
  /// **'A taste file'**
  String get blendFile;

  /// No description provided for @blendFriend.
  ///
  /// In en, this message translates to:
  /// **'Your friend'**
  String get blendFriend;

  /// No description provided for @blendBad.
  ///
  /// In en, this message translates to:
  /// **'That is not a TuneBox taste'**
  String get blendBad;

  /// No description provided for @blendYouAnd.
  ///
  /// In en, this message translates to:
  /// **'You and {name}'**
  String blendYouAnd(String name);

  /// No description provided for @blendHigh.
  ///
  /// In en, this message translates to:
  /// **'Practically the same ears.'**
  String get blendHigh;

  /// No description provided for @blendMid.
  ///
  /// In en, this message translates to:
  /// **'Plenty in common, and some to discover.'**
  String get blendMid;

  /// No description provided for @blendLow.
  ///
  /// In en, this message translates to:
  /// **'Very different tastes. This one will be an adventure.'**
  String get blendLow;

  /// No description provided for @blendPlay.
  ///
  /// In en, this message translates to:
  /// **'Play the blend'**
  String get blendPlay;

  /// No description provided for @blendOther.
  ///
  /// In en, this message translates to:
  /// **'Blend with someone else'**
  String get blendOther;

  /// No description provided for @blendLearn.
  ///
  /// In en, this message translates to:
  /// **'Let the blend teach TuneBox'**
  String get blendLearn;

  /// No description provided for @blendLearnSub.
  ///
  /// In en, this message translates to:
  /// **'Off: what plays in a blend does not change your taste'**
  String get blendLearnSub;

  /// No description provided for @blendBothArtists.
  ///
  /// In en, this message translates to:
  /// **'Artists you both have'**
  String get blendBothArtists;

  /// No description provided for @blendQueue.
  ///
  /// In en, this message translates to:
  /// **'The queue'**
  String get blendQueue;

  /// No description provided for @blendBoth.
  ///
  /// In en, this message translates to:
  /// **'you both'**
  String get blendBoth;

  /// No description provided for @blendYours.
  ///
  /// In en, this message translates to:
  /// **'yours'**
  String get blendYours;
}

class _LDelegate extends LocalizationsDelegate<L> {
  const _LDelegate();

  @override
  Future<L> load(Locale locale) {
    return SynchronousFuture<L>(lookupL(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'am',
    'ar',
    'as',
    'az',
    'be',
    'bg',
    'bn',
    'bo',
    'bs',
    'ca',
    'cs',
    'cy',
    'da',
    'de',
    'el',
    'en',
    'es',
    'et',
    'eu',
    'fa',
    'fi',
    'fil',
    'fr',
    'ga',
    'gl',
    'gsw',
    'gu',
    'he',
    'hi',
    'hr',
    'hu',
    'hy',
    'id',
    'is',
    'it',
    'ja',
    'ka',
    'kk',
    'km',
    'kn',
    'ko',
    'ky',
    'lo',
    'lt',
    'lv',
    'mk',
    'ml',
    'mn',
    'mr',
    'ms',
    'my',
    'nb',
    'ne',
    'nl',
    'or',
    'pa',
    'pl',
    'ps',
    'pt',
    'ro',
    'ru',
    'si',
    'sk',
    'sl',
    'sq',
    'sr',
    'sv',
    'sw',
    'ta',
    'te',
    'th',
    'tr',
    'ug',
    'uk',
    'ur',
    'uz',
    'vi',
    'zh',
    'zu',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_LDelegate old) => false;
}

L lookupL(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'sr':
      {
        switch (locale.scriptCode) {
          case 'Latn':
            return LSrLatn();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return LZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return LAf();
    case 'am':
      return LAm();
    case 'ar':
      return LAr();
    case 'as':
      return LAs();
    case 'az':
      return LAz();
    case 'be':
      return LBe();
    case 'bg':
      return LBg();
    case 'bn':
      return LBn();
    case 'bo':
      return LBo();
    case 'bs':
      return LBs();
    case 'ca':
      return LCa();
    case 'cs':
      return LCs();
    case 'cy':
      return LCy();
    case 'da':
      return LDa();
    case 'de':
      return LDe();
    case 'el':
      return LEl();
    case 'en':
      return LEn();
    case 'es':
      return LEs();
    case 'et':
      return LEt();
    case 'eu':
      return LEu();
    case 'fa':
      return LFa();
    case 'fi':
      return LFi();
    case 'fil':
      return LFil();
    case 'fr':
      return LFr();
    case 'ga':
      return LGa();
    case 'gl':
      return LGl();
    case 'gsw':
      return LGsw();
    case 'gu':
      return LGu();
    case 'he':
      return LHe();
    case 'hi':
      return LHi();
    case 'hr':
      return LHr();
    case 'hu':
      return LHu();
    case 'hy':
      return LHy();
    case 'id':
      return LId();
    case 'is':
      return LIs();
    case 'it':
      return LIt();
    case 'ja':
      return LJa();
    case 'ka':
      return LKa();
    case 'kk':
      return LKk();
    case 'km':
      return LKm();
    case 'kn':
      return LKn();
    case 'ko':
      return LKo();
    case 'ky':
      return LKy();
    case 'lo':
      return LLo();
    case 'lt':
      return LLt();
    case 'lv':
      return LLv();
    case 'mk':
      return LMk();
    case 'ml':
      return LMl();
    case 'mn':
      return LMn();
    case 'mr':
      return LMr();
    case 'ms':
      return LMs();
    case 'my':
      return LMy();
    case 'nb':
      return LNb();
    case 'ne':
      return LNe();
    case 'nl':
      return LNl();
    case 'or':
      return LOr();
    case 'pa':
      return LPa();
    case 'pl':
      return LPl();
    case 'ps':
      return LPs();
    case 'pt':
      return LPt();
    case 'ro':
      return LRo();
    case 'ru':
      return LRu();
    case 'si':
      return LSi();
    case 'sk':
      return LSk();
    case 'sl':
      return LSl();
    case 'sq':
      return LSq();
    case 'sr':
      return LSr();
    case 'sv':
      return LSv();
    case 'sw':
      return LSw();
    case 'ta':
      return LTa();
    case 'te':
      return LTe();
    case 'th':
      return LTh();
    case 'tr':
      return LTr();
    case 'ug':
      return LUg();
    case 'uk':
      return LUk();
    case 'ur':
      return LUr();
    case 'uz':
      return LUz();
    case 'vi':
      return LVi();
    case 'zh':
      return LZh();
    case 'zu':
      return LZu();
  }

  throw FlutterError(
    'L.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
