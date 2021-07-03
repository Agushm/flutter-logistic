part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorBase.primary,
        elevation: 1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'MENU UTAMA',
          style: fontWhite.copyWith(
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btnMainMenu(
                  onPressed: () {},
                  btnText: 'Transaksi Masuk',
                  icon: Icons.login),
              SizedBox(width: 20),
              btnMainMenu(
                  onPressed: () {},
                  btnText: 'Transaksi Keluar',
                  icon: Icons.logout),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btnMainMenu(
                  onPressed: () {},
                  btnText: 'Laporan Stok',
                  icon: Icons.article_outlined),
              SizedBox(width: 20),
              btnMainMenu(
                  onPressed: () {},
                  btnText: 'Laporan Harian',
                  icon: Icons.article),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btnMainMenu(
                  onPressed: () {},
                  btnText: 'Daftar Barang',
                  icon: Icons.inventory_2_outlined),
              SizedBox(width: 20),
              btnMainMenu(onPressed: () {}, btnText: 'Info', icon: Icons.info),
            ],
          ),
        ],
      ),
    );
  }
}
