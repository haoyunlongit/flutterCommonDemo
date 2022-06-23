import 'dart:math';
import 'dart:ui';

class ColorUtils {
  static Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }

  static int getRandomInt(int num, {int? min, int? max}) {
    if (num < 0) {
      return 0;
    }
    Random random = Random();
    return random.nextInt(num);
  }


}