import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../helpers/colors.dart';
import '../../widget/clickable_widgets/button.dart';
import '../../widget/input_widgets/textformfield.dart';
import '../main_screens/profile_screen.dart';
import '../main_screens/tabs_screen.dart';

class EditPersonalInfo extends StatefulWidget {
  const EditPersonalInfo({super.key});

  @override
  State<EditPersonalInfo> createState() => _EditPersonalInfoState();
}

class _EditPersonalInfoState extends State<EditPersonalInfo> {
   TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
       backgroundColor: Colors.white,
     body: SingleChildScrollView(
      
        child: Column(
          children: [
       AppBar(
        leading:  Padding(
         padding: const EdgeInsets.only(left: 10,right: 10,top: 25),
         child: InkWell(
           child: Image.asset(
                    'assets/icons/back.png',
                    // width: 100,
                    // height: 150,
                    fit: BoxFit.fill,),
                    onTap: () {
                        Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const TabsScreen()),
                            );
                    },
         ),
       ),
      
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text( AppLocalizations.of(context)!.account1,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18
          ),),
        ),
        centerTitle: true,
       
      ),
      
      
            Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                            Divider(
              height: 1.5,
              color: mainColorText.withOpacity(0.2),
            ),
               const SizedBox(
              height: 10,
            ),
                          TextFieldWidget(
                            readOnlyy:true,
                            label: AppLocalizations.of(context)!.name1,
                            controller: emailController,
                            keyboardType:TextInputType.name,
                            hintText: AppLocalizations.of(context)!.reviews1,
                            validator: (String? value) {
                              return null;
                            
                              // if (value!.isEmpty) {
                              //   return AppLocalizations.of(context)!.email3;
                              // }
                            },
                            ispassword: false,
                          ),
                        
                          TextFieldWidget(
                            readOnlyy:true,
                            label: AppLocalizations.of(context)!.phone1,
                            controller: emailController,
                            keyboardType:TextInputType.phone,
                            hintText: '92111111',
                            validator: (String? value) {
                              return null;
                            
                              // if (value==9) {
                              //   return AppLocalizations.of(context)!.email3;
                              // }
                            },
                            ispassword: false,
                          ),
                        
                          TextFieldWidget(
                            readOnlyy:true,
                            label: AppLocalizations.of(context)!.email1,
                            controller: emailController,
                            keyboardType:TextInputType.emailAddress,
                            hintText: 'exmple@gmail.com',
                            validator: (String? value) {
                              return null;
                            
                              // if (value!.isEmpty) {
                              //   return AppLocalizations.of(context)!.email3;
                              // }
                              // if (!value.contains('@') || !value.contains('.com')) {
                              //   return AppLocalizations.of(context)!.email4;
                              // }
                              // return null;
                            },
                            ispassword: false,
                          ),
                        
                          TextFieldWidget(
                            readOnlyy:true,
                            label: AppLocalizations.of(context)!.pass1,
                            hintText: '********',
                            controller: passwordController,
                            keyboardType:TextInputType.visiblePassword,
                            validator: (String? value) {
                              return null;
                            
                              // if (value!.isEmpty) {
                              //   return AppLocalizations.of(context)!.pass3;
                              // }
                              // if (value.length < 8) {
                              //   return AppLocalizations.of(context)!.pass4;
                              // }
                              // return null;
                            },
                             ispassword: false,
                                
                          ),
                         
                    
                          
                          const SizedBox(
                            height: 15.0,
                          ),
              
                          Row(
                            children: [
                              const Icon(Icons.edit),
                              const SizedBox(
                            width: 5,
                          ),
                               Text(
                                  AppLocalizations.of(context)!.forgot3,
                                  // textAlign: TextAlign.end,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              
                            ],
                          ),
              
                          const SizedBox(
                            height: 15,
                          ),
              
                         
                          GestureDetector(
                            onTap: () {
                            
                              
                               Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => const EditPersonalInfo01()),);
                              
                             
                                
                            },
                            child:  ButtonScreen(
                              isbackround: true,
                              title: AppLocalizations.of(context)!.butt3,
                              widthh: 560,
                              heightt: 50,
                              paddingg: 13,
                            ),
                          ),
              
                          const SizedBox(
                            height: 10,
                          ),
              
                         
                        ],
                      ),
                    ),
          ],
        ),
      ),
           
    );
  }
}

