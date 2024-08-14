// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/Widget/components/componentsWidget.dart';

PreferredSizeWidget defaultAppBArHomePAgeScreen() => AppBar(
      title: defaultTextTitle(text: 'News Cloud'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.dark_mode),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
      bottom: const TabBar(
        tabs: [
          Tab(
            text: 'General',
            icon: Icon(Icons.all_inclusive_outlined),
          ),
          Tab(
            text: 'Business',
            icon: Icon(Icons.business),
          ),
          Tab(
            text: 'Sports',
            icon: Icon(Icons.sports),
          ),
          Tab(
            text: 'Techno',
            icon: Icon(Icons.computer),
          ),
          Tab(
            text: 'Science',
            icon: Icon(Icons.science),
          ),
        ],
      ),
    );
