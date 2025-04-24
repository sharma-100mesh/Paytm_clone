import 'package:flutter/material.dart';
import 'package:paytm_clone/ticket_screens/booking_screen.dart';

class TicketBookingScreen extends StatefulWidget {
  const TicketBookingScreen({super.key});

  @override
  State<TicketBookingScreen> createState() => _TicketBookingScreenState();
}

class _TicketBookingScreenState extends State<TicketBookingScreen> {
  List city = ['Ahmedabad', 'Goa', 'Nashik', 'Rajkot', 'Surat', 'Mumbai'];

  List<IconData> cityIcon = [
    Icons.location_city,
    Icons.location_city,
    Icons.location_city,
    Icons.location_city,
    Icons.location_city,
    Icons.location_city,
  ];

  List<Map<String,dynamic>> cityImage = [
    {
      'url' : 'assets/images/boy.png'
    },
    {
      'url' : 'assets/images/boy.png'
    },
    {
      'url' : 'assets/images/boy.png'
    },
    {
      'url' : 'assets/images/boy.png'
    },
    {
      'url' : 'assets/images/boy.png'
    },
    {
      'url' : 'assets/images/boy.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_sharp,
            size: 33,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 25,bottom: 20),
                child: Text(
                  'Select your City',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingScreen()));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.grey,
                      child: Icon(cityIcon[index],size: 38,),
                      // child: ClipRRect(
                      //   borderRadius: BorderRadius.circular(360),
                      //     child: Image.asset(cityImage[index]['url'],fit: BoxFit.cover,)
                      // )
                    ),
                    title: Text(city[index].toString(),style: TextStyle(fontSize: 20),),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 80,top: 9,bottom: 15),
                  child: Divider(
                    height: 2,
                    thickness: 2,
                  ),
                );
              },
              itemCount: city.length,
            ),
          ),

        ],
      ),
    );
  }
}
