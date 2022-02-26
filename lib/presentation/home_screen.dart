import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            //todo open drawer
          },
          icon: Icon(Icons.menu, color: Color(0xFF002060)),
        ),
        actions: [
          Icon(Icons.shopping_cart, color: Color(0xFF002060),),
          SizedBox(width: 20,),
          Icon(Icons.notifications, color: Color(0xFF002060),),
          SizedBox(width: 20,),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: ListView(
          children: [
            _homeCard(image: 'assets/images/icCalendar.svg', title: 'Solusi, Kesehatan Anda', subTitle: 'Update informasi seputar kesehatan \nsemua bisa di sini !', btnText: "Selengkapnya"),
            SizedBox(height: 50,),
            _homeCard(image: 'assets/images/icVaccine.svg', title: 'Layanan Khusus', subTitle: 'Tes Covid-19, Cegah Corona \nSedini Mungkin', btnText: "Daftar Tes", textBtn: true)
          ],
        ),
      ),
    );
  }

}
Widget _homeCard({required String image, required String title,
  required String subTitle,
  bool textBtn = false, required String btnText}) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/background_calendar.png',
            ),
            fit: BoxFit.fill
        )
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(subTitle, style: TextStyle(
                  fontSize: 10, color: Colors.grey, fontWeight: FontWeight.normal
              )),
              textBtn ? TextButton(onPressed: (){}, child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    btnText,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF002060)),
                  ),
                  SizedBox(width: 20,),
                  Icon(Icons.arrow_forward, color: Color(0xFF002060), size: 15,)
                ],
              ))
                  :ElevatedButton(
                onPressed: () {

                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF002060))),
                child:  Padding(
                  padding:  EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Text(
                    btnText,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 120,
          width: 120,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                  bottom: 10,
                  right: 10,
                  top: -50,
                  left: 10,
                  child: SvgPicture.asset(image))
            ],
          ),
        )
      ],
    ),
  );
}
