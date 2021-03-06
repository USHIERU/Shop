import 'package:flutter/material.dart';
import 'package:shop/config/my_colors.dart';
import 'package:shop/config/size_config.dart';
import 'package:shop/src/widgets/category_item.dart';
import 'package:shop/src/widgets/my_input.dart';

class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  List<String> categories = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
    'Category 5',
    'Category 6',
    'Category 7',
    'Category 8',
    'Category 9',
    'Category 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.safeBlockVertical * 100,
      alignment: Alignment.center,
      color: Colors.white,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockSizeHorizontal * 10,
          vertical: SizeConfig.blockSizeVertical * 2,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(children: [
              Expanded(
                  child: MyInput(
                      label: 'Search', icon: Icons.search, controller: null))
            ]),
            SizedBox(height: SizeConfig.blockSizeVertical * 2),
            Container(
              width: double.maxFinite,
              child: Text(
                'Categories:',
                style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 5,
                  fontWeight: FontWeight.w500,
                  color: MyColors.secondary,
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 2),
            Wrap(
              spacing: SizeConfig.blockSizeHorizontal,
              runSpacing: SizeConfig.blockSizeHorizontal,
              children: categories
                  .map(
                    (e) => CategoryItem(
                      text: e,
                      child: Image.asset(
                        'lib/assets/lemonade.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
