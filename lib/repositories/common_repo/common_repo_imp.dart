import 'package:evika/data/remote/api_services/common_api_services.dart';
import 'package:evika/repositories/common_repo/common_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CommonRepoImp extends CommonRepo {
  CommonApiServices commonApiServices = CommonApiServices();

  @override
  Future<List>? userLikedPost() async {
    List? response = await commonApiServices.userLikedPosts();
    debugPrint("common Repo Imp $response");
    if (response != null && response.isNotEmpty) {
      return response;
    }
    return [];
  }
}
