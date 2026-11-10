// Pruebas EXTRA (no están en el manual): vigilan la calidad de los datos del
// catálogo, como recomienda el manual en la Ronda 3.
import 'package:dolores_rally/dominio/catalogo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('el catálogo tiene 6 personajes con ids únicos', () {
    expect(personajes.length, 6);
    expect(personajes.map((p) => p.id).toSet().length, personajes.length);
  });

  test('cada pregunta tiene al menos 2 opciones y la correcta existe', () {
    for (final p in personajes) {
      expect(p.pregunta.opciones.length, greaterThanOrEqualTo(2), reason: p.id);
      expect(p.pregunta.correcta, inInclusiveRange(0, p.pregunta.opciones.length - 1),
          reason: p.id);
    }
  });

  test('las respuestas correctas están repartidas (no siempre la misma opción)', () {
    final posiciones = personajes.map((p) => p.pregunta.correcta).toSet();
    expect(posiciones.length, greaterThanOrEqualTo(3));
  });

  test('todos los personajes tienen nombre, emoji y biografía', () {
    for (final p in personajes) {
      expect(p.nombre, isNotEmpty, reason: p.id);
      expect(p.emoji, isNotEmpty, reason: p.id);
      expect(p.bio, isNotEmpty, reason: p.id);
    }
  });
}
