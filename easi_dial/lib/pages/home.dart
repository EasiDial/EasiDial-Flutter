import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final Function(int)
      onPageChanged; // Callback function to update the currentPageIndex

  const HomePage({super.key, required this.onPageChanged});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double rowItemHeight = 180.0;

    Widget rowCardItem({required String title, required String body}) {
      return Card(
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: SizedBox(
          height: rowItemHeight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  body,
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget bottomDetailsCardItem(
        {required String title, required String body}) {
      return SizedBox(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    text: title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            Text.rich(
                textAlign: TextAlign.center,
                TextSpan(text: body, style: const TextStyle(fontSize: 10)))
          ],
        ),
      );
    }

    Widget rightArrowBtn({required pageIndex}) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: () {
            setState(() => widget.onPageChanged(pageIndex));
          },
          icon: const Icon(
            Icons.arrow_forward_rounded,
            size: 32,
          ),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.green),
              foregroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.white)),
        ),
      );
    }

    return ListView(
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 8),
                rowCardItem(
                  title: "Our Mission",
                  body: "To improve access to critical care services \nfor "
                      "everyone, regardless of location or \neconomic status.",
                ),
                const SizedBox(width: 8),
                SizedBox(
                  height: rowItemHeight,
                  width: 360,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      "assets/familytwo.jpg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                rowCardItem(
                    title: "Our Vision",
                    body: "A world where every person has acces to \n"
                        "the healthcare services they need, when and \nwhere they "
                        "need from"),
                const SizedBox(width: 8),
                SizedBox(
                  height: rowItemHeight,
                  width: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      "assets/emergency_banner.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            )),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: SizedBox(
                  width: 180,
                  height: rowItemHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 16.0, bottom: 24, left: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hospitals",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Get help in case of an emergecny",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [rightArrowBtn(pageIndex: 1)],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: SizedBox(
                  width: 180,
                  height: rowItemHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 16.0, bottom: 24, left: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ambulances",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Access emergency services",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [rightArrowBtn(pageIndex: 3)],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: SizedBox(
                  width: 240,
                  height: rowItemHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 16.0, bottom: 24, left: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Learn",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Get quick tips on first aid.",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [rightArrowBtn(pageIndex: 4)],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                height: rowItemHeight,
                // width: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    "assets/emergency_banner.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, bottom: 16.0, left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bottomDetailsCardItem(
                      title: "2023", body: "Year Project Started"),
                  bottomDetailsCardItem(
                      title: "100+", body: "Verified Listed Hospitals"),
                  bottomDetailsCardItem(
                      title: "20+", body: "Listed Ambulances"),
                  bottomDetailsCardItem(title: "112", body: "Estates Covered"),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Column(
          children: [
            Text(
              "EasiDial Care",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Here to help you")
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
