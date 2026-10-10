import 'package:flutter/material.dart';

class NameTextField extends StatefulWidget {
  const NameTextField({super.key});

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose(); // TODO: Mencegah memory leak dengan membersihkan controller saat widget dihancurkan.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          maxLength: 20,
          decoration: const InputDecoration(
            labelText: 'Name',
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey), // TODO: Menentukan warna garis bawah saat TextField aktif diketik.
            ),
          ),
          onChanged: (text) {
            debugPrint('Text changed: $text'); // TODO: Mencetak perubahan teks ke console untuk debugging.
          },
        ),
      ),
    );
  }
}