import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:playify/playify.dart';

///Check if two songs are equal
bool isEqual(Song first, Song second) {
  return first.title == second.title &&
      first.albumTitle == second.albumTitle &&
      first.artistName == second.artistName;
}

///Convert seconds (as int) to Duration
Duration intToDuration(int totalSeconds) {
  int seconds = totalSeconds % 60;
  int minutes = (totalSeconds ~/ 60) % 60;
  int hours = totalSeconds ~/ 3600;
  return Duration(hours: hours, minutes: minutes, seconds: seconds);
}

///Return a string of the duration. Ex: 03:45, 01:03:45
printDuration(Duration d) =>
    d.inHours != 0 ? d.toString().split('.').first.padLeft(8, "0") : d.toString().substring(2, 7);

///Convert seconds to a string representation of a duration
formatSongTime(int seconds) {
  return printDuration(intToDuration(seconds));
}

///Convert colors into dark mode
Color themeModeColor(Brightness brightness, Color color) {
  if (brightness == Brightness.dark) {
    if (color == Colors.white) {
      return Colors.black;
    } else if (color == Colors.black) {
      return Colors.white;
    } else if (color == Colors.blue[900]) {
      return Colors.blue[200];
    } else if (color == Colors.blue[100]) {
      return Colors.blueGrey[400];
    } else if (color == Colors.black12) {
      return Colors.white38;
    } else if (color == Colors.purple[600]) {
      return Colors.white;
    } else if (color == Colors.black87) {
      return Colors.white70;
    } else if (color == Colors.grey[500]) {
      return Colors.grey[600];
    } else if (color == Colors.grey[600]) {
      return Colors.grey[400];
    }
  }
  return color;
}

///If the string's lenth is smaller than the lastIndex, it will return the string, otherwise it will append "..." to it
String substring(String val, int lastIndex) {
  if (val.length < lastIndex) return val;
  return val.substring(0, lastIndex - 3) + "...";
}

bool sameYear(DateTime d1, DateTime d2) {
  return d1.year == d2.year;
}

Song copySong(Song temp) => Song(
      albumTitle: temp.albumTitle,
      artistName: temp.artistName,
      discNumber: temp.discNumber,
      duration: temp.duration,
      genre: temp.genre,
      iOSSongID: temp.iOSSongID,
      isExplicit: temp.isExplicit,
      playCount: temp.playCount,
      releaseDate: temp.releaseDate,
      title: temp.title,
      trackNumber: temp.trackNumber,
    );

Album copyAlbum(Album temp) => Album(
      albumTrackCount: temp.albumTrackCount,
      artistName: temp.artistName,
      coverArt: Uint8List.fromList([...temp.coverArt]),
      diskCount: temp.diskCount,
      songs: [...temp.songs],
      title: temp.title,
    );
