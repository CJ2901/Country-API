import 'package:http/http.dart' as http;
import 'package:paquetes/classes/pais-classes/gini.dart';
import 'package:paquetes/classes/pais-classes/name.dart';
import 'package:paquetes/classes/pais.dart';
import 'package:paquetes/classes/reqResRespuesta.dart';

// void getReqRespService() {
//   final url = 'https://reqres.in/api/users?page=2';
//   http.get(Uri.parse(url)).then((res) {
//     final resReqRes = reqResRespuestaFromMap(res.body);

//     print('Pagina: ${resReqRes.page}');
//     print('Por página: ${resReqRes.perPage}');
//     print('ID del tercer elemento: ${resReqRes.data[2].id}');
//   });
// }

void getPaisService() {
  final url = 'https://restcountries.com/v3.1/alpha/co';
  http.get(Uri.parse(url)).then((res) {
    final resReqRes = paisFromMap(res.body)[0];
  
    print("===================================");
    print('Pais: ${ resReqRes.name.common} ');
    print('Población: ${ resReqRes.population} habitantes ');
    print('Fronteras: ');
    resReqRes.borders.forEach( (f) => print('\t ${f}') );
    print('Idiomas: ${resReqRes.languages} ');
    print('Latitud: ${resReqRes.latlng[0]} ');
    print('Longitud: ${resReqRes.latlng[1]} ');
    print('Moneda: ${resReqRes.currencies?.cop.name} ');
    print('Bandera: ${resReqRes.flags.svg} ');
    print("===================================");


// Bandera: https://restcountries.eu/data/col.svg

  });
}
