import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CountController extends GetxController{

  //Todo => .obs ka matlab hai , value Reactive hogay jab change hogy , to her jaga obtade hojagy,
  //Todo  jaha per isko observe kia ja raha hia.
  var Count=0.obs;

  // Todo => A Increment function hai.
   increment(){
    Count.value++;
  }
  //Todo => A Decrement function hai.
  decremet(){
     if(Count>0){
       Count.value--;
     }
  }
  //Todo => A Referesh function hai.
  refresh() {
     Count.value=0 ;
  }



}