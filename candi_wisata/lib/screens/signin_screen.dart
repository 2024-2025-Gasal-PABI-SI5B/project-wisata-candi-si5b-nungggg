import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // TODO: 1. Deklarasikan variabel
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _isSignIn = false;

  bool _obscurePassword = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2. Pasang AppBar
      appBar: AppBar(title: const Text('Sign In'),),
      //TODO: 3. Pasang body
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                //TODO: 4. Atur mainAxisAlligment dan crossAxisAlignment
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //TODO: 5. Pasang TextFormField nama pengguna
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: "Nama Pengguna",
                      hintText: 'Masukkan nama pengguna',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  //TODO: 6. Pasang TextFormField kata sandi
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Kata Sandi",
                      hintText: 'Masukkan kata sandi',
                      errorText: _errorText.isNotEmpty ? _errorText: null,
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(
                          _obscurePassword ? Icons.visibility_off
                              : Icons.visibility
                        ),),
                    ),
                    obscureText: _obscurePassword,
                  ),
                  //TODO: 7. Pasang TextFormField Sign In
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){},
                    child: const Text('Sign In')),
                  //TODO: 8. Pasang TextButton Sign Up
                  const SizedBox(height: 10),
                    //  TextButton(
                    //    onPressed: (){},
                    //    child: Text('Belum punya akun? Daftar disini.')
                    // ), 
                  RichText(
                    text: TextSpan(
                      text: 'Belum punya akun?',
                      style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
                      children: [
                        TextSpan(
                          text: 'Daftar disini.',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                        ),
                      ],
                    ),
                    ),
                ],
              )),
          ),
        ),
      ),
    );
  }
}