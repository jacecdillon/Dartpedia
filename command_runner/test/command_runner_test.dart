import 'package:command_runner/command_runner.dart';
import 'package:test/test.dart';

void main() {
  test('parse finds the help command', () {
    final runner = CommandRunner()..addCommand(HelpCommand());
    expect(runner.parse(['help']).command?.name, 'help');
  });
}
