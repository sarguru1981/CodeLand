import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../theme/AppStyle.dart';
import '../widget/custom_button.dart';

class ImagePickerScreen extends StatefulWidget {
  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  XFile? _image;
  XFile? image;

  Future<void> _uploadImage(BuildContext context) async {
    final picker = ImagePicker();
    image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Image Uploaded!'),

          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Upload a Image",
                style: AppTextStyles.titleText.copyWith(color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 32, right: 32),
                child: DottedBorder(
                  dashPattern: [8, 4],
                  color: Colors.black,
                  strokeWidth: 1,
                  child: Container(
                    height: 500,
                    child: Center(
                      child: _image != null
                          ? Image.file(File(_image!.path))
                          : Image.asset('assets/images/upload_image.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 74.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: ButtonWidget(
                            textValue: "Upload",
                            width: 119,
                            height: 35,
                            backgroundColor: const Color(0xFFF68326),
                            textColor: Colors.white,
                            textStyle: AppTextStyles.imageButtonText,
                            shadowHeight: 0.04,
                            onPressed: () {
                              _uploadImage(context);
                            },
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 32),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: ButtonWidget(
                            textValue: "View",
                            width: 119,
                            height: 35,
                            backgroundColor: const Color(0xFFD3D3D6),
                            textColor: Colors.black,
                            textStyle: AppTextStyles.imageButtonText,
                            shadowHeight: 0.04,
                            onPressed: () {
                              setState(() {
                                _image = image;
                              });
                            },
                          ),
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
    );
  }
}
