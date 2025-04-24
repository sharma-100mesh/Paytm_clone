import 'package:flutter/material.dart';

class ViewTicket extends StatefulWidget {
  const ViewTicket({super.key});

  @override
  State<ViewTicket> createState() => _ViewTicketState();
}

class _ViewTicketState extends State<ViewTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 1,
        leading: Icon(Icons.airplane_ticket,size: 40,),
        title: Text('1 QR Ticket',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        actions: [
          Text('Help',style: TextStyle(fontSize: 15,color: Colors.blue),),
        ],
      ),
    );
  }
}
