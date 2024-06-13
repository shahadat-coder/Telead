import 'package:flutter/material.dart';
import 'package:telead/utils/colors.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final void Function() onTap;
  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: 70,
          width: size.width,
          decoration: BoxDecoration(
            color: AppColors.primaryColors,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style:   TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              SizedBox(width: 25,),
              Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: Colors.white,
              ),
              child: Center(
                child: ClipOval(
                  child: Icon(Icons.arrow_forward),
                ),
              ),
            ),

            ]
            ),
          ),
        ),
      ),
    );
  }
}
