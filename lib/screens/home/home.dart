import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';

class NavigationTile extends StatelessWidget {
  final String title;
  final String route;

  const NavigationTile({Key? key, required this.title, required this.route})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () => Navigator.pushNamed(context, route),
    );
  }
}

class AssignmentGroup extends StatelessWidget {
  final String title;
  final List<NavigationTile> tasks;

  const AssignmentGroup({Key? key, required this.title, required this.tasks})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ...tasks,
          ],
        ),
      ),
    );
  }
}

class AppIndexHome extends StatelessWidget {
  const AppIndexHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Training Index')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          AssignmentGroup(
            title: 'Assignment 1: Login & Registration',
            tasks: [
              NavigationTile(title: 'Login Page', route: AppRoutes.loginRoute),
              NavigationTile(
                title: 'Register Page',
                route: AppRoutes.registerRoute,
              ),
            ],
          ),
          AssignmentGroup(
            title: 'Assignment 2: Job Application',
            tasks: [
              NavigationTile(
                title: 'Job Application Form',
                route: AppRoutes.jobApplicationFormRoute,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
