

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:teamhup/componant/colorsapp.dart';
import 'package:teamhup/componant/showModalBottomSheet.dart';

class FaceId extends StatefulWidget {
  @override
  _FaceIdState createState() => _FaceIdState();
}

class _FaceIdState extends State<FaceId> {
  CameraDescription? _camera; // متغير لتخزين الكاميرا الأمامية

  @override
  void initState() {
    super.initState();
    _loadCamera();
  }

  // وظيفة لتحميل الكاميرات المتاحة واختيار الكاميرا الأمامية
  Future<void> _loadCamera() async {
    try {
      final cameras = await availableCameras();
      // اختيار الكاميرا الأمامية
      final frontCamera = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.front,
        orElse: () => cameras.first, // إذا لم توجد كاميرا أمامية، اختر أول كاميرا
      );
      setState(() {
        _camera = frontCamera;
      });
    } catch (e) {
      print('خطأ في تحميل الكاميرات: $e');
    }
  }
  
  ColorsApp colorsApp = new ColorsApp();
  ShowModalBottomSheet showBottomSheet = new ShowModalBottomSheet();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الكاميرا')),
      body: _camera == null
          ? Center(child: CircularProgressIndicator()) // تحميل أثناء انتظار الكاميرا
          : Column(
              children: [
                Expanded(
                  child: CameraView(camera: _camera!), // عرض الكاميرا
                ),
              ],
            ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 30),
        height: 200, width: double.infinity, color:colorsApp.colorwhiteapp.withOpacity(0.0) ,
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height: 70,  
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colorsApp.colorgreyapp.withOpacity(0.7),
              borderRadius:BorderRadius.circular(15), 

            ),
            child: Text(
              textAlign: TextAlign.center,
              "Click this button to start, and ensure your camera is set up and ready",style: TextStyle(fontSize: 13,color: colorsApp.colorwhiteapp),),
          ),
          // Container(
          //   alignment: Alignment.center,
          //   height: 20,  
          //   width: 40,
          //   decoration: BoxDecoration(
          //     color: colorsApp.colorgreyapp.withOpacity(0.7),
          //     borderRadius:BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)), 

          //   ),),
            SizedBox(height:20,),
          MaterialButton(onPressed: (){
            showBottomSheet.bottomSheetCheckIn(context);
          },
            child: Container(
              height: 100, 
                width: 100, 
                decoration: BoxDecoration(
                  border: Border.all(color: colorsApp.colorwhiteapp ,width: 3),
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: EdgeInsets.all(5),
              child: Container(
                height: 100, 
                width: 100, 
                decoration: BoxDecoration(
                  color: colorsApp.colorwhiteapp,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          )
        ],),
        
        ),
    );
  }
}

class CameraView extends StatefulWidget {
  final CameraDescription camera;

  const CameraView({Key? key, required this.camera}) : super(key: key);

  @override
  _CameraViewState createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  late CameraController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera, ResolutionPreset.medium);
    _controller.initialize().then((_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Center(child: CircularProgressIndicator());
    }
    return CameraPreview(_controller);
  }
}
