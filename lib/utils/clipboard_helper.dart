import 'package:flutter/services.dart';

class ClipboardHelper {
  static void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
  }
}
