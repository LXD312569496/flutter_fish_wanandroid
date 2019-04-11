import 'article_model.dart';

/**
 * 导航
 */
class NavigationModel {
//  List<ArticleModel> articles;
//  int cid;
//  String name;

  List<ArticleModel> articles;
  num cid;
  String name;

  NavigationModel({
    this.articles,
    this.cid,
    this.name,
  });

  NavigationModel.fromJson(json) {
    articles = (json['articles'] as List)
        ?.map((e) =>
            e == null ? null : ArticleModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
    cid = json['cid'];
    name = json['name'];
  }

  Map<String, dynamic> toJson(json) => {
        'articles': articles,
        'cid': cid,
        'name': name,
      };
}
