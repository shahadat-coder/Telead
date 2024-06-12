import'package:flutter/material.dart';

Widget titleLarge (BuildContext context, String data){
  return Text(
    data,
    style: Theme.of(context).textTheme.titleLarge,
  );
}

Widget headlineMedium (BuildContext context, String data){
  return Text(
    data,
    style: Theme.of(context).textTheme.headlineMedium,
  );
}
Widget bodyLarge (BuildContext context, String data){
  return Text(
    data,
    style: Theme.of(context).textTheme.bodyLarge,
  );

}