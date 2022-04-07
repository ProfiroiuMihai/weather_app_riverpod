import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Model {
  final int id;
  final Color color;

  Model(this.id, this.color);
}


class ContainerListState extends StateNotifier<List<Model>> {
  ContainerListState() : super(const []);

  static final provider = StateNotifierProvider<ContainerListState, List<Model>>((ref) {
    return ContainerListState();
  });

  void setAllColor(Color color) {
    state = state.map((model) => Model(model.id, color)).toList();
  }

  void setModelColor(Model model, Color color) {
    final id = model.id;
    state = state.map((model) {
      return model.id == id ? Model(id, color) : model;
    }).toList();
  }

  void addItem() {
    // TODO: Replace state.length with your unique ID
    state = [...state, Model(state.length, Colors.lightBlue)];
  }
}