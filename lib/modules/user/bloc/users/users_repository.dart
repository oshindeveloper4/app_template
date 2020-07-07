
import 'package:app_template/modules/user/models/user.dart';
import 'package:app_template/services/api/api.dart';

class UsersRepository {
  ApiResponse<User> response;

  Future fetchUsers() async {
    if (response == null) {
      var apiResponse = ApiResponse(data: User(name: 'miguel', email: 'oshin@', bio: 'programador'), requestStatus: RequestStatus.success);
      this.response = apiResponse;
      
      return response;
    } else {
      print('cached data');
      return response;
    }
  }
}

