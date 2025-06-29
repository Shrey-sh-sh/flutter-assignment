import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const InfoApp());
}

class InfoApp extends StatelessWidget {
  const InfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}

// ---------------- HOME PAGE ----------------

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: const [
                  Text(
                    'Welcome to Our App',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Explore the features and information we offer.', style: TextStyle(fontWeight: FontWeight.w600)),
                  Text('Stay updated with the latest news and', style: TextStyle(fontWeight: FontWeight.w600)),
                  Text('Insights', style: TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('App Highlights', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(Icons.explore_outlined),
              ),
              title: const Text('Explore', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              subtitle: const Text('Discover new content and features', style: TextStyle(color: Colors.blue)),
              onTap: () {},
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(Icons.email_outlined),
              ),
              title: const Text('Contact', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              subtitle: const Text('Get in touch with us', style: TextStyle(color: Colors.blue)),
              onTap: () => Navigator.pushNamed(context, '/contact'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }
}

// ---------------- ABOUT PAGE ----------------

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Our Mission', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
              'Our mission is to provide users with a comprehensive and reliable source of information on a wide range of topics. We strive to make knowledge accessible to everyone, fostering curiosity and lifelong learning.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16),
            Text('Background', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
              'This app was developed by a team of passionate individuals dedicated to creating a valuable resource for users seeking information. We believe in the power of knowledge to empower individuals and contribute to a more informed society.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16),
            Text('Contact Us', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
              'If you have any questions, feedback, or suggestions, please don’t hesitate to reach out to us at support@infoapp.com. We value your input and are committed to continuously improving our app.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}

// ---------------- CONTACT PAGE ----------------

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Contact', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "We'd love to hear from you! Whether you have a question, feedback, or just want to say hello, please don't hesitate to reach out.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 24),
              const Text('Contact Information', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 12),
              _buildContactRow('Email', 'support@example.com'),
              // _buildContactRow('',''), uncomment For a gap
              _buildContactRow('Phone', '+1 (555) 123-4567'),
              // _buildContactRow('',''),uncomment for a gap
              _buildContactRow('Address', '123 Main Street, Anytown, USA'),
              const SizedBox(height: 24),
              const Text('Contact Form', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 12),
              _buildInputField('Your Name'),
              const SizedBox(height: 12),
              _buildInputField('Your Email'),
              const SizedBox(height: 12),
              _buildInputField('', maxLines: 4),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Send Message', style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 32),
              const Text('Follow Us', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 16),
               _buildIconColumn(FontAwesomeIcons.facebookSquare, 'Facebook'),
               _buildIconColumn(FontAwesomeIcons.twitterSquare, 'Twitter'),
               _buildIconColumn(FontAwesomeIcons.instagramSquare, 'Instagram'),
            ]
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
    );
  }

  static Widget _buildContactRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  static Widget _buildInputField(String hint, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.blueGrey),
        filled: true,
        fillColor: const Color(0xFFE8ECF4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      ),
    );
  }

  static Widget _buildIconColumn(IconData icon, String label) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFFE8ECF4),
            radius: 28,
            child: Icon(icon, size: 28, color: Colors.black),
          ),
          const SizedBox(height: 6),
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

// ---------------- BOTTOM NAV BAR ----------------

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  const BottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.blueGrey,
      selectedIconTheme: const IconThemeData(color: Colors.black, size: 28),
      unselectedIconTheme: const IconThemeData(color: Colors.blueGrey, size: 24),
      onTap: (index) {
        if (index == 0) Navigator.pushReplacementNamed(context, '/home');
        if (index == 1) Navigator.pushReplacementNamed(context, '/about');
        if (index == 2) Navigator.pushReplacementNamed(context, '/contact');
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info_outlined),
          activeIcon: Icon(Icons.info),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email_outlined),
          activeIcon: Icon(Icons.email),
          label: 'Contact',
        ),
      ],
    );
  }
}
