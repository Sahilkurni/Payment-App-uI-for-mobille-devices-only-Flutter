import 'package:flutter/material.dart';

class ViewAllScreen extends StatefulWidget {
  const ViewAllScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return ViewAllScreenstate();
  }
}

class ViewAllScreenstate extends State<ViewAllScreen> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.webp"),
              backgroundColor: Colors.amber,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sahil",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Kurni",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Balance",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "\$ 24,562.00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.black),
            color: Colors.grey[300]),
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  // for send money
                  top: 15,
                  bottom: 15,
                  right: 15,
                  left: 15,
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                        ),
                        const Text(
                          "Tap To Send Money",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.black)),
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                    top: 15,
                    bottom: 15,
                    right: 15,
                    left: 15,
                    child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
                              child: Text("Recent Transfers",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar1.jpg"),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar1.jpg"),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar1.jpg"),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar1.jpg"),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar1.jpg"),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar1.jpg"),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar1.jpg"),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar1.jpg"),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar1.jpg"),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ))),
                Container(
                  height: 150,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.black))
                )
              ],
            ),
            const SizedBox(
              height: 40,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Transfer",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("See All >",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.black)),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/dummy_img.jpg"),
                          backgroundColor: Colors.orange,
                        ),
                        title: const Text(
                          "Mac Dinner",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "CashOut",
                          style: TextStyle(color: Colors.red),
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              "-\$120.02",
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            ),
                            Text(
                                "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/dummy_img.jpg"),
                          backgroundColor: Colors.orange,
                        ),
                        title: const Text(
                          "Alex Maculam",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Send Money",
                          style: TextStyle(color: Colors.blue),
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              "-\$666",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                            Text(
                                "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/dummy_img.jpg"),
                          backgroundColor: Colors.orange,
                        ),
                        title: const Text(
                          "Brandom King",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Recived Money",
                          style: TextStyle(color: Colors.green),
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              "+\$250.0",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.green),
                            ),
                            Text(
                                "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/dummy_img.jpg"),
                          backgroundColor: Colors.orange,
                        ),
                        title: const Text(
                          "Julia Meri",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Cashout",
                          style: TextStyle(color: Colors.red),
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              "-\$20",
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            ),
                            Text(
                                "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/dummy_img.jpg"),
                          backgroundColor: Colors.orange,
                        ),
                        title: const Text(
                          "Alex Maculam",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Send Money",
                          style: TextStyle(color: Colors.blue),
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              "-\$666",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                            Text(
                                "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/dummy_img.jpg"),
                          backgroundColor: Colors.orange,
                        ),
                        title: const Text(
                          "Brandom King",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Recived Money",
                          style: TextStyle(color: Colors.green),
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              "+\$250.0",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.green),
                            ),
                            Text(
                                "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/dummy_img.jpg"),
                          backgroundColor: Colors.orange,
                        ),
                        title: const Text(
                          "Julia Meri",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Cashout",
                          style: TextStyle(color: Colors.red),
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              "-\$20",
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            ),
                            Text(
                                "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/dummy_img.jpg"),
                          backgroundColor: Colors.orange,
                        ),
                        title: const Text(
                          "Alex Maculam",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Send Money",
                          style: TextStyle(color: Colors.blue),
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              "-\$666",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                            Text(
                                "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/dummy_img.jpg"),
                          backgroundColor: Colors.orange,
                        ),
                        title: const Text(
                          "Brandom King",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Recived Money",
                          style: TextStyle(color: Colors.green),
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              "+\$250.0",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.green),
                            ),
                            Text(
                                "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/dummy_img.jpg"),
                          backgroundColor: Colors.orange,
                        ),
                        title: const Text(
                          "Julia Meri",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          "Cashout",
                          style: TextStyle(color: Colors.red),
                        ),
                        trailing: Column(
                          children: [
                            const Text(
                              "-\$20",
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            ),
                            Text(
                                "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
