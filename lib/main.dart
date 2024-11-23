import 'package:flutter/material.dart';
import 'package:ui_task1_mobile/view_all_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<StatefulWidget> createState() {
    return homepagestate();
  }
}

class homepagestate extends State<homepage> {
  var myindex = 0;
  var time = DateTime.now();
  var amount = "\$ 24,562.00";

  int _selectedIndex = 0;

  // Method to handle taps on bottom navigation icons
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool visibl = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.webp"),
              // backgroundColor: Colors.amber,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Sahil",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_add_outlined,
                  size: 30,
                  color: Colors.blue,
                ))
          ],
        ),
      ),
      // BottomAppBar acts as the container for the bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        // Adds a notch to the BottomAppBar for the floating action button
        shape: const CircularNotchedRectangle(),

        // Margin around the notch to provide spacing between the button and bar
        notchMargin: 8.0,

        child: Row(
          // Space out items evenly across the BottomAppBar
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Home icon button, highlighted when selected
            IconButton(
              icon: const Icon(
                Icons.home,
                size: 35,
              ),
              // Change color based on the selected index
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
              onPressed: () => _onItemTapped(0), // Set selected index to 0
            ),

            // Spacer to move the Person icon to the right side of the BottomAppBar
            const Spacer(),

            // Person icon button, highlighted when selected
            IconButton(
              icon: const Icon(
                Icons.person,
                size: 35,
              ),
              // Change color based on the selected index
              color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
              onPressed: () => _onItemTapped(1), // Set selected index to 1
            ),
          ],
        ),
      ),

      // Floating action button in the center of the BottomAppBar
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Action when the floating action button is pressed
        backgroundColor: Colors.blue, // Background color of the button
        child: const Icon(Icons.qr_code_scanner), // Icon for the button
      ),

      // Places the floating action button in the center and docked to the bottom
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.black),
            color: Colors.grey[200]),
        child: Column(
          children: [
            SizedBox(
              // for your wallet balance
              height: 200,
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(86, 97, 241, 10),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.account_balance_wallet_outlined,
                                size: 30,
                                color: Color.fromARGB(223, 255, 255, 255),
                              ),
                              Text(
                                "Your Wallet Balance",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(223, 255, 255, 255)),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    amount,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 40),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (visibl == true) {
                                          amount = "**********";
                                          visibl = false;
                                        } else {
                                          amount = "\$ 24,562.00";
                                          visibl = true;
                                        }
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.visibility_off_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.qr_code_scanner_outlined,
                                size: 30,
                                color: Colors.white,
                              )
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.attach_money_outlined,
                                      size: 30,
                                      color: Color.fromRGBO(86, 97, 241, 10),
                                    ),
                                  ),
                                  Text(
                                    "Balance",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.arrow_upward_outlined,
                                      size: 30,
                                      color: Color.fromRGBO(86, 97, 241, 10),
                                    ),
                                  ),
                                  Text(
                                    "Send",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.help_outline_outlined,
                                      size: 30,
                                      color: Color.fromRGBO(86, 97, 241, 10),
                                    ),
                                  ),
                                  Text(
                                    "Request",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.swap_vert_outlined,
                                      size: 30,
                                      color: Color.fromRGBO(86, 97, 241, 10),
                                    ),
                                  ),
                                  Text(
                                    "Transfer",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.history,
                                      size: 30,
                                      color: Color.fromRGBO(86, 97, 241, 10),
                                    ),
                                  ),
                                  Text(
                                    "History",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )),
              ),
            ),
            SizedBox(
              height: 225, // Set height for the container
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 10,
                      // Set shrinkWrap to true so GridView only takes as much space as needed
                      shrinkWrap: true,
                      // Disable scrolling if GridView is within a scrollable parent
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 175, 212, 241),
                              child: Icon(Icons.receipt,
                                  size: 30, color: Colors.blue),
                            ),
                            Text(
                              "Create Invoice",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 175, 212, 241),
                              child: Icon(Icons.payment,
                                  size: 30, color: Colors.blue),
                            ),
                            Text(
                              "Pay Bills",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 175, 212, 241),
                              child: Icon(Icons.account_balance,
                                  size: 30, color: Colors.blue),
                            ),
                            Text(
                              "Bank Transfer",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 175, 212, 241),
                              child: Icon(Icons.access_time,
                                  size: 30, color: Colors.blue),
                            ),
                            Text(
                              "Savings",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 175, 212, 241),
                              child: Icon(Icons.lightbulb_outlined,
                                  size: 30, color: Colors.blue),
                            ),
                            Text(
                              "Electricity",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 175, 212, 241),
                              child: Icon(Icons.movie,
                                  size: 30, color: Colors.blue),
                            ),
                            Text(
                              "Movie",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 175, 212, 241),
                              child: Icon(Icons.account_balance_wallet,
                                  size: 30, color: Colors.blue),
                            ),
                            Text(
                              "Add Money",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 175, 212, 241),
                              child: Icon(Icons.share,
                                  size: 30, color: Colors.blue),
                            ),
                            Text(
                              "Share",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        // Add additional grid items here...
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                // for recent activity
                child: Container(
              // decoration:
              //     BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                    child: SizedBox(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recent Activity",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              InkWell(
                                  child: const Text(
                                    "View All",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onTap: () {
                                    print("tapped");

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ViewAllScreen()));
                                  }),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 10,
                                color: Colors.blue,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 15.0, 15.0, 15.0),
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
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.red),
                                    ),
                                    Text(
                                        "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 0.0, 15.0, 15.0),
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
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.blue),
                                    ),
                                    Text(
                                        "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 0.0, 15.0, 15.0),
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
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.green),
                                    ),
                                    Text(
                                        "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 0.0, 15.0, 15.0),
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
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.red),
                                    ),
                                    Text(
                                        "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 0.0, 15.0, 15.0),
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
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.blue),
                                    ),
                                    Text(
                                        "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 0.0, 15.0, 15.0),
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
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.green),
                                    ),
                                    Text(
                                        "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 0.0, 15.0, 15.0),
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
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.red),
                                    ),
                                    Text(
                                        "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 0.0, 15.0, 15.0),
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
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.blue),
                                    ),
                                    Text(
                                        "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 0.0, 15.0, 15.0),
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
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.green),
                                    ),
                                    Text(
                                        "${time.year}-${time.month}-${time.day}  ${time.hour}:${time.minute} ")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 0.0, 15.0, 15.0),
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
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.red),
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
