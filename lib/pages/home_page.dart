part of 'pages.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Padding(
            padding: EdgeInsets.only(top: defaultMargin),
            child: ListView(
              children: [
                //Note : Explore Now
                Padding(
                  padding: const EdgeInsets.only(left: defaultMargin),
                  child: Text(
                    "Explore Now",
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: defaultMargin),
                  child: Text(
                    'Mencari kosan yang cozy',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.only(left: defaultMargin),
                  child: Text('Popular Cities',
                      style: regularTextStyle.copyWith(fontSize: 16)),
                ),
                SizedBox(
                  height: 16,
                ),
                // CityCard
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      CityCard(City(
                          id: 1,
                          name: 'Jakarta',
                          imageUrl: 'assets/jakarta.png')),
                      SizedBox(
                        width: 12,
                      ),
                      CityCard(City(
                          id: 2,
                          name: 'Bandung',
                          imageUrl: 'assets/bandung.png',
                          isPopular: true)),
                      SizedBox(
                        width: 12,
                      ),
                      CityCard(City(
                          id: 3,
                          name: 'Surabaya',
                          imageUrl: 'assets/surabaya.png')),
                      SizedBox(
                        width: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //Recommended Spaces
                Padding(
                  padding: EdgeInsets.only(left: defaultMargin),
                  child: Text('Recommended Spaces',
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                ),
                SizedBox(
                  height: 16,
                ),

                Container(
                    margin: EdgeInsets.only(left: defaultMargin),
                    child: FutureBuilder(
                      future: Provider.of<SpaceProvider>(context)
                          .getRecommendedSpace(),
                      builder: (_, snapshot) {
                        if (snapshot.hasData) {
                          var data = snapshot.data as List<Space>?;
                          int indexx = 0;
                          return Column(
                              children: data!.map((e) {
                            indexx++;
                            return Container(
                                margin:
                                    EdgeInsets.only(top: indexx == 1 ? 0 : 30),
                                child: SpaceCard(e));
                          }).toList());
                        } else {
                          return Center(
                            child: SpinKitWave(
                              color: purpleColor,
                              size: 50,
                            ),
                          );
                        }
                      },
                    )),

                // Note : Tips & Guidance
                Container(
                  margin:
                      EdgeInsets.only(left: defaultMargin, top: 30, bottom: 16),
                  child: Text(
                    'Tips & Guidance',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Column(
                      children: [
                        TipsCard(Tips(
                            id: 1,
                            title: 'City Guidelines',
                            updateAt: 'Updated 20 Apr',
                            imageUrl: 'assets/city_guidelines.png')),
                        SizedBox(height: 20),
                        TipsCard(Tips(
                            id: 2,
                            title: 'Jakarta Fairship',
                            updateAt: 'Updated 11 Dec',
                            imageUrl: 'assets/jakarta_fairship.png')),
                      ],
                    )),
                SizedBox(height: 100),
              ],
            )),
      ),
    );
  }
}
