import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'addedtocart_model.dart';
export 'addedtocart_model.dart';

class AddedtocartWidget extends StatefulWidget {
  const AddedtocartWidget({Key? key}) : super(key: key);

  @override
  _AddedtocartWidgetState createState() => _AddedtocartWidgetState();
}

class _AddedtocartWidgetState extends State<AddedtocartWidget> {
  late AddedtocartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddedtocartModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                color: Color(0x15000000),
                offset: Offset(0.0, 10.0),
              )
            ],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: SelectionArea(
                      child: Text(
                    'Get a treasure',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  )),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(
                  'https://public-muscle-app.s3.ap-northeast-1.amazonaws.com/mosaic.png',
                  width: 300.0,
                  height: 162.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
