import 'dart:convert';

import 'package:backb/model/data_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';

import '../constants.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  Future<List<BranchBanner>> getData() async {
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
    List<BranchBanner> imgList = [];
    if (response.statusCode == 200) {
      var bannerdata = data['data']['branch']['branchBanner'];
      List<dynamic> list = bannerdata;
      BranchBanner bdata = BranchBanner.fromJson(list[0]);
      for (int i = 0; i < 3; i++) {
        imgList.add(BranchBanner.fromJson(list[i]));
      }
      return imgList;
    } else {
      return imgList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          FutureBuilder(
              future: getData(),
              builder: (context, AsyncSnapshot<List<BranchBanner>> snapshot) {
                if (!snapshot.hasData) {
                  return Shimmer.fromColors(
                    baseColor: shimmerbasecolor,
                    highlightColor: shimmerhighlightcolor,
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                } else {
                  return CarouselSlider.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (ctx, index, realIdx) {
                      return Container(
                        child: Center(
                            child: Image.network(
                          "https://fuddo-development.s3.ap-south-1.amazonaws.com/" +
                              snapshot.data![index].image.toString(),
                          fit: BoxFit.cover,
                        )),
                      );
                    },
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 8,
                      viewportFraction: 2,
                    ),
                  );
                }
              }),
        ],
      ),
    );
  }
}
