import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  PostModel8 user9 = PostModel8(body: 'hello');
  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()
      ..userId = 1
      ..title = 'ec'
      ..id = 1;
    user1.body = 'hello';
    final user2 = PostModel2(2, 2, 'ec', 'a');
    user2.body = 'hello';
    final user3 = PostModel3(3, 3, 'ec', 'b');
    // user3.body = 'hello'; final olduğu için sonrasında değiştirme yapamıyoruz

    ////////Local\\\\\\\
    final user4 = PostModel4(userId: 4, id: 4, title: 'ec', body: 'a');
    ////////Local\\\\\\\

    final user5 = PostModel5(userId: 5, id: 5, title: 'ec', body: 'a');
    // user5. private olduğu için erişim yok encapsulate ederek erişim sağlanabilir Ör; int get userId => _userId;
    final user6 = PostModel6(userId: 6, id: 6, title: 'ec', body: 'a');
    final user7 = PostModel7();

    ///////Service\\\\\\\
    final user8 = PostModel8(body: 'hello');
    ///////Service\\\\\\\
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'onPressed');
            user9.updateBody('enescangull');
          });
        },
      ),
      appBar: AppBar(
        title: Text(
          user9.body ?? 'Error: !!!! NULL DATA !!!!',
        ),
      ),
    );
  }
}
