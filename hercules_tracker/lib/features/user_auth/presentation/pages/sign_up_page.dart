import 'package:flutter/material.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/login_page.dart';
import 'package:hercules_tracker/features/user_auth/presentation/widgets/form_container_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Center(
          child: Text(
            "Hercules Tracker",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        toolbarHeight: 60,
      ),
      backgroundColor: Colors.black38,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 60,),
                  Text(
                    "Regístrate",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 30),
                  FormContainerWidget(
                    hintText: "Nombre de Usuario",
                    isPasswordField: false,
                  ),
                  SizedBox(height: 10),
                  FormContainerWidget(
                    hintText: "Edad",
                    isPasswordField: false,
                  ),
                  SizedBox(height: 10),
                  FormContainerWidget(
                    hintText: "Correo",
                    isPasswordField: false,
                  ),
                  SizedBox(height: 10),
                  FormContainerWidget(
                    hintText: "Contraseña",
                    isPasswordField: true,
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Regístrate",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("¿Ya tienes una cuenta?",style: TextStyle(color: Colors.white),),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
                        },
                        child: Text("Inicia Sesión",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                      )
                    ],
                  )

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
