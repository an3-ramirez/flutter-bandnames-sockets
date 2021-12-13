import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/** Service */
import 'package:band_names/services/socket_service.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Server status: ${socketService.serverStatus}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        onPressed: () {
          socketService.socket.emit('emitir-mensaje', {
            'nombre': 'Andres Felipe',
            'mensaje': 'Hello world in flutter!'
          });
        },
      ),
    );
  }
}
