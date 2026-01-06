import 'package:asesmen_awal/button.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soal 3 - Image'),
      ),
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
              Container(
                margin: const EdgeInsets.all(16),
                child: Image.asset('assets/gambar_asset.png'),
              ),
             
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ButtonWidget()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: const Text('Next',style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.bold
                    ),),
                  ),
            ]
          ),
        ),
      ),
    );
  }
}
