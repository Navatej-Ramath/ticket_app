import 'package:flutter/material.dart';

import '../base/widgets/ticketView.dart';

class allTickets extends StatelessWidget {
  const allTickets ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Tickets', style: TextStyle(color: Colors.black, fontSize: 25))),
      body: const SafeArea(child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              ticketView(
                  fromCode: 'NYC',
                  from: 'New-York',
                  toCode: 'LDN',
                  to: 'London',
                  time: '8H 30M',
                  date: '1 May',
                  departureTime: '8:00AM',
                  number: '23',
                  flag: 1,
                screen: 1,
              rad: 20,),
              ticketView(
                fromCode: 'IND',
                from: 'India',
                toCode: 'LAX',
                to: 'Los Angeles',
                time: '1H 30M',
                date: '2 May',
                departureTime: '10:00AM',
                number: '45',
                flag: 1,
                screen: 1,
                  rad: 20
              ),
              ticketView(
                fromCode: 'PAR',
                from: 'Paris',
                toCode: 'BER',
                to: 'Berlin',
                time: '2H 15M',
                date: '3 May',
                departureTime: '12:00PM',
                number: '78',
                flag: 1,
                screen: 1,
                  rad: 20
              ),
              ticketView(
                fromCode: 'NYC',
                from: 'New York',
                toCode: 'TOK',
                to: 'Tokyo',
                time: '14H 30M',
                date: '4 May',
                departureTime: '3:00PM',
                number: '90',
                flag: 1,
                screen: 1,
                  rad: 20
              )
            ],
          ),
        ),
      )),
    );
  }
}
