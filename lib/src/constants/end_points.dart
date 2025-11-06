abstract class EndPoints {
  static const String homeApi = 'HomepageApi';
  static const String productsApi = 'ProductsApi';
  static const String loginApi = 'LoginApi';
  static const String signUpApi = 'SignupApi';
  static const String cartApi = 'CartApi';
  static String profileApi(int id) => 'ProfilesApi/$id';
  static String orderHistory = 'OrderHistoryApi';
  static String deelteAccount = 'OrderHistoryApi';
  static String orderHistoryDetails(int id) => 'OrderHistoryApi/$id';
  static String checkOutApi = 'CheckoutApi';
}
