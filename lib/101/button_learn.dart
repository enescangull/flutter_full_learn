import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
            })),
          ),
          ElevatedButton(onPressed: () {}, child: Text('data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: () {
              //servise istek at
              //sayfanın rengini düzenle
              //burada basıldığında yapılacaklar yazılır
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () {},
            child: SizedBox(width: 100, child: const Text('data')),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.all(15),
            ),
          ),
          InkWell(onTap: () {}, child: const Text('custom')),
          Container(
            height: 200,
            color: Colors.white,
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ))
        ],
      ),
    );
  }
}
