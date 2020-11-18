import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id="home_page";
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        width:double.infinity,
        decoration:BoxDecoration(
          gradient:LinearGradient(
            begin:Alignment.topCenter,
            colors:[
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.5),
            ],
          ),
        ),
        child:Column(
          children:[
            //FIRST SECTION
            Container(
              height:200,
              width:double.infinity,
                padding:EdgeInsets.only(right:18,top:50),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.end,
                  children:[
                    //SIGN UP TEXT
                    Text('Sign Up',style:TextStyle(fontSize:33,color:Colors.white,),),
                    SizedBox(height:8),
                    //WELCOME TEXT
                    Text('Welcome',style:TextStyle(fontSize:17,color:Colors.white,),),
                  ],
              ),
            ),
            //SECOND SECTION
            Expanded(
              child:Container(
                padding:EdgeInsets.all(25),
                width:double.infinity,
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30),),
                ),
                child:SingleChildScrollView(
                  child:Column(
                    children:[
                      SizedBox(height:50),
                      //CONTAINER FORMS
                      Container(
                        decoration:BoxDecoration(
                          color:Colors.white,
                          borderRadius:BorderRadius.circular(8),
                          boxShadow:[
                            BoxShadow(color:Color.fromRGBO(171,171,171,0.7),blurRadius:20,offset:Offset(0,10),),
                          ],
                        ),
                        child:Column(
                          children:[
                           // #FULLNAME
                           Container(
                             height:50,
                             decoration:BoxDecoration(
                               border:Border(bottom:BorderSide(color:Colors.grey[300]),)
                             ),
                             child:TextField(
                               decoration:InputDecoration(
                                 contentPadding:EdgeInsets.only(left:7,top: 10,bottom:10),
                                 border:InputBorder.none,
                                 hintText:'Fullname',
                                 hintStyle:TextStyle(color:Colors.black45,fontSize:15),
                               ),
                             ),
                           ),
                            //#EMAIL
                            Container(
                              height:50,
                              decoration:BoxDecoration(
                                  border:Border(bottom:BorderSide(color:Colors.grey[300]),)
                              ),
                              child:TextField(
                                decoration:InputDecoration(
                                  contentPadding:EdgeInsets.only(left:7,top: 10,bottom:10),
                                  border:InputBorder.none,
                                  hintText:'Email',
                                  hintStyle:TextStyle(color:Colors.black45,fontSize:15),
                                ),
                              ),
                            ),
                            //#PHONE
                            Container(
                              height:50,
                              decoration:BoxDecoration(
                                  border:Border(bottom:BorderSide(color:Colors.grey[300]),)
                              ),
                              child:TextField(
                                decoration:InputDecoration(
                                  contentPadding:EdgeInsets.only(left:7,top: 10,bottom:10),
                                  border:InputBorder.none,
                                  hintText:'Phone',
                                  hintStyle:TextStyle(color:Colors.black45,fontSize:15),
                                ),
                              ),
                            ),
                            //#PASSWORD
                            Container(
                              height:50,
                              decoration:BoxDecoration(
                                  border:Border(bottom:BorderSide(color:Colors.grey[300]),)
                              ),
                              child:TextField(
                                obscureText:true,
                                decoration:InputDecoration(
                                  contentPadding:EdgeInsets.only(left:7,top: 10,bottom:10),
                                  border:InputBorder.none,
                                  hintText:'Password',
                                  hintStyle:TextStyle(color:Colors.black45,fontSize:15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height:40),
                      //#SIGN UP BUTTON
                      Container(
                        margin:EdgeInsets.symmetric(horizontal:50),
                        width:double.infinity,
                        height:40,
                        child:FlatButton(
                          onPressed:(){},
                          shape:RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(20),
                          ),
                          color:Colors.black54,
                          child:Text('SignUp',style:TextStyle(color:Colors.white,fontSize: 13),),
                        ),
                      ),
                      SizedBox(height:30),
                      //#SIGN UP WITH SNS
                      Container(
                        child:Text('Sign Up with SNS',style:TextStyle(color:Colors.black45,fontWeight:FontWeight.bold,fontSize: 13)),
                      ),
                      SizedBox(height:30),
                      //#FACEBOOK GOOGLE APPLE BUTTONS
                      Container(
                        height:45,
                        width:double.infinity,
                        child:Row(
                          children:[
                            //#FACEBOOK BUTTON
                            Expanded(
                              flex:10,
                              child:Container(
                                height:45,
                                child:FlatButton(
                                  shape:RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(22.5),
                                  ),
                                  onPressed:(){},
                                  child:Text('Facebook',style:TextStyle(color:Colors.white,fontSize: 13),),
                                  color:Colors.blue,
                                ),
                              ),
                            ),
                            Spacer(flex:1),
                            Expanded(
                              flex:10,
                              child:Container(
                                height:45,
                                child:FlatButton(
                                  onPressed:(){},
                                  shape:RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(22.5),
                                  ),
                                  color:Colors.red,
                                  child:Text('Google',style:TextStyle(color:Colors.white,fontSize: 13),),
                                ),
                              ),
                            ),
                            Spacer(flex:1),
                            Expanded(
                              flex:10,
                              child:Container(
                                height:45,
                                child:FlatButton(
                                  onPressed:(){},
                                  shape:RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(22.5),
                                  ),
                                  color:Colors.black,
                                  child:Text('Github',style:TextStyle(color:Colors.white,fontSize: 13),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

