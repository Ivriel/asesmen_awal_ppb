import 'package:asesmen_awal/hello_world.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Gambar Network'),
              SizedBox(height: 20),
              Image.network("https://picsum.photos/200/300"),
              SizedBox(height: 20),
              Text('Gambar Asset'),
              SizedBox(height: 20),
            Image.asset('assets/gambar_asset.png')
            ]
          ),
        ),
      ),
    );
  }
}