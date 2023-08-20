import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter/bloc/counterbloc.dart';
import 'package:flutter_bloc_counter/bloc/counterevents.dart';
import 'package:flutter_bloc_counter/bloc/counterstates.dart';

import 'bloc/seconde_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=>counterbloc(),
    child:  const MaterialApp(
      home: HomePage(),
    ),


    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<counterbloc, counterstate>(
          builder: (context, state){
            return  Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.counter.toString(), style: const TextStyle(
                    fontSize: 30
                ),
                )    ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed:
                            ()=>BlocProvider.of<counterbloc>(context).add
                              (increment()),
                        child: const Icon(Icons.add)
                    ),

                    const SizedBox(width: 10,),

                    ElevatedButton(
                        onPressed:
                            ()=>BlocProvider.of<counterbloc>(context).add(
                                decrement()),
                        child: const Icon(Icons.remove)
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const SecondPage()));
                  },
                  child: Container(
                    width: 138,
                    height: 35,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    child: const Center(child: Text("click", style: TextStyle(color: Colors.white),)),
                  ),

                )
              ],
            );

          }
      ),
    );
  }

}





