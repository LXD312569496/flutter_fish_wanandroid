class KnowLedgeBeanModel {
  List<KnowLedgeBeanModel> children;

  int courseId;
  int id;
  String name;
  int order;
  int parentChapterId;
  bool userControlSetTop;
  int visible;

  /**
   * 注意解析list的方法，要手动遍历
   */
  KnowLedgeBeanModel.fromJson(Map<String, dynamic> json)
      : courseId = json['courseId'],
        id = json['id'],
        name = json['name'],
        order = json['order'],
        parentChapterId = json['parentChapterId'],
        userControlSetTop = json['userControlSetTop'],
        visible = json['visible'],
        children = (json['children'] as List)
            ?.map((e) => e == null
                ? null
                : KnowLedgeBeanModel.fromJson(e as Map<String, dynamic>))
            ?.toList();

  Map<String, dynamic> toJson() => {
        'courseId': courseId,
        'id': id,
        'name': name,
        'order': order,
        'parentChapterId': parentChapterId,
        'userControlSetTop': userControlSetTop,
        'visible': visible,
        'children': children
      };
}
