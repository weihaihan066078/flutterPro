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
                      end: Alignment.bottomCenter)),
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
                    TopContainer(),
                    VIPContainer(),
                    TeamContainer(),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

//顶部搜索按钮
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

//顶部banner+4个item
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
          // color: ColorsUtil.hexColor(0xeeeeee),
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

//listview内容1
class VIPContainer extends StatefulWidget {
  VIPContainer({Key key}) : super(key: key);

  @override
  _VIPContainerState createState() => _VIPContainerState();
}

class _VIPContainerState extends State<VIPContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        color: Colors.yellow,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Stack(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      '会员专享特权',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: ColorsUtil.hexColor(0x333333)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(R.assetsImgHomeVIP),
                  ],
                ),
                Positioned(
                  right: 10,
                  child: Row(
                    children: <Widget>[Text('更多'), Icon(Icons.arrow_right)],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 12.5, right: 12.5, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  VIPItem(),
                  VIPItem(),
                  VIPItem(),
                ],
              ),
            )
          ],
        ));
  }
}

//listview内容2
class TeamContainer extends StatefulWidget {
  TeamContainer({Key key}) : super(key: key);

  @override
  _TeamContainerState createState() => _TeamContainerState();
}

class _TeamContainerState extends State<TeamContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 10),
                  child: Text(
                    '集采联盟',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: ColorsUtil.hexColor(0x333333)),
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              child: AspectRatio(
                child: Swiper(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return TeamItem();
                  },
                ),
                aspectRatio: 375 / 160,
              ),
            )
          ],
        ));
  }
}

//自定义会员特权专享item
class VIPItem extends StatefulWidget {
  VIPItem({Key key}) : super(key: key);

  @override
  _VIPItemState createState() => _VIPItemState();
}

class _VIPItemState extends State<VIPItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 173,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7.5)),
          color: Colors.white),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Image.asset(R.assetsImgHomeItem1),
          SizedBox(
            height: 18,
          ),
          Text(
            '苏泊尔电饭锅11111',
            style: TextStyle(fontSize: 12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '¥259',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '¥259',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//自定义item组件
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

//集采联盟swiper内组件
class TeamItem extends StatefulWidget {
  TeamItem({Key key}) : super(key: key);

  @override
  _TeamItemState createState() => _TeamItemState();
}

class _TeamItemState extends State<TeamItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Row(
        children: <Widget>[
          Container(
            height: 200,
            width: 110,
            child: Image.network(
              'https://www.itying.com/images/flutter/2.png',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 200,
            width: 230,
            child: Column(
              children: <Widget>[
                Text(
                    '新品抢购 Redmi Note8 4800万全场景四摄 4000mAh长续航 高通骁龙665 18W快充 小金刚品质保证 6G'),
                Text('距结束20.00000000'),
                Text('订金 1099')
              ],
            ),
          )
        ],
      ),
    );
  }
}
