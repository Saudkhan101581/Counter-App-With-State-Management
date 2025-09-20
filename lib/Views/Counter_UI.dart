import 'package:classico/Controller/Counter_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
class CounterUi extends StatefulWidget {
  const CounterUi({super.key});

  @override
  State<CounterUi> createState() => _CounterUiState();
}

class _CounterUiState extends State<CounterUi> {
  @override
  Widget build(BuildContext context) {

    //Todo Is line ko Controller injection kaha jata hai, qk UI mai controller inject keraha hai,
    //Todo Is ka Kaam hai k Logic screen ko UI screen k ssath connect kerdo.
    CountController countController = Get.put(CountController());
    print("Saud khan");
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Counter',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 30),),
        centerTitle: true,
      ),
        floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(onPressed: (){
              cOunterController.increment();
            },backgroundColor: Colors.black,
              child: Icon(Icons.add,color: Colors.white,size: 30,),
            ),
            SizedBox(height: 10,),
            FloatingActionButton(onPressed: (){
              cOunterController.decremet();
            },backgroundColor: Colors.black,
              child: Icon(Icons.remove,color: Colors.white,size: 30,),
            ),
            SizedBox(height: 10,),
            FloatingActionButton(onPressed: (){
              cOunterController.refresh();
            },backgroundColor: Colors.black,
              child: Icon(Icons.refresh,color: Colors.white,size: 30,),
            ),
          ],
        ),
      body:Center(
        child:
            //Todo  => Obx 1  Reactive Widget hai, matlab k jab is text ki value change hoogy to khud ba khud
           // Todo    UI change hooga , A OBSERVER hai jo is reactive variable ko dyk raha hia.
            Obx(()=>Text(cOunterController.Count.value.toString(),style: GoogleFonts.poppins(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600,shadows: [Shadow(offset: Offset(4, 4),
                blurRadius: 2.5,
                color: Colors.indigo
            )],
            )

        ),
        ),
      )

        
      
    );
  }
}
