import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:sample_project_2/base/widgets/tickets_extention.dart';
import '../base/widgets/positiones_dot.dart';
import '../base/widgets/selection_option.dart';
import '../base/widgets/ticketView.dart';
import '../res/styles/app_styles.dart';

class ticketsTab extends StatelessWidget {
  const ticketsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Stack(
            children: [
              ListView(
                children: [
                  const Text(
                    'Tickets',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 33),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      const selectionTab(
                          name: 'Upcoming',
                          flag: 1,
                          color: AppColors.canvasColor),
                      selectionTab(
                          name: 'Previous',
                          flag: 0,
                          color: Colors.grey.shade300),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const ticketView(
                      fromCode: 'NYC',
                      from: 'New-York',
                      toCode: 'LDN',
                      to: 'London',
                      time: '8H 30M',
                      date: '1 May',
                      departureTime: '8:00AM',
                      number: '23',
                      flag: 0,
                      screen: 0,
                      rad: 0),
                  const tickets_ext(
                      topleftName: 'Flutter DB',
                      bottomleftName: 'Passenger',
                      bottomrightName: 'Passport',
                      toprightName: '5221 36869'),
                  const tickets_ext(
                      topleftName: '2465 94046865',
                      bottomleftName: 'E-ticket',
                      bottomrightName: 'Booking code',
                      toprightName: 'B46859'),
                  const tickets_ext(
                      topleftName: 'Credit Card',
                      bottomleftName: 'Payment method',
                      bottomrightName: 'Price',
                      toprightName: '\$249.99'),
                  Align(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          color: AppColors.canvasColor,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(20))),
                      height: 80,
                      width: 320,
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        drawText: false,
                        data:
                            'https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const ticketView(
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
                      rad: 20)
                ],
              ),
              const positionedDot(left: 20,top: 220,),
              const positionedDot(left: 330,top: 220,)
            ],
          ),
        )));
  }
}
