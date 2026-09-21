import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/models/ProductsModel.dart';
import 'package:http/http.dart' as http;

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Future<ProductsModel> getProductsApi() async {
    final response = await http.get(
      Uri.parse('https://webhook.site/5539c6e5-93e8-422e-8d3a-87062be262b6'),
    );
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(data);
    } else {
      return // Agar error aaye toh Exception throw karna behtar rehta hai
      throw Exception('Failed to load products');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products API")),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<ProductsModel>(
              future: getProductsApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: const CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text("error:$snapshot.error"));
                }
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data?.data?.orders?.length ?? 0,
                    itemBuilder: (context, index) {
                      var currentOrder = snapshot.data?.data?.orders?[index];
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ReusableRow(
                                title: 'Status: ',
                                value: snapshot.data?.status ?? "NA",
                              ),
                              ReusableRow(
                                title: 'Timestamp : ',
                                value: snapshot.data?.timestamp ?? "NA",
                              ),
                              ReusableRow(
                                title: 'RequestId : ',
                                value: snapshot.data?.requestId ?? "NA",
                              ),
                              Row(children: [Text("Pagination",style: TextStyle(fontSize: 25,color: Colors.black),)]),
                              ReusableRow(
                                title: 'CurrentPage: ',
                                value:
                                    (snapshot.data?.pagination!.currentPage ??
                                            0)
                                        .toString(),
                              ),
                              ReusableRow(
                                title: 'PageSize: ',
                                value:
                                    (snapshot.data?.pagination!.pageSize ?? 0)
                                        .toString(),
                              ),
                              Row(children: [Text("Links",style: TextStyle(fontSize: 25,color: Colors.black),)]),
                              ReusableRow(
                                title: 'Next: ',
                                value:
                                    (snapshot.data?.pagination!.links?.next ??
                                            0)
                                        .toString(),
                              ),
                              Row(children: [Text("Data",style: TextStyle(fontSize: 25,color: Colors.black),)]),
                              Row(children: [Text("Organization",style: TextStyle(fontSize: 20,color: Colors.cyanAccent),)]),
                              ReusableRow(
                                title: 'Name: ',
                                value:
                                    (snapshot.data?.data!.organization?.name ??
                                    "NA"),
                              ),
                              ReusableRow(
                                title: 'ID: ',
                                value:
                                    (snapshot.data?.data!.organization?.id ??
                                    "NA"),
                              ),
                              ReusableRow(
                                title: 'TaxID: ',
                                value:
                                    (snapshot.data?.data!.organization?.taxId ??
                                    "NA"),
                              ),
                              Row(children: [Text("Settings",style: TextStyle(fontSize: 15,color: Colors.blue),)]),
                              ReusableRow(
                                title: 'currency: ',
                                value:
                                (snapshot.data?.data!.organization?.settings?.currency ??
                                    "NA"),
                              ),
                              ReusableRow(
                                title: 'timezone: ',
                                value:
                                (snapshot.data?.data!.organization?.settings?.timezone ??
                                    "NA"),
                              ),
                              Row(children: [Text("FeaturesEnabled",style: TextStyle(fontSize: 15,color: Colors.red),)]),
                              ReusableRow(
                                title: 'Beta_checkout: ',
                                value:
                                (snapshot.data?.data!.organization?.settings?.featuresEnabled?.contains('beta_checkout') == true ?
                                   "Enabled" : "Disabled"),
                              ),
                              Row(children: [Text("Orders",style: TextStyle(fontSize: 15,color: Colors.blue),)]),
                              ReusableRow(
                                title: 'OrderId: ',
                                value: currentOrder!.orderId.toString(),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
                // ---- MUST ADD THIS LINE AT THE END ----
                return const Center(child: Text("Something went wrong"));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [Text(title), Text(value)]),
    );
  }
}
