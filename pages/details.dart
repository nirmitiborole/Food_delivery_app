import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "images/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Veggie Taco Hash",
                      style: AppWidget.semiBoldTextFeildStyle(),
                    ),
                    Text(
                      "Fresh and Healthy",
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "1",
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "A flavorful and versatile dish that combines diced potatoes, bell peppers, onions, zucchini, and corn, sautéed until tender. Black beans or pinto beans are added for protein, along with taco seasoning to bring in the classic taco flavors. It’s a hearty, customizable meal that can be enjoyed for breakfast, lunch, or dinner.",
              style: AppWidget.LightTextFeildStyle(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "30 min",
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: AppWidget.semiBoldTextFeildStyle(),
                      ),
                      Text(
                        "\₹199",
                        style: AppWidget.HeadlineTextFeildStyle(),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Add to cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(width: 30,),
                        Container(

                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Icon(Icons.shopping_cart_outlined,
                              color: Colors.white),
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
