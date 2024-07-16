import 'package:flutter/material.dart';

class MainFeed extends StatelessWidget {
  const MainFeed({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> posts = [
      {
        'id': '1',
        'title': 'Java',
        'description': 'Java was developed by Sun Microsystems (acquired by Oracle Corporation) and released in 1995. It\'s designed to be platform-independent, meaning Java programs can run on any device that has a Java Virtual Machine (JVM). This feature is achieved through the principle of "write once, run anywhere" (WORA).'
      },
      {
        'id': '2',
        'title': 'JavaScript',
        'description': 'JavaScript was developed by Netscape Communications Corporation and released in 1995. It\'s primarily used for client-side scripting in web development, where it runs in web browsers. JavaScript is known for its versatility and ability to enhance user interfaces.'
      },
      {
        'id': '3',
        'title': 'TypeScript',
        'description': 'TypeScript was developed by Microsoft and released in 2012. It\'s a superset of JavaScript that adds static types, allowing for better tooling, error detection, and scalability in large codebases. TypeScript compiles to plain JavaScript and can run on any JavaScript engine.'
      },
    ];

    return Container(
      padding: const EdgeInsets.all(10),
      color: const Color(0xFFF0F0F0),
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  posts[index]['title']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  posts[index]['description']!,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
