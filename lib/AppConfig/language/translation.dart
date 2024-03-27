import 'package:wavemall/AppConfig/language/languages/ku_Ku.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../main.dart';
import 'language_selection.dart';
import 'languages/ar.dart';
import 'languages/en_US.dart';

///......
//**:: ADD/REMOVE LANGUAGE
//.....

class LanguageController extends GetxController implements Translations {
  var appLocale;

  var langName = "".obs;

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'ar': ar,
        'fa': ku_KU,
        //......
        //**:: ADD/REMOVE LANGUAGE
        //.....
      };

  Future changeLanguage() async {
    if (language == 'en_US') {
      LanguageSelection.instance.val = 'en_US';
      LanguageSelection.instance.drop = 'en_US';
      LanguageSelection.instance.langName = 'English';
      appLocale = 'en_US';
    } else if (language == 'ar') {
      LanguageSelection.instance.val = 'ar';
      LanguageSelection.instance.drop = 'ar';
      LanguageSelection.instance.langName = 'عربى';
      appLocale = 'ar';
    } else if (language == 'fa') {
      LanguageSelection.instance.val = 'fa';
      LanguageSelection.instance.drop = 'fa';
      LanguageSelection.instance.langName = 'كوردی';
      appLocale = 'fa';
    }
    //......
    //**:: ADD/REMOVE LANGUAGE
    //.....
    else {
      appLocale = Get.deviceLocale?.languageCode;
      langValue = true;
    }
    langName.value = LanguageSelection.instance.langName;
  }

  @override
  void onInit() async {
    super.onInit();
    await changeLanguage();
    Get.updateLocale(Locale(appLocale));
    update();
  }
}

class LanguageModel {
  final String languageText;
  final String languageValue;

  LanguageModel({required this.languageText, required this.languageValue});
}

final List<LanguageModel> languages = [
  LanguageModel(
    languageText: 'English',
    languageValue: 'en_US',
  ),
  LanguageModel(
    languageText: 'عربى',
    languageValue: 'ar',
  ),
  LanguageModel(
    languageText: 'كوردی',
    languageValue: 'fa',
  ),
  //......
  //**:: ADD/REMOVE LANGUAGE
  //.....
];
