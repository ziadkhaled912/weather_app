import 'package:equatable/equatable.dart';

class PaginationParams extends Equatable {
  final int pageNum;
  final String? maxValueInLastPage;

  const PaginationParams({this.pageNum = 1, this.maxValueInLastPage});

  @override
  List<Object> get props => [pageNum];
}
