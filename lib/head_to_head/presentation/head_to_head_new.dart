import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main.dart';
import 'bloc/head_to_head_bloc.dart';

class HeadToHeadNew extends StatefulWidget {
  HeadToHeadNew();

  @override
  _HeadToHeadNewState createState() => _HeadToHeadNewState();
}

class Event {
  int value;
  int time;
  bool change;
  Event(this.value, this.time, this.change);
}

class _HeadToHeadNewState extends State<HeadToHeadNew> {
  final _bloc = serviceLocator<HeadToHeadBloc>();

  int timer = 0;
  Map<String, List<Event>> data = {
    'score': [Event(0, 0, false), Event(0, 0, false)],
    'udary': [Event(0, 0, false), Event(0, 0, false)],
    'udary_v_stvor': [Event(0, 0, false), Event(0, 0, false)],
    'udary_mimo': [Event(0, 0, false), Event(0, 0, false)],
    'shtrafnie_udary': [Event(0, 0, false), Event(0, 0, false)],
    'offsidy': [Event(0, 0, false), Event(0, 0, false)],
    'seyvy_vratarya': [Event(0, 0, false), Event(0, 0, false)],
    'foly': [Event(0, 0, false), Event(0, 0, false)],
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        // Секундомер
        timer++;

        // Обновить секундомеры
        data['score'][0].time++;
        data['udary'][0].time++;
        data['udary_v_stvor'][0].time++;
        data['udary_mimo'][0].time++;
        data['shtrafnie_udary'][0].time++;
        data['offsidy'][0].time++;
        data['seyvy_vratarya'][0].time++;
        data['foly'][0].time++;

        data['score'][1].time++;
        data['udary'][1].time++;
        data['udary_v_stvor'][1].time++;
        data['udary_mimo'][1].time++;
        data['shtrafnie_udary'][1].time++;
        data['offsidy'][1].time++;
        data['seyvy_vratarya'][1].time++;
        data['foly'][1].time++;

        data['score'][0].change = false;
        data['udary'][0].change = false;
        data['udary_v_stvor'][0].change = false;
        data['udary_mimo'][0].change = false;
        data['shtrafnie_udary'][0].change = false;
        data['offsidy'][0].change = false;
        data['seyvy_vratarya'][0].change = false;
        data['foly'][0].change = false;

        data['score'][1].change = false;
        data['udary'][1].change = false;
        data['udary_v_stvor'][1].change = false;
        data['udary_mimo'][1].change = false;
        data['shtrafnie_udary'][1].change = false;
        data['offsidy'][1].change = false;
        data['seyvy_vratarya'][1].change = false;
        data['foly'][1].change = false;

        if (timer % 5 == 0) {
          int commandId = Random().nextInt(2); // id команды
          int eventId = Random().nextInt(9); // id события

          Map<int, String> types = {
            0: 'score',
            1: 'udary',
            2: 'udary_v_stvor',
            3: 'udary_mimo',
            4: 'shtrafnie_udary',
            5: 'offsidy',
            6: 'seyvy_vratarya',
            7: 'foly',
          };

          // Обновить нужные данные
          data[types[eventId]][commandId].value++;
          data[types[eventId]][commandId].change = true;

          // Обнулить секундомеры
          data[types[eventId]][commandId].time = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Статистика'),
      // ),
      // Основная область экрана
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              // 1. Виджет Live-статистики
              BlocBuilder(
                cubit: _bloc,
                builder: (context, state) {
                  // print(context.read<HeadToHeadBloc>());
                  return Expanded(
                    flex: 30, // Занимает 30 частей экрана (30 %)
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Левый блок (первая команда)
                        Expanded(
                          flex: 60,
                          child: Container(
                            color: Color.fromARGB(204, 196, 196, 196),
                            width: 60,
                            height: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage(
                                    'assets/images/Icon-image-team1.png', // Логотип
                                  ),
                                  // Icons.ac_unit,
                                  // size: 45,
                                  width: 45,
                                ),
                                SizedBox(height: 6),
                                Text('УФА', style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                        ),
                        // Статистика
                        Expanded(
                          flex: 231,
                          child: Container(
                              // color: Colors.red,
                              ),
                        ),
                        // Правый блок (вторая команда)
                        Expanded(
                          flex: 60,
                          child: Container(
                            color: Color.fromARGB(204, 196, 196, 196),
                            width: 60,
                            height: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage(
                                    'assets/images/Icon-image-team2.png', // Логотип
                                  ),
                                  // Icons.ac_unit,
                                  // size: 45,
                                  width: 45,
                                ),
                                SizedBox(height: 6),
                                Text('МОСКВА', style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              // Вся остальная часть экрана (где делать ставки и т д)
              Expanded(
                flex: 70, // Занимает 70 частей экрана (70 %)
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),

          // 2. Тестовый виджет (отдельный виджет-список статистики)
          // body: Container(
          //   width: 251,
          //   color: Colors.red,
          //   child: Statistics(),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 60,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                flex: 295,
                child: Container(
                  // color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text('ВРЕМЯ МАТЧА:', style: TextStyle(fontSize: 15)),
                          Text('${timer ~/ 60}:${timer % 60}',
                              style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Text(
                          '${data['score'][0].value}:${data['score'][1].value}',
                          style: TextStyle(fontSize: 37.5)),
                      Statistics(data),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Список статистики
class Statistics extends StatelessWidget {
  final data;
  Statistics(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: Color.fromARGB(255, 0, 106, 74),
        ),
        child: ExpansionTile(
          // key: PageStorageKey<String>('key1'),
          title: titleData('Статистика матча'),
          children: [
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Удары', data['udary']),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Удары в створ', data['udary_v_stvor']),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Удары мимо', data['udary_mimo']),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Штрафные удары', data['shtrafnie_udary']),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Оффсайды', data['offsidy']),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Сейвы вратаря', data['seyvy_vratarya']),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Фолы', data['foly'], true),
          ],
        ),
      ),
    );
  }
}

// Виджет заголовка статистики
Widget titleData(String text) {
  return Container(
    // width: 231,
    height: 23,
    // color: Color.fromARGB(255, 0, 106, 74),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    ),
  );
}

// Видет элемента списка статистики
Widget itemData(String text, List count, [bool last = false]) {
  return Container(
    color: Colors.transparent, // transparent ?
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(last ? 12 : 0),
          bottomRight: Radius.circular(last ? 12 : 0),
        ),
        color: (count[0].change || count[1].change)
            ? Color.fromARGB(255, 213, 153, 166)
            : Color.fromARGB(255, 166, 236, 178), // Убрать прозрачность ?
      ),
      // width: 231,
      height: 27,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('  ${count[0].value}'),
              Text(
                (count[0].value > 0
                    ? '  ${count[0].time ~/ 60}:${count[0].time % 60}'
                    : ''),
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
          Text(text),
          Row(
            children: [
              Text(
                (count[1].value > 0
                    ? '${count[1].time ~/ 60}:${count[1].time % 60}  '
                    : ''),
                style: TextStyle(color: Colors.red),
              ),
              Text('${count[1].value}  '),
            ],
          ),
        ],
      ),
    ),
  );
}
