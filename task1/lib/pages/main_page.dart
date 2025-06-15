import 'package:flutter/material.dart';
import 'package:task1/pages/new_document_page.dart';
import 'package:task1/widgets/primary_button.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: SizedBox()),
                Text(
                  "Главный экран",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "для просмотра экрана с новым документом, нажмите кнопку ниже",
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(child: SizedBox()),
                PrimaryButton(
                  text: "Перейти к новому документу",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewDocumentPage(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
