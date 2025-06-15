import 'package:basket_counter/basket_counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // object from cubit (access)
    final myCubit = BlocProvider.of<CounterCubit>(context);
    // BlocConsumer<CounterCubit,CounterState> = to not make it dynamic As memory
    return BlocConsumer<CounterCubit,CounterState>(
      // builder = return ui
      // builder: (context, state) => Widget
      // لما تكون عايز تعرض UI مختلف
        builder: (context,state){
          return  Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepOrange,
              title: Text('Points Count',style: TextStyle(color: Colors.grey[300]),),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text('Team A', style: TextStyle(fontSize: 25)),
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              height: 150,
                              child: Text(
                                  '${myCubit.teamApoints}',
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 100,
                                      fontWeight: FontWeight.bold)),
                            ),
                            CustomElevatedButton(
                                title: 'Add 1 Point',
                                onPressed: () {
                                  myCubit.teamIncrement(team: 'A', buttonNumbre: 1);
                                }),
                            SizedBox(height: 10),
                            CustomElevatedButton(
                                title: 'Add 2 Point',
                                onPressed: () {
                                  myCubit.teamIncrement(team: 'A', buttonNumbre: 2);
                                }),
                            SizedBox(height: 10),
                            CustomElevatedButton(
                                title: 'Add 3 Point',
                                onPressed: () {
                                  myCubit.teamIncrement(team: 'A', buttonNumbre: 3);

                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 400, // الطول اللي يظهر فيه الخط
                        child: VerticalDivider(
                          thickness: 2,
                          color: Colors.black54,
                          width: 20,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text('Team B', style: TextStyle(fontSize: 25)),
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              height: 150,
                              child: Text(
                                  '${myCubit.teamBpoints}',
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 100,
                                      fontWeight: FontWeight.bold)),
                            ),
                            CustomElevatedButton(
                                title: 'Add 1 Point',
                                onPressed: () {
                                  myCubit.teamIncrement(team: 'B', buttonNumbre: 1);

                                }),
                            SizedBox(height: 10),
                            CustomElevatedButton(
                                title: 'Add 2 Point',
                                onPressed: () {
                                  myCubit.teamIncrement(team: 'B', buttonNumbre: 2);


                                }),
                            SizedBox(height: 10),
                            CustomElevatedButton(
                                title: 'Add 3 Point',
                                onPressed: () {
                                  myCubit.teamIncrement(team: 'B', buttonNumbre: 3);

                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  CustomElevatedButton(
                      title: 'Reset',
                      onPressed: (){
                        myCubit.resetButton();
                      }
                  )
                ],
              ),
            ),
          );

        },

        // listener: (context, state) => void   =
        // لما تكون عايز تعمل حاجة زي SnackBar
        // إظهار رسالة خطأ أو فتح شاشة جديدة
        listener: (context,state){});
  }
}
