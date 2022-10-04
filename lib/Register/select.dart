import 'package:fittnessapp/Register/select_page.dart';
import 'package:flutter/material.dart';

class SelectedItem extends StatefulWidget {
  @override
  // ignore: overridden_fields
  final Key key;
  final Item item;
  final ValueChanged<bool> isSelected;

  // ignore: use_key_in_widget_constructors
  const SelectedItem(
      {required this.item, required this.isSelected, required this.key});

  @override
  // ignore: library_private_types_in_public_api
  _SelectedItemState createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.isSelected(isSelected);
        });
      },
      child: Card(
        borderOnForeground: true,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            isSelected
                ? const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      ),
                    ),
                  )
                : const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.grey,
                      ),
                    ),
                  ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 11,
                    width: MediaQuery.of(context).size.width - 280,
                    child: Image.asset(
                      widget.item.imageUrl,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      widget.item.title,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
