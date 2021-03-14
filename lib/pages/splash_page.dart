part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: whiteColor,
        child: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Container(
                color: Colors.white,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset('assets/bottom.jpg')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png'))),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Find Cozy House\nto Stay and Happy',
                      style: blackTextStyle.copyWith(fontSize: 24),
                    ),
                    Text(
                      'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    //Button
                    Container(
                      height: 50,
                      width: 210,
                      decoration: BoxDecoration(),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17)),
                              primary: purpleColor),
                          child: Text(
                            'Explore Now',
                            style: whitetextStyle.copyWith(fontSize: 18),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainPage()));
                          }),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
