import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/constants.dart';
import 'package:flutter_e_commerce_app/modules/Product.dart';
import 'package:flutter_e_commerce_app/size_config.dart';
import 'package:flutter_e_commerce_app/widget/rounded_icon_btn.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            widget.product!.colors.length,
            (index) => ColorDot(
              color: widget.product!.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            press: () {
              setState(() {
                selectedColor = selectedColor == 0 ? 0 : selectedColor - 1;
              });
            },
            iconData: Icons.remove,
          ),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          RoundedIconBtn(
            press: () {
              setState(() {
                selectedColor =
                    selectedColor == widget.product!.colors.length - 1
                        ? widget.product!.colors.length - 1
                        : selectedColor + 1;
              });
            },
            iconData: Icons.add,
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color? color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
