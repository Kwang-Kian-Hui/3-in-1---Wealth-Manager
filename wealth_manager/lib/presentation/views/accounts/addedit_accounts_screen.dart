import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wealth_manager/application/account/addedit_account_form_state.dart';
import 'package:wealth_manager/infrastructure/models/account.dart';
import 'package:wealth_manager/presentation/views/accounts/addedit_account_form.dart';
import 'package:wealth_manager/presentation/views/home_screen.dart';
import 'package:wealth_manager/presentation/widgets/progress_indicator_overlay.dart';
import 'package:wealth_manager/shared/providers.dart';

class AddEditAccountScreen extends ConsumerStatefulWidget {
  const AddEditAccountScreen({Key? key}) : super(key: key);
  static const routeName = 'addedit-account-screen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddEditAccountScreenState();
}

class _AddEditAccountScreenState extends ConsumerState<AddEditAccountScreen> {
  @override
  void initState() {
    Future.microtask(() async {
      final arguments = ModalRoute.of(context)?.settings.arguments;
      if (arguments != null) {
        ref
            .read(addEditAccountFormNotifierProvider.notifier)
            .initialiseValueForEditAccountForm(arguments as Account);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AddEditAccountFormState>(addEditAccountFormNotifierProvider,
        (state) {
      if (state.successful) {
        Navigator.popUntil(context, ModalRoute.withName(HomeScreen.routeName));
      }
      if (state.hasFirebaseFailure) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content:
              Text('An unexpected error occurred. Please contact support.'),
          duration: Duration(seconds: 5),
          behavior: SnackBarBehavior.floating,
        ));
      }
    });
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              const AddEditAccountForm(),
              ProgressIndicatorOverlay(
                isSaving: ref.watch(addEditAccountFormNotifierProvider
                    .select((state) => state.isSaving)),
                text: 'Saving',
              ),
            ],
          )),
    );
  }
}
