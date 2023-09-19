// import 'package:flutter/material.dart';

// void main() {
//   runApp(game(
    
//   ));
// }

// class game extends StatelessWidget {
//   const game({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//      home: Scaffold(
//       appBar:AppBar(
//            backgroundColor: Color.fromARGB(255, 245, 252, 26),
//            title: Text("اختبار"),
//       ) ,
//       backgroundColor: Color.fromARGB(255, 248, 251, 148),
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: gameBody(),
//       ),
//      ),
//     );
//   }
// }

// class gameBody extends StatefulWidget {
//   const gameBody({super.key});

//   @override
//   State<gameBody> createState() => _gameBodyState();
// }

// class _gameBodyState extends State<gameBody> {
//   List<Widget> icons=[];
//   List<String> questions=["هل عدد كواكب المجموعة الشمسية ثمانية كواكب؟","هل القطط من الحيوانات اللاحمة؟","هل الأرض أكبر من الشمس؟","هل الزرافة ليس لها صوت؟"];
//   int NumQuestions=0;
//   List<String> image=["images/download (1).jfif","images/download.jfif","images/1694701955538.jpg","images/اىيء.jpg"];
//   List<bool>  ansers=[true,false,false,true];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Row(children: icons),  //بما إن التشلدرن تقبل لست فقمت سوات لست فوق بحيت إستدعاتها في التشلدرن بس ,ليه سوات كذا لأاني بغات إذا ضغطت على الزر يزيد أيكون ,و إذا ني سوات اللست مباشرة في الشلدرن مابقدر نضيف في كل ضغطة على الزر أيكون براحتي
//         Expanded(
//           flex: 3,
//           child: Column(
//             children: [
//               Image.asset(image[NumQuestions],
//               ),
//               SizedBox(height: 20,),
//               Text(questions[NumQuestions],
//               textAlign: TextAlign.center, // تخلي محادات الكتابة في النص مش في االيمين ولا اليسار
//               style: TextStyle(
//                 fontSize: 25.0
//               ),)
//             ],
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                 backgroundColor: Color.fromARGB(255, 91, 135, 254)),

//               onPressed: (){ 
//                 if (ansers[NumQuestions]==true){      //نقارن الإجابة حق المستخدم مع أجابةة االسؤال الصحيحة
//                   print("الإجابة صحيحة");
//                 }else{print("الإجابة خاطئة");}
//                 setState(() {
//                   NumQuestions++;  //كل مرة يضغط المستخدم على البتن الصح أو الخطأ يزيد في المتغير numquestions واحد عشان ينتقل إلى الس}ال إلي بعده ,و طرحناه داخل دالة سيت إستيت عشان ذي الدالة تسمحله يسوي رفرش للبرننامج بدون إني نحتاج إلى إعادة تشغيلة تجري التعديلات إلي داخل أقواسها
                  // icons.add(Padding(
                  // padding: const EdgeInsets.all(8.0),
                  // child: Icon(Icons.thumb_up,
                  // color: Color.fromARGB(255, 91, 135, 254)),
                  // ),);
//                 });
//               },
//               child: Text("صح",
//               style: TextStyle(
//                 fontSize: 25,
//                 color: Colors.black
//               ),
//               ),
//             ),
//           )
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                 backgroundColor: Color.fromARGB(255, 250, 76, 76)), // foreground
                  
//               onPressed: (){
//                 if (ansers[NumQuestions]==false){
//                   print("الإجابة صحيحة");
//                 }else{print("الإجابة خاطئة");}
//                 setState(() {
//                   NumQuestions++;   
                  // icons.add(
                  //   Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Icon(Icons.thumb_down,
                  //   color: Color.fromARGB(255, 250, 76, 76)),
                  //   ),
                  // );
//                 });
//               },
//               child: Text("خطأ",
//               style: TextStyle(
//                 fontSize: 25,
//                 color: Colors.black
//               ),
//               ),
//             ),
//           )
//         )
//       ],
//     );
//   }
// }










//---------------------------------------------نستعمل الكلاس بدل اللستات عشان يترتب الكود---------------------------------------------------------------------







import 'package:flutter/material.dart';
import 'package:gess/appbrain.dart';
import 'appbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main() {
  runApp(game(
    
  ));
}

class game extends StatelessWidget {
  const game({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      appBar:AppBar(
           backgroundColor: Color.fromARGB(255, 96, 96, 93),
           title: Text("اختبار"),
      ) ,
      backgroundColor: Color.fromARGB(255, 243, 243, 241),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: gameBody(),
      ),
     ),
    );
  }
}

class gameBody extends StatefulWidget {
  const gameBody({super.key});

  @override
  State<gameBody> createState() => _gameBodyState();
}

class _gameBodyState extends State<gameBody> {
  List<Widget> icons=[];
  int rightanser=0;
  AppBrain appBrain=AppBrain();
  void checkanser(bool choisAnser){
    if (appBrain.getanserquestion()==choisAnser){
        rightanser++;
        icons.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.thumb_up,
        color: Color.fromARGB(255, 91, 135, 254)),
        ),);;
    }else{icons.add(
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.thumb_down,
          color: Color.fromARGB(255, 239, 51, 51)),
          ),);}
    if (appBrain.isfinshed()==true){
     Alert(
      context: context,
      title: "إنتهاء الأختبار",
      desc: "لقد أجبت على $rightanser أسئلة من أصل 4",
      buttons: [
        DialogButton(
          child: Text(
            "أبدأ من جديد",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
    appBrain.restar();   //نرجع العداد حق الأسئلة يرجع إلى الصفر
    icons=[];             // نخلي اللست إلي تحتوي على الأيكونس حق اليدات تتفرغ ويختفن كلهاً من الشاشة عشان يبدأ يعبي من حديد
    rightanser=0;
    }else{
    appBrain.numquestions();   //   كل مرة يضغط المستخدم على البتن الصح أو الخطأ يزيد في المتغير numquestions واحد عشان ينتقل إلى الس}ال إلي بعده ,و طرحناه داخل دالة سيت إستيت عشان ذي الدالة تسمحله يسوي رفرش للبرننامج بدون إني نحتاج إلى إعادة تشغيلة تجري التعديلات إلي داخل أقواسها                   
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: icons),  //بما إن التشلدرن تقبل لست فقمت سوات لست فوق بحيت إستدعاتها في التشلدرن بس ,ليه سوات كذا لأاني بغات إذا ضغطت على الزر يزيد أيكون ,و إذا ني سوات اللست مباشرة في الشلدرن مابقدر نضيف في كل ضغطة على الزر أيكون براحتي
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Image.asset(appBrain.getimagquestion()),
              SizedBox(height: 20,),
              Text(appBrain.gettextquestion(),
              textAlign: TextAlign.center, // تخلي محادات الكتابة في النص مش في االيمين ولا اليسار
              style: TextStyle(
                fontSize: 25.0
              ),)
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 91, 135, 254)),

              onPressed: (){ 
                
                setState(() {
                  checkanser(true);                                 
                });
              },
              child: Text("صح",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black
              ),
              ),
            ),
          )
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 250, 76, 76)), // foreground
                  
              onPressed: (){
              
                setState(() {
                  checkanser(false);
                });
              },
              child: Text("خطأ",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black
              ),
              ),
            ),
          )
        )
      ],
    );
  }
}
