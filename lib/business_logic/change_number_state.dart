part of 'change_number_cubit.dart';

@immutable
abstract class ChangeNumberState {}

class ChangeNumberInitial extends ChangeNumberState {}

class addNumber extends ChangeNumberState{}

class removeNumber extends ChangeNumberState {}
