import 'package:flutter/material.dart';
import 'dart:math';

class Together extends StatefulWidget {
  const Together({super.key});

  @override
  State<Together> createState() => _TogetherState();
}

class _TogetherState extends State<Together> {
  List imgList = [
    Image.asset('assets/images/work.jpg'),
    Image.asset('assets/images/cam.jpg'),
    Image.asset('assets/images/Home.jpg'),
  ];

  void AddRandomImage() {
    var RandImgIndex = Random().nextInt(3);

    // if index is 0 we will pick image at index 0
    if (RandImgIndex == 0) {
      imgList.add(Image.asset('assets/images/homee.jpg'));
      // if index is 1 we will pick image at index 1
    } else if (RandImgIndex == 1) {
      imgList.add(Image.asset('assets/images/journal.jpg'));
    } else {
      // if index is 2 we will pick image at index 2
      imgList.add(Image.asset('assets/images/month.jpg'));
    }
  }

  @override
  Widget build(BuildContext context) {
    var ImgCount = imgList.length;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.image),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        // list view to show images and list count
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(children: [
              // showing item count
              Text("Image Count:$ImgCount"),
              SizedBox(width: 45),
              // icon button to call the
              // method AddRandomImage
              OutlinedButton.icon(
                icon: Icon(Icons.add),
                label: Text("Add Image"),
                onPressed: () {
                  setState(() {
                    // calling method
                    AddRandomImage();
                  });
                },
              )
            ]),
            // showing list of images
            for (var item in imgList)
              Center(
                child: Container(width: 500, height: 350, child: item),
              )
          ],
        ),
      ),
    );
  }
}
