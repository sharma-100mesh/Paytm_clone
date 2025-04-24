import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:paytm_clone/ticket_screens/amts_ticket_screen.dart';


class Drawer_screen extends StatefulWidget {
  const Drawer_screen({super.key});

  @override
  State<Drawer_screen> createState() => _Drawer_screenState();
}

class _Drawer_screenState extends State<Drawer_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(Icons.arrow_back),
                ),
                SizedBox(width: 30,),
                Container(
                  height: 28,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffD9EAFD),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Personal',style: TextStyle(fontSize: 13),),
                      // Spacer(),
                      Text('Business',style: TextStyle(fontSize: 13),),
                      // SizedBox(width: 20,),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
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
                    Text('Sharma Siddhartha ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    Container(
                        height: 15,
                        width: 15,
                        child: Image.asset('assets/images/icons/bluetick.png',fit: BoxFit.cover,)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.double_arrow,color: Colors.deepOrange,size: 14,),
                        Text('8866888246@ptaxis',style: TextStyle(fontSize: 14),),
                        SizedBox(width: 9,),
                        Icon(Icons.copy,size: 14,color: Colors.blue,)
                      ],
                    )
                  ],
                ),
                SizedBox(width: 15,)
              ],
            ),
            SizedBox(height: 15,),
            Container(
              height: 290,
              width: 290,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)
              ),

              //Qr code :
              child: Column(
                children: [
                  SizedBox(height: 35,),
                  Container(
                      height : 185,
                      width: 185,
                      child: Image.asset('assets/images/icons/qr-code.png')
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height : 15,
                          width: 15,
                          child: Image.asset('assets/images/icons/bob logo.jpeg',fit: BoxFit.cover,)
                      ),
                      SizedBox(width: 5,),
                      Text('Bank Of Baroda - 2144',style: TextStyle(fontSize: 13),),
                      SizedBox(width: 5,),
                      Icon(Icons.keyboard_arrow_down,size: 20,)
                    ],
                  ),

                  Spacer(),
                  Container(
                    height: 5,
                    // width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 5,
                    // width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                      color: Color(0xff041575),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.share,size: 14),
                      Text('Share QR',style: TextStyle(fontSize: 11),)
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.file_download_outlined,size: 14,),
                      Text('Download QR',style: TextStyle(fontSize: 11),)
                    ],
                  ),
                ),
                SizedBox(width: 10,),

              ],
            ),

            SizedBox(height: 20,),

            Container(
              height: 120,
              color: Color(0xffD9EAFD),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.add_circle_outline,size: 16,),
                              Text('Add QR to Home Screen',style: TextStyle(fontSize: 11),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 140,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.double_arrow_outlined,color: Colors.orange,size: 16,),
                              Text('Link UP Number',style: TextStyle(fontSize: 11),)
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 32,
                          width: 140,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.credit_card,color: Colors.lightBlueAccent,size: 16,),
                              // SizedBox(width: 5,),
                              Text('Link RuPay Card',style: TextStyle(fontSize: 11),)
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
                leading: Icon(Icons.shield_outlined,size: 26,),
                title: Text('Paytm Security Shield',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                subtitle: Text('Protect your account',style: TextStyle(fontSize: 12),),
                // subtitle: Text('Protect your account',style: TextStyle(fontSize: 16,),),
                trailing: Container(
                  height: 28,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.blue)
                  ),
                  child: Center(child: Text('Active',style: TextStyle(fontSize: 13,color: Colors.blue),)),
                )
            ),
            Divider(
              height: 4,
              thickness: 1,
            ),
            ListTile(
                leading: Icon(Icons.message_rounded,size: 26,),
                title: Text('Help & Support',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                subtitle: Text('Customer Support, Your Queries,Frequently Asked Questions',style: TextStyle(fontSize: 12),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Divider(
                height: 5,
                thickness: 1,
              ),
            ),
            ListTile(
                leading: Icon(Icons.settings,size: 26,),
                title: Text('UPI & Payment Settings',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                subtitle: Text('Change UPI PIN, Linked Bank Accounts, Automatic Payments & Subscriptions, Other Accounts',style: TextStyle(fontSize: 12)),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Divider(
                height: 5,
                thickness: 1,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AmtsTicketScreen()));
              },
              child: ListTile(
                  leading: Icon(CupertinoIcons.tickets_fill,size: 26,),
                  title: Text('Order & Booking',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                  subtitle: Text('Recharge, Bill Payments,Shopping, Movies,Travel & Others',style: TextStyle(fontSize: 12)),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Divider(
                height: 5,
                thickness: 1,
              ),
            ),
            ListTile(
                leading: Icon(Icons.perm_identity_sharp,size: 26,),
                title: Text('Profile Settings',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                subtitle: Text('Profile, Addresses, Security & Privacy, Notification, Language',style: TextStyle(fontSize: 12)),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Divider(
                height: 5,
                thickness: 1,
              ),
            ),
            ListTile(
                leading: Icon(CupertinoIcons.person_2_fill,size: 26,),
                title: Text('Refer & Win',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                subtitle: Text('Win assured cashback every time a referred friend makes their eligible payment on Paytm',style: TextStyle(fontSize: 12)),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Divider(
                height: 5,
                thickness: 1,
              ),
            ),
            ListTile(
                leading: Icon(Icons.gas_meter_sharp,size: 26,),
                title: Text('DigiLocker',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                subtitle: Text('Access 1000+ documents like PAN, Aadhaar, DL instantly on DigiLocker',style: TextStyle(fontSize: 12)),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Divider(
                height: 5,
                thickness: 1,
              ),
            ),
            ListTile(
                leading: Icon(Icons.gpp_maybe_rounded,size: 26,),
                title: Text('Your Paytm Guide',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                subtitle: Text('Uncover unexplored features and transform your Paytm experience',style: TextStyle(fontSize: 12)),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Divider(
                height: 5,
                thickness: 1,
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(12.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Terms & Conditions, Privacy policy, Grievance, Redressal Mechanism , ',
                      style: TextStyle(
                          fontSize: 13,color: Colors.black)),
                  TextSpan(
                      text: 'See all policies',
                      style: TextStyle(
                          fontSize: 16,color: Colors.lightBlue)),
                ]),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('v10.51.0 | Made in India',style: TextStyle(fontSize: 13,color: Colors.grey),),
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
    );
  }
}
