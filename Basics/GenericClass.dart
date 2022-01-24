import 'dart:html';

void main(List<String> args) {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);

  stack.pop();
  print(stack._stackList);

  // final button = Button(
  //   child: Text('data'),
  // );
}

class Stack<T> {
  final List<T> _stackList = <T>[];
  void push(T item) => _stackList.add(item);
  T pop() => _stackList.removeLast();
}

abstract class Widget {}

class Button extends Widget {
  final Widget child;
  Button({required this.child});
}
