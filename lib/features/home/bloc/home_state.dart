import 'package:equatable/equatable.dart';
import 'package:kowope/features/account/models/user.dart';

class HomeState extends Equatable{
  HomeState({
     this.tabIndex = 0,
   this.hideTodo = false,
    this.person,
  });

  final int tabIndex;
  final bool hideTodo;
  final Persons? person;

  @override
  List<Object?> get props => [
    tabIndex,
    hideTodo,
    person,
  ];
  // @override
  // // TODO: implement props
  // List<Object?> get props => throw UnimplementedError();

HomeState copyWith({
  int? tabIndex,
  bool? hideTodo,
  Persons? person,
}){
  return HomeState(tabIndex: tabIndex ?? this.tabIndex,
  hideTodo: hideTodo ?? this.hideTodo,
  person: person ?? this.person
  );
}

}