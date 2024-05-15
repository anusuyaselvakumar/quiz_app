// import 'dart:js_interop';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            children: [
              Text(
                (((data['questionindex'] as int) + 1).toString()),
                style: const TextStyle(color: Colors.white),
              ),
              Expanded(
                child: SizedBox(
                  height: 95,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(data['question'] as String? ?? ''),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(data['user_answer'] as String? ?? ''),
                        Text(data['correct_answer'] as String? ?? ''),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
