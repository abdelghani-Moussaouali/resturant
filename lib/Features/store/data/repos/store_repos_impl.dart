import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:resturantes/Features/store/data/repos/item/item.dart';
import 'package:resturantes/Features/store/data/repos/store_repos.dart';
import 'package:resturantes/core/errors/failure.dart';
import 'package:resturantes/core/utils/api_service.dart';

class StoreRepoImpl extends StoreRepos {
  final ApiService apiService;

  StoreRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Item>>> fetchStoreData(
      {required String category}) async {
    try {
      Map<String, dynamic> data = await apiService.post(
        data: {
          'category': category,
        },
        endPoint: '/items/category',
      );
     

      List<Item> result = [];
      result.add(Item.fromJson(data));
      print(result);
      return right(result);
    } catch (e) {
      if (e is DioException) {
        print(e.message);
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
