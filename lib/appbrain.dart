import 'dart:ffi';

import 'question.dart';
 int _NumQuestions=0;
class AppBrain{
  List<question> _questionGrob=[   // لست تحتوي  على كائنات من نوع كوستشن كل كائن هو عبارة عن السؤال بكل تفاصيلة
    question("images/download (1).jfif", "هل عدد كواكب المجموعة الشمسية ثمانية كواكب؟", true),
    question("images/download.jfif", "هل القطط من الحيوانات اللاحمة؟", true),
    question("images/1694701955538.jpg", "هل الأرض أكبر من الشمس؟", false),
    question("images/اىيء.jpg", "هل الزرافة  لها صوت؟",false)
  ];  // إستعملنا ذاله المتود عشان مانسمح لحد يغير قيم الأتربيوتز من ملف ثاني بس ذي  الطريقة تمنع حتى الوصول إلى هدة الأتربيوتز أي إستدعائها أو طباعتها لذالك نننشأ الفنكشن الثالية 
  String gettextquestion(){    // إتسمحلي نستدعى أو بوصل إلى الأتربيوتز الخاصة بالكلاس إلي سواتله إغلاق encapsulation
    return _questionGrob[_NumQuestions].questionText; }
  String getimagquestion(){
    return _questionGrob[_NumQuestions].questionImage; }  
  bool getanserquestion(){
    return _questionGrob[_NumQuestions].questionAnser; } 
  void numquestions() {    //نستدعيها إذا بغات بزيد واحد لعدادي عشان ينتقل إلى السؤال التالي
    if (_NumQuestions<_questionGrob.length-1){
      _NumQuestions++;
    }
  } 
  //نستدعا ذا الفنكشن إذا بغات بعرف هل إنتهت الأسئله أم لا بحيث لو إنتهت بترجع ترو و إذا لا بترجع فولس
  bool isfinshed(){
    if (_NumQuestions>=_questionGrob.length-1){
      return true;
    }else{
      return false;
    }
  }
  void restar(){
  _NumQuestions=0;
  }
  }