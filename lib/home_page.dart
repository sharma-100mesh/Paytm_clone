import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
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
              height: 20,
              width: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('assets/images/camel.webp',fit: BoxFit.cover,),
              ),
            ),
          );
        }
        ),
        title: Text('Welcome',style: TextStyle(fontSize: 35,color: Colors.white),),
        // title: Image.asset('assets/images/icons/paytm_logo.webp'),
        actions: [
          Icon(Icons.search_outlined,size: 40,color: Colors.white,),
          SizedBox(width:13,),
          Icon(Icons.notifications_none,size: 40,color: Colors.white,),
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
                              Column(
                                children: [
                                  RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: 'UPI Lite : ',
                                          style: TextStyle(
                                              fontSize: 16,color: Colors.black)),
                                      TextSpan(
                                          text: 'Activate',
                                          style: TextStyle(
                                              fontSize: 16,color: Colors.lightBlue)),
                                    ]),
                                  ),
                                ],
                              ),
                              Container(
                                height: 20,
                                width: 2, // Divider thickness
                                color: Colors.black,
                                margin: const EdgeInsets.only(left: 60,right: 30),
                              ),
                              Column(
                                children: [
                                  RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: 'UPI ID: ',
                                          style: TextStyle(
                                              fontSize: 16,color: Colors.black)),
                                      TextSpan(
                                          text: '8866888246@paytm',
                                          style: TextStyle(
                                              fontSize: 16,color: Colors.black)),
                                    ]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 45,
                                width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xff041575),
                              borderRadius: BorderRadius.circular(10)
                            ),
                                child: Icon(Icons.qr_code_scanner,size: 30,color: Colors.white,)),
                            SizedBox(height: 10,),
                            Text('Scan &',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text('Pay',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
        
                                height: 45,
                                width: 45,
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
                            Text('To Mobile',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text('or Contact',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 45,
                                width: 45,
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
                            Text('To Bank A/c',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text('or UPI ID',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: Color(0xff041575),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Icon(CupertinoIcons.person_add,size: 30,color: Colors.white,)),
                            SizedBox(height: 10,),
                            Text('To Self A/c',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
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
                      height: 70,
                      width: 70,
                      child: Card(
                        child: Row(
                          children: [
                            Icon(Icons.contact_page,size: 40,color: Colors.lightBlueAccent),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Check Balance',style: TextStyle(fontSize: 18),),
                                Text('& History',style: TextStyle(fontSize: 18),),
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
                      height: 70,
                      width: 70,
                      child: Card(
                        child: Row(
                          children: [
                            Image.asset('assets/images/icons/icons8-rupay-48.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Rupay Credit',style: TextStyle(fontSize: 18),),
                                Text('Card on UPI',style: TextStyle(fontSize: 18),),
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
                          Text('RECHARGE & BILL PAYMENTS',style: TextStyle(fontSize: 18),),
                          Spacer(),
                          Row(
                            children: [
                              Text('View all',style: TextStyle(fontSize: 18),),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_circle_right_rounded,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(CupertinoIcons.device_phone_portrait,size: 45,color: Colors.blue,),
                            SizedBox(height: 10,),
                            Text('Mobile',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text('Recharge',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/loan & emi payments.png',color: Colors.blue,height: 45),
                            SizedBox(height: 10,),
                            Text('Loan EMI',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text('Payment',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/gas-cylinder.png',fit: BoxFit.cover,height: 45,),
                            SizedBox(height: 10,),
                            Text('Cylinder',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text('Booking',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(CupertinoIcons.lightbulb_fill,size: 45,color: Colors.lightBlueAccent,),
                            SizedBox(height: 10,),
                            Text('Electric Bill',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
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
                  child: Text('DO MORE WITH PAYTM',style: TextStyle(fontSize: 18),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/loans.png',height: 50,color: Colors.lightBlueAccent,),
                    SizedBox(height: 10,),
                    Text('Loans',style: TextStyle(fontSize: 16),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/credit-card.png',height: 50,color: Colors.orangeAccent,),
                    SizedBox(height: 10,),
                    Text('Credit Cards',style: TextStyle(fontSize: 16),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/money.png',height: 50,color: Colors.lightBlueAccent,),
                    SizedBox(height: 10,),
                    Text('Paytm Money',style: TextStyle(fontSize: 16),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/sip.png',height: 50,color: Colors.lightBlueAccent,),
                    SizedBox(height: 10,),
                    Text('JanNivesh',style: TextStyle(fontSize: 16),),
                    Text('SIP @ ₹250',style: TextStyle(fontSize: 16),)
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
                    Image.asset('assets/images/icons/bus.png',height: 50,color: Colors.blue,),
                    SizedBox(height: 10,),
                    Text('Flight,Bus &',style: TextStyle(fontSize: 16),),
                    Text('Train',style: TextStyle(fontSize: 16)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/buy gold.png',height: 50,),
                    SizedBox(height: 10,),
                    Text('Buy Gold',style: TextStyle(fontSize: 16),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/movies.png',height: 50,color: Colors.purple,),
                    SizedBox(height: 10,),
                    Text('Movies &',style: TextStyle(fontSize: 16),),
                    Text('Event',style: TextStyle(fontSize: 16),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/icons/all services.png',height: 50,color: Colors.lightBlueAccent,),
                    SizedBox(height: 10,),
                    Text('All Servicies',style: TextStyle(fontSize: 16),),
                  ],
                ),
              ],
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
                          Text('FREE TOOLS',style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/check credit score.png',color: Colors.blue,height: 45),
                            SizedBox(height: 10,),
                            Text('Check Credit',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text('Score',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/mutual fund report.png',fit: BoxFit.cover,height: 45,),
                            SizedBox(height: 10,),
                            Text('Mutual Fund',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text('Report',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/ask ai.png',fit: BoxFit.cover,height: 45,),
                            SizedBox(height: 10,),
                            Text('Ask AI',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/icons/insurance status.png',fit: BoxFit.cover,height: 45,),
                            SizedBox(height: 10,),
                            Text('Insuarance',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            Text('Status',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Container(
                    height: 70,
                    width: 210,
                    child: Card(
                      child: Row(
                        children: [
                          // Image.asset('assets/images/icons/paytm.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Cashback & Offers',style: TextStyle(fontSize: 17),)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 200,
                      child: Card(
                        child: Row(
                          children: [
                            // Icon(Icons.shopping_bag,size: 40,color: Colors.red),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Points & Gifts',style: TextStyle(fontSize: 17),)
                          ],
                        ),
                      ),
                    ),
                  ),
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
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 20,),
                  Container(
                    height: 40,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffD9EAFD),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Personal',style: TextStyle(fontSize: 19),),
                        // Spacer(),
                        Text('Business',style: TextStyle(fontSize: 19),),
                        // SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(360),
                          child: Image.asset('assets/images/camel.webp',fit: BoxFit.cover,)
                      ),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sharma Siddhartha ',style: TextStyle(fontSize: 17),),
                      Container(
                          height: 20,
                          width: 20,
                          child: Image.asset('assets/images/icons/bluetick.png',fit: BoxFit.cover,)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.double_arrow,color: Colors.deepOrange,size: 20,),
                          Text('8866888246@ptaxis',style: TextStyle(fontSize: 17),),
                          Icon(Icons.copy,size: 20,color: Colors.blue,)
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                height: 270,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Container(
                      height : 180,
                        width: 180,
                        child: Image.asset('assets/images/icons/qr-code.png')
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height : 18,
                            width: 18,
                            child: Image.asset('assets/images/icons/bob logo.jpeg',fit: BoxFit.cover,)
                        ),
                        Text('Bank Of Baroda - 2144',style: TextStyle(fontSize: 15),),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                    
                    Spacer(),
                    Container(
                      height: 5,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 5,
                      color: Color(0xff041575),
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 20,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.share),
                        Text('Share QR',style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.file_download_outlined),
                        Text('Download QR',style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  )
                ],
              ),
          
              SizedBox(height: 20,),
          
              Container(
                height: 120,
                color: Color(0xffD9EAFD),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 250,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.add_circle_outline),
                              Text('Add QR to Home Screen',style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 160,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.double_arrow_outlined,color: Colors.orange,),
                                Text('Link UP Number',style: TextStyle(fontSize: 16),)
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 40,
                            width: 160,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.credit_card,color: Colors.lightBlueAccent,),
                                Text('Link RuPay Card',style: TextStyle(fontSize: 16),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              
              ListTile(
                leading: Icon(Icons.shield_outlined,size: 35,),
                title: Text('Paytm Security Shield',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                // subtitle: Text('Protect your account',style: TextStyle(fontSize: 16,),),
                trailing: Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Center(child: Text('Active',style: TextStyle(fontSize: 18,color: Colors.blue),)),
                )
              ),
              ListTile(
                  leading: Icon(Icons.message_rounded,size: 35,),
                  title: Text('Help & Support',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                  // subtitle: Text('Customer Support, Your Queries,Frequently Asked Questions',style: TextStyle(fontSize: 16,),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded)
              ),
              ListTile(
                  leading: Icon(CupertinoIcons.tickets_fill,size: 35,),
                  title: Text('Order & Booking',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                  // subtitle: Text('Recharge, Bill Payments,Shopping, Movies,Travel & Others',style: TextStyle(fontSize: 16,),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded)
              ),
              ListTile(
                  leading: Icon(Icons.perm_identity_sharp,size: 35,),
                  title: Text('Profile Settings',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                  // subtitle: Text('Customer Support, Your Queries,Frequently Asked Questions',style: TextStyle(fontSize: 16,),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded)
              ),
              ListTile(
                  leading: Icon(CupertinoIcons.person_2_fill,size: 35,),
                  title: Text('Refer & Win',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                  // subtitle: Text('Customer Support, Your Queries,Frequently Asked Questions',style: TextStyle(fontSize: 16,),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded)
              ),
              ListTile(
                  leading: Icon(Icons.gas_meter_sharp,size: 35,),
                  title: Text('DigiLocker',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                  // subtitle: Text('Customer Support, Your Queries,Frequently Asked Questions',style: TextStyle(fontSize: 16,),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded)
              ),
              ListTile(
                  leading: Icon(Icons.gpp_maybe_rounded,size: 35,),
                  title: Text('Your Paytm Guide',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                  // subtitle: Text('Customer Support, Your Queries,Frequently Asked Questions',style: TextStyle(fontSize: 16,),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded)
              ),


              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Terms & Conditions, Privacy policy, Grievance, Redressal Mechanism , ',
                        style: TextStyle(
                            fontSize: 16,color: Colors.black)),
                    TextSpan(
                        text: 'See all policies',
                        style: TextStyle(
                            fontSize: 16,color: Colors.lightBlue)),
                  ]),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('v10.510 | Made in India',style: TextStyle(fontSize: 18,color: Colors.grey),),
              ),

              Container(
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

// 0xff041575
