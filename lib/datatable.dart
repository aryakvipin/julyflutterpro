import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: datatable(),));
}
class datatable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
             body: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
             color: Colors.yellow),
               child: DataTable(
                 columns: [

                 DataColumn(label:Text("Name"
                 ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)

             ),
                 DataColumn(label: Text("Age",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600))
                 ),
                 DataColumn(label: Text("role",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600))
                 ),
                 DataColumn(label: Text("salary",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)))

               ],
                 rows: [
                   DataRow(cells: [
                     DataCell(Text("anu")),
                     DataCell(Text("25")),
                     DataCell(Text("student")),
                     DataCell(Text(""))
                   ]),
                   DataRow(cells: [
                     DataCell(Text("amal")),
                     DataCell(Text("28")),
                     DataCell(Text("Techer")),
                     DataCell(Text("25445"))
                   ])
                 ],),
             ),
      );
  }

}