import 'package:flutter/material.dart';
import 'package:unit_convertor/CategoryActivity.dart';
import 'package:unit_convertor/category.dart';

class ConverterController extends StatefulWidget {
  String title;
  Category category;
  String convertFrom, convertTo;
  List<String> conversionOptions = [];

  ConverterController(this.title, this.category) {
    conversionOptions = category.conversionOptions;
    convertFrom = conversionOptions[0];
    convertTo = conversionOptions[0];
  }

  @override
  _ConverterControllerState createState() => _ConverterControllerState();
}

class _ConverterControllerState extends State<ConverterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CategoryActivity.backgroundColor,
      appBar: AppBar(
        backgroundColor: CategoryActivity.backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "JetConverter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Card(
                color: CategoryActivity.highlightColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            widget.convertFrom,
                            style: TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                          DropdownButton(
                            underline: SizedBox(),
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                            value: widget.convertFrom,
                            items: widget.conversionOptions
                                .map<DropdownMenuItem<String>>(
                                    (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                            onChanged: (String newValue) {
                              setState(() {
                                widget.convertFrom = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter a value",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CircleAvatar(
              backgroundColor: CategoryActivity.highlightColor,
              child: IconButton(
                icon: Icon(
                  Icons.autorenew,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Card(
                color: CategoryActivity.highlightColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            widget.convertTo,
                            style: TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                          DropdownButton(
                            underline: SizedBox(),
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                            value: widget.convertTo,
                            items: widget.conversionOptions
                                .map<DropdownMenuItem<String>>(
                                    (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(color: Colors.white),
                                ),
                              );
                            }).toList(),
                            onChanged: (String newValue) {
                              setState(() {
                                widget.convertTo = newValue;
                              });
                            },
                          ),
                        ],
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter a value",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Image(image: AssetImage("images/clouds.png"), fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}
