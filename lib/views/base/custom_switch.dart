import 'package:dalton_wade/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final Function(bool) onChanged;
  const CustomSwitch({super.key, required this.value, required this.onChanged});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool isActive;

  @override
  void initState() {
    super.initState();
    isActive = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });

        widget.onChanged(isActive);
      },
      child: Stack(
        children: [
          Container(
            height: 24,
            width: 48,
            decoration: BoxDecoration(
              color: Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(
              milliseconds: 100,
            ),
            left: isActive ? 24 : 2,
            top: 0,
            bottom: 0,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: AppColors.link,
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
