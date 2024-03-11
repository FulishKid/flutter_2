// ignore_for_file: avoid_print

void main() {
  Function createAdder(int addBy) {
    return (int i) => addBy + i;
  }

  var addTwo = createAdder(2);
  assert(addTwo(3) == 1, 'Має бути 5');
}
