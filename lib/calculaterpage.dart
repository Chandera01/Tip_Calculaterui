import 'package:flutter/material.dart';

class Calculater_page extends StatelessWidget {
  TextEditingController countController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f3f4),
      body: Column(
        children: [
          SizedBox(height: 40), // Adjust height as per requirement

          //Title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "asset/image/hat_icon.png",
                height: 60,
                width: 60,
                color: Colors.black,
              ),
              SizedBox(width: 10), // Space between icon and text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Mr ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "TIP",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Calculator",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ), 
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ///main card
          Card(
            color: Colors.white,
            elevation: 14,
            shadowColor: Colors.black,
            child: Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              height: 210,
              width: 360,
              child:Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Total p/person",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("\$",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),
                      Text("000",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Container(
                    height: 1,
                    width: 330,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Total bill"),
                          Row(
                            children: [
                              Text("\$",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xff85e4e0)),),
                              Text("000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xff85e4e0)),),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Total Tip"),
                          Row(
                            children: [
                              Text("\$",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xff85e4e0)),),
                              Text("000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xff85e4e0)),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ///Textfield
          Padding(
            padding: const EdgeInsets.only(left: 14,right: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Text("Enter",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),
                      Text("Your bill")
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 60,
                  width: 280,
                  color: Color(0xffffffff),
                  child: TextField(
                    controller: countController,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("asset/image/dolloriocn.png",height: 20,width: 20,),
                      enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xfff5f3f4),
                        ),
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 50,
          ),
          ////Buttons
          Padding(
            padding: const EdgeInsets.only(left: 10,),
            child: Row(
              children: [
                Column(
                  children: [Text("Choose",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text("your tip"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                //buttons
                ElevatedButton(onPressed: (){
                  print("tap on Firstbtn");
                } , child: Row(
                  children: [
                    Text("10",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
                    Text("%",style: TextStyle(fontSize: 15),),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff01c9bd),
                  foregroundColor: Color(0xffffffff),
                  minimumSize: Size(20, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),),
                SizedBox(
                  width: 4,
                ),
                ElevatedButton(onPressed: (){
                  print("tap on secondButton");
                } , child: Row(
                  children: [
                    Text("15",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
                    Text("%",style: TextStyle(fontSize: 15),)
                  ],
                ),style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff01c9be),
                  foregroundColor: Color(0xffffffff),
                  minimumSize: Size(20, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),),
                SizedBox(
                  width: 4,
                ),
                ElevatedButton(onPressed: (){
                    print("tap on thirdButton");
                }, child: Row(
                  children: [
                    Text("20",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
                    Text("%",style: TextStyle(fontSize: 15),)
                  ],
                ),style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff01c9be),
                  foregroundColor: Color(0xffffffff),
                  minimumSize: Size(20,70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),),
              ],
            ),
          ),

          SizedBox(
            height: 18,
          ),

          //second Button
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Container(
                  width: 94,
                  height: 70,
                ),
                ElevatedButton(onPressed: (){ 
                  print("count the tip");
                }, child: Text("Custom tip",style: TextStyle(fontSize: 35),),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xff01c9be),
                  minimumSize: Size(287, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //last btn
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text("Split",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Text("the total"),
                  ],
                ),
                  SizedBox(
                    width: 40,
                  ),
                //Minius
                ElevatedButton(onPressed: (){
                    print("-");
                } , child: Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xff01c9be),
                  minimumSize: Size(50, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.zero),
                  ),
                ),),

                //2
                ElevatedButton(onPressed: (){
                  print("2");
                } , child: Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xffffffff),
                    minimumSize: Size(140, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.zero),
                    ),
                  ),),

                //+
                ElevatedButton(onPressed: (){
                  print("-");
                } , child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xff01c9be),
                    minimumSize: Size(50, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.zero),
                    ),
                  ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
