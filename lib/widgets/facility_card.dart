part of 'widgets.dart';

class FacilityCard extends StatelessWidget {
  final String? name;
  final String? imageUrl;
  final int? total;
  FacilityCard({this.name, this.imageUrl, this.total});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageUrl!, width: 32),
        SizedBox(height: 8),
        Text.rich(TextSpan(
            text: '${total!}',
            style: purpleTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                  text: ' ${name!}',
                  style: greyTextStyle.copyWith(fontSize: 14))
            ]))
      ],
    );
  }
}
