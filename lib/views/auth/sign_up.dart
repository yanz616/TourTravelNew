import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tourtravelnew/shared/theme/theme.dart';
import 'package:tourtravelnew/views/auth/sign_in.dart';
import 'package:tourtravelnew/views/widgets/button_constum.dart';
import 'package:tourtravelnew/views/widgets/form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                    title: 'Nama Lengkap',
                    hintText: 'Masukan Nama',
                    prefixIcon: Icons.person,
                    obscureText: false,
                  ),
                  Gap(14),
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
                    prefixIcon: Icons.lock,
                    obscureText: true,
                  ),
                  Gap(14),
                  ButtonCostum(
                    onPressed: () {},
                    child: Text(
                      'Daftar',
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
                  Gap(114),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah Punya Akun?',
                        style: whiteTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.off(() => const SignInPage());
                        },
                        child: Text(
                          'Masuk',
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
