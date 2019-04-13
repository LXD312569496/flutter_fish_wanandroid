class ArticleModel {
  String title;
  String author;
  String link;
  String niceDate;
  String chapterName;
  bool fresh;
  String envelopePic;

  ArticleModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        author = json['author'],
        link = json['link'],
        niceDate = json['niceDate'],
        chapterName = json['chapterName'],
        fresh = json['fresh'],
        envelopePic = json['envelopePic'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'author': author,
        "link": link,
        "niceDate": niceDate,
        "chapterName": chapterName,
        "fresh": fresh,
        "envelopePic": envelopePic
      };
}

//"apkLink": "",
//"author": " yuandalai",
//"chapterId": 100,
//"chapterName": "RecyclerView",
//"collect": false,
//"courseId": 13,
//"desc": "",
//"envelopePic": "",
//"fresh": true,
//"id": 8039,
//"link": "https://www.jianshu.com/p/1eaaccd169e4",
//"niceDate": "22小时前",
//"origin": "",
//"projectLink": "",
//"publishTime": 1552321872000,
//"superChapterId": 54,
//"superChapterName": "5.+高新技术",
//"tags": [],
//"title": "ListView 和 RecyclerView 复用机制区别",
//"type": 0,
//"userId": -1,
//"visible": 1,
//"zan": 0
