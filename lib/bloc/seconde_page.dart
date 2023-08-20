import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter/bloc/counterbloc.dart';
import 'package:flutter_bloc_counter/bloc/counterstates.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterbloc counterBloc = BlocProvider.of<counterbloc>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Blocs"),
          leading: BackButton(
            onPressed: ()=>Navigator.pop(context),
          ),
        ),
        body:BlocBuilder<counterbloc,counterstate>(
            //bloc: counterBloc,
            builder: ( context, state) {
              return Center(
                child: Text(counterBloc.state.counter.toString(),style: const TextStyle(
                    fontSize: 30
                ),),
              );
            })
    );
  }
}