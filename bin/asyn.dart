import 'dart:async';
import 'dart:math';

Future<void> main() async {
 print('Начало');

 // Создаем массив для демонстрации
 List<int> data = [1, 2, 3, 4, 5];

 // Обрабатываем элементы массива с случайным промежутком времени
 await processDataWithRandomDelay(data);
 print('Конец');
}

Future<void> processDataWithRandomDelay(List<int> data) async {
 final random = Random();

 for (var item in data) {
    print('Обработка элемента: $item');
    // Создаем случайную задержку от 1 до 5 секунд
    var delay = Duration(seconds: random.nextInt(5) + 1);
    await Future.delayed(delay);
    print('Обработка элемента завершена: $item, время обработки: $delay');
 }
}
