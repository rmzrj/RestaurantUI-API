import 'package:backb/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';
import '../constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Future<List<Category>> getData() async {
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
    List<Category> datalist = [];

    if (response.statusCode == 200) {
      var categoryData = data['data']['branch']['category'];
      List<dynamic> list = categoryData;
      for (int i = 0; i < 3; i++) {
        datalist.add(Category.fromJson(list[i]));
      }
      return datalist;
    } else {
      return datalist;
    }
  }

  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Text(
                "Explore",
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot<List<Category>> snapshot) {
              if (!snapshot.hasData) {
                return Shimmer.fromColors(
                  baseColor: shimmerbasecolor,
                  highlightColor: shimmerhighlightcolor,
                  child: GridView(
                    shrinkWrap: true,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: Colors.grey,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: Colors.grey,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: Colors.grey,
                      ),
                    ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: 0.8),
                  ),
                );
              } else {
                return Column(
                  children: [
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network(
                                snapshot.data![index].image!.location
                                    .toString(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  snapshot.data![index].name.toString(),
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.8,
                        crossAxisCount: 3,
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
