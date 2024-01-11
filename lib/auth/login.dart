import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:tema/widgets/outlined_text_field.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
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
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 300,
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/login_img.png',
                    ).image,
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                        child: Text(
                          'Masuk',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 8),
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
                                          labelText: "No. HP",
                                          hintText: "No. HP",
                                          helperText: "Masukkan No. HP",
                                          prefixIcon: Icons.phone_outlined,
                                          keyboardType: TextInputType.number,
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
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8),
                                          child: Text(
                                            "Lupa Password",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: FilledButton(
                                        onPressed: () {},
                                        child: const Text("Masuk"),
                                        style: ButtonStyle(
                                          minimumSize:
                                              MaterialStateProperty.all(
                                                  Size(double.infinity, 40)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Divider(
                                            height: 1,
                                          ),
                                          Text("Atau masuk dengan"),
                                          Divider(height: 1),
                                        ],
                                      ),
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
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Belum punya akun?',
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
                                          Text(
                                            'Daftar',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Nunito',
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
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
