
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

// Màn hình hiển thị bộ đếm.
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Thanh tiêu đề.
      appBar: AppBar(
        title: const Text('Provider Counter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      // Hiển thị số đếm ở giữa màn hình.
      body: Center(

        // Consumer lắng nghe trạng thái Counter.
        // Khi Counter thay đổi, builder sẽ chạy lại.
        child: Consumer<Counter>(
          builder: (context, counter, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text(
                  'Bạn đã nhấn nút:',
                  style: TextStyle(fontSize: 20),
                ),

                const SizedBox(height: 15),

                // Lấy giá trị count từ Provider để hiển thị.
                Text(
                  '${counter.count}',
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          },
        ),
      ),

      // Nút tăng số đếm.
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          // Truy cập Counter và gọi hàm increment().
          // listen: false vì nút chỉ gọi hàm,
          // không cần lắng nghe sự thay đổi.
          Provider.of<Counter>(
            context,
            listen: false,
          ).increment();

        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
