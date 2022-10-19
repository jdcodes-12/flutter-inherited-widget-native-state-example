import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import './mock_api.dart';

class MockApiProvider extends InheritedWidget {
  final MockApi api;
  final String uuid;

  MockApiProvider({
    Key? key,
    required this.api,
    required Widget child,
  })  : uuid = const Uuid().v4(),
        super(
          key: key,
          child: child,
        );

  /*
    /// Abstract const constructor. This constructor enables subclasses to provide
    /// const constructors so that they can be used in const expressions.
  const InheritedWidget({ super.key, required super.child });
  */
}
