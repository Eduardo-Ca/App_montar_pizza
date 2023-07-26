// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:montepizza/constants/image_contante.dart';
import 'package:montepizza/pizza/domain/entity/ingredient.dart';
import 'package:montepizza/store/pizza.store.dart';

class TelaMontarPizza extends StatefulWidget {
  const TelaMontarPizza({super.key});

  @override
  State<TelaMontarPizza> createState() => _TelaMontarPizzaState();
}

class _TelaMontarPizzaState extends State<TelaMontarPizza> with SingleTickerProviderStateMixin {


  PizzaStore pizzaStore = PizzaStore();
  int pizzaEscolhida = 0;
  List<Animation> _animationList = <Animation>[];
  late AnimationController _animationController;


  
  @override
  void initState() {
    _animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 900),
    );
    super.initState();
  }

    Widget _buildIngredientsWidget(){
      List<Widget> elements = [];
      if(_animationList.isNotEmpty){
        // for(int i = 0; i <_listaIngredientes.;i++){
        //   Ingredient ingredient = _listaIngredientes[i];
        //   for (var i = 0; i < count; i++) {
            
        //   }
        // }
      }
      return SizedBox.fromSize();
    }

  void _buildIngredientsAnimation(){
    _animationList.clear();
    _animationList.add(CurvedAnimation(
      curve: Interval(0, 0.8, curve: Curves.decelerate),
      parent: _animationController,
      ));
    _animationList.add(CurvedAnimation(
      curve: Interval(0.2, 0.8, curve: Curves.decelerate),
      parent: _animationController,
      ));
    _animationList.add(CurvedAnimation(
      curve: Interval(0.4, 1.0, curve: Curves.decelerate),
      parent: _animationController,
      ));
    _animationList.add(CurvedAnimation(
      curve: Interval(0.1, 0.7, curve: Curves.decelerate),
      parent: _animationController,
      ));
    _animationList.add(CurvedAnimation(
      curve: Interval(0.3, 1.0, curve: Curves.decelerate),
      parent: _animationController,
      ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Monte sua pizza"),
        ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.shopping_cart_rounded,),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.only(top:5.0,left: 5.0,right: 5.0,bottom: 45),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 20,
          child: Stack(
            children: [
              Expanded(flex:4,child: _detalhesPizza(),),
              Expanded(flex:1,child:  total()),
              Expanded(flex:1,child: _listaIngredientes(),),
              Expanded(flex:1,child: SizedBox()),

              _buildIngredientsWidget(),
            
            ],
          ),
        ),
      ),
    );
  }
  _listaIngredientes(){
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ingredients.length,
        itemBuilder: (context,index){
        
        final ingrediente = ingredients[index];
        return  _pizzaIngredienteCard(ingrediente);
      },),
    );
  }
  _pizzaIngredienteCard(Ingredient ingrediente){
    final child = SizedBox(
      width: 75,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
        ),
        color: Color.fromARGB(255, 255, 195, 191),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(ingrediente.image),
        ),
      ));
    return Draggable(
      data: ingrediente,
      feedback: SizedBox(width:70,height: 70,child: child),
      child: child,
      );
  }
  _detalhesPizza(){

    return Column(
      children: [
        SizedBox(height: 5,),
        Expanded(
          child: DragTarget<Ingredient>(
            onAccept: (ingredient) {
          
               setState(() {
                  pizzaStore.focused = true;
                  pizzaStore.listaIngrendientes.add(ingredient);
                  pizzaStore.total += 2;
                });
            },
            onWillAccept: (ingredient){
              // for (Ingredient i in _listaIngrendientes) {
              

              // if(i.compare(ingredient!)){
              //     return false;
              //   }
              // }
     
               setState(() {
                  pizzaStore.focused = false;
                  
              });

              return true;           
            },
            onLeave: (ingredient){
               setState(() {
                  pizzaStore.focused = true;
                });
            },
            builder: (context,list,rejects){
              return LayoutBuilder(builder: (context,constraints){
                return Center(
                  child: AnimatedContainer(
                    height: pizzaStore.focused ? constraints.maxHeight : constraints.maxHeight - 35,
                    duration: const Duration(milliseconds: 400),
                    child: Stack(
                      children: [
                        Image.asset(ImagensConstantes.BASE_PIZZA),
                        GestureDetector(
                          onTap: (){
                            pizzaEscolhida++;
                            if(pizzaEscolhida >= 10 ){
                              pizzaEscolhida = 0;
                            }
                            setState(() {});
                            
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Image.asset("${ImagensConstantes.PIZZA}${pizzaEscolhida.toString()}.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              );
            }
          ),
        ),
        SizedBox(height: 5,),
       
      ],
    );
  }

  total(){
    return Text(
      '\$${pizzaStore.total}',
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.brown
      ),
    );
  }
}
