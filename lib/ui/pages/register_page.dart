part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> _formKey = GlobalKey();

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _namaController = TextEditingController();
  String? gender = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorBase.primary,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'DAFTAR AKUN',
          style: fontWhite.copyWith(
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                TextFormField(
                  decoration: authInputDecoration(
                    label: 'Nama Lengkap',
                    hintText: 'Masukan nama lengkap anda',
                    //icon: Icon(Icons.person, color: ColorBase.blue)
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: authInputDecoration(
                    label: 'Email',
                    hintText: 'Masukan email anda',
                    //icon: Icon(Icons.person, color: ColorBase.blue)
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: authInputDecoration(
                    label: 'Password',
                    hintText: 'Masukan password',
                    //icon: Icon(Icons.lock, color: ColorBase.blue)
                  ),
                ),
                SizedBox(height: 10),
                _buildGender(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        width: double.infinity,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          height: 50,
          color: ColorBase.primary,
          onPressed: () {},
          child: Text(
            'DAFTAR',
            style: fontWhite,
          ),
        ),
      ),
    );
  }

  Widget _buildGender() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Jenis Kelamin',
            style: fontBlack.copyWith(
              fontSize: 18,
              color: Colors.black54,
            )),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    gender = 'L';
                  });
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/male.svg',
                      width: 40,
                      height: 40,
                      color: gender! == 'L' ? null : Colors.grey,
                    ),
                    Text('Pria',
                        style: fontBlack.copyWith(
                            fontSize: 10, color: Colors.black54)),
                  ],
                )),
            SizedBox(
              width: 40,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    gender = 'P';
                  });
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/female.svg',
                      width: 40,
                      height: 40,
                      color: gender! == 'P' ? null : Colors.grey,
                    ),
                    Text('Wanita',
                        style: fontBlack.copyWith(
                            fontSize: 10, color: Colors.black54)),
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
