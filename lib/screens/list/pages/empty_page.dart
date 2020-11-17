import 'package:flutter/material.dart';
import 'package:notes/blocs/notes/note_cubit.dart';

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            "assets/ic_empty.png",
            fit: BoxFit.contain,
          ),
        ),
        ListTile(
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Your Notebook is ",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.black54),
              children: [
                TextSpan(
                  text: "Empty",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Theme.of(context).accentColor),
                ),
              ],
            ),
          ),
          subtitle: Text(
            "Write a new note to get started",
            textAlign: TextAlign.center,
          ),
          onTap: () => context.bloc<NoteCubit>().goToBottomSheet(),
        ),
      ],
    );
  }
}
