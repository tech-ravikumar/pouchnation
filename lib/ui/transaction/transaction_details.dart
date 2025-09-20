import 'package:flutter/material.dart';

import '../../widget/app_bar.dart';

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({super.key});

  @override
  State<TransactionDetails> createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Transaction",
        hasLeading: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            const Text("#1",style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20
            ),),
            const SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12)
              ),
              child: const Text("Topup Credits",style: TextStyle(
                color: Colors.white
              ),),
            ),
            const SizedBox(height: 10,),
            const Text("August 12 at 03:42:36 PM",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),),
            const SizedBox(height: 30,),
            Text("GUEST",style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              color: Colors.black.withOpacity(0.6)
            ),),
            const SizedBox(height: 5,),
            const Text("Rajan Bajaj",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),),
            const SizedBox(height: 3,),
            Text("0422 8BC2 0C57 81",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              color: Colors.black.withOpacity(0.6)
            ),),
            const SizedBox(height: 30,),
             Text("History",style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                 color: Colors.black.withOpacity(0.6)
            ),),
            const SizedBox(height: 5,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Rajan Bajaj",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
                const Text("Topup Credits",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
              ],
            ),
            const SizedBox(height: 3,),
            Text("0422 8BC2 0C57 81",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.black.withOpacity(0.6)
            ),),
            const SizedBox(height: 10,),
            Text("August 12,2024",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.black.withOpacity(0.6)
            ),),
            Text("03:42:36 PM",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.black.withOpacity(0.6)
            ),),
            const SizedBox(height: 30,),
            const Text("Summary",style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18
            ),),
            const SizedBox(height: 5,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Topup Credits",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
                const Text("\$ 22.00",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                ),),
              ],
            ),
            Text("Credit / Debit Card",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Colors.black.withOpacity(0.6)
            ),),
            const SizedBox(height: 5,),
            Divider(color: Colors.black.withOpacity(0.4),thickness: 0.7,),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Previous Balance",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  color: Colors.black.withOpacity(0.6)
                ),),
                const Text("\$ 202.00",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13
                ),),
              ],
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Credits",style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.6)
                ),),
                Text("\$ 202.00",style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.6)
                ),),
              ],
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Free Credits",style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.6)
                ),),
                Text("\$ 0.00",style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.6)
                ),),
              ],
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Postpaid Credits Used",style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.6)
                ),),
                Text("\$ 0.00",style: TextStyle(
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.6)
                ),),
              ],
            ),
            const SizedBox(height: 5,),
            Divider(color: Colors.black.withOpacity(0.4),thickness: 0.7,),
            const SizedBox(height: 5,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Paid",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black
                ),),
                 Text("\$ 22.00",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15
                ),),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Card No",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
                Text("531020******0443",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
              ],
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("GHL Invoice No",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
                Text("430543",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
              ],
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Card Approval Code",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
                Text("101675",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
              ],
            ),
            const SizedBox(height: 5,),
            Divider(color: Colors.black.withOpacity(0.4),thickness: 0.7,),
            const SizedBox(height: 5,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Guest's New Balance",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black
                ),),
                Text("\$ 224.00",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15
                ),),
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Credits",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
                Text("\$ 224.00",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
              ],
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Free Credits",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
                Text("\$ 0.00",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
              ],
            ),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Postpaid Credits Used",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
                Text("\$ 0.00",style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6)
                ),),
              ],
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
