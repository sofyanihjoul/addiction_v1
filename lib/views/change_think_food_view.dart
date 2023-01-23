import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class foodaddiction extends StatefulWidget {
  const foodaddiction({super.key});

  @override
  State<foodaddiction> createState() => _foodaddictionState();
}

class _foodaddictionState extends State<foodaddiction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              SizedBox(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 35),
                    child: Card(
                      color: Color(0xff245865),
                      child: const SizedBox(
                        width: 400,
                        height: 700,
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 32),
                child: Image.asset(
                  'image/foodaddiction.jpg',
                  height: 250,
                  width: 380,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 300, 20, 32),
                child: Text(
                  'gluttonous night with obsessive eating ',
                  style: TextStyle(fontSize: 25, color: Color(0xffFFFFFF)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 380, 15, 32),
                child: Text(
                  'Think back to the last time you ate so much you felt absolutely stuffed. Were you tearing into a huge cake to celebrate a friend birthday? Loading up on turkey and sweet potatoes at Thanksgiving? Or were you at home alone, maybe at the end of a tough day? How did you feel afterward -- simply annoyed that you gave yourself a stomachache? Or were you tormented by guilt or shame Eating too much every once in a while is normal. So is eating for emotional reasons. form the moment were born, were nurtured with food, rewarded with food, and so emotional connections to food are normal,” says Michelle May, MD, author of Eat What You Love, Love What You Eat '
                  'People who compulsively overeat, though, may use food as their only way of coping with negative emotions. As a result, they often feel that their eating is out of control. They think about food all the time and feel guilty, ashamed, or depressed after eating. “That’s very different from what someone feels after, say, eating a big Thanksgiving meal,” May says. “You might feel full, and you might regret having had that last slice of pie, but youre not consumed with shame.',
                  style: TextStyle(fontSize: 15, color: Color(0xffFFFFFF)),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
