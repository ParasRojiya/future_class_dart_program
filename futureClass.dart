Future<List<String>> productStatus() {
  return Future.delayed(
      Duration(seconds: 1),
      () => [
            'Order Confirmed',
            'Product Shipped',
            'Out for delivery',
            'Product Delievered'
          ]);
}

void main() async {
  List orderData = [];
  String? status;

  print("Ordered a Product from Amazon");

  orderData = await productStatus();

  for (int i = 0; i < orderData.length; i++) {
    status = await Future.delayed(Duration(seconds: 2), () => orderData[i]);
    print(status);
  }
}
