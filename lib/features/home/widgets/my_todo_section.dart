import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kowope/features/home/bloc/home_bloc.dart';
import 'package:kowope/features/home/bloc/home_state.dart';
import 'package:kowope/features/home/widgets/hide_todo_widget.dart';
import 'package:kowope/features/home/widgets/todo_item_widget.dart';
import 'package:kowope/gen/assets.gen.dart';

class MyTodoSection extends StatelessWidget {
  const MyTodoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;
    return homeState.hideTodo  == true ? Container() : Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "My To-do",
                    style: TextStyle(fontSize: 16, color: Colors.black38),
                  ),
                  Assets.vector.image(height: 20)
                ],
              ),
              TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      showDragHandle: true,
                      builder: (context) {
                        return HideTodoWidget();
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "Hide",
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 130,

            // width: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TodoItem(
                  title: 'Add Debit',
                  progress: 0.3,
                  asset: Assets.vector2.image(height: 15),
                  text: 'card',
                ),
                TodoItem(
                    title: "Enable",
                    progress: 0.5,
                    asset: Assets.entypoFlash.image(height: 20),
                    text: "Save"),
                TodoItem(
                    title: "Enable FaceID",
                    progress: 0.8,
                    asset: Assets.fluentLockClosedKey16Filled.image(height: 20),
                    text: "/Fingerprint'"),
                TodoItem(
                    title: "Add a",
                    progress: 0,
                    asset: Assets.materialSymbolsPhotoCameraFrontSharp
                        .image(height: 20),
                    text: "Picture"),
                TodoItem(
                    title: "Add your",
                    progress: 0.3,
                    asset: Assets.group143.image(height: 15),
                    text: "BVN"),
                TodoItem(
                    title: "Verify your",
                    progress: 0,
                    asset: Assets.icSharpPermIdentity.image(height: 15),
                    text: "Identity")
                // TodoItem(),
                // TodoItem()
              ],
            ),
          )
        ],
      ),
    );
  }
}

