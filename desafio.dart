import 'dart:math';

main() {
  int mas = 0;
  int fem = 0;
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];
  Set novasPessoas = pessoas.toSet();
  novasPessoas.forEach((element) {
    if ((element as String).split('|')[2].toLowerCase() == 'masculino') {
      ++mas;
    } else {
      ++fem;
    }
  });
  print('Pessoas do sexo masculino: $mas');
  print('Pessoas do sexo feminino: $fem');

  novasPessoas.removeWhere(
      (element) => int.parse((element as String).split('|')[1]) < 18);
  mas = 0;
  fem = 0;

  novasPessoas.forEach((element) {
    ((element as String).toLowerCase().contains('masculino')) ? ++mas : ++fem;
  });
  print('Pessoas maiores de 18 do sexo masculino: $mas');
  print('Pessoas maiores de 18 do sexo feminino: $fem');
  pessoas.sort((a, b) =>
      int.parse(b.split('|')[1]).compareTo(int.parse(a.split('|')[1])));
  print(
      'A Pessoa Mais velha é a ${pessoas.first.split('|')[0]} com ${pessoas.first.split('|')[1]} anos.');
}
