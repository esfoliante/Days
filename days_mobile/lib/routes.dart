import 'package:days_mobile/screens/activity/activity_screen.dart';
import 'package:days_mobile/screens/activity/average_screen.dart';
import 'package:days_mobile/screens/activity/exits_screen.dart';
import 'package:days_mobile/screens/activity/faltas_screen.dart';
import 'package:days_mobile/screens/activity/meetings_screen.dart';
import 'package:days_mobile/screens/activity/participations_screen.dart';
import 'package:days_mobile/screens/activity/tests_screen.dart';
import 'package:days_mobile/screens/auth/login_screen.dart';
import 'package:days_mobile/screens/communitcations/communication_screen.dart';
import 'package:days_mobile/screens/communitcations/communications_screen.dart';
import 'package:days_mobile/screens/home/home_screen.dart';
import 'package:days_mobile/screens/initialization/choosetheme_screen.dart';
import 'package:days_mobile/screens/initialization/tour_screen.dart';
import 'package:days_mobile/screens/profile_screen.dart';
import 'package:days_mobile/screens/timeline_screens/card_moviments_screen.dart';
import 'package:days_mobile/screens/timeline_screens/schedule_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class RouterHandler {
  static FluroRouter router = FluroRouter();

  static final Handler _loginScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginScreen());

  static final Handler _chooseThemeScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ChooseThemeScreen());

  static final Handler _tourScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          TourScreen());

  static final Handler _homeScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomeScreen());

  static final Handler _scheduleScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ScheduleScreen());

  static final Handler _cardMovimentsScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CardMovimentsScreen());

  static final Handler _activityScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ActivityScreen());

  static final Handler _faltasScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          FaltasScreen());

  static final Handler _averageScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          AverageScreen());

  static final Handler _exitScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ExitsScreen());

  static final Handler _testsScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          TestsScreen());

  static final Handler _messagesScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          MeetingsScreen());

  static final Handler _participationsScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ParticipationsScreen());

  static final Handler _communicationsScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CommunicationsScreen());

  static final Handler _communicationScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CommunicationScreen());

  static final Handler _profileScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ProfileScreen());

  static void setupRouter() {
    router.define(
      'login',
      handler: _loginScreen,
    );
    router.define(
      'chooseTheme',
      handler: _chooseThemeScreen,
    );
    router.define(
      'tour',
      handler: _tourScreen,
    );
    router.define(
      'home',
      handler: _homeScreen,
    );
    router.define(
      'schedule',
      handler: _scheduleScreen,
    );
    router.define(
      'cardMoviments',
      handler: _cardMovimentsScreen,
    );
    router.define(
      'activity',
      handler: _activityScreen,
    );
    router.define(
      'faltas',
      handler: _faltasScreen,
    );
    router.define(
      'average',
      handler: _averageScreen,
    );
    router.define(
      'exits',
      handler: _exitScreen,
    );
    router.define(
      'tests',
      handler: _testsScreen,
    );
    router.define(
      'meetings',
      handler: _messagesScreen,
    );
    router.define(
      'participations',
      handler: _participationsScreen,
    );
    router.define(
      'communications',
      handler: _communicationsScreen,
    );
    router.define(
      'communication',
      handler: _communicationScreen,
    );
    router.define(
      'profile',
      handler: _profileScreen,
    );
  }
}
