import 'package:mobile_client/src/core/socket/socket.dart';
import 'package:socket_io_client/socket_io_client.dart';

typedef SocketCallback<T> = void Function(T data);
typedef SocketInitializer<T> = void Function(Socket socket, void Function(dynamic data) listener);

class SocketConnection<T> {
  final Socket socket;
  final SocketCallback<T> callback;

  final SocketInitializer<T> onOn;
  final SocketInitializer<T> onOff;

  final T Function(dynamic data) parser;

  final String namespace;

  SocketConnection({
    required GetSocketUseCase getSocket,
    this.namespace = "",
    required this.callback,
    required this.parser,
    required this.onOn,
    required this.onOff
  }) : socket = getSocket.call(namespace: namespace) {
    onOn(socket, _listener);
  }

  void _listener(dynamic data) {
    final res = parser(data);
    callback(res);
  }

  void dispose() async {
    onOff(socket, _listener);
    socket.dispose();
  }
}