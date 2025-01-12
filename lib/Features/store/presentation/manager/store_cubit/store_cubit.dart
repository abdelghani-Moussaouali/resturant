import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:resturantes/Features/auth/data/repos/auth_repos/auth_repos_impl.dart';
import 'package:resturantes/Features/store/data/repos/store_repos_impl.dart';

part 'store_state.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit(this.storeReposImpl) : super(StoreInitial());
  final StoreRepoImpl storeReposImpl;

  Future<void> fetchCategoryItem({
    required String category,
  }) async {
    emit(StoreLoadingState());

    var result = await storeReposImpl.fetchStoreData(category: category);
    
    result.fold((errorMessage) {
      emit(StrireFailureState(errorMessage: errorMessage.errMessage));
    }, (correctMessage) {
      emit(StoreSucessState(data: correctMessage)); //
    });
  }
}
