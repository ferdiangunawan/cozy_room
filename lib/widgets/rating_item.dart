part of 'widgets.dart';

class RatingItems extends StatelessWidget {
  final int? rating;
  final double? size;
  final Color? color;

  RatingItems({this.rating, this.size = 20, this.color = Colors.orange});
  @override
  Widget build(BuildContext context) {
    List<Widget> ratings = List.generate(5, (index) {
      return Icon(
        (index <= rating!) ? Icons.star : Icons.star_outline,
        size: size,
        color: color,
      );
    }).toList();

    return Row(
      children: ratings,
    );
  }
}
