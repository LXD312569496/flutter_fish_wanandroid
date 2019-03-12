class BannerModel {
//  "desc": "一起来做个App吧",
//  "id": 10,
//  "imagePath": "https://www.wanandroid.com/blogimgs/50c115c2-cf6c-4802-aa7b-a4334de444cd.png",
//  "isVisible": 1,
//  "order": 3,
//  "title": "一起来做个App吧",
//  "type": 0,
//  "url": "http://www.wanandroid.com/blog/show/2"

  String desc;
  int id;
  String imagePath;
  int isVisible;
  int order;
  String title;
  int type;
  String url;

  BannerModel.fromJson(Map<String, dynamic> json)
      : desc = json['desc'],
        id = json['id'],
        imagePath = json['imagePath'],
        isVisible = json['isVisible'],
        order = json['order'],
        title = json['title'],
        type = json['type'],
        url = json['url'];

  Map<String, dynamic> toJson() => {
        'desc': desc,
        'id': id,
        'imagePath': imagePath,
        'isVisible': isVisible,
        'order': order,
        'title': title,
        'type': type,
        'url': url
      };
}
