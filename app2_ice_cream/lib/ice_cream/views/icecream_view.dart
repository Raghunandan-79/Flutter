import 'dart:convert';

import 'package:app2_ice_cream/ice_cream/model/icecream.dart';
import 'package:app2_ice_cream/ice_cream/views/icecream_detail_view.dart';
import 'package:app2_ice_cream/ice_cream/widgets/icecream_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// class IcecreamView extends StatefulWidget {
//   const IcecreamView({super.key});

//   @override
//   State<IcecreamView> createState() => _IcecreamViewState();
// }

// class _IcecreamViewState extends State<IcecreamView> {
//   Map<String, dynamic>? decodedIcecreams;

//   @override
//   void initState() {
//     super.initState();
//     loadIcecreams();
//   }

//   Future<void> loadIcecreams() async {
//     final rawIcecreams = await rootBundle.loadString("assets/icecream.json");
//     decodedIcecreams = jsonDecode(rawIcecreams);

//     await Future.delayed(Duration(seconds: 1));

//     print(decodedIcecreams);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Icecreams",
//             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             "We have something yummy for you",
//             style: Theme.of(context).textTheme.bodySmall,
//           ),
//           Expanded(
//             child: Center(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   if (decodedIcecreams != null)
//                     const Text("Icecreams loaded")
//                   else
//                     Center(child: CircularProgressIndicator.adaptive()),
//                 ],
//               ),
//             )
//           )
//         ],
//       ),
//     );
//   }
// }

class IcecreamView extends StatelessWidget {
  const IcecreamView({super.key});

  Future<List<Icecream>> loadIcecreams() async {
    final rawIcecreams = await rootBundle.loadString("assets/icecream.json");

    await Future.delayed(const Duration(seconds: 1));

    final jsonMap = json.decode(rawIcecreams);

    final icecreams = IcecreamData.fromJson(jsonMap);

    return icecreams.icecreams;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Icecreams",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "We have something yummy for you",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: 30),
          Expanded(
            child: FutureBuilder(
              future: loadIcecreams(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  final icecreams = snapshot.data!;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height / 2,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final icecream = icecreams[index];

                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        IcecreamDetailView(
                                          icecream: icecream
                                        ),
                                  ),
                                );
                              },
                              child: IcecreamCard(icecream: icecream),
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: icecreams.length,
                        ),
                      ),
                    ],
                  );
                } else {
                  return Center(
                    child: const CircularProgressIndicator.adaptive(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
