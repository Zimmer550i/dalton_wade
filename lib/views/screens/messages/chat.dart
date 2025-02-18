import 'package:dalton_wade/utils/app_colors.dart';
import 'package:dalton_wade/utils/app_icons.dart';
import 'package:dalton_wade/utils/style.dart';
import 'package:dalton_wade/views/base/custom_app_bar.dart';
import 'package:dalton_wade/views/base/svg.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final messageController = TextEditingController();
  List<Message> data = [
    Message(
      text:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, 10, 45),
      isSent: false,
    ),
    Message(
      text: "Lorem Ipsum is",
      timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, 11, 45),
    ),
    Message(
      text: "Lorem Ipsum is simply dummy",
      timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, 11, 45),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 56,
              child: Center(
                child: Text(
                  "Adeline Bowman",
                  style: AppStyles.h05.copyWith(
                    color: AppColors.dark,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                // reverse: true,
                child: Column(
                  children: [
                    ...renderMessages(data),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  color: Color(0xffF8F8F8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: messageController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Write your messages here..",
                          hintStyle: AppStyles.body2.copyWith(
                            color: AppColors.third,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(99),
                      onTap: () {
                        setState(() {
                          data.add(
                            Message(
                              text: messageController.text,
                              timeStamp: DateTime.now(),
                            ),
                          );
                        });
                      },
                      child: Svg(
                        asset: AppIcons.send,
                        height: 20,
                        width: 20,
                        color: AppColors.third,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> renderMessages(List<Message> messages) {
  List<Widget> rtn = [];

  for (int i = 0; i != messages.length; i++) {
    Message current = messages[i];
    // bool showTime = false;
    bool showAvatar = true;

    if (i == 0) {
      // showTime = true;
      rtn.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              current.timeStamp.difference(DateTime.now()) <
                      const Duration(days: 1)
                  ? "Today"
                  : current.timeStamp.year.toString(),
              style: AppStyles.smallBold.copyWith(
                color: AppColors.grey,
              ),
            )
          ],
        ),
      );
    }

    /*

    Implement ShowAvatar Logic Here:

    1. If the previous message is "isSent" then showAvatar is true.
    2. If previous message is not "isSent" and if time difference is 
       more than 1 hour then showAvatar is true.

    */

    // Print Message
    if (current.isSent) {
      // User's Message
      rtn.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    current.text,
                    style: AppStyles.body2Bold.copyWith(
                      color: AppColors.secondary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      // Sender's Message
      rtn.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              showAvatar
                  ? ClipOval(
                      child: Image.asset(
                        "assets/images/faces/3.png",
                        height: 48,
                        width: 48,
                      ),
                    )
                  // ignore: dead_code
                  : const SizedBox(
                      width: 48,
                    ),
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Color(
                      0xffF8F8F8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    current.text,
                    style: AppStyles.body2Bold.copyWith(
                      color: AppColors.dark,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (i < messages.length - 1) {
      if (current.timeStamp.difference(messages[i + 1].timeStamp).abs() >=
          const Duration(hours: 1)) {
        rtn.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "${current.timeStamp.hour}:${current.timeStamp.minute} AM",
                style: AppStyles.smallBold.copyWith(
                  color: AppColors.grey,
                ),
              )
            ],
          ),
        );
      }
    } else {
      rtn.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "${current.timeStamp.hour}:${current.timeStamp.minute} AM",
              style: AppStyles.smallBold.copyWith(
                color: AppColors.grey,
              ),
            )
          ],
        ),
      );
    }
  }

  return rtn;
}

class Message extends StatelessWidget {
  final String text;
  final DateTime timeStamp;
  final bool isSent;
  const Message({
    super.key,
    required this.text,
    required this.timeStamp,
    this.isSent = true,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
