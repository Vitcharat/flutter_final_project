import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project/main.dart';
import 'package:flutter_final_project/screens/create_account_screen.dart';
import 'package:flutter_final_project/services/auth_service.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  AuthService _service = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("เข้าสู่ระบบแอพพลิเคชั่น"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(hintText: "อีเมล"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(hintText: "รหัสผ่าน"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  bool res = await _service.login(
                      _emailController.text, _passwordController.text);
                  if (res) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("เข้าสู่ระบบเรียบร้อย")));

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyHomePage(title: 'โน๊ตของคุณ')));
                  }
                },
                child: const Text("เข้าสู่ระบบ")),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CreateAccountScreen()));
              },
              child: const Text("ไม่มีบัญชี? สร้างเลยไหมสหาย >>"),
            )
          ],
        ),
      ),
    );
  }
}
