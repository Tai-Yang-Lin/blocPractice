import 'package:flutter/material.dart';

//color theme
//g灰階
const Color g0 = Color.fromRGBO(252, 252, 252, 1.0);
const Color g50 = Color.fromRGBO(242, 242, 242, 1.0);
const Color g100 = Color.fromRGBO(230, 230, 230, 1.0);
const Color g300 = Color.fromRGBO(179, 179, 179, 1.0);
const Color g500 = Color.fromRGBO(128, 128, 128, 1.0);
const Color g700 = Color.fromRGBO(77, 77, 77, 1.0);
const Color g900 = Color.fromRGBO(26, 26, 26, 1.0);
//p主色
const Color p0 = Color.fromRGBO(247, 247, 252, 1.0);
const Color p25 = Color.fromRGBO(237, 236, 250, 1.0);
const Color p100 = Color.fromRGBO(215, 215, 242, 1.0);
const Color p200 = Color.fromRGBO(167, 168, 229, 1.0);
const Color p400 = Color.fromRGBO(108, 116, 229, 1.0);
const Color p600 = Color.fromRGBO(77, 83, 191, 1.0);
const Color p800 = Color.fromRGBO(49, 51, 128, 1.0);
//gr綠色
const Color gr0 = Color.fromRGBO(235, 242, 239, 1.0);
const Color gr100 = Color.fromRGBO(209, 231, 221, 1.0);
const Color gr600 = Color.fromRGBO(20, 108, 67, 1.0);
const Color gr700 = Color.fromRGBO(15, 81, 50, 1.0);
//y黃色
const Color y0 = Color.fromRGBO(255, 252, 242, 1.0);
const Color y100 = Color.fromRGBO(255, 243, 205, 1.0);
const Color y500 = Color.fromRGBO(255, 193, 7, 1.0);
const Color y800 = Color.fromRGBO(102, 77, 3, 1.0);
//r紅色
const Color r0 = Color.fromRGBO(250, 237, 239, 1.0);
const Color r100 = Color.fromRGBO(248, 215, 228, 1.0);
const Color r500 = Color.fromRGBO(220, 53, 69, 1.0);
const Color r700 = Color.fromRGBO(132, 32, 41, 1.0);
//透明、純白、純黑
const Color t0 = Colors.transparent;
const Color w0 = Colors.white;
const Color b0 = Colors.black;

//font Weight命名
FontWeight fw_lt = FontWeight.w100;//thin, the Least Thick
FontWeight fw_el = FontWeight.w200;//Extra-Light
FontWeight fw_l = FontWeight.w300;//Light
FontWeight fw_r = FontWeight.w400;// Normal / Regular / plain
FontWeight fw_m = FontWeight.w500;//Medium
FontWeight fw_sb = FontWeight.w600;//Semi-Bold
FontWeight fw_b = FontWeight.w700;//Bold
FontWeight fw_eb = FontWeight.w800;//Extra-Bold
FontWeight fw_btmt = FontWeight.w900;//Black, The Most Thick


//Text widget class
Widget h1txt(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_r,s: 56,th: 1.14);
}

Widget h2txt(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_r,s: 44,th: 1.18);
}

Widget h3txt(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_m,s: 36,th: 1.22);
}

Widget h4txt(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_m,s: 32,th: 1.25);
}

Widget h5txt(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_m,s: 28,th: 1.28);
}

Widget h6txt(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_m,s: 24,th: 1.33);
}

Widget Titletxt_L(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_m,s: 20,th: 1.3);
}

Widget Titletxt_M(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_b,s: 16,th: 1.5);
}

Widget Titletxt_S(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_b,s: 14,th: 1.42);
}

Widget bodytxt_L(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_r,s: 16,th: 1.5);
}

Widget bodytxt_M(String str,{Color c = Colors.black,bool sw = false}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_r,s: 14,th: 1.42,sW: sw);
}

Widget bodytxt_S(String str,{Color c = Colors.black,bool sw = false}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_r,s: 12,th: 1.33,sW: sw);
}

Widget labeltxt_L(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_m,s: 14,th: 1.43);
}

Widget labeltxt_M(String str,{Color c = Colors.black}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_m,s: 12,th: 1.33);
}

Widget labeltxt_S(String str,{Color c = Colors.black,bool sW = false}){
  return txt(str,col: c,fontFam: "NotoSans_TC",fw: fw_m,s: 10,th: 1.6,sW: false);
}

Widget txt(String str,{double s = 14,Color col = Colors.black,String fontFam = 'NotoSans-TC',FontWeight fw = FontWeight.w400,double th = 1.5,bool sW = false}){
  return Text(
    str,
    style: TextStyle(color: col,fontFamily: fontFam,fontWeight: fw,fontSize: s,height: th,),
    softWrap: sW,
  );
}

