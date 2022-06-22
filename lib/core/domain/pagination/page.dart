import 'package:equatable/equatable.dart';

class Page<T> extends Equatable {
  final List<T> items;
  final bool isLastPage;
  final String? maxValueInLastPage;
  final int? total;

  const Page({
    required this.items,
    this.isLastPage = false,
    this.maxValueInLastPage,
    this.total,
  });

  @override
  List<Object> get props => [items, isLastPage];
}
