part of 'pages.dart';

class SplashPage extends StatefulWidget {
  final String initialRoute;
  SplashPage(this.initialRoute);
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) async {
      Get.offAll(LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: deviceHeight(context) - 150,
            alignment: Alignment.center,
            child: LogoWidget(),
          ),
          Text('Pelanggan puas kami lemas',
              style: fontBlack.copyWith(
                color: Colors.black54,
              ))
        ],
      ),
    );
  }
}
