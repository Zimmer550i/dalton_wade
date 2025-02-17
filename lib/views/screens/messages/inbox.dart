import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/screens/messages/chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            inboxTile(
              "Robert Fox",
              "Are you there? I'm busy right now",
              "01:32AM",
              1,
            ),
            inboxTile(
              "Guy Hawkins",
              "Okay...Do we have a deal?",
              "04:07AM",
              2,
            ),
            inboxTile(
              "Jane Cooper",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              "02:39PM",
              3,
            ),
            inboxTile(
              "Theresa Webb",
              "Interested int this loads?",
              "07:54PM",
              3,
            ),
            inboxTile(
              "Bessie Cooper",
              "Hello?",
              "07:54PM",
              4,
            ),
            inboxTile(
              "Robert Fox",
              "Are you there? I'm busy right now",
              "01:32AM",
              1,
            ),
            inboxTile(
              "Guy Hawkins",
              "Okay...Do we have a deal?",
              "04:07AM",
              2,
            ),
            inboxTile(
              "Jane Cooper",
              "It's really nice working with you",
              "02:39PM",
              3,
            ),
            inboxTile(
              "Theresa Webb",
              "Interested int this loads?",
              "07:54PM",
              3,
            ),
            inboxTile(
              "Bessie Cooper",
              "Hello?",
              "07:54PM",
              4,
            ),
            inboxTile(
              "Jane Cooper",
              "It's really nice working with you",
              "02:39PM",
              3,
            ),
            inboxTile(
              "Theresa Webb",
              "Interested int this loads?",
              "07:54PM",
              3,
            ),
            inboxTile(
              "Bessie Cooper",
              "Hello?",
              "07:54PM",
              4,
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget inboxTile(String name, String lastMessage, String time, int faceNo) {
    return InkWell(
      onTap: () {
        Get.to(Chat());
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.lightGrey),
          ),
        ),
        child: Row(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                "assets/images/faces/$faceNo.png",
                height: 48,
                width: 48,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 48,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: AppStyles.body1Bold.copyWith(
                        color: AppColors.dark,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      lastMessage,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.body2.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              time,
              style: AppStyles.smallBold.copyWith(
                color: AppColors.dark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
