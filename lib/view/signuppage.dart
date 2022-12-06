import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meuapp/view/signin-page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var nomeController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var firebaseAuth = FirebaseAuth.instance;

  cadastrar() async {
    try {
      UserCredential userCredential = await firebaseAuth
        .createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text);
          
      if(userCredential != null) {
        userCredential.user!.updateDisplayName(nomeController.text);
        Navigator.pushAndRemoveUntil(
        context, 
        MaterialPageRoute(
          builder: (context) => SigninPage(),
        ),
        (route) => false);
      }
    }
    on FirebaseAuthException catch (e) {
      if(e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content:
              Text('Senha fraca'),
              backgroundColor: Colors.redAccent,
            )
          );
      }else if(e.code == 'email-already-in-use'){
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content:
              Text('Email já existente'),
              backgroundColor: Colors.redAccent,
            )
        );
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          top: 60, 
          left: 40, 
          right: 40,
        ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('images/logo.png'),
                ),
              SizedBox(
                  height: 20,
                ),
              Text('Faça seu cadastro',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.redAccent[400],
                  fontWeight: FontWeight.bold,
                  ),
              ),
              SizedBox(
                  height: 20,
                ),
              TextField(
                controller: nomeController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color:Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)
                  ),
                ),
                style: TextStyle(
                  fontSize:20, 
                ),
              ),
              SizedBox(
                height: 20,
                ),
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText:"E-mail",
                    labelStyle:TextStyle(
                      color:Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize:20,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                  ),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize:20,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                  ),
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                Container(
                  height: 40,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3,1],
                      colors: [
                        Color(0xFFF58524),
                        Color(0xFFF92B7F),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                      ),
                  ),
                  child: SizedBox.expand(
                    child: ElevatedButton(
                      child: Text(
                        "Cadastrar",
                        style:TextStyle(
                          color:Colors.white,
                          fontSize: 20,
                        ),
                           textAlign: TextAlign.center,
                      ),
                      onPressed: (){
                       cadastrar();
                      }
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(0, 0, 0, 0),
                      elevation: 200
                    ),
                    onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:(context) => SigninPage()
                          ),
                    );
                  }, 
                  child: Text("Já possui conta? Faça login", style: TextStyle(color: Colors.redAccent[400]),),),
                ),
          ],
        ),
      ), 
    )
    );
  }
}