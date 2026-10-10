import 'package:flutter/material.dart';

class InstagramConnectSwitch extends StatefulWidget {
  const InstagramConnectSwitch({super.key});

  @override
  State<InstagramConnectSwitch> createState() => _InstagramConnectSwitchState();
}

class _InstagramConnectSwitchState extends State<InstagramConnectSwitch> {
  bool isOn = false; // TODO: Variabel status toggle switch (false = mati/off, true = hidup/on).

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram Connect Switch Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Connect Instagram'),
            const SizedBox(width: 8),
            Switch(
              value: isOn, // TODO: Menentukan posisi sakelar berdasarkan variabel state isOn.
              onChanged: (bool val) {
                setState(() {
                  isOn = val; // TODO: Memperbarui nilai state isOn dan memicu re-render widget.
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}