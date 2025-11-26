import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'empty_list_model.dart';
export 'empty_list_model.dart';

class EmptyListWidget extends StatefulWidget {
  const EmptyListWidget({
    super.key,
    required this.titulo,
    required this.texto,
    bool? confirmacao,
    bool? espera,
  })  : this.confirmacao = confirmacao ?? false,
        this.espera = espera ?? false;

  final String? titulo;
  final String? texto;
  final bool confirmacao;
  final bool espera;

  @override
  State<EmptyListWidget> createState() => _EmptyListWidgetState();
}

class _EmptyListWidgetState extends State<EmptyListWidget> {
  late EmptyListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          height: 223.0,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Builder(
                builder: (context) {
                  if (widget.confirmacao) {
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 200.0,
                        buttonSize: 80.0,
                        fillColor: Color(0xFF219D1D),
                        icon: Icon(
                          Icons.check_sharp,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    );
                  } else {
                    return FlutterFlowIconButton(
                      borderRadius: 200.0,
                      buttonSize: 80.0,
                      fillColor: Color(0xFF219D1D),
                      icon: FaIcon(
                        FontAwesomeIcons.solidHourglass,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 50.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    );
                  }
                },
              ),
              Flexible(
                child: Text(
                  valueOrDefault<String>(
                    widget.titulo,
                    'titulo',
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Satoshi',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.texto,
                      'testo',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Satoshi',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
