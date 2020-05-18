import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../providers/orders.dart';
import 'package:provider/provider.dart';
import '../widgets/order_item.dart' as oi;

class OrdersScreen extends StatelessWidget {
  static String routeName = '/orders-screen';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, index) => oi.OrderItem(orderData.orders[index]),
      ),
    );
  }
}
