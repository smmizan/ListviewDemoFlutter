import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: 'Home',
    home: MyHomePage(),
  ));
}



class MyHomePage extends StatelessWidget
{


    List myData = [
    {"name":"Administration","total":"153"},
  {"name":"Commercial","total":"16"},
  {"name":"Corporate Business Development","total":"3"},
  {"name":"Corporate Training","total":"1"},
  {"name":"Distribution","total":"314"},
  {"name":"Engineering","total":"51"},
  {"name":"Factory Stores","total":"22"},
  {"name":"Field Services (FSD)","total":"10"},
  {"name":"Finance & Accounts","total":"30"},
  {"name":"Human Resources (HR)","total":"30"},
  {"name":"Information Technology (IT)","total":"11"},
  {"name":"Internal Audit","total":"11"},
  {"name":"Market Informantion System(MIS)","total":"56"},
  {"name":"Medical Services (MSD)","total":"6"},
  {"name":"Microbiology","total":"11"},
  {"name":"Pharmacovigilance","total":"2"},
  {"name":"Product Development","total":"25"},
  {"name":"Product Management (PMD)","total":"47"},
  {"name":"Production","total":"160"},
  {"name":"Project Management","total":"14"},
  {"name":"Quality Assurance","total":"8"},
  {"name":"Quality Compliance","total":"17"},
  {"name":"Quality Control","total":"37"},
  {"name":"Quality Operations","total":"1"},
  {"name":"Sales","total":"701"},
  {"name":"Sales Training","total":"5"},
  {"name":"Strategic Sales Support Department (SSSD)","total":"5"},
  {"name":"Validation","total":"4"}
  ];



@override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: new AppBar(title: new Text('Home')),
        body: ListView.builder(
          itemCount: myData.length,
          itemBuilder: (BuildContext context,int index){
            return Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text(myData[index]["name"][0]),
                  ),

                  title: Text(myData[index]["name"]),
                  subtitle: Text(myData[index]["total"]),
                  onTap: ()
                  {
                    
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(myData[index]["name"]),
                        duration: Duration(seconds: 1),
                      ));
                  },
                )
              ],
            );
          }
        )
       
        
         
      );
      

  }





}