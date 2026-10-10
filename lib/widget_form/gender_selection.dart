import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? sex = 'male'; // TODO: Menyiapkan variabel penampung opsi radio terpilih dengan nilai default 'male'.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gender Selection Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Gender: '),
            const SizedBox(width: 8),
            Row(
              children: [
                Radio<String>(
                  value: 'male',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      sex = val; // TODO: Mengubah opsi terpilih menjadi 'male' dan memperbarui tampilan.
                    });
                  },
                ),
                const Text('Male'),
                const SizedBox(width: 16),
                Radio<String>(
                  value: 'female',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      sex = val; // TODO: Mengubah opsi terpilih menjadi 'female' dan memperbarui tampilan.
                    });
                  },
                ),
                const Text('Female'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}