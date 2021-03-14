part of 'widgets.dart';

class BottomNavbarItem extends StatelessWidget {
  final String? imageUrl;
  final bool isActive;
  final Function? onTap;
  BottomNavbarItem({this.imageUrl, this.isActive = false, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl!,
          width: 26,
          color: (isActive) ? purpleColor : Color(0xff989BA1),
        ),
        Spacer(),
        isActive
            ? Container(
                height: 2,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(1000)),
                    color: purpleColor),
              )
            : Container()
      ],
    );
  }
}
