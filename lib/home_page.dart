import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';





class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isON = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlashLight App", style:TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Image.network('https://cdn.pixabay.com/photo/2018/10/24/16/23/flashlight-3770623_640.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          ),
          Center(
            child: Transform.rotate(
              angle: -3.15/2,
              child: Transform.scale(
                scale: 2,
                child: Switch(value: isON, onChanged: (value){
                  setState(() {
                    isON = !isON;
                   isON ? TorchLight.enableTorch() : TorchLight.disableTorch();
                  });
                          
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
