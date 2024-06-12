import 'package:flutter/material.dart';


class SocialButton extends StatefulWidget {
  const SocialButton({super.key, required this.title, required this.onTap, this.backgroundColor, this.titleColor,  this.image});

  final String title;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? titleColor;
  final Image? image;

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: 70,
          width: size.width,
          padding: const EdgeInsets.symmetric(vertical: 25),
          child:  Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
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
                  child: Center(child: widget.image!,),
                ),

                const SizedBox(width: 12,),
                Text(
                  widget.title,
                  style:   TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}