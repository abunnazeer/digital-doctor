import 'package:digital_doctor/config/auth_services.dart';
import 'package:digital_doctor/user/login_page.dart';
import 'package:flutter/material.dart';
import '../widgets/function_file.dart';
// ignore_for_file: prefer_const_constructors

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey();
  final DatabaseService auth = DatabaseService.int();
  final TextEditingController _fullNameController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _confirmPasswordController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    ///Email field
    final fullField = TextFormField(
      autofocus: false,
      controller: _fullNameController,
      keyboardType: TextInputType.text,
      onSaved: (value) {
        _fullNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: InputBorder.none,
        hintText: 'Full Name',
      ),
    );

    //Email filed
    final emailField = TextFormField(
      autofocus: false,
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        _emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: InputBorder.none,
        hintText: 'Email',
      ),
    );

    //Password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: _passwordController,
      obscureText: true,
      onSaved: (value) {
        _emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: InputBorder.none,
        hintText: 'Password',
      ),
    );

    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: _confirmPasswordController,
      obscureText: true,
      onSaved: (value) {
        _confirmPasswordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: InputBorder.none,
        hintText: 'Confirm Password',
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white54,
                ),
                child: Form(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        textAlign: TextAlign.center,
                        'Registration',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        textAlign: TextAlign.center,
                        'Please register down below',
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      // FORM SECTION
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white),
                            color: Colors.grey[100],
                          ),
                          child: fullField,
                        ),
                      ),

                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white),
                            color: Colors.grey[100],
                          ),
                          child: emailField,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white),
                            color: Colors.grey[100],
                          ),
                          child: passwordField,
                        ),
                      ),

                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white),
                            color: Colors.grey[100],
                          ),
                          child: confirmPasswordField,
                        ),
                      ),

                      //LOGIN BTN SECTION
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            addUser();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            //width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red[500],
                            ),
                            child: const Text(
                              'Register',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                      //ALTERNATIVE LOGIN SECTION
                      SizedBox(height: 15),
                      Text('Or continue with'),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OtherLogin(imagePath: 'assets/google.png'),
                          OtherLogin(imagePath: 'assets/apple.png'),
                          OtherLogin(imagePath: 'assets/facebook.png'),
                        ],
                      ),

                      //NOT A MEMBER SECTION
                      SizedBox(height: 15),
                      Text("By registering up you accept the"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Terms of services ",
                              style: TextStyle(color: Colors.blue)),
                          Text("and "),
                          Text("Privacy policy",
                              style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have an account?"),
                          SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void addUser() async {
    dynamic result = await auth.registerUser(_fullNameController.text,
        _emailController.text, _passwordController.text);
    if (result == null) {
      print("Invalid Email");
    } else {
      print(result.toString());
      _fullNameController.clear();
      _emailController.clear();
      _passwordController.clear();
      _confirmPasswordController.clear();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
    future:
    DatabaseService.instance.addUserProfile({
      "name": _fullNameController.text.toString(),
      "gender": 'male',
      "address": 'Kano',
      "age": '20',
    });
  }
}
