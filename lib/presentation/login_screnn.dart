import 'package:flutter/material.dart';
import 'package:vascomm_test/presentation/home_screen.dart';
import 'package:vascomm_test/presentation/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 110),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: "Hai, ",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1D334F),
                      ),
                      children: [
                        TextSpan(
                          text: "Selamat Datang",
                          style: TextStyle(
                              color: Color(0xFF1D334F),
                              fontSize: 28,
                              fontWeight: FontWeight.w800),
                        ),
                      ]),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Silahkan login untuk melanjutkan",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF597393)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/login_image.png",
                    width: 330,
                    height: 220,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Email",
                            style: TextStyle(
                                color: Color(0xFF002060),
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xFFBEBEBE)
                                          .withOpacity(0.15),
                                      blurRadius: 24.0,
                                      offset: const Offset(0.0, 16.0),
                                      spreadRadius: 0.0)
                                ]),
                            child: const TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  hintText: "Masukkan email anda",
                                  border: InputBorder.none,
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(
                                    color: Color(0xFF002060),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Text(
                                "Lupa Password Anda?",
                                style: TextStyle(
                                    color: Color(0xFF597393),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xFFBEBEBE)
                                          .withOpacity(0.15),
                                      blurRadius: 24.0,
                                      offset: const Offset(0.0, 16.0),
                                      spreadRadius: 0.0)
                                ]),
                            child: const TextField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  hintText: "Masukkan password anda",
                                  border: InputBorder.none,
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF002060))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20,
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const Icon(Icons.arrow_forward_outlined)
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Belum punya akun?",
                        style: TextStyle(
                            color: Color(0xFFBEBEBE),
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Daftar Sekarang",
                        style: TextStyle(
                            color: Color(0xff002060),
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text(
                  "© SILK. all right reserved.",
                  style: TextStyle(
                      color: Color(0xFFBEBEBE),
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}