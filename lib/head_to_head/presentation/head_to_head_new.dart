import 'package:flutter/material.dart';

class HeadToHeadNew extends StatelessWidget {
  const HeadToHeadNew();

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
              Expanded(
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
                            Icon(
                              Icons.ac_unit,
                              size: 45,
                            ),
                            SizedBox(height: 6),
                            Text('УФА', style: TextStyle(fontSize: 17)),
                          ],
                        ),
                      ),
                    ),
                    // Статистика
                    Expanded(
                      flex: 231,
                      child: Container(
                        color: Colors.red,
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
                            Icon(
                              Icons.ac_unit,
                              size: 45,
                            ),
                            SizedBox(height: 6),
                            Text('УФА', style: TextStyle(fontSize: 17)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
                flex: 231,
                child: Container(
                  // color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text('МАТЧ СОСТОЯЛСЯ',
                              style: TextStyle(fontSize: 15)),
                          Text('22.11.2020', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      
                      Text('9:9', style: TextStyle(fontSize: 37.5)),
                      Statistics(),
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
            itemData('Удары'),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Удары в створ'),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Удары мимо'),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Штрафные удары'),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Оффсайды'),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Сейвы вратаря'),
            Container(height: 1, color: Color.fromARGB(255, 0, 106, 74)),
            itemData('Фолы', true),
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
Widget itemData(String text, [bool last = false]) {
  return Container(
    color: Colors.white, // transparent ?
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(last ? 12 : 0),
          bottomRight: Radius.circular(last ? 12 : 0),
        ),
        color: Color.fromARGB(127, 76, 217, 100), // Убрать прозрачность ?
      ),
      // width: 231,
      height: 27,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('     23'),
          Text(text),
          Text('23     '),
        ],
      ),
    ),
  );
}

// // Статистика
// Expanded(
//   flex: 231,
//   child: Container(
//     color: Colors.red,
//     // constraints:
//     //     BoxConstraints(minHeight: 231, maxHeight: 231),
//     // height: 350,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           children: [
//             Text('МАТЧ СОСТОЯЛСЯ',
//                 style: TextStyle(fontSize: 21)),
//             Text('22.11.2020',
//                 style: TextStyle(fontSize: 21)),
//           ],
//         ),
//         Text('9:9', style: TextStyle(fontSize: 60)),
//         Statistics(),
//       ],
//     ),
//   ),
// ),
