import 'package:flutter/material.dart';
import 'package:httpp/httpp.dart';
import 'package:logging/logging.dart';

import '../statement/service.dart';
import 'model.dart';
import 'presenter.dart';

class ContainerService extends ChangeNotifier {
  final Logger _log = Logger('ContainerService');

  late final ContainerModel _model;
  late final ContainerPresenter presenter;
  late final StatementService statement;

  ContainerService(
      {required Httpp httpp, required int referalCount}) {
    presenter = ContainerPresenter(this);
    statement = StatementService();
    _model = ContainerModel();
    _model.balance = 5.0 * (referalCount ~/ 10.0);
  }

  double get balance => _model.balance;

}