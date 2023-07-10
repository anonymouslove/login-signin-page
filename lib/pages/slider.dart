import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  
const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // int currentIndex = 0;
 // final PageController controller = PageController();
PageController controller = PageController();
  int currentIndex = 0;


  List<Function> images = [

    
    ()=> Container(
      child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                      
                      Image.asset('tanny/tanny2.png'),
                      SizedBox(height:30),
                       Text('Chair Shopping just', style:TextStyle(fontSize:20, fontWeight:FontWeight.bold)),
                       Text('got Better', style:TextStyle(fontSize:20, fontWeight:FontWeight.bold)),
                       SizedBox(height:20),
                       Text('Browse a variety of options provided for you...', style: TextStyle(fontSize: 18))
                      ]))),
                     
    ),
    () =>  Container(
       child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                      
                      Image.asset('tanny/tanny3.png'),
                      SizedBox(height:30),
                       Text('Select your best fit', style:TextStyle(fontSize:20, fontWeight:FontWeight.bold)),
                       Text('', style:TextStyle(fontSize:20, fontWeight:FontWeight.bold)),
                       SizedBox(height:20),
                       Text('...choose whatever suits you...', style: TextStyle(fontSize: 18))
                      ]))),
      ),

       () =>  Container(
       child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                      
                      Image.asset('tanny/tanny2.png'),
                      SizedBox(height:30),
                       Text('Get your best fit', style:TextStyle(fontSize:20, fontWeight:FontWeight.bold)),
                       Text('', style:TextStyle(fontSize:20, fontWeight:FontWeight.bold)),
                       SizedBox(height:20),
                       Text('...and have it delivered to your door step', style: TextStyle(fontSize: 18))
                      ]))),
      )
  ];
   void initState() {
    super.initState();
    controller.addListener(() {
      int nextIndex = controller.page!.round();
      if (nextIndex != currentIndex) {
        setState(() {
          currentIndex = nextIndex;
        });
        if (currentIndex == images.length - 1) {
          // Navigate to a different page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        }
      }
    });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding:EdgeInsets.all(20)),
          SizedBox(
            height: 500,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemCount: images.length,
             // itemBuilder: (context, index) {
                 
      itemBuilder: (context, index) => images[index](),
             /*   return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Container(
                      pages itemCount: pages.length,
      itemBuilder: (context, index) => pages[index](),
                     // images[index % images.length],
                     // fit: BoxFit.fill,
                    ),
                  ),
                );*/
           //   },
            ),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
          //  padding:EdgeInsets.all(20),
            children: [
               Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
             

child:CircleAvatar(backgroundColor: Colors.red,
  child:
                IconButton(
                  onPressed: () {
                  
                    controller.jumpToPage(currentIndex - 1);
                  },
                  icon: Icon(Icons.arrow_back),
                ),),),
                Spacer(),
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i),
                Spacer(),
                  Padding(
            padding: const EdgeInsets.all(30),
             

child: CircleAvatar(backgroundColor: Colors.red,
  
             child:   IconButton(
                  onPressed: () {
                      controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
                   // controller.jumpToPage(currentIndex +1);
                  },
                  icon: Icon(Icons.arrow_forward),
                ),),),
            
          
      
          ]),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}