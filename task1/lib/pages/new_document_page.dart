import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task1/resources/task_colors.dart';
import 'package:task1/widgets/primary_button.dart';

import '../widgets/secondary_button.dart';

class NewDocumentPage extends StatelessWidget {
  const NewDocumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: TaskColors.gray, width: 1),
            ),
          ),
          child: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            // задание цвета иконкам в статус-баре
            backgroundColor: Colors.transparent,
            title: Text(
              "Новый документ",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Image.asset("assets/images/photo.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: InfoGroupWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: TaskColors.secondaryYellow,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: -20,
                        right: -20,
                        child: Icon(
                          Icons.info_outline,
                          color: TaskColors.primaryYellow,
                          size: 80,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          """Клиника прислала документ после приёма.
Чтобы добавить его в медкарту и посмотреть содержание, нужно будет указать дату рождения пациента. Это проверка для безопасности данных.""",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              ButtonGroupWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoGroupWidget extends StatelessWidget {
  const InfoGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.account_circle_outlined,
              color: TaskColors.darkGray,
              size: 24,
            ),
            SizedBox(width: 24),
            Text("Ирина", style: TextStyle(fontSize: 16)),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Icon(
              Icons.calendar_today_outlined,
              color: TaskColors.darkGray,
              size: 24,
            ),
            SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("22 мая (вт), 16:00", style: TextStyle(fontSize: 16)),
                Text(
                  "Дата получения документа",
                  style: TextStyle(fontSize: 14, color: TaskColors.darkGray),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Icon(
              Icons.local_hospital_outlined,
              color: TaskColors.darkGray,
              size: 24,
            ),
            SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Клиника «Фомина»", style: TextStyle(fontSize: 16)),
                Text(
                  "Бульвар Перервинский, д. 4",
                  style: TextStyle(fontSize: 14, color: TaskColors.darkGray),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Icon(
              Icons.medical_information_outlined,
              color: TaskColors.darkGray,
              size: 24,
            ),
            SizedBox(width: 24),
            Text("Стоматолог", style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    );
  }
}

class ButtonGroupWidget extends StatelessWidget {
  const ButtonGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PrimaryButton(text: "Добавить в медкарту", onTap: () {}),
        SizedBox(height: 8),
        SecondaryButton(text: "Удалить", onTap: () {}),
      ],
    );
  }
}
