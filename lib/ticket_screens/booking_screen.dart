import 'package:flutter/material.dart';
import 'package:paytm_clone/ticket_screens/amts_ticket_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  // String? from,to;
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();

  String? selectedValue;
  final List<String> items = ['Male', 'Female', 'Straight', 'Trans'];
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_sharp,size: 35,)),
        title: Text('Buy City Bus Ticket',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          Text('Help',style: TextStyle(fontSize: 25,color: Colors.blue),),
          SizedBox(width: 15,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: fromController,
                    decoration: InputDecoration(
                      hintText: 'From',
                      hintStyle: TextStyle(fontSize: 25),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black)
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: toController,
                    decoration: InputDecoration(
                        hintText: 'To',
                        hintStyle: TextStyle(fontSize: 25),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: ExpansionTile(title: Text('Select Route',style: TextStyle(fontSize: 25),),
                    children: [
                      Text('Ahmedabad'),
                      Text('Goa'),
                      Text('Surat'),
                      Text('Mumbai'),
                      Text('Nashik'),
                    ],
                    ),
                  )
                ),Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    controller: textController,
                    decoration: InputDecoration(
                      labelText: "Select an Option",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      suffixIcon: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: Icon(Icons.arrow_drop_down),
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue;
                              textController.text = newValue!; // Set text field value
                            });
                          },
                          items: items.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () async{
                  // if(fromController.text.isNotEmpty && toController.text.isNotEmpty){
                  //   SharedPreferences prefs = await SharedPreferences.getInstance();
                  // //   // setState(() {
                  // //   //   from = fromController.text;
                  // //   //   to = toController.text;
                  // //   // });
                  // //   // var preference = await SharedPreferences.getInstance();
                  //   await prefs.setString('FROM', fromController.text);
                  //   await prefs.setString('To', toController.text);
                  // }
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AmtsTicketScreen()));
                },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),
                    child: Text('Buy Ticket',style: TextStyle(fontSize: 25,color: Colors.white),))
              ],

            ),
          ),
        ),
      ),
    );
  }
}
