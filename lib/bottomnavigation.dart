import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int number=1;
  int number1=1;
  int number2 =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  child: Icon(Icons.arrow_back),
                  decoration: BoxDecoration(color: Theme.of(context).primaryColor,borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  child: Text("My Cart Items",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Container(
                  width: 30,
                  height: 30,
                  child: Icon(Icons.shopping_cart),
                  decoration: BoxDecoration(color: Theme.of(context).accentColor,borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
          ),
          SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.circular(5)
                    ),
                    child: Image.asset('aassets/apple (1).png',),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
               children: <Widget>[
                Text('Apple',style: TextStyle(fontSize: 20),),
                 SizedBox(height: 5,),
                 Container(
                     margin: EdgeInsets.only(right: 20),
                     child: Text('\$5.45',style: TextStyle(fontSize: 10),)),

               ],
               ),
                Container(
                  decoration: BoxDecoration(color: Theme.of(context).accentColor,borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.only(left: 142),
                  width: 20,height: 20,
                child: InkWell(
                    onTap: (){setState(() {
                      number2 = number2 +1;
                    });},
                    child: Icon(Icons.add,size: 20,)),
                ),
                SizedBox(width: 10,),
                Text(number2.toString(),style: TextStyle(fontSize: 25),),
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(color: Theme.of(context).accentColor,borderRadius: BorderRadius.circular(5)),
                 width: 20,height: 20,
                   child: InkWell(
                       onTap: (){setState(() {
                         number2 = number2 -1;
                       });},
                       child: Icon(Icons.minimize,size: 20,)),
                ),

        ],
      ),
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 100),
                  width: 100,
                  height: 40,
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.delete,size: 15,),
                        Text('Remove',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  )
              ),
              SizedBox(width: 20,),
              Container(
                width: 100,
                height: 40,
                color: Theme.of(context).accentColor,
                child: Padding(
                  child: Center(
                    child: Container(
                      child:
                        Text('Order Now',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)

                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                ),
              ),

            ],
          ),
    Container(
      width: MediaQuery.of(context).size.width,
    height: 50,
    child: Row(
    children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(5)
      ),
      child: Image.asset('aassets/orange-juice.png',),
      ),
    ),
    SizedBox(width: 10,),
    Column(
    children: <Widget>[
    Text('orange',style: TextStyle(fontSize: 20),),
    SizedBox(height: 5,),
    Container(
        margin: EdgeInsets.only(right: 25),
        child: Text('\$8.59',style: TextStyle(fontSize: 10),)),
    ],
    ),
    Container(
      decoration: BoxDecoration(color: Theme.of(context).accentColor,borderRadius: BorderRadius.circular(5)),
    margin: EdgeInsets.only(left: 135),
    width: 20,height: 20,
    child: InkWell(
        onTap: (){setState(() {
          number1++;
        });},
        child: Icon(Icons.add,size: 20,)),
    ),
      SizedBox(width: 10,),
    Text(number1.toString(),style: TextStyle(fontSize: 25),),
      SizedBox(width: 10,),
    Container(
      decoration: BoxDecoration(color: Theme.of(context).accentColor,borderRadius: BorderRadius.circular(5)),
    width: 20,height: 20,
    child: InkWell(
        onTap: (){
          setState(() {
            number1--;
          });
        },
        child: Icon(Icons.minimize,size: 20,)),
    ),
    ],
    ),
    ),
    SizedBox(height: 10,),
    Row(
    children: <Widget>[
    Container(
    margin: EdgeInsets.only(left: 100),
    width: 100,
    height: 40,
    color: Theme.of(context).primaryColor,
    child: Padding(
    child: Row(
    children: <Widget>[
    Icon(Icons.delete,size: 15,),
    Text('Remove',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
    ],
    ),
    padding: EdgeInsets.symmetric(horizontal: 15),
    )
    ),
    SizedBox(width: 20,),
    Container(
    width: 100,
    height: 40,
    color: Theme.of(context).accentColor,
    child: Padding(
    child: Center(
    child: Container(
    child:
    Text('Order Now',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
    ),
    ),
    padding: EdgeInsets.symmetric(horizontal: 15),
    ),
    ),
    ]
      ),
    Container(
      width: MediaQuery.of(context).size.width,
    height: 50,
    child: Row(
    children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(5)
      ),
      child: Image.asset('aassets/strawberry.png',),
      ),
    ),
    SizedBox(width: 10,),
    Column(
    children: <Widget>[
    Text('strawberry',style: TextStyle(fontSize: 20),),
    SizedBox(height: 5,),
    Container(
        margin: EdgeInsets.only(right: 60),
        child: Text('\$4.21',style: TextStyle(fontSize: 10),)),
    ],
    ),
    Container(
      decoration: BoxDecoration(color: Theme.of(context).accentColor,borderRadius: BorderRadius.circular(5)),
    margin: EdgeInsets.only(left: 100),
    width: 20,height: 20,
    child: InkWell(
        onTap: (){
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add,size: 20,)),
    ),
      SizedBox(width: 10,),
    Text(number.toString(),style: TextStyle(fontSize: 25),),
      SizedBox(width: 10,),
    Container(
      decoration: BoxDecoration(color: Theme.of(context).accentColor,borderRadius: BorderRadius.circular(5)),
    width: 20,height: 20,
    child: Container(
        child: InkWell(
            onTap: (){setState(() {
              number--;
            });},
            child: Icon(Icons.minimize,size: 20,))),
    ),
    ],
    ),
    ),
    SizedBox(height: 10,),
    Row(
    children: <Widget>[
    Container(
    margin: EdgeInsets.only(left: 100),
    width: 100,
    height: 40,
    color: Theme.of(context).primaryColor,
    child: Padding(
    child: Row(
    children: <Widget>[
    Icon(Icons.delete,size: 15,),
    Text('Remove',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
    ],
    ),
    padding: EdgeInsets.symmetric(horizontal: 15),
    )
    ),
    SizedBox(width: 20,),
    Container(
    width: 100,
    height: 40,
    color: Theme.of(context).accentColor,
    child: Padding(
    child: Center(
    child: Container(
    child:
    Text('Order Now',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)

    ),
    ),
    padding: EdgeInsets.symmetric(horizontal: 15),
    ),
    ),

                    ]

    ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('subtotal',style: TextStyle(fontSize: 15),),
                Text('\$122.55',style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('delivery fee',style: TextStyle(fontSize: 15),),
                Text('\$253.55',style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Tax',style: TextStyle(fontSize: 15),),
                Text('\$85',style: TextStyle(fontSize: 15),
                ),
              ],
            ),

          ),
          Text('----------------------------------------------------------------------',style: TextStyle(fontSize: 18),),


          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Total amount',style: TextStyle(fontSize: 18),),
                Text('\$1854',style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            width: 250,
            height: 50,
            child: Center(child: Text('Check Out Now',style: TextStyle(fontSize: 25),)),
            decoration: BoxDecoration(color: Theme.of(context).accentColor,borderRadius: BorderRadius.circular(5)),
          )
    ]
      ),
    bottomNavigationBar: BottomNavigationBar(

    type: BottomNavigationBarType.fixed,
    items: [
    BottomNavigationBarItem(
    icon: Icon(
    Icons.home,color: Colors.grey,
    size: 25,
    ),
    title: Text(
    '',
    style: TextStyle(fontSize: 0),
    )),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.favorite,
    color: Colors.grey,
    size: 25,
    ),
    title: Text('', style: TextStyle(fontSize: 0))),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.shopping_cart,
    color: Colors.orange,
    size: 25,
    ),
    title: Text('', style: TextStyle(fontSize: 0))),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.account_circle,
    color: Colors.grey,
    size: 25,
    ),
    title: Text('', style: TextStyle(fontSize: 0)))
    ],
    )
    );
                  }
                }
