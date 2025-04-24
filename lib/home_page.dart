import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paytm_clone/drawer_screen.dart';
import 'package:paytm_clone/ticket_screens/ticket_booking_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {

    bool islandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: Color(0xffD9EAFD),
      appBar: AppBar(
        backgroundColor: Color(0xff041575),
        leading: Builder(builder: (context){
          return InkWell(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              height: 15,
              width: 15,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assets/images/camel.webp',fit: BoxFit.cover,),
              ),
            ),
          );
        }
        ),
        title: Text('Welcome',style: TextStyle(fontSize: 30,color: Colors.white),),
        // title: Image.asset('assets/images/icons/paytm_logo.webp'),
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TicketBookingScreen()));
            },
              child: Icon(Icons.search_outlined,size: 30,color: Colors.white,)),
          SizedBox(width:13,),
          Icon(Icons.notifications_none,size: 30,color: Colors.white,),
          SizedBox(width:13,),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Card(
                      color: Color(0xffD9EAFD),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: 'UPI Lite : ',
                                      style: TextStyle(
                                          fontSize: 14,color: Colors.black)),
                                  TextSpan(
                                      text: 'Activate',
                                      style: TextStyle(
                                          fontSize: 14,color: Colors.lightBlue)),
                                ]),
                              ),
                              Container(
                                height: 18,
                                width: 1, // Divider thickness
                                color: Colors.black,
                                margin: const EdgeInsets.only(left: 40,right: 25),
                              ),
                              RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: 'UPI ID: ',
                                      style: TextStyle(
                                          fontSize: 14,color: Colors.black)),
                                  TextSpan(
                                      text: '8866888246@paytm',
                                      style: TextStyle(
                                          fontSize: 14,color: Colors.black)),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 38,
                                width: 38,
                            decoration: BoxDecoration(
                              color: Color(0xff041575),
                              borderRadius: BorderRadius.circular(10)
                            ),
                                child: Icon(Icons.qr_code_scanner,size: 27,color: Colors.white,)
                            ),
                            SizedBox(height: 10,),
                            Text('Scan &',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                            Text('Pay',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xff041575),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Image.asset('assets/images/icons/add-contact.png',color: Colors.white,fit: BoxFit.fill,),
                                )
                            ),
                            SizedBox(height: 10,),
                            Text('To Mobile',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                            Text('or Contact',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xff041575),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset('assets/images/icons/bank.png',color: Colors.white,fit: BoxFit.fill,),
                                )
                            ),
                            SizedBox(height: 10,),
                            Text('To Bank A/c',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                            Text('or UPI ID',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                    color: Color(0xff041575),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Icon(CupertinoIcons.person_add,size: 27,color: Colors.white,)),
                            SizedBox(height: 10,),
                            Text('To Self A/c',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      height: 55,
                      // width: 70,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.contact_page,size: 32,color: Colors.lightBlueAccent),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Check Balance',style: TextStyle(fontSize: 13),),
                                Text('& History',style: TextStyle(fontSize: 13),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      height: 55,
                      // width: 70,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icons/icons8-rupay-48.png'),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Rupay Credit',style: TextStyle(fontSize: 13),),
                                Text('Card on UPI',style: TextStyle(fontSize: 13),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('RECHARGE & BILL PAYMENTS',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                          Spacer(),
                          Row(
                            children: [
                              Text('View all',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_circle_right_rounded,size: 20,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(CupertinoIcons.device_phone_portrait,size: 35,color: Colors.blue,),
                            SizedBox(height: 10,),
                            Text('Mobile',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                            Text('Recharge',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/loan & emi payments.png',color: Colors.blue,height: 35),
                            SizedBox(height: 10,),
                            Text('Loan EMI',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                            Text('Payment',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/gas-cylinder.png',fit: BoxFit.cover,height: 35,),
                            SizedBox(height: 10,),
                            Text('Cylinder',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                            Text('Booking',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(CupertinoIcons.lightbulb_fill,size: 35,color: Colors.lightBlueAccent,),
                            SizedBox(height: 10,),
                            Text('Electric Bill',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('DO MORE WITH PAYTM',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/loans.png',height: 35,color: Colors.lightBlueAccent,),
                    SizedBox(height: 10,),
                    Text('Loans',style: TextStyle(fontSize: 13),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/credit-card.png',height: 35,color: Colors.orangeAccent,),
                    SizedBox(height: 10,),
                    Text('Credit Cards',style: TextStyle(fontSize: 13),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/money.png',height: 35,color: Colors.lightBlueAccent,),
                    SizedBox(height: 10,),
                    Text('Paytm Money',style: TextStyle(fontSize: 13),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/sip.png',height: 35,color: Colors.lightBlueAccent,),
                    SizedBox(height: 10,),
                    Text('JanNivesh',style: TextStyle(fontSize: 13),),
                    Text('SIP @ ₹250',style: TextStyle(fontSize: 13),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/bus.png',height: 35,color: Colors.blue,),
                    SizedBox(height: 10,),
                    Text('Flight,Bus &',style: TextStyle(fontSize: 13),),
                    Text('Train',style: TextStyle(fontSize: 13)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/buy gold.png',height: 35,),
                    SizedBox(height: 10,),
                    Text('Buy Gold',style: TextStyle(fontSize: 13),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/movies.png',height: 35,color: Colors.purple,),
                    SizedBox(height: 10,),
                    Text('Movies &',style: TextStyle(fontSize: 13),),
                    Text('Event',style: TextStyle(fontSize: 13),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/all services.png',height: 35,color: Colors.lightBlueAccent,),
                    SizedBox(height: 10,),
                    Text('All Servicies',style: TextStyle(fontSize: 13),),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('FREE TOOLS',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/check credit score.png',color: Colors.blue,height: 35),
                            SizedBox(height: 10,),
                            Text('Check Credit',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                            Text('Score',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/mutual fund report.png',fit: BoxFit.cover,height: 35,),
                            SizedBox(height: 10,),
                            Text('Mutual Fund',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                            Text('Report',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/ask ai.png',fit: BoxFit.cover,height: 35,),
                            SizedBox(height: 10,),
                            Text('Ask AI',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/insurance status.png',fit: BoxFit.cover,height: 35,),
                            SizedBox(height: 10,),
                            Text('Insuarance',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                            Text('Status',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0,left: 5,right: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // islandscape ?
                  Container(
                    height: 70,
                    width: 170,
                    // width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: Row(
                        children: [
                          // Image.asset('assets/images/icons/paytm.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Cashback & Offers',style: TextStyle(fontSize: 13),)
                        ],
                      ),
                    ),
                  ) ,
                  // : Container(
                  //   height: 70,
                  //   width: MediaQuery.of(context).size.width,
                  //   child: Card(
                  //     child: Row(
                  //       children: [
                  //         // Image.asset('assets/images/icons/paytm.png'),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         Text('Cashback & Offers',style: TextStyle(fontSize: 14),)
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // Spacer(),
                  // islandscape ?
                  Container(
                    height: 70,
                    width: 170,
                    // width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: Row(
                        children: [
                          // Icon(Icons.shopping_bag,size: 40,color: Colors.red),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Points & Gifts',style: TextStyle(fontSize: 14),)
                        ],
                      ),
                    ),
                  ) ,
                  //     : Container(
                  //   height: 70,
                  //   width: MediaQuery.of(context).size.width,
                  //   child: Card(
                  //     child: Row(
                  //       children: [
                  //         // Icon(Icons.shopping_bag,size: 40,color: Colors.red),
                  //         SizedBox(
                  //           width: 5,
                  //         ),
                  //         Text('Points & Gifts',style: TextStyle(fontSize: 14),)
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: 100,),

          ],
        ),
      ),

      floatingActionButton: Container(
        height: 50,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.red
        ),
        child: FloatingActionButton(
          backgroundColor: Color(0xff041575),
          onPressed: (){},
          shape: StadiumBorder(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.qr_code_scanner,size: 30,color: Colors.white,),
            SizedBox(width: 10,),
            Text('Scan Any QR',style: TextStyle(fontSize: 18,color: Colors.white),)
          ],
        ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Container(
        margin: EdgeInsets.only(right: 25),
        width: MediaQuery.of(context).size.width,
        child: Drawer_screen(),
      ),
    );
  }
}

// 0xff041575

// Widget Customtitle(String title,String decs,IconData icon){
//   return ListTile(
//       leading: Icon(icon,size: 32,),
//       title: Text(title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
//       subtitle: Text(decs),
//       trailing: Icon(Icons.arrow_forward_ios_rounded)
//   );
// }
