/**
 * 项目分类
 *     {
    "children": [],
    "courseId": 13,
    "id": 294, // 该id在获取该分类下项目时需要用到
    "name": "完整项目", // 该分类名称
    "order": 145000,
    "parentChapterId": 293,
    "visible": 0
    }
 */
class ProjectClassifyModel {
  int courseId;
  int id;
  String name;
  int order;
  int parentChapterId;
  int visible;

  ProjectClassifyModel.fromJson(Map<String, dynamic> json)
      : courseId = json['courseId'],
        id = json['id'],
        name = json['name'],
        order = json['order'],
        parentChapterId = json['parentChapterId'],
        visible = json['visible'];

  Map<String, dynamic> toJson() => {
        'courseId': courseId,
        'id': id,
        'name': name,
        'order': order,
        'parentChapterId': parentChapterId,
        'visible': visible
      };
}


/**
 * 项目列表数据
 */

class ProjectListModel{

}
