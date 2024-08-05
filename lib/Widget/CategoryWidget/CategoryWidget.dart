import 'package:flutter/material.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/photo_2022-01-07_16-29-53.jpg',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height*.15,
                width: MediaQuery.of(context).size.height*.2,
              )),
          mySizedBox(width: 10),
        Expanded(child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultTextTitle(text: 'Tittle'),
            defaultTextSubTitle(text: 'SubTittle'),
            mySizedBox(height: 10),
            defaultTextSubTitle(text: 'dfhjjdfhdhfhdhfddfhjjdfhdhfhdhfddfhjjdfhdhfhdhfddfhjjdfhdhfhdhfddfhjjdfhdh\nfhdhfddfhjjdfhdhfhdhfddfhjjdfhdhfhdhfddfhj\njdfhdhfhdhfddfhjjdfhdhfhdhfddfhjjdfhdhfhdhfddfhjjdfhdhfhdhfddfhjjdfhdhfhdhfddfhjjdfhdhfhdhfd' ,
            ),
          ],
        ),),
        ],
      ),
    );
  }
}
