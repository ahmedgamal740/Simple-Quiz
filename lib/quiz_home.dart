import 'package:flutter/material.dart';
import 'package:sipmle_quiz/questions_model.dart';

import 'components/components.dart';
import 'components/constants.dart';

class QuizHome extends StatefulWidget {
  const QuizHome({Key? key}) : super(key: key);

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz'
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isShow == true? const QuizBody() : Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Image(image: NetworkImage(
                  'https://img.freepik.com/free-vector/flat-people-asking-questions-illustration_23-2148910626.jpg?t=st=1651679483~exp=1651680083~hmac=bdfbf7c55fc51bd51be89f77ab9b732b57c8e4f57932a5e6b93ba4a72f3e9e0c&w=740',
                )
                ),
                freeSpaceHeight,
                defaultButton(
                    onPressed: () {
                      setState(() {
                        isShow = true;
                      });
                    },
                    text: 'Start',
                    width: 100,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}


class QuizBody extends StatefulWidget {
  const QuizBody({Key? key}) : super(key: key);

  @override
  State<QuizBody> createState() => _QuizBodyState();
}

class _QuizBodyState extends State<QuizBody> {
  int current = 1;
  int total = 0;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(50),
              topEnd: Radius.circular(50),
            ),
            color: Colors.black54
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: AlignmentDirectional.center,
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(30),
                    color: primaryColor
                ),
                child: Text(
                  '$current',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
              freeSpaceHeight,
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: Colors.black45,
                ),
                child: Text(
                  '${quests[current -1 ]['text']}',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white
                  ),
                ),
              ),
              freeSpaceHeight,
              defaultButton(
                  onPressed: () {
                    setState(() {
                      current +=1;
                      total += 10;
                      if(current == quests.length+1){
                        current = 1;
                        if(total > 75){
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: Colors.white,
                                alignment: Alignment.center,
                                title: const Icon(
                                  IconData(0x1F600),
                                  size: 40,
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'you are  excellent',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    freeSpaceHeight,
                                    Text("your score is: $total"),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const QuizHome()),
                                                (route) => false,
                                          );
                                          Duration.zero;
                                        },
                                        icon: const Icon(
                                          Icons.restart_alt_rounded,
                                          color: primaryColor,
                                          size: 22,
                                        ))
                                  ],
                                ),
                              )
                          );
                        }else{
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: Colors.white,
                                alignment: Alignment.center,
                                title: const Icon(
                                  IconData(0x1F61F),
                                  size: 40,
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'you are bad',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    freeSpaceHeight,
                                    Text("your score is: $total"),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const QuizHome()),
                                                (route) => false,
                                          );
                                          Duration.zero;
                                        },
                                        icon: const Icon(
                                          Icons.restart_alt_rounded,
                                          color: primaryColor,
                                          size: 22,
                                        ))
                                  ],
                                ),
                              )
                          );
                        }
                      }
                    });
                  },
                  text: 'Yes',
                isStart: false,
              ),
              freeSpaceHeight,
              defaultButton(
                  onPressed: () {
                    setState(() {
                      current +=1;
                      total += 5;
                      if(current == quests.length+1){
                        current = 1;
                        if(total > 75){
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: Colors.white,
                                alignment: Alignment.center,
                                title: const Icon(
                                  IconData(0x1F600),
                                  size: 40,
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'you are  excellent',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    freeSpaceHeight,
                                    Text("your score is: $total"),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const QuizHome()),
                                                (route) => false,
                                          );
                                          Duration.zero;
                                        },
                                        icon: const Icon(
                                          Icons.restart_alt_rounded,
                                          color: primaryColor,
                                          size: 22,
                                        ))
                                  ],
                                ),
                              )
                          );
                        }else{
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: Colors.white,
                                alignment: Alignment.center,
                                title: const Icon(
                                  IconData(0x1F61F),
                                  size: 40,
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'you are bad',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    freeSpaceHeight,
                                    Text("your score is: $total"),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const QuizHome()),
                                                (route) => false,
                                          );
                                          Duration.zero;
                                        },
                                        icon: const Icon(
                                          Icons.restart_alt_rounded,
                                          color: primaryColor,
                                          size: 22,
                                        ))
                                  ],
                                ),
                              )
                          );
                        }
                      }
                    });
                  },
                  text: 'No',
                isStart: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

