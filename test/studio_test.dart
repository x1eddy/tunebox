import 'package:flutter_test/flutter_test.dart';
import 'package:tunebox/ai/ai_engine.dart';
import 'package:tunebox/features/home/home_page.dart';
import 'package:tunebox/state/appearance.dart';

AiShelf shelf(String id) => AiShelf(id: id, title: id, picks: const []);

void main() {
  final shelves = [shelf('repeat'), shelf('new'), shelf('mix'), shelf('starter')];

  test('default layout keeps the engine order', () {
    expect(
      arrangeShelves(shelves, const Appearance()).map((s) => s.id),
      ['repeat', 'new', 'mix', 'starter'],
    );
  });

  test('hidden shelves go, the starter never does', () {
    const look = Appearance(hiddenShelves: ['new', 'starter']);
    expect(
      arrangeShelves(shelves, look).map((s) => s.id),
      ['repeat', 'mix', 'starter'],
    );
  });

  test('a chosen order wins; shelves it does not mention go last', () {
    const look = Appearance(shelfOrder: ['mix', 'repeat']);
    expect(
      arrangeShelves(shelves, look).map((s) => s.id),
      ['mix', 'repeat', 'new', 'starter'],
    );
  });
}
