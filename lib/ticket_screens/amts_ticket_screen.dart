import 'package:flutter/material.dart';
import 'package:paytm_clone/ticket_screens/ticket_timer.dart';
import 'package:paytm_clone/ticket_screens/view_ticket.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class AmtsTicketScreen extends StatefulWidget {
  const AmtsTicketScreen({super.key});

  @override
  State<AmtsTicketScreen> createState() => _AmtsTicketScreenState();
}

class _AmtsTicketScreenState extends State<AmtsTicketScreen> {

  String from = 'Loading';
  String to = 'Loading';

  @override
  void initState(){
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async{
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // from = prefs.getString('FROM')?? 'No Text';
      // to = prefs.getString('TO')?? 'No Text';
    });
  }

  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_outlined,size: 23,)),
        title: Image.asset('assets/images/icons/paytm.png',height: 70,),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Text('Help',style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.w500),),
          )
        ],
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF98D8EF),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // Amts logo
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 28,
                    child: Container(
                      height:40,
                      width: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(360),
                          child: Image.asset('assets/images/amts2.png',)),
                    ),
                  ),
                ),
                // From And to Location
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('$from',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(Icons.arrow_right_alt_rounded,size: 30,),
                    ),
                    Text('To: $to',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                  ],
                ),
                // Bus Details
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Local',style: TextStyle(fontSize: 12),),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Icon(Icons.circle,size: 4,),
                      ),
                      Text('Non AC',style: TextStyle(fontSize: 12),),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Icon(Icons.circle,size: 4,),
                      ),
                      Text('Bus No. 50-D',style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
                // Passenger info
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('1 Adult Ticket',style: TextStyle(fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/boy.png',height: 30,),
                        SizedBox(width: 5,),
                        Text('1',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                // Ticket price
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('₹ 20',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                      SizedBox(width: 10,),
                      Image.asset('assets/images/icons/bluetick.png',height: 30,color: Colors.green,)
                    ],
                  ),
                ),
                Text('TICKET BOOKD SUCCESSFULLY',style: TextStyle(fontSize: 13),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${time.day}: ${time.month}: ${time.year} , ${time.hour} . ${time.minute}  AM',style: TextStyle(fontSize: 12),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Divider(
                    height: 2,
                    thickness: 1,
                    color: Colors.blueGrey,

                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 160,
                  width: 285,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),

                  ),
                  // Ticket Validity Timer
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Your ticket is valid for',style: TextStyle(fontSize: 12),),
                      SizedBox(
                          height: 50,
                          width: 160,
                          child: TicketTimer(),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('HOUR',style: TextStyle(fontSize: 10),),SizedBox(width: 10,),
                          Text('MINUTE',style: TextStyle(fontSize: 10),),SizedBox(width: 9,),
                          Text('SECOND',style: TextStyle(fontSize: 10),),
                        ],
                      ),
                      SizedBox(height: 13,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewTicket()));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 42,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text('View your Tickets',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),)),
                        ),
                      ),
                    ],

                  ),
                ),
                Spacer(),
                // Divider(
                //   thickness: 6,
                //     color: Color(0xff041575)
                // ),
                // Divider(
                //     thickness: 6,
                //   color: Colors.blue,
                // ),
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xff041575)
                  ),
                ),
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}