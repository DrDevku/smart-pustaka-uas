import 'package:flutter/material.dart';
import 'package:smart_pustaka/shared/theme.dart';
import 'package:smart_pustaka/ui/pages/login.dart';
import 'package:smart_pustaka/ui/widgets/buttons.dart';

class UpdatePassword extends StatelessWidget {
  const UpdatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: const Color(0xffFEF7FF),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              size: 24,
            )),
        title: const Text('Update Password'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Row(
                children: [
                  Icon(Icons.lock_outline),
                  SizedBox(
                    width: 16,
                  ),
                  Text('Password Lama'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Row(
                children: [
                  Icon(Icons.lock_outline),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Password Baru")
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomFilledButton(
            title: 'Update',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
