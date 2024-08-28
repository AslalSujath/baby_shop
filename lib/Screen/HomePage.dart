import 'package:baby_shop/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
   final TextEditingController _searchController = TextEditingController();
@override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 223, 183, 165),
        body: SafeArea(
          child: Padding(
            padding:EdgeInsets.only(top:25),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Icon(
                              Icons.sort_rounded,
                              color: const Color.fromARGB(255, 102, 3, 3),
                              size: 25,
                                ),
                              ),
                          InkWell(
                              onTap: (){},
                              child: Icon(
                              Icons.notifications_none_outlined,
                              color: Color.fromARGB(255, 102, 3, 3),
                              size: 25,
                                  ),
                                ),
                                
                          InkWell(
                              onTap: (){},
                              child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Color.fromARGB(255, 102, 3, 3),
                              size: 25,
                                  ),
                                ),
                              ],
                              
                            ),
                            
                    ],
                  ),
                      ),

                       SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                              hintText: 'Search...',
                                // Add a clear button to the search bar
                              suffixIcon: IconButton(
                                icon: Icon(Icons.clear),
                                onPressed: () => _searchController.clear(),
                                ),
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.search),
                                  onPressed: () {
                                    // Perform the search here
                                  },
                                ),
                                 border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ), 
                    ), 
      
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                          
                        ),
                      ),
                      
                      SizedBox(height: 5),
                      Padding(
                         padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Delevery on Time",
                          style: TextStyle(
                            fontSize: 12,
                         ),
                        ),                    
                      ),
                     
                      SizedBox(height: 30),
                      TabBar(
                        isScrollable: true,
                        indicator: BoxDecoration(),
                        labelStyle: TextStyle(fontSize: 10),
                        labelPadding: EdgeInsets.symmetric(horizontal: 20),                     
                        tabs: [
                        Tab(text: "Baby"),
                        Tab(text: "Electronic"),
                        Tab(text: "Toys"),
                        Tab(text: "Tools"),
                        
                        ],
                      ),
                      Flexible(
                        flex:1,
                        child: TabBarView(
                          children: [
                            ItemWidget(),
                            Container(color: const Color.fromARGB(255, 246, 210, 206)),
                            Container(color: const Color.fromARGB(255, 253, 202, 196)),
                            Container(color: const Color.fromARGB(255, 236, 159, 150)),
                            ]
                        )
                      )
                      
      
                    ],
                ),
            ),
        ),
      ),
    );     
  }
}