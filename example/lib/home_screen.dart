import 'package:emerge_alert_dialog/emerge_alert_dialog.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emerge Alert Dialog Example"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => _showMyDialog(context),
          child: const Text("Show PopUp"),
        ),
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return EmergeAlertDialog(
          alignment: Alignment.bottomRight,
          emergeAlertDialogOptions: EmergeAlertDialogOptions(
            title: const Text("Privacy Info"),
            content: _content(),
          ),
        );
      },
    );
  }

  Widget _content() {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
              "The backup created with this functionality may contain some sensitive data."),
          const SizedBox(height: 22.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: size.height * 0.045,
                  width: size.width * 0.3,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                height: size.height * 0.045,
                width: size.width * 0.3,
                alignment: Alignment.center,
                child: const Text(
                  "Confirm",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
