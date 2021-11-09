import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/presentation/views/accounts/accounts_screen.dart';
import 'package:wealth_manager/presentation/views/accounts/addedit_accounts_screen.dart';
import 'package:wealth_manager/presentation/views/auth/sign_in_screen.dart';
import 'package:wealth_manager/presentation/views/expenses/tx_screen.dart';
import 'package:wealth_manager/presentation/views/insurance_screen.dart';
import 'package:wealth_manager/presentation/views/investment_screen.dart';
import 'package:wealth_manager/presentation/views/settings_screen.dart';
import 'package:wealth_manager/presentation/widgets/bottom_navigation_bar.dart';
import 'package:wealth_manager/shared/providers.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = 'home-screen-route';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  List<Map<String, Widget>> _pages = [
    {"page": InvestmentScreen()},
    {"page": InsuranceScreen()},
    {"page": AccountsScreen()},
    {"page": TransactionsScreen()},
    {"page": SettingsScreen()},
  ];

  int _selectedPageIndex = 2;

  void _selectPage(int index) {
    setState(() {
      print(index);
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
      ),
      body: _pages[_selectedPageIndex]["page"],
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: floatingActionButton(),
    );
  }
  
  FloatingActionButton? floatingActionButton (){
    return _selectedPageIndex == 2
          ? FloatingActionButton(
              child: Icon(Icons.add, color: Colors.white),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(AddEditAccountScreen.routeName);
              },
              backgroundColor: Colors.grey,
            )
          : null;
  }
}


// floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      