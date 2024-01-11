import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:tema/pages/auth/forget_password.dart';
import 'package:tema/pages/auth/login.dart';
import 'package:tema/pages/auth/register.dart';
import 'package:tema/widgets/outlined_text_field.dart';

class RegisterStudentWidget extends StatefulWidget {
  const RegisterStudentWidget({Key? key}) : super(key: key);

  @override
  State<RegisterStudentWidget> createState() => _RegisterStudentWidgetState();
}

class _RegisterStudentWidgetState extends State<RegisterStudentWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Daftar Sebagai Siswa",
          style: TextStyle(
            fontFamily: 'Nunito',
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 16, 0, 8),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24, 16, 24, 16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Expanded(
                                        child: OutlinedTextField(
                                          labelText: "Username",
                                          hintText: "Username",
                                          helperText: "Masukkan Username",
                                          prefixIcon: Icons.person,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Expanded(
                                        child: OutlinedTextField(
                                          labelText: "Email",
                                          hintText: "Email",
                                          helperText: "Masukkan Email",
                                          prefixIcon: Icons.mail,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: OutlinedTextField(
                                            labelText: "Password",
                                            hintText: "Password",
                                            helperText: "Masukkan Password",
                                            prefixIcon: Icons.password_outlined,
                                            obscureText: true,
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16.0),
                                      child: MaterialButton(
                                        minWidth: double.infinity,
                                        height: 48,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Daftar',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(child: Divider()),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Atau daftar dengan"),
                                        ),
                                        Expanded(child: Divider()),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SignInButton(
                                            Buttons.Facebook,
                                            mini: true,
                                            onPressed: () {},
                                          ),
                                          SignInButton(
                                            Buttons.Email,
                                            mini: true,
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              'Sudah punya akun?',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Nunito',
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12,
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const LoginWidget()));
                                              },
                                              child: Text(
                                                "Masuk",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}