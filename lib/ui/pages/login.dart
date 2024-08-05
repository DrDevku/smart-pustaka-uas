import 'package:flutter/material.dart';
import 'package:smart_pustaka/shared/theme.dart';
import 'package:smart_pustaka/ui/pages/update_password.dart';
import 'package:smart_pustaka/ui/widgets/bottom_navbar.dart';
import 'package:smart_pustaka/ui/widgets/buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 179,
        ),
        children: [
          // const SizedBox(
          //   height: 179,
          // ),
          Container(
            height: 79,
            width: 75.72,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ic_book_login.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Text(
            'smart pustaka',
            textAlign: TextAlign.center,
            style: blackText.copyWith(
              fontWeight: medium,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Row(
                children: [
                  Icon(Icons.mail_outline),
                  SizedBox(
                    width: 16,
                  ),
                  Text('Email'),
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
                  Text("Password")
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UpdatePassword(),
                ),
              );
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              'Lupa Password?',
              style: purpleText.copyWith(
                fontWeight: medium,
                fontSize: 11,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomFilledButton(
            title: 'Masuk',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNavbar(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Belum Punya Akun? Hubungi Petugas ',
                style: greyText.copyWith(
                  fontSize: 11,
                  fontWeight: medium,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                ),
                child: Text(
                  "Disini",
                  style: purpleText.copyWith(
                    fontSize: 11,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
