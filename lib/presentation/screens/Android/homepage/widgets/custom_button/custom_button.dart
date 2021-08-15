import 'package:chatbot/presentation/screens/Android/homepage/widgets/custom_button/painter.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Start Chat;',
              style: TextStyle(fontFamily: 'Righteous', fontSize: 18),
            ),
            ImageIcon(AssetImage('assets/icons/hand-point-right-regular.png'))
          ],
        )),
        painter: LinePainter(),
      ),
    );
  }
}
