import 'package:eco_user_app/screens/echocartpay_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:eco_user_app/providers/order_provider.dart';
import 'package:eco_user_app/models/order_model.dart';

class CheckoutScreen extends StatelessWidget {
  static const routeName = '/checkout';

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    final List<OrdersModelAdvanced> orders = orderProvider.getOrders;

    double getTotalOrderAmount(List<OrdersModelAdvanced> orders) {
      double total = 0;
      for (var order in orders) {
        total += double.parse(order.price);
      }
      return total;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: FutureBuilder<List<OrdersModelAdvanced>>(
        future: orderProvider.fetchOrder(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || orders.isEmpty) {
            return Center(
              child: Text('No orders have been placed yet.'),
            );
          }

          double totalAmount = getTotalOrderAmount(orders);

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(orders[index].productTitle),
                      subtitle: Text(
                          'Price: \$${orders[index].price}, Quantity: ${orders[index].quantity}'),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Total: \$${totalAmount.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, EchoartPayScreen.routeName);
                },
                child: Text('Proceed to Payment'),
              ),
            ],
          );
        },
      ),
    );
  }
}
