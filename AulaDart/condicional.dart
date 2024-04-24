void main() {
  String clima = 'Nublado';
  int temperatura = 23;
  bool amigo1Sair = true;
  bool amigo2Sair = false;

  if ((clima == 'Sol' && temperatura >= 25) || (amigo1Sair && amigo2Sair)) {
    print("Vou sair de casa");
  } else {
    print("Valeu, flw, vou ficar em casa");
  }

  int tecla = -1;

  switch (tecla) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      teclaDigitada(tecla);
      break;
    case -1:
      print("Tecla negativa...");
      break;
    default:
      print("Tecla nao reconhecida");
  }
}

void teclaDigitada(int tecla) {
  print('A Tecla $tecla foi digitada.');
}
