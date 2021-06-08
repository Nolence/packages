import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class StoragePage extends StatefulWidget {
  final Reference reference;

  final Duration switchDuration;

  const StoragePage({
    required this.reference,
    this.switchDuration = const Duration(milliseconds: 250),
    Key? key,
  }) : super(key: key);

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  ListResult? _listResult;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Future<void> getChildren() async {
    final listResult = await widget.reference.listAll();

    setState(() {
      _listResult = listResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listResult = _listResult;

    return Scaffold(
      appBar: AppBar(title: Text(widget.reference.fullPath)),
      body: AnimatedSwitcher(
        duration: widget.switchDuration,
        child: listResult == null
            ? const Center(child: CircularProgressIndicator())
            : GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: listResult.items.map<Widget>((item) {
                  final uri = Uri.parse(item.fullPath);
                  final origin = uri.origin;

                  return Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(origin),
                    color: Colors.teal[100],
                  );
                }).toList(),
              ),
      ),
    );
  }
}
