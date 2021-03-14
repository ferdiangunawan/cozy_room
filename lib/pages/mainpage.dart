part of 'pages.dart';

class MainPage extends StatefulWidget {
  final int bottomNavbarIndex;

  MainPage({this.bottomNavbarIndex = 0});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int? bottomNavbarIndex;
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    bottomNavbarIndex = widget.bottomNavbarIndex;
    pageController = PageController(initialPage: bottomNavbarIndex!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white),
          SafeArea(
            bottom: false,
            child: Container(
              color: Colors.white,
            ),
          ),
          PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  bottomNavbarIndex = index;
                });
              },
              children: <Widget>[
                HomePage(),
                MessagePage(),
                CardPage(),
                FavoritePage()
              ])
        ],
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        height: 65,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23), color: Color(0xffF6F7F8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  bottomNavbarIndex = 0;
                  pageController!.jumpToPage(0);
                });
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/icon_home.png',
                isActive: (bottomNavbarIndex == 0) ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bottomNavbarIndex = 1;
                  pageController!.jumpToPage(1);
                });
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/icon_mail.png',
                isActive: (bottomNavbarIndex == 1) ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bottomNavbarIndex = 2;
                  pageController!.jumpToPage(2);
                });
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/icon_card.png',
                isActive: (bottomNavbarIndex == 2) ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bottomNavbarIndex = 3;
                  pageController!.jumpToPage(3);
                });
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/icon_love.png',
                isActive: (bottomNavbarIndex == 3) ? true : false,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