//move
extension ContetExt on BuildContext {
  goto (Widget w,{bool r = false}){
    if(r){
      Navigator.of(this).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> w),(route) => false);
    }
    Navigator.of(this).push(MaterialPageRoute(builder: (context)=> w));
  }

  pop(dynamic v,{int cnt  = 0}){
    if(cnt == 0){
      Navigator.of(this).pop(v);
    }
    else{
      Navigator.of(this).popUntil((_) => cnt-- <= 0);
    }
  }

  goAnim(Widget w)async{
    await Navigator.of(this).push(PageRouteBuilder(
        pageBuilder: (context, anim1, anim2) => w,
        transitionsBuilder: (context, animation, secondaryAnimation,child){
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;
          var tween = Tween(begin: begin,end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        }
    ));
  }

}

pageGo(PageController pageController,int p){
  pageController.animateToPage(p, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
}

pageBack(PageController pageController,int p){
  pageController.animateToPage(p, duration: Duration(milliseconds: 500), curve: Curves.easeOut);
}

//effect style



//Specing
Widget space(double v){
  return Container(
    width: v,
    height: v,
  );
}

//wait
wait(int s,void b){
  Future.delayed(Duration(seconds: s),(){b;});
}


//onWillpop
Future<bool> pop0(){
  return pop0();
}

Future<bool> pop1(){
  //this.context.pop(null);
  return pop1();
}


//Widget class以下為其他專案懶得刪的
Widget underscore({double h = 0.5,Color lineC = Colors.black}){
  return Container(
    height: h,
    color: lineC,
  );
}

Widget cont(Widget wid,{double w = 10.0,double h = 10.0 ,Color c = Colors.transparent,double br = 0,Color bc = Colors.transparent}){
  return Container(
    width: w,
    height: h,
    child: wid,
    color: c,
  );
}

Widget btn(Widget btntxt,final VoidCallback func,{double radius = 0,Color btnC = const Color.fromRGBO(4, 76, 146, 1.0),Color bc = Colors.transparent}){
  return ElevatedButton(
    onPressed: func,
    child: btntxt,
    style: ElevatedButton.styleFrom(
        backgroundColor: btnC,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: bc),
          borderRadius: BorderRadius.circular(radius)
        ),
    ),
  );
}

Widget txtField(TextEditingController txtEdit,FocusNode focus,final VoidCallback func,Function Chanfunc(var str),{String htxt = "",double r = 0.0,TextInputType txtIn = TextInputType.text,Color borderColor = g300}){
  return TextField(
    maxLines: null,
    minLines: null,
    controller: txtEdit,
    focusNode: focus,
    onChanged: Chanfunc,//(value){txtEdit.text = value;},
    onEditingComplete: func,
    keyboardType: txtIn,
    decoration: InputDecoration(
      hintText: htxt,
      hintStyle: TextStyle(color: g300,fontSize: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(r),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(r),
        borderSide: BorderSide(color: borderColor), // 聚焦時的邊框顏色
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(r),
        borderSide: BorderSide(color: borderColor), // 未聚焦時的邊框顏色
      ),
    ),
  );
}

Widget formField(TextEditingController txtEdit,FocusNode focus,final VoidCallback func){
  return TextFormField(
    focusNode: focus,
    style: TextStyle(
      fontFamily: "Regular",
      fontSize: 14,
      color: Colors.black,
    ),
    onEditingComplete: func,
    controller: txtEdit,
    keyboardType: TextInputType.text,
    autofocus: false,
  );
}

Widget padd(Widget con,{double t = 8.0,double b = 8.0,double l = 8.0,double r = 8.0,}){
  return Padding(padding: EdgeInsets.only(top: t,bottom: b,left: l,right: r),
    child: con,);
}

Widget alig(Widget w,{Alignment a = Alignment.center}){
  return Align(alignment: a,child: w,);
}

Widget ges(Widget w,final VoidCallback func){
  return GestureDetector(
    onTap: func,
    child: w,
  );
}

Widget ex(Widget w,{int f = 1}){
  return Expanded(child: w,flex: f,);
}

Widget cen(Widget w){
  return Center(child: w,);
}

//row column佈局等等
Widget row(List<Widget> rowchild,{MainAxisAlignment main = MainAxisAlignment.center,CrossAxisAlignment cross = CrossAxisAlignment.center}){
  return Row(
    mainAxisAlignment: main,
    crossAxisAlignment: cross,
    children: rowchild,
  );
}

Widget col(List<Widget> colchild,{MainAxisAlignment main = MainAxisAlignment.start,CrossAxisAlignment cross = CrossAxisAlignment.center}){
  return Column(
    mainAxisAlignment: main,
    crossAxisAlignment: cross,
    children: colchild,
  );
}

Widget sta(List<Widget> stachild){
  return Stack(
    alignment: Alignment.center,
    children: stachild,
  );
}