class EditPersonalInfo01 extends StatefulWidget {
  const EditPersonalInfo01({super.key});

  @override
  State<EditPersonalInfo01> createState() => _EditPersonalInfo01State();
}

class _EditPersonalInfo01State extends State<EditPersonalInfo01> {
   TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
       backgroundColor: Colors.white,
     body: SingleChildScrollView(
      
        child: Column(
          children: [
       AppBar(
        leading:  Padding(
         padding: const EdgeInsets.only(left: 10,right: 10,top: 25),
         child: InkWell(
           child: Image.asset(
                    'assets/icons/back.png',
                    // width: 100,
                    // height: 150,
                    fit: BoxFit.fill,),
                    onTap: () {
                        Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => const ProfileScreen()),
                            );
                    },
         ),
       ),
      
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text( AppLocalizations.of(context)!.account1,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18
          ),),
        ),
        centerTitle: true,
     
      ),
      
      
            Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                            Divider(
              height: 1.5,
              color: mainColorText.withOpacity(0.2),
            ),
               const SizedBox(
              height: 10,
            ),
                          TextFieldWidget(
                            label: AppLocalizations.of(context)!.name1,
                            controller: nameController,
                            keyboardType:TextInputType.name,
                            hintText: AppLocalizations.of(context)!.reviews1,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return AppLocalizations.of(context)!.name2;
                              }
                              return null;
                            },
                            ispassword: false,
                          ),
                        
                          TextFieldWidget(
                          
                            label: AppLocalizations.of(context)!.phone1,
                            controller: phoneController,
                            keyboardType:TextInputType.phone,
                            hintText: '92111111',
                            validator: (String? value) {
                              // ignore: unrelated_type_equality_checks
                              if (value!=9) {
                                return AppLocalizations.of(context)!.phone2;
                              }
                              return null;
                            },
                            ispassword: false,
                          ),
                        
                          TextFieldWidget(
                            // readOnlyy:true,
                            label: AppLocalizations.of(context)!.email1,
                            controller: emailController,
                            keyboardType:TextInputType.emailAddress,
                            hintText: 'exmple@gmail.com',
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return AppLocalizations.of(context)!.email3;
                              }
                              if (!value.contains('@') || !value.contains('.com')) {
                                return AppLocalizations.of(context)!.email4;
                              }
                              return null;
                              // return null;
                            },
                            ispassword: false,
                          ),
                        
                          TextFieldWidget(
                            // readOnlyy:true,
                            label: AppLocalizations.of(context)!.pass1,
                            hintText: '********',
                            controller: passwordController,
                            keyboardType:TextInputType.visiblePassword,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return AppLocalizations.of(context)!.pass3;
                              }
                              if (value.length < 8) {
                                return AppLocalizations.of(context)!.pass4;
                              }
                              return null;
                              // return null;
                            },
                             ispassword: false,
                                
                          ),
                         
                    
                          
                          const SizedBox(
                            height: 15.0,
                          ),
              
                          Row(
                            children: [
                              const Icon(Icons.edit),
                              const SizedBox(
                            width: 5,
                          ),
                               Text(
                                  AppLocalizations.of(context)!.forgot3,
                                  // textAlign: TextAlign.end,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              
                            ],
                          ),
              
                          const SizedBox(
                            height: 15,
                          ),
              
                         
                          GestureDetector(
                            onTap: () {
                            
                              
                               Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => const EditPersonalInfo()),);
                              
                             
                                
                            },
                            child:  ButtonScreen(
                              isbackround: true,
                              title: AppLocalizations.of(context)!.butt4,
                              widthh: 560,
                              heightt: 50,
                              paddingg: 13,
                            ),
                          ),
              
                          const SizedBox(
                            height: 10,
                          ),
              
                         
                        ],
                      ),
                    ),
          ],
        ),
      ),
           
    );
  }
}