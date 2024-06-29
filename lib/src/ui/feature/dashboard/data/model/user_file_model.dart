class UserFileModel {
  final String? filePath;
  final String? fileName;
  final String? downLoadUrl;

  UserFileModel({this.fileName, this.filePath, this.downLoadUrl});

  factory UserFileModel.fromJson(Map<String, dynamic> json) => UserFileModel(
      fileName: json['pathName'],
      filePath: json['path'],
      downLoadUrl: json['downloadUrl']);
}
