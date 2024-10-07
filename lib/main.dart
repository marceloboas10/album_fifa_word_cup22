import 'package:album_worldcup22/album_worldcup_app.dart';
import 'package:album_worldcup22/app/core/config/env/env.dart';
import 'package:flutter/material.dart';

void main() async {
  await Env.instance.load();
  runApp(AlbumWorldcupApp());
}
