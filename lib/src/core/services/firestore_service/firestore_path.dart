class FirestorePath {
  static String users(String userID) => 'users/$userID';
  static String invoices(String userID) => '${users(userID)}/invoices';
  static String invoice(String userID, String invoiceID) =>
      '${invoices(userID)}/$invoiceID';
  static String customers(String userID) => '${users(userID)}/customers';
  static String customer(String userID, String customerID) =>
      '${customers(userID)}/$customerID';
  static String services(String userID) => '${users(userID)}/services';
  static String service(String userID, String serviceID) =>
      '${services(userID)}/$serviceID';
  static String business(String userID) => '${users(userID)}/business';
}
