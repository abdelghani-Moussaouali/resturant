import 'package:dartz/dartz.dart';
import 'package:resturantes/Features/store/data/repos/item/item.dart';
import 'package:resturantes/core/errors/failure.dart';

abstract class StoreRepos {
  Future<Either<Failure, List<Item>>> fetchStoreData(
      {required String category});
}

