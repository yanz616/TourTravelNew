import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tourtravelnew/shared/theme/theme.dart';
import 'package:tourtravelnew/views/widgets/button_constum.dart';
import 'package:tourtravelnew/views/widgets/form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(94),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/Login.png',
                ),
              ],
            ),
            Gap(40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  FormCostum(
                    title: 'Nomor HandPhone',
                    hintText: 'Masukan Nomor Anda',
                    prefixIcon: Icons.phone,
                    obscureText: false,
                  ),
                  Gap(14),
                  FormCostum(
                    title: 'Password',
                    hintText: 'Masukan Password',
                    prefixIcon: Icons.phone,
                    obscureText: true,
                  ),
                  Gap(14),
                  ButtonCostum(
                    onPressed: () {},
                    child: Text(
                      'Masuk',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                    color: secondColor,
                  ),
                  Gap(20),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 1,
                          width: 84,
                          color: greyColor,
                        ),
                        Text(
                          'Atau',
                          style: greyTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 84,
                          color: greyColor,
                        )
                      ],
                    ),
                  ),
                  Gap(20),
                  ButtonCostum(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/icons/google.png',
                    ),
                    color: whiteColor1,
                  ),
                  Gap(214),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lupa Password',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum Punya Akun?',
                        style: whiteTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '  Daftar',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
