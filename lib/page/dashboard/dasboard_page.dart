import 'package:flutter/material.dart';
import 'package:loan_market/page/contact/contact_page.dart';
import 'package:loan_market/page/home/home_page.dart';
import 'package:loan_market/page/product/product.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> _tabs = [
    const Tab(
      icon: Icon(Icons.home),
      text: 'Home',
    ),
    const Tab(
      icon: Icon(Icons.contact_mail),
      text: 'Contact',
    ),
    const Tab(
      icon: Icon(Icons.attach_money),
      text: 'Loan',
    ),
    const Tab(
      icon: Icon(Icons.shopping_cart),
      text: 'Product',
    ),
    const Tab(
      icon: Icon(Icons.account_balance),
      text: 'Bank',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomePage(),
            ContactPage(),
            LoanPage(),
            ProductPage(),
            BankPage(),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          tabs: _tabs,
          labelColor: Colors.black,
        ),
      ),
    );
  }
}

class LoanPage extends StatelessWidget {
  const LoanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Bank Page")),
    );
  }
}

class BankPage extends StatelessWidget {
  const BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Bank Page'),
    );
  }
}
