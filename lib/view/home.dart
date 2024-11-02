import 'package:dimla_express/utills/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> get fromCity => ['Dimla', 'Jaldhaka', 'Kishorganj', 'Dhaka'];
  String? selectedToCity;
  String? selectedFromCity;

  List<String> get toCity => [
        'Dhaka',
        'Dimla',
        'Jaldhaka',
        'Kishorganj',
      ];
  TextEditingController dateOfJourney = TextEditingController();

  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 15),
                SizedBox(
                    height: 200,
                    width: Get.width,
                    child: Image.asset(
                      "assets/images/bustand.jpg",
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/from.png',
                            height: 40,
                          ),
                          for (var i = 0; i < 5; i++)
                            const Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                            ),
                          Image.asset(
                            'assets/images/to.png',
                            height: 40,
                          ),
                          for (var i = 0; i < 5; i++)
                            const Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                            ),
                          Image.asset(
                            'assets/images/data.png',
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "From",
                              style: TextStyle(
                                  fontSize: 20, color: AppColors.primaryColor),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 50,
                                width: Get.width,
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,

                                    isDense: true,
                                    contentPadding: const EdgeInsets.all(10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    //Add more decoration as you want here
                                    //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                                  ),
                                  isExpanded: true,
                                  hint: const Text(
                                    'Select Your City',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  items: fromCity
                                      .map((items) => DropdownMenuItem<String>(
                                            value: items,
                                            child: Text(
                                              items,
                                              style: const TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                  validator: (value) {
                                    if (value == null)
                                      return 'Please select city';
                                    return null;
                                  },
                                  value: selectedFromCity,
                                  onChanged: (fromValue) {
                                    selectedFromCity = fromValue.toString();
                                  },
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text("TO :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.primaryColor)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  isDense: true,
                                  contentPadding: const EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                isExpanded: true,
                                hint: const Text(
                                  'Select Your City',
                                  style: TextStyle(fontSize: 14),
                                ),
                                value: selectedToCity,
                                onChanged: (toValue) {
                                  setState(() {
                                    selectedToCity = toValue.toString();
                                  });
                                },
                                items: toCity
                                    .map((items) => DropdownMenuItem<String>(
                                          value: items,
                                          child: Text(
                                            items,
                                            style: const TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                validator: (value) {
                                  if (value == null) {
                                    return 'Please select city';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text("Date :",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.primaryColor)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                
                                readOnly: true,
                                controller: dateOfJourney,
                                decoration: InputDecoration(
                                  suffixIcon: const Icon(Icons.arrow_drop_down_rounded),
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    hintText: 'Pick your Date'),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please select Date';
                                  }
                                  return null;
                                },
                                onTap: () async {
                                  DateFormat('dd/mm/yyyy')
                                      .format(DateTime.now());
                                  var date = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime(2100));
                                  dateOfJourney.text =
                                      date.toString().substring(0, 10);
                                },
                              ),
                            ),

                          ]),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  height: 50,
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(15))),
                    child: const Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
