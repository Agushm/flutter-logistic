part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorBase.primary,
        elevation: 1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'LOGIN',
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
                Center(
                  child: Container(child: LogoWidget()),
                ),
                SizedBox(height: 40),
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
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    color: ColorBase.primary,
                    onPressed: () {
                      Get.offAll(MainPage());
                    },
                    child: Text(
                      'LOGIN',
                      style: fontWhite,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tidak punya akun?',
                      style: fontBlack,
                    ),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: () {
                        Get.to(RegisterPage());
                      },
                      child: Text(
                        'Daftar',
                        style: fontBlack.copyWith(
                            color: ColorBase.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
