import 'package:flutter/material.dart';
import 'package:intern_dash/authentication/sign up.dart';
import 'package:intern_dash/pages/Dash_Page.dart';
import 'package:intern_dash/pages/Homepage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
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
                SizedBox(height: 45,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(
                        hintText: 'Username',
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
                    controller: email,
                    decoration: InputDecoration(
                        hintText: 'Email',
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
                      hintText: 'Password',
                      focusColor: Colors.black,
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
                   padding: const EdgeInsets.only(right: 15.0 , top: 5 ,bottom: 15),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [

                       Text("Forgot Password ?" ,style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                     ],
                   ),
                 ),
            
               // ElevatedButton(onPressed: (){}, child: Text('LOGIN' ,style: TextStyle( backgroundColor :Colors.white , fontSize: 20, color:Colors.black))),
               GestureDetector(
                 onTap: () { Navigator.pushReplacement(context,
                     MaterialPageRoute(

                         builder: (context)=>Homepage( Name: username.text,),

                       ));},

                    child: Padding(
                      padding: const EdgeInsets.only(top : 20.0 , left: 10, right: 10 , bottom: 10),
                      child: Container(
                        width: double.infinity,
                                         decoration: BoxDecoration( color: Colors.black,borderRadius: BorderRadius.circular(10),),
                                         child: Center(child: Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Text('LOGIN' , style: TextStyle(fontSize: 20, color:Colors.white, fontFamily: 'Roboto', fontWeight: FontWeight.bold)),
                                         )),
                                       ),
                    )
               ),

                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("New User ? ", style: TextStyle(color: Colors.grey[600], fontSize: 20),),
                      GestureDetector(
                        onTap: () {Navigator.push(context , MaterialPageRoute(builder: (context) => const signup()));  },
                          child: Text("Sign Up", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
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
