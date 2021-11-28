import 'package:backb/constants.dart';
import 'package:flutter/material.dart';
import 'package:backb/model/data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  Future<List<Restaurant>> getData() async {
    String token =
        await 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNzI2MDU0OTI1ZTM0MmE0ZDBkMzM4MiIsImlhdCI6MTYzODAxMzgxOSwiZXhwIjoxNjQwNjA1ODE5fQ.YVKMEhvBunuKKOn3qzVvP3cCA-9m3TlVw8f4lEkGgFg';
    String url =
        "https://fuddo.backb.in/api/v1/restaurant/10.025262804034076/76.30770989631989?limit=10&page=1";
    http.Response response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    var data = jsonDecode(response.body);
    List<Restaurant> datalist = [];
    if (response.statusCode == 200) {
      for (int i = 0; i < 3; i++) {
        datalist.add(Restaurant.fromJson(data['data']['restaurant'][i]));
      }
      return datalist;
    } else {
      return datalist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Restaurants",
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "See All",
                style: GoogleFonts.openSans(color: kTextgrey),
              )
            ],
          ),
        ),
        FutureBuilder(
          future: getData(),
          builder: (context, AsyncSnapshot<List<Restaurant>> snapshot) {
            if (!snapshot.hasData) {
              return Shimmer.fromColors(
                baseColor: shimmerbasecolor,
                highlightColor: shimmerhighlightcolor,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 14.0,
                        right: 14.0,
                        bottom: 14.0,
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        elevation: 2,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Ink.image(
                                  height: 160,
                                  image: NetworkImage(
                                    "https://fuddo-development.s3.ap-south-1.amazonaws.com/" +
                                        snapshot.data![index].storeBg!.key
                                            .toString(),
                                  ),
                                  fit: BoxFit.fitWidth,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(18)),
                                    color: kPrimaryColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      snapshot.data![index].avgPersonAmt
                                              .toString() +
                                          " ₹",
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    snapshot.data![index].name.toString(),
                                    style: GoogleFonts.lato(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 8.0, top: 4),
                                  child: Card(
                                    color: kSecondaryColor,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        snapshot.data![index].cuisine
                                            .toString(),
                                        style: GoogleFonts.lato(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    snapshot.data![index].location!.address
                                        .toString(),
                                    style: GoogleFonts.lato(color: kTextgrey),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            snapshot.data![index].openTime!
                                                    .toString() +
                                                " - am - ",
                                            style: GoogleFonts.lato(
                                                color: kTextgrey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            snapshot.data![index].closeTime!
                                                    .toString() +
                                                " pm",
                                            style: GoogleFonts.lato(
                                                color: kTextgrey,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: kSecondaryColor,
                                  )
                                ],
                              ),
                            )

                            // Container(
                            //   child: Image.network(src),
                            // )
                          ],
                        ),
                      ),
                    );
                  });
            }
          },
        ),
      ],
    );
  }
}
