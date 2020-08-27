import 'package:flutter/material.dart';
import 'package:playify_app/components/itemTile.dart';
import 'package:playify_app/icons/playify_icon_icons.dart';
import 'package:playify_app/screens/list.dart';
import 'package:playify_app/screens/settings.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Menu"),
      ),
      body: Container(
        child: ListView(
          children: [
            ItemTile(
                title: "Artists",
                icon: Icon(
                  PlayifyIcon.artist,
                  size: 24,
                ),
                padding: EdgeInsets.only(top: 4),
                brightness: MediaQuery.of(context).platformBrightness,
                fn: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ListScreen(listType: MusicListType.artists)));
                }),
            Divider(),
            ItemTile(
                title: "Albums",
                icon: Icon(PlayifyIcon.album, size: 24),
                brightness: MediaQuery.of(context).platformBrightness,
                fn: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ListScreen(listType: MusicListType.albums)));
                }),
            Divider(),
            ItemTile(
                title: "Songs",
                icon: Icon(PlayifyIcon.song, size: 24),
                brightness: MediaQuery.of(context).platformBrightness,
                fn: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ListScreen(listType: MusicListType.songs)));
                }),
            Divider(),
          ],
        ),
      ),
    );
  }
}
