import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:pouchvenue/ui/transaction/all_transaction.dart';
import 'package:pouchvenue/widget/app_bar.dart';
import '../../utils/constants.dart';
import '../transaction/transaction_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      appBar: const CustomAppBar(title: "Guest Details",),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 270,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("TEST PROFILE",style: TextStyle(
                    color: K.primaryBG,
                    fontWeight: FontWeight.w600,
                    fontSize: 13
                  ),),
                  const SizedBox(
                    height: 5,
                  ),
                  const AutoSizeText(
                   "Rajan Bajaj",
                   maxLines: 1,
                   style: TextStyle(
                     color: K.fieldBackgroundColor,
                     fontWeight: FontWeight.w600,
                     fontSize: 25
                 ),),
                  const SizedBox(
                    height: 10
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("044A",style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                            ),),
                            const SizedBox(
                              width: 7,
                            ),
                            const  Text("9FC2",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                            ),),
                            const SizedBox(
                              width: 7,
                            ),
                            const Text("0C57",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                            ),),
                            const  SizedBox(
                              width: 7,
                            ),
                            const Text("80",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                            ),),
                            const SizedBox(
                              width: 7,
                            ),
                            Text("1st use",style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                              fontWeight: FontWeight.w600,
                                fontSize: 12
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("TEST REMAINING BALANCE",style: TextStyle(
                      color: K.primaryBG,
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                  ),),
                  const SizedBox(
                    height: 5,
                  ),
                  const AutoSizeText(
                    "€ 3,700.00",
                    maxLines: 1,
                    style: TextStyle(
                        color: K.secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 30
                    ),),
                  const  Text("View Balance Summary",style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Recent Transactions",style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AllTransactions()));
                        },
                        child: const Text("View All",style: TextStyle(
                            color: K.secondaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    itemCount: 10,
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TransactionDetails()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        margin: const EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1
                            )
                          ],
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Row(
                          children: [
                            Icon(PhosphorIcons.cloud,color: K.secondaryColor,),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Topup",style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12
                                  ),),
                                  Text("#280496",style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12
                                  ),),
                                  Text("Cash",style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13
                                  ),),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("2d ago",style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12
                                ),),
                                Text("+ €100.00",style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                ),),
                                Text("Debug Mode",style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
