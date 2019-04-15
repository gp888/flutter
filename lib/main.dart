import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(_widgetForRoute(window.defaultRouteName));

Widget _widgetForRoute(String route) {
  switch (route) {
    case 'route1':
      return new MaterialApp(
        title: 'My Flutter page1',
        home: new Scaffold(
          body: new Center(
            child: new Text(
              'Hello World1',
              textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 255, 125, 125),
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
              ),
            ),
          ),
        ),
      );
    case 'route2':
      return new MaterialApp(
        title: 'My Flutter page2',
        home: new Scaffold(
          body: new Center(
            child: new Text(
              'Hello World2',
              textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 25.0,
                color: Color.fromARGB(255, 255, 125, 125),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
          ),
        ),
      );

    default:
      return Center(
        child: Text('Unknown route: $route', textDirection: TextDirection.ltr),
      );
  }
}