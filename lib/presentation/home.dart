import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_cubit/business_logic/change_number_cubit.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ChangeNumberCubit(),
      child: BlocConsumer<ChangeNumberCubit,ChangeNumberState>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){ChangeNumberCubit.get(context).add();}, icon: const Icon(Icons.add)),
                  Text('${ChangeNumberCubit.get(context).counter}'),
                  IconButton(onPressed: (){ChangeNumberCubit.get(context).remove();}, icon: const Icon(Icons.delete)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
