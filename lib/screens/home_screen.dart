import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_provider.dart';
import '../widgets/feature_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp Security Tool'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade400, Colors.blue.shade600],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome to WhatsApp Analysis',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Advanced security testing and media extraction',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Consumer<AppProvider>(
                      builder: (context, provider, _) {
                        return Text(
                          'Status: ${provider.isScanning ? 'Scanning...' : 'Ready'}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Quick Actions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Feature Cards
              FeatureCard(
                icon: Icons.security,
                title: 'Security Scan',
                description: 'Scan for vulnerabilities',
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Security scan started')),
                  );
                  context.read<AppProvider>().toggleScanning();
                },
              ),
              const SizedBox(height: 12),
              FeatureCard(
                icon: Icons.image,
                title: 'Extract Media',
                description: 'Extract WhatsApp media files',
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Media extraction started')),
                  );
                },
              ),
              const SizedBox(height: 12),
              FeatureCard(
                icon: Icons.message,
                title: 'Message Analysis',
                description: 'Analyze conversation patterns',
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Analysis started')),
                  );
                },
              ),
              const SizedBox(height: 12),
              FeatureCard(
                icon: Icons.storage,
                title: 'Data Export',
                description: 'Export analyzed data',
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Data export started')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}