part of 'widgets.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: CircularProgressIndicator(),
    );
  }
}
