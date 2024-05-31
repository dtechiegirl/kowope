import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kowope/features/home/bloc/home_bloc.dart';
import 'package:kowope/gen/assets.gen.dart';

class HideTodoWidget extends StatelessWidget {
  const HideTodoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(32),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.min,
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.wallet.image(height: 50),
          SizedBox(
            height: 24,
          ),
          Text(
            "Hide TO-DO List",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 24,
          ),
          Text("Temporarily hide all Todo list till tomorrow"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Divider(),
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Remind me later"),
                        content: Text(
                            "Are you sure you want to hide todo list till tomorrow?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                context.read<HomeBloc>().hideTodoList();
                              }, child: Text("Yes, remove it")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);

                              },
                              child: Text("Close"))
                        ],
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
                shape: RoundedRectangleBorder(),
                side: BorderSide(
                  color: Colors.red.shade700,
                  width: 2,
                ),
              ),
              child: Text(
                "Hide To-do List",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ))
        ],
      ),
    );
  }
}
