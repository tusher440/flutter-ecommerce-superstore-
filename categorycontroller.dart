import 'package:get/get.dart';
import 'package:superstore/models/categorymodel.dart';

class CategoryController extends GetxController{
  var categoryWoman = List<Item>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  void fetchData() async{
    await Future.delayed(Duration(seconds: 1));
    var all = [
      Item(
          title: 'Collections',
          image: 'images/photo-1583846783214-7229a91b20ed-removebg-preview.png',
        total: '150',
        subTitle: 'Black Dress',
          price:'\$15'
      ),
      Item(
          title: 'JEANS',
          image: 'images/photo-1589465885857-44edb59bbff2-removebg-preview.png',
          total: '127',
          subTitle: 'Denim Jeans',
          price:'\$25'
      ),
      Item(
          title: 'MATS',
          image: 'images/c0ef9f086496-kameez22-removebg-preview-1-removebg-preview.png',
          total: '115',
          subTitle: 'White Mats',
          price:'\$20'
      ),
      Item(
          title: 'TOPS',
          total: '136',
          subTitle: 'Check Tops',
          price:'\$30',
          image: 'images/depositphotos_134946744-stock-photo-fashion-model-girl-wearing-sunglasses-removebg-preview.png'
      ),
      Item(
          title: 'Tall',
          total: '154',
          subTitle: 'Teal Tall',
          price:'\$45',
          image: 'images/portrait-beautiful-girl-model-casual-summer-clothes-no-makeup-white-background-beautiful-girl-model-casual-summer-100630200-removebg-preview.png'
      ),
    ];
    categoryWoman.value = all;
  }

}

