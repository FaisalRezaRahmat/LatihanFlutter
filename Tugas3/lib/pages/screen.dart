import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/pages/screendua.dart';
import 'package:flutter_application_1/pages/screentiga.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Align(
          alignment: const AlignmentDirectional(0, 0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 100, 20, 200),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 150,
                  child: const Image(
                    image: AssetImage(
                      'asset/Logo.png',
                    ),
                    width: 60,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'Username',
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF786C6C),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20))),
                ),
                TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF786C6C),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  width: 130,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const MyApp();
                          },
                        ));
                      }),
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xFF299536)),
                      child: Text("Login")),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum Punya Akun?"),
                    TextButton(
                        onPressed: (() {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const RegisterScreen();
                            },
                          ));
                        }),
                        child: Text("Daftar"))
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
