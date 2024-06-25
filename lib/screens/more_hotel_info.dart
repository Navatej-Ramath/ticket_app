import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mHotel extends StatelessWidget {
  const mHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Best Hotel",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white),
                ),
                background: Image.asset(
                  'assets/images/hotel1.jpeg',
                  fit: BoxFit.fill,
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  'Nestled in the heart of the city, our hotel offers an unparalleled blend of comfort, luxury, and convenience. Each room is elegantly designed, featuring modern amenities and plush furnishings to ensure a restful stay. Guests can indulge in exquisite dining experiences at our on-site restaurant, which serves a delightful array of local and international cuisines. The hotel boasts a state-of-the-art fitness center, a serene spa, and a rooftop pool with breathtaking city views. Ideal for both business and leisure travelers, our hotel is just minutes away from major attractions, shopping districts, and cultural landmarks. Exceptional service, attention to detail, and a warm, welcoming atmosphere make our hotel the perfect home away from home.'),
            ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('More Images',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                ),
                Container(
                  height: 200,
                  padding: EdgeInsets.all(16),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/hotel1.jpeg',
                        fit: BoxFit.fill,
                      ),
                    );
                  }),
                )
          ]))
        ],
      ),
    );
  }
}
