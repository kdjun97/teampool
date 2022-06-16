import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  late TextEditingController emailController = TextEditingController(); // Email
  late TextEditingController pwdController = TextEditingController(); // Password
  late TextEditingController pwdConfirmController = TextEditingController(); // Password Confirm (Double Check)

}