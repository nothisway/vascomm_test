import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
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
                    Row(
                      children: [
                        Expanded(
                          flex: 20,
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                  "Nama Depan",
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
                                      borderRadius:
                                      new BorderRadius.circular(10.0),
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
                                        hintText: "John",
                                        border: InputBorder.none,
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              width: 20,
                            )),
                        Expanded(
                          flex: 20,
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                  "Nama Belakang",
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
                                      borderRadius:
                                      new BorderRadius.circular(10.0),
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
                                        hintText: "Doe",
                                        border: InputBorder.none,
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "No. KTP",
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
                                  hintText: "Masukkan No. KTP anda",
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
                          const Text(
                            "No Telpon",
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
                                  hintText: "Masukkan No Telpon anda",
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
                                "Konfirmasi Password",
                                style: TextStyle(
                                    color: Color(0xFF002060),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
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
                                  hintText: "Konfirmasi password anda",
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
                  onPressed: () {},
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
                          "Register",
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
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Sudah punya akun?",
                        style: TextStyle(
                            color: Color(0xFFBEBEBE),
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Login Sekarang",
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
