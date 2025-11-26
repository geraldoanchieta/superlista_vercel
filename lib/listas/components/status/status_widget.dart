import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'status_model.dart';
export 'status_model.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({
    super.key,
    required this.vermelho,
    required this.azul,
    required this.verde,
    this.amarelo,
    required this.status,
  });

  final String? vermelho;
  final String? azul;
  final String? verde;
  final String? amarelo;
  final String? status;

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  late StatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Builder(
          builder: (context) {
            if (widget.status == widget.azul) {
              return Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Container(
                  width: 80.0,
                  height: 26.0,
                  decoration: BoxDecoration(
                    color: Color(0x333E92FF),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.azul,
                        'confirmado',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            color: Color(0xFF3E92FF),
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              );
            } else if (widget.status == widget.vermelho) {
              return Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Container(
                  width: 80.0,
                  height: 26.0,
                  decoration: BoxDecoration(
                    color: Color(0x33FF3E3E),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.vermelho,
                        'Cancelado',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            color: Color(0xFFFF3E3E),
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              );
            } else if (widget.status == widget.verde) {
              return Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Container(
                  width: 80.0,
                  height: 26.0,
                  decoration: BoxDecoration(
                    color: Color(0x3304B155),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.verde,
                        'Entregue',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            color: Color(0xFF04B155),
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              );
            } else {
              return Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Container(
                  width: 80.0,
                  height: 26.0,
                  decoration: BoxDecoration(
                    color: Color(0x33F09000),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.amarelo,
                        'Pendente',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            color: Color(0xFFF09000),
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
