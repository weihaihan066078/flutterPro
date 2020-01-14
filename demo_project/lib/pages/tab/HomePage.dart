import 'package:demo_project/r.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:demo_project/custom/MyColor.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:demo_project/res/listData.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.topCenter,
        // fit: StackFit.passthrough,
        children: <Widget>[
          TopSearchWidget(),
          Positioned(
            top: 30,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Hexcolor('#FF1417'), Hexcolor('#FFFFFF')],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
              height: 155,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            top: 30,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: <Widget>[
                  TopContainer()
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}


class TopSearchWidget extends StatefulWidget {
  TopSearchWidget({Key key}) : super(key: key);

  @override
  _TopSearchWidgetState createState() => _TopSearchWidgetState();
}

class _TopSearchWidgetState extends State<TopSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsUtil.hexColor(0xFF1619),
      child: Padding(
        padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
        child: Container(
          child: Row(
            children: <Widget>[
              FlatButton.icon(
                icon: Image.asset(R.assetsImgHomePosition),
                label: Text('深圳'),
                onPressed: () {},
                color: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
              ),
              Container(
                height: 14,
                child: VerticalDivider(
                  color: Hexcolor('#666666'),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              FlatButton.icon(
                icon: Image.asset(R.assetsImgHomeSearch),
                label: Text(
                  '华为P30手机',
                  style: TextStyle(fontSize: 13, color: Hexcolor('#999999')),
                ),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () {},
              )
            ],
          ),
          height: 30,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              )),
        ),
      ),
    );
  }
}

class TopContainer extends StatefulWidget {
  TopContainer({Key key}) : super(key: key);

  @override
  _TopContainerState createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 195.0,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(18, 10, 18, 0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.transparent),
                    child: AspectRatio(
                      aspectRatio: 350 / 140,
                      child: Swiper(
                          loop: true,
                          autoplay: true,
                          itemCount: dataList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.network(dataList[index]['imageUrl'],
                                fit: BoxFit.fill);
                          },
                          pagination: SwiperPagination(
                              builder: DotSwiperPaginationBuilder(
                                  color:
                                      ColorsUtil.hexColor(0xBCBCBC, alpha: 0.7),
                                  activeColor: ColorsUtil.hexColor(0xFFFFFF)))),
                    )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Column(
          children: <Widget>[
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MyItem(Image.asset(R.assetsImgHomeRes), '找货源'),
                  MyItem(Image.asset(R.assetsImgHomeMoney), '找资金'),
                  MyItem(Image.asset(R.assetsImgHomeEnt), '找仓库'),
                  MyItem(Image.asset(R.assetsImgHomeBussn), '找商机'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(28, 0, 28, 0),
              child: Container(
                child: Divider(
                    height: 5,
                    indent: 0.0,
                    color: ColorsUtil.hexColor(0x999999, alpha: 0.8)),
              ),
            )
          ],
        )
      ],
    );
  }
}

class MyItem extends StatelessWidget {
  final String title;
  final Widget item;
  const MyItem(this.item, this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          InkWell(
            child: item,
            onTap: () {},
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: ColorsUtil.hexColor(0x333333),
            ),
          )
        ],
      ),
    );
  }
}
