import 'package:flutter/material.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController ConfirmPassword = TextEditingController();
  @override

  @override
    Widget build(BuildContext context) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          body:  Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

      color: Colors.grey[300],
      child: Padding(
      padding: const EdgeInsets.only(top:80.0),
      child: SingleChildScrollView(
      child: Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Container(
      height: 75,
      width: 75,
      child: Icon(Icons.lock_open , size: 100, color: Colors.grey[500],),),
      SizedBox(height: 50,),
      Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
      controller: email,
      decoration: InputDecoration(
      hintText: ' Email',
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
              )
          ),
      enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
      color: Colors.grey,
      )
      )
      ),
      ),
      ),


      Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
      controller: password,
      obscureText: true,
      decoration: InputDecoration(
      hintText: ' Password',
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.black,
        )
      ),
      enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
      color: Colors.grey,
      )
      )

      )
      ),
      ),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          controller: ConfirmPassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: ' Confirm Password',

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
              )
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),

              borderSide : BorderSide(
                color: Colors.grey,
            )
            )
          ),
        ),
      ),

      GestureDetector(
      onTap: () { },

      child: Padding(
      padding: const EdgeInsets.only(top : 20.0 , left: 10, right: 10 , bottom: 10),
      child: Container(
      width: double.infinity,
      decoration: BoxDecoration( color: Colors.black,borderRadius: BorderRadius.circular(10),),
      child: Center(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
          onTap: (){ ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text('Account created successfully' , style: TextStyle(fontSize: 20, color:Colors.white,  fontFamily: 'Roboto'),),
           duration: Duration(seconds: 2),)
          );},
          child: Text(' SignUp' , style: TextStyle(fontSize: 20, color:Colors.white, fontFamily: 'Roboto', fontWeight: FontWeight.bold))),
      )),
      ),
      )
      ),

      Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(" Already have an account ? ", style: TextStyle(color: Colors.grey[600], fontSize: 20),),
      GestureDetector(
      onTap: () { Navigator.pop(context);},
      child: Text("Sign In", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
      )
      ],
      ),
      )
      ],

      ),
      ),
      ),
      ),
      );
  }
}
