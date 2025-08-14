import 'package:flutter/material.dart';

class Outputform extends StatelessWidget {
  const Outputform({
    super.key,
    required this.name,
    required this.email,
    this.phone,
    required this.dom,
  });
  final String name;
  final String email;
  final String? phone;
  final String dom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.check_box_rounded,
                    color: Color(0xFF142850),
                    size: 80,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Registrasi Berhasil!",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Color(0xFF142850),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text("Terima Kasih, $name dari $dom telah mendaftar"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget _buildInfoRow(String label, String value) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text("$label:", style: const TextStyle(fontWeight: FontWeight.w600)),
  //       const SizedBox(width: 8),
  //       Expanded(
  //         child: Text(
  //           value,
  //           style: const TextStyle(
  //             fontWeight: FontWeight.w400,
  //             fontFamily: 'Poppins',
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
