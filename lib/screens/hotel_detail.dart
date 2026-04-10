import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/base/utils/app_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;
 @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    // print(args["index"]);
    index = args["index"];
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                 Navigator.pop(context);
                },
                child:Container(
                  decoration: BoxDecoration(
                   shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white,),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[index]['image']}", 
                    fit: BoxFit.cover,
                    ),),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child:  Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Colors.black54,
                      child: Text(hotelList[index]['place'], style: TextStyle(
                        color: Colors.white, 
                        fontSize: 24, 
                        shadows: [
                        Shadow(
                          color: AppStyles.primaryColor,
                          blurRadius: 10,
                          offset: Offset(2, 2),
                        ),
                      ],),)
                      ) ,
                  )
                ],
              ),
              
              ),
            ),
        
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'A hotel is an establishment providing paid, short-term lodging, ranging from basic, budget-friendly rooms to luxurious, high-end suites. These properties often feature amenities such as swimming pools, restaurants, business centers, gyms, and conference facilities to enhance the guest experience. The primary goal is to provide comfort, safety, and convenience for travelers away from home, with rooms generally offering beds, private bathrooms, and entertainment options.',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'More Images',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      color: Colors.red,
                      
                      child: Image.network('https://placehold.co/200x200.png'),
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
