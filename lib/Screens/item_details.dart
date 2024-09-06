import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final dynamic arguments;

  const DetailsScreen({super.key, required this.arguments});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? item = arguments as Map<String, dynamic>?;

    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: 'title-${item?['id']}',
          child: Text(item?['title'] ?? 'Item Details'),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.amberAccent),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                    text: 'User ID:',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: '${item?['userId']}',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ]),
              ),
              const SizedBox(height: 16),
              Text.rich(
                TextSpan(
                    text: 'Item ID:',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: '${item?['id']}',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ]),
              ),
              const SizedBox(height: 16),
              Text(
                item?['title'],
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                item?['body'],
                style: const TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
