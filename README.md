# Rally de la Independencia AR (Flutter + TDD)

Juego de realidad aumentada por ubicación para recorrer Dolores Hidalgo: **radar**, **frío o caliente**,
**trivia histórica** y **álbum coleccionable**, con un **modo demo** para jugar en el salón sin GPS.

Práctica de **Desarrollo Móvil Integral · UTNG** (Manual paso a paso con TDD · Prof. Anastacio Rodríguez García).

- **Alumno:** Luis Manuel Arteaga Cruz
- **Número de control:** 1225100281
- **Grupo / Fecha:** 09/11/2026

#
## Cómo ejecutar

```bash
flutter create --platforms=android,web .   
flutter pub get
flutter test --reporter expanded           
flutter run -d chrome                      
flutter run                                

**Total: 47 pruebas** → 43 del manual + 4 extra de calidad del catálogo. Marca cada resultado con ✅ cuando
`flutter test` las muestre en verde.
