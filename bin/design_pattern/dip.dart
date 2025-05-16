abstract class NotificationService {
  void sendNotification(String message);
}

class EmailService implements NotificationService {
  @override
  void sendNotification(String message) {
    print("Mengirim email: $message");
  }
}

class SmsService implements NotificationService {
  @override
  void sendNotification(String message) {
    print("Mengirim SMS: $message");
  }
}

class OrderService {
  final NotificationService notificationService;
  OrderService(this.notificationService);

  void placeOrder() {
    print("Pesanan dibuat");
    notificationService.sendNotification("Pesanan Anda berhasil diproses");
  }
}

void main() {
  NotificationService service = EmailService();
  OrderService orderService = OrderService(service);
  orderService.placeOrder();
}
