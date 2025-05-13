import 'package:flutter/material.dart';
import 'package:joy_a_more/models/cakes.dart';
import 'package:joy_a_more/models/kids.dart';
import 'package:joy_a_more/models/popular_items.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List<Map<String, dynamic>> categories = [
    {"label": "Popular", "icon": Icons.star},
    {"label": "Cakes", "icon": Icons.cake},
    {"label": "Kids & Toys", "icon": Icons.toys},
    {"label": "Gifts", "icon": Icons.card_giftcard},
    {"label": "Flowers", "icon": Icons.person},
    {"label": "Personalised", "icon": Icons.home_mini_rounded},
    {"label": "Weddings", "icon": Icons.celebration},
    {"label": "Festivals", "icon": Icons.festival},
    {"label": "Celebration", "icon": Icons.celebration},
    {"label": "2-Hour delivery", "icon": Icons.delivery_dining},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Navigation
          Container(
            width: 100,
            color: const Color(0xFFF6F7F9),
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                bool isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    color: isSelected ? Colors.white : const Color(0xFFF6F7F9),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: [
                        Icon(categories[index]['icon'],
                            color: isSelected ? Colors.purple : Colors.black45),
                        const SizedBox(height: 4),
                        Text(
                          categories[index]['label'].split(' ')[0],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color:
                              isSelected ? Colors.purple : Colors.black87,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Right Grid Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (selectedIndex == 0) ...[
                    const Text("All Popular",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.75,
                        children: popularItems
                            .map((item) => Column(
                          children: [
                            Image.asset(item['imagePath']!,
                                width: 70, height: 70),
                            const SizedBox(height: 6),
                            Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ))
                            .toList(),
                      ),
                    ),
                  ],
                  if (selectedIndex == 1) ...[
                    const Text("All Popular",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.75,
                        children: cakes
                            .map((item) => Column(
                          children: [
                            Image.asset(item['imagePath']!,
                                width: 70, height: 70),
                            const SizedBox(height: 6),
                            Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ))
                            .toList(),
                      ),
                    ),
                  ],
                  if (selectedIndex == 2) ...[
                    const Text("All Popular",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.75,
                        children: kids
                            .map((item) => Column(
                          children: [
                            Image.asset(item['imagePath']!,
                                width: 70, height: 70),
                            const SizedBox(height: 6),
                            Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ))
                            .toList(),
                      ),
                    ),
                  ],
                  if (selectedIndex == 3) ...[
                    const Text("All Popular",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.75,
                        children: kids
                            .map((item) => Column(
                          children: [
                            Image.asset(item['imagePath']!,
                                width: 70, height: 70),
                            const SizedBox(height: 6),
                            Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ))
                            .toList(),
                      ),
                    ),
                  ],
                  if (selectedIndex == 4) ...[
                    const Text("All Popular",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.75,
                        children: popularItems
                            .map((item) => Column(
                          children: [
                            Image.asset(item['imagePath']!,
                                width: 70, height: 70),
                            const SizedBox(height: 6),
                            Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ))
                            .toList(),
                      ),
                    ),
                  ],
                  if (selectedIndex == 5) ...[
                    const Text("All Popular",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.75,
                        children: popularItems
                            .map((item) => Column(
                          children: [
                            Image.asset(item['imagePath']!,
                                width: 70, height: 70),
                            const SizedBox(height: 6),
                            Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ))
                            .toList(),
                      ),
                    ),
                  ],
                  if (selectedIndex == 6) ...[
                    const Text("All Popular",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.75,
                        children: popularItems
                            .map((item) => Column(
                          children: [
                            Image.asset(item['imagePath']!,
                                width: 70, height: 70),
                            const SizedBox(height: 6),
                            Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ))
                            .toList(),
                      ),
                    ),
                  ],
                  if (selectedIndex == 7) ...[
                    const Text("All Popular",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.75,
                        children: popularItems
                            .map((item) => Column(
                          children: [
                            Image.asset(item['imagePath']!,
                                width: 70, height: 70),
                            const SizedBox(height: 6),
                            Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ))
                            .toList(),
                      ),
                    ),
                  ],
                  if (selectedIndex == 8) ...[
                    const Text("All Popular",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.75,
                        children: popularItems
                            .map((item) => Column(
                          children: [
                            Image.asset(item['imagePath']!,
                                width: 70, height: 70),
                            const SizedBox(height: 6),
                            Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ))
                            .toList(),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}