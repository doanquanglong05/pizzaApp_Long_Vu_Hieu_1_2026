import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
const AboutScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey.shade100,
appBar: AppBar(
title: const Text("About"),
backgroundColor: Colors.orange,
centerTitle: true,
),
body: SingleChildScrollView(
padding: const EdgeInsets.all(16),
child: Column(
children: [
// 👤 Avatar
Container(
width: 100,
height: 100,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.orange.shade100,
),
child: const Icon(
Icons.person,
size: 60,
color: Colors.orange,
),
),

const SizedBox(height: 12),

const Text(
"Market Online App",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 6),

const Text(
"Ứng dụng bán hàng đơn giản bằng Flutter",
style: TextStyle(color: Colors.grey),
),

const SizedBox(height: 20),

// 👥 Thành viên
_buildInfoCard(
"Thành viên",
[
"Đoàn Quang Long - Home Screen",
"Đoàn Hoàng Vũ - Content Screen",
],
),

const SizedBox(height: 12),

// 🛠 Công nghệ
_buildInfoCard(
"Công nghệ sử dụng",
[
"Flutter",
"Dart",
"Material UI",
],
),

const SizedBox(height: 12),

// 📱 Thông tin app
_buildInfoCard(
"Thông tin ứng dụng",
[
"Version: 1.0",
"Platform: Android",
"Project giữa kỳ",
],
),
],
),
),
);
}

// Widget Card tái sử dụng
Widget _buildInfoCard(String title, List<String> items) {
return Container(
width: double.infinity,
padding: const EdgeInsets.all(12),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(12),
boxShadow: const [
BoxShadow(color: Colors.black12, blurRadius: 4),
],
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
title,
style: const TextStyle(
fontWeight: FontWeight.bold,
fontSize: 16,
color: Colors.orange,
),
),
const SizedBox(height: 8),
...items.map(
(e) => Padding(
padding: const EdgeInsets.only(bottom: 4),
child: Text("• $e"),
),
),
],
),
);
}
}