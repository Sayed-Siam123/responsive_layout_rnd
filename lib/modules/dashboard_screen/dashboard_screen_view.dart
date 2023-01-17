import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dashboard_screen_provider.dart';

class DashboardScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DashboardScreenProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<DashboardScreenProvider>();

    return Container();
  }
}

