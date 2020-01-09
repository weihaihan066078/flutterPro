import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> _imageList = [
    {'url': 'https://www.itying.com/images/flutter/1.png'},
    {'url': 'https://www.itying.com/images/flutter/2.png'},
    {'url': 'https://www.itying.com/images/flutter/3.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('swiper'),
        ),
        body: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                child: Swiper(
                  itemCount: _imageList.length,
                  itemBuilder: (context, int index) {
                    return Image.network(
                      _imageList[index]['url'],
                      fit: BoxFit.fill,
                    );
                  },
                  // control: SwiperControl(),
                  pagination: SwiperPagination(),
                  loop: true,
                  autoplay: true,
                ),
              ),
            )
          ],
        ));
  }
}
