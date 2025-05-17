abstract class Button {
  void render();
}

abstract class CheckBox {
  void check();
}

class LightButton implements Button {
  @override
  void render() => print('Rendering Light Button');
}

class DarkButton implements Button {
  @override
  void render() => print('Rendering Dark Button');
}

class LightCheckBox implements CheckBox {
  @override
  void check() => print("Light CheckBox Checked");
}

class DarkCheckBox implements CheckBox {
  @override
  void check() => print("Dark CheckBox Checked");
}

abstract class GUIFactory {
  Button createButton();
  CheckBox createCheckBox();
}

class LightFactory implements GUIFactory {
  @override
  Button createButton() => LightButton();

  @override
  CheckBox createCheckBox() => LightCheckBox();
}

class DarkFactory implements GUIFactory {
  @override
  Button createButton() => DarkButton();

  @override
  CheckBox createCheckBox() => DarkCheckBox();
}

void main() {
  GUIFactory factory = DarkFactory();

  var button = factory.createButton();
  var checkBox = factory.createCheckBox();

  button.render();
  checkBox.check();
}
