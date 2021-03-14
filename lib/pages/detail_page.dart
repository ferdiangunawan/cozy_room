part of 'pages.dart';

class DetailPage extends StatelessWidget {
  final Space space;
  DetailPage(this.space);
  @override
  Widget build(BuildContext context) {
    void launchURL(String url) async => await canLaunch(url)
        ? await launch(url)
        : Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPage()));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              space.imageUrl!,
              height: 500,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(height: 300),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 30, left: defaultMargin, right: defaultMargin),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  space.name!,
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                SizedBox(height: 2),
                                Text.rich(TextSpan(
                                    text: '\$${space.price!}',
                                    style:
                                        purpleTextStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: ' / month',
                                          style: greyTextStyle.copyWith(
                                              fontSize: 16))
                                    ])),
                              ],
                            ),
                            RatingItems(
                              rating: space.rating,
                              size: 20,
                              color: Color(0xffFF9376),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultMargin),
                        child: Text(
                          'Main Facilities',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: defaultMargin),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FacilityCard(
                                name: 'kitchen',
                                total: space.numberOfKitchen,
                                imageUrl: 'assets/bar_counter.png',
                              ),
                              FacilityCard(
                                name: 'Bedroom',
                                total: space.numberOfBedroom,
                                imageUrl: 'assets/double_bad.png',
                              ),
                              FacilityCard(
                                name: 'Big Lemari',
                                total: space.numberOfCupboard,
                                imageUrl: 'assets/cupboard.png',
                              )
                            ],
                          )),
                      SizedBox(height: 30),
                      //Note: Photos
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultMargin),
                        child: Text(
                          'Photos',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                          height: 110,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: space.photos!.map((item) {
                                return Container(
                                    margin:
                                        EdgeInsets.only(left: defaultMargin),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(18),
                                        child: Image.network(
                                          item,
                                          width: 110,
                                          height: 88,
                                          fit: BoxFit.cover,
                                        )));
                              }).toList())),
                      SizedBox(height: 30),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultMargin),
                        child: Text(
                          'Location',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultMargin),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${space.address}\n${space.city}',
                              style: regularTextStyle.copyWith(
                                  fontSize: 14, color: greyColor),
                            ),
                            GestureDetector(
                              onTap: () {
                                launchURL(space.mapUrl!);
                                //launchURL('www.google.com');
                              },
                              child: Image.asset(
                                'assets/btn_location.png',
                                width: 40,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Center(
                        child: Container(
                          width: 327,
                          height: 50,
                          margin:
                              EdgeInsets.symmetric(horizontal: defaultMargin),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: purpleColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17))),
                              onPressed: () {
                                launchURL('tel:${space.phone!}');
                              },
                              child: Text(
                                'Book Now',
                                style: whitetextStyle.copyWith(fontSize: 18),
                              )),
                        ),
                      ),
                      SizedBox(height: 40)
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultMargin, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/btn_back.png', width: 40)),
                  Image.asset('assets/btn_wishlist.png', width: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
