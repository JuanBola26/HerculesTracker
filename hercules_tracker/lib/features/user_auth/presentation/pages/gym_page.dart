import 'package:flutter/material.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/home_page.dart';

class GymPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "GYM",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/img/banner_gym.png",
                  width: 400,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Impacto del Ejercicio en el Equilibrio Hormonal",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              _buildHormonalInfo(
                  "Testosterona",
                  "• Efectos del ejercicio: El entrenamiento de resistencia y el levantamiento de pesas pueden aumentar temporalmente los niveles de testosterona en los hombres. Este aumento ayuda a promover el crecimiento muscular, la fuerza y la recuperación después del ejercicio.\n\n• Beneficios: La testosterona también puede contribuir a la pérdida de grasa, mejorar la densidad ósea y aumentar la libido en hombres."
              ),
              _buildHormonalInfo(
                  "Hormona del Crecimiento (GH)",
                  "• Efectos del ejercicio: El ejercicio de alta intensidad y el entrenamiento de fuerza pueden aumentar la liberación de GH, lo que promueve la reparación y el crecimiento muscular, así como la quema de grasa.\n\n• Beneficios: La GH ayuda a mejorar la composición corporal, aumentar la masa muscular magra y mejorar la recuperación muscular."
              ),
              _buildHormonalInfo(
                  "Cortisol",
                  "• Efectos del ejercicio: Durante el ejercicio intenso, los niveles de cortisol pueden aumentar temporalmente como respuesta al estrés físico. Sin embargo, con el tiempo y el entrenamiento regular, el cuerpo puede adaptarse y los niveles de cortisol tienden a normalizarse.\n\n• Beneficios: Aunque el cortisol se asocia comúnmente con el estrés, desempeña un papel importante en la regulación del metabolismo, la inflamación y la respuesta inmunitaria."
              ),
              _buildHormonalInfo(
                  "Endorfinas",
                  "• Efectos del ejercicio: El ejercicio aeróbico y de resistencia puede estimular la liberación de endorfinas, conocidas como las \"hormonas de la felicidad\". Estas hormonas pueden ayudar a aliviar el estrés, mejorar el estado de ánimo y reducir la percepción del dolor.\n\n• Beneficios: Las endorfinas promueven una sensación general de bienestar y pueden aumentar la motivación para mantener un estilo de vida activo."
              ),
              _buildHormonalInfo(
                  "Hormonas tiroides (T3 y T4)",
                  "• Efectos del ejercicio: El ejercicio regular puede aumentar la producción y liberación de hormonas tiroideas, lo que ayuda a regular el metabolismo y contribuye a la quema de calorías y la pérdida de peso.\n\n• Beneficios: Un metabolismo activo y saludable es fundamental para mantener un peso corporal adecuado y una energía óptima."
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> HomePage()), (route) => false);
              },
              icon: Icon(Icons.home, color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {
                // Acción cuando se presiona el ícono de nota
              },
              icon: Icon(Icons.note_alt_rounded, color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {
                // Acción cuando se presiona el ícono de calendario
              },
              icon: Icon(Icons.calendar_today, color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {
                // Acción cuando se presiona el ícono de persona
              },
              icon: Icon(Icons.person, color: Colors.white, size: 40),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHormonalInfo(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 20.0), // Ajusta el valor según tus necesidades
          child: Text(
            content,
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
