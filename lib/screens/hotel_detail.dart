import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_styles.dart';
import 'package:ticketapp/base/utils/app_json.dart';
import 'package:ticketapp/base/widgets/expanded_text_widget.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      // print(args["index"]);
      index = args["index"];
      super.didChangeDependencies();
    }
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
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white),
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
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Colors.black54,
                      child: Text(
                        hotelList[index]['place'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          shadows: [
                            Shadow(
                              color: AppStyles.primaryColor,
                              blurRadius: 10,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16),
                child: ExpandedTextWidget(text: hotelList[index]['detail']),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'More Images',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotelList[index]['images'].length,
                  itemBuilder: (context, imagesIndex) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      color: Colors.red,

                      child: Image.asset(
                        'assets/images/${hotelList[index]['images'][imagesIndex]}',
                        fit: BoxFit.cover,
                      ),
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
