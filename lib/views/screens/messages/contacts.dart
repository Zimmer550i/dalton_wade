import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:dalton_wade/views/screens/messages/contact_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  int index = 65;
  Map<String, double> positions = {};
  ScrollController controller = ScrollController();
  late List<Contact> data;
  List<Contact> filteredData = [];
  late List<Widget> contacts;
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();

  double fingerStart = 0;
  double fingerTravel = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      int value = controller.position.pixels.toInt();

      final tolerance = 40;

      final temp = positions.entries.firstWhere(
        (entry) =>
            (value - tolerance <= entry.value.toInt()) &&
            (entry.value.toInt() <= value + tolerance),
        orElse: () => MapEntry("", -1.0),
      );

      if (temp.key.isNotEmpty && temp.value != -1.0) {
        setState(() {
          index = temp.key.codeUnitAt(0);
        });
      }
    });

    data = populateList;
    data.sort((a, b) => a.name.compareTo(b.name));
    contacts = getData(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 72,
              child: Row(
                children: [
                  Text(
                    "Contacts",
                    style: AppStyles.h07.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  const Spacer(),
                  if (!isSearching)
                    InkWell(
                      borderRadius: BorderRadius.circular(99),
                      onTap: () {
                        setState(() {
                          isSearching = !isSearching;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(
                              0xffEBEDE0,
                            ),
                          ),
                        ),
                        child: Svg(
                          asset: AppIcons.search,
                        ),
                      ),
                    ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            if (isSearching)
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: TextField(
                  autofocus: true,
                  controller: searchController,
                  onChanged: (value) {
                    String query = value.toLowerCase();
                    setState(() {
                      filteredData = data.where((contact) {
                        return contact.name.toLowerCase().contains(query) ||
                            contact.phone.toLowerCase().contains(query);
                      }).toList();
                      contacts = getData(filteredData);
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(99),
                    ),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: InkWell(
                      borderRadius: BorderRadius.circular(99),
                      onTap: () {
                        setState(() {
                          contacts = getData(data);
                          searchController.text = "";
                          isSearching = false;
                        });
                      },
                      child: Icon(
                        Icons.close,
                      ),
                    ),
                  ),
                ),
              ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        controller: controller,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ...contacts,
                            SafeArea(
                              child: const SizedBox(
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 55,
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 65; i <= 90; i++)
                            positions.keys.contains(String.fromCharCode(i))
                                ? Expanded(
                                    child: GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: () {
                                        if (positions.containsKey(
                                            String.fromCharCode(i))) {
                                          controller.animateTo(
                                            positions[String.fromCharCode(i)]!
                                                .toDouble(),
                                            duration: const Duration(
                                              milliseconds: 300,
                                            ),
                                            curve: Curves.fastOutSlowIn,
                                          );
                                        }
                                      },
                                      child: SizedBox(
                                        width: 55,
                                        child: Center(
                                          child: Text(
                                            String.fromCharCode(i),
                                            style: TextStyle(
                                              fontFamily: "OpenSans",
                                              fontSize: index == i ? 22 : 14,
                                              fontWeight: index == i
                                                  ? FontWeight.bold
                                                  : FontWeight.w400,
                                              color: index == i
                                                  ? AppColors.primary
                                                  : Color(0xff777777),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getData(List<Contact> data) {
    List<Widget> rtn = [];

    for (int i = 0; i < data.length; i++) {
      final current = data[i];

      if (i == 0) {
        rtn.add(
          Container(
            height: 80,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffcccccc),
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                current.name[0],
                style: AppStyles.h03.copyWith(
                  color: AppColors.dark,
                ),
              ),
            ),
          ),
        );

        positions[current.name[0]] = 0;
      } else {
        if (current.name[0] != data[i - 1].name[0]) {
          rtn.add(
            Container(
              height: 80,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffcccccc),
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  current.name[0],
                  style: AppStyles.h03.copyWith(
                    color: AppColors.dark,
                  ),
                ),
              ),
            ),
          );

          positions[current.name[0]] = (rtn.length - 1) * 80;
        }
      }

      rtn.add(
        InkWell(
          onTap: () {
            Get.to(()=>ContactDetails());
          },
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffcccccc),
                ),
              ),
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    current.assetLink,
                    height: 48,
                    width: 48,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Text(
                      current.name,
                      style: AppStyles.body1Bold.copyWith(
                        color: AppColors.dark,
                      ),
                    ),
                    Text(
                      current.phone,
                      style: AppStyles.body2.copyWith(
                        color: Color(
                          0xff777777,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    return rtn;
  }

  get populateList => [
        Contact("Adeline Bowman", "023-234 234", "assets/images/faces/7.png"),
        Contact("Cecilia Dean", "045-678 901", "assets/images/faces/10.png"),
        Contact("Darian Evans", "056-789 012", "assets/images/faces/4.png"),
        Contact("Julian King", "112-345 678", "assets/images/faces/9.png"),
        Contact(
            "Catherine Daniels", "123-456 789", "assets/images/faces/2.png"),
        Contact("David Green", "234-567 890", "assets/images/faces/3.png"),
        Contact("Jack Harris", "345-678 901", "assets/images/faces/5.png"),
        Contact("Candace Jackson", "456-789 012", "assets/images/faces/6.png"),
        Contact("Derek Lawrence", "567-890 123", "assets/images/faces/8.png"),
        Contact("Jason Parker", "678-901 234", "assets/images/faces/1.png"),
        Contact("Alice Spencer", "234-567 890", "assets/images/faces/3.png"),
        Contact("Chris Martin", "345-678 901", "assets/images/faces/6.png"),
        Contact("Diana Wells", "456-789 012", "assets/images/faces/2.png"),
        Contact("Evan Thompson", "567-890 123", "assets/images/faces/8.png"),
        Contact("George Mitchell", "678-901 234", "assets/images/faces/5.png"),
        Contact("Holly Turner", "789-012 345", "assets/images/faces/7.png"),
        Contact("Ian Brooks", "890-123 456", "assets/images/faces/4.png"),
        Contact("Jasmine Carter", "901-234 567", "assets/images/faces/10.png"),
        Contact("Kyle Anderson", "012-345 678", "assets/images/faces/1.png"),
        Contact("Laura Simmons", "123-456 789", "assets/images/faces/9.png"),
        Contact("Michael Harris", "223-567 890", "assets/images/faces/2.png"),
        Contact("Nancy Fisher", "334-678 901", "assets/images/faces/6.png"),
        Contact("Oscar Green", "445-789 012", "assets/images/faces/8.png"),
        Contact("Paula Woods", "556-890 123", "assets/images/faces/4.png"),
        Contact("Quinton King", "667-901 234", "assets/images/faces/9.png"),
        Contact("Rachel Scott", "778-012 345", "assets/images/faces/3.png"),
        Contact("Samuel Bailey", "889-123 456", "assets/images/faces/7.png"),
        Contact("Tina Martin", "990-234 567", "assets/images/faces/1.png"),
        Contact("Ursula Foster", "101-345 678", "assets/images/faces/5.png"),
        Contact("Vince Miller", "212-456 789", "assets/images/faces/10.png"),
        Contact("Willow Moore", "323-567 890", "assets/images/faces/2.png"),
        Contact("Xander Long", "434-678 901", "assets/images/faces/6.png"),
        Contact("Yara Clark", "545-789 012", "assets/images/faces/4.png"),
        Contact("Zane Rodriguez", "656-890 123", "assets/images/faces/8.png"),
        Contact("Avery Allen", "767-901 234", "assets/images/faces/5.png"),
        Contact("Ben Cox", "878-012 345", "assets/images/faces/3.png"),
        Contact("Cora Young", "989-123 456", "assets/images/faces/7.png"),
        Contact("Dylan Pierce", "100-234 567", "assets/images/faces/1.png"),
        Contact("Eleanor Wright", "211-345 678", "assets/images/faces/10.png"),
        Contact("Freddie Simmons", "322-456 789", "assets/images/faces/6.png"),
        Contact("Gina Mitchell", "433-567 890", "assets/images/faces/9.png"),
        Contact("Harry Brooks", "544-678 901", "assets/images/faces/2.png"),
        Contact("Iris Knight", "655-789 012", "assets/images/faces/5.png"),
        Contact("Jesse Hall", "766-890 123", "assets/images/faces/8.png"),
        Contact("Kara Lee", "877-901 234", "assets/images/faces/3.png"),
        Contact("Lenny Walker", "988-012 345", "assets/images/faces/1.png"),
        Contact("Mason Reed", "199-123 456", "assets/images/faces/7.png"),
        Contact("Nina Carter", "300-234 567", "assets/images/faces/4.png"),
        Contact("Olivia Turner", "411-345 678", "assets/images/faces/10.png"),
        Contact("Paul Gonzalez", "522-456 789", "assets/images/faces/2.png"),
        Contact("Quinn Jackson", "633-567 890", "assets/images/faces/6.png"),
        Contact("Riley Evans", "744-678 901", "assets/images/faces/9.png"),
        Contact("Sophia Adams", "855-789 012", "assets/images/faces/3.png"),
        Contact("Travis Campbell", "966-890 123", "assets/images/faces/7.png"),
        Contact("Ursula Watts", "077-901 234", "assets/images/faces/5.png"),
        Contact("Vera Griffin", "188-012 345", "assets/images/faces/4.png"),
        Contact("William Douglas", "299-123 456", "assets/images/faces/1.png"),
        Contact("Xena Barnes", "400-234 567", "assets/images/faces/8.png"),
        Contact("Yves Mitchell", "511-345 678", "assets/images/faces/10.png"),
        Contact("Zara Thomas", "622-456 789", "assets/images/faces/6.png"),
        Contact("Adrian Jones", "733-567 890", "assets/images/faces/2.png"),
        Contact("Brooke Larson", "844-678 901", "assets/images/faces/9.png"),
        Contact("Charlie Rivera", "955-789 012", "assets/images/faces/3.png"),
        Contact("Daisy Knight", "066-890 123", "assets/images/faces/7.png"),
        Contact("Ethan Perry", "177-901 234", "assets/images/faces/5.png"),
        Contact("Felix Clark", "288-012 345", "assets/images/faces/4.png"),
        Contact("Gracie Roberts", "399-123 456", "assets/images/faces/8.png"),
        Contact("Holly Bailey", "400-234 567", "assets/images/faces/1.png"),
        Contact("Ian Fox", "511-345 678", "assets/images/faces/10.png"),
      ];
}

class Contact {
  String name;
  String phone;
  String assetLink;

  Contact(
    this.name,
    this.phone,
    this.assetLink,
  );
}
