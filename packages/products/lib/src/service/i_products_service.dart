// ignore_for_file: one_member_abstracts, public_member_api_docs

abstract class IProductsService {
  Future<List<Map<String, dynamic>>> getProducts();
}
