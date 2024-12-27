

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(home:PortfolioApp()));
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeaderSection(),
              SizedBox(height: 20),
              buildSectionTitle('My Interests:'),
              buildInterestSection(),
              SizedBox(height: 20),
              buildSectionTitle('Skills:'),
              buildSkillsSection(),
              SizedBox(height: 20),
              buildSectionTitle('Projects and Experience:'),
              buildProjectsSection(),
              SizedBox(height: 20),
              buildSectionTitle('Education:'),
              buildEducationSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeaderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Seemal Baig',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'I am Mobile App Developer and Designer',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        Row(
          children: const [
            Icon(Icons.facebook),
            SizedBox(width: 10),
            
          ],
          
            
          
        ),
      ]
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget buildInterestSection() {
    final interests = [
      'Mobile App Development: Creating innovative and user-friendly mobile applications.',
      'Web Development: Building responsive and scalable web applications.',
      'Machine Learning: Exploring algorithms and models to extract insights from data.',
      'UI/UX Design: Designing intuitive and visually appealing user interfaces.',
      'Cloud Computing: Leveraging cloud platforms for efficient and scalable solutions.',
      'Open Source Contribution: Contributing to open-source projects and communities.',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: interests
          .map((interest) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(interest),
              ))
          .toList(),
    );
  }

  Widget buildSkillsSection() {
    final skills = [
      {'name': 'Flutter', 'level': 90},
      {'name': 'Dart', 'level': 85},
      {'name': 'UI/UX Design', 'level': 20},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: skills
          .map(
            (skill) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(flex: 2, child: Text(skill['name'] as String)),
                  Expanded(
                    flex: 8,
                    child: LinearProgressIndicator(
                      value: (skill['level'] as int) / 100,
                      backgroundColor: Colors.grey[300],
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text('${skill['level']}%'),
                ],
              ),
            ),
          )
          .toList(),
    );
  }

  Widget buildProjectsSection() {
    final projects = [
      {
        'title': 'Todo App',
        'description':
            'A simple todo list app built with Flutter and Firebase.',
      },
      {
        'title': 'Weather App',
        'description':
            'A weather app built with Flutter that fetches data from a REST API.',
      },
      {
        'title': 'Expense Tracker App',
        'description':
            'An app to manage expenses on the go with a user-friendly interface.',
      },
    ];

    return Column(
      children: projects
          .map(
            (project) => Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project['title'] as String,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(project['description'] as String),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget buildEducationSection() {
    final education = [
      {
        'title': 'The University of Lahore',
        'description':
            'Bachelor of Science in Information Engineering Technology, BSIET (Continue).',
      },
      {
        'title': 'gornment College',
        'description': 'I.COM. (2019-2021)',
      },
    ];

    return Column(
      children: education
          .map(
            (edu) => Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      edu['title'] as String,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(edu['description'] as String),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}