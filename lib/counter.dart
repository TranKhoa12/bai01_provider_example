
import 'package:flutter/material.dart';

// Lớp Counter dùng để quản lý trạng thái bộ đếm.
class Counter extends ChangeNotifier {

  // Giá trị bộ đếm ban đầu.
  int _count = 0;

  // Cho phép các widget đọc giá trị bộ đếm.
  int get count => _count;

  // Hàm tăng giá trị bộ đếm.
  void increment() {
    _count++;

    // Thông báo cho các widget đang lắng nghe
    // để cập nhật lại giao diện.
    notifyListeners();
  }
}
