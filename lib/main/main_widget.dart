import '/components/addedtocart_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'main_model.dart';
export 'main_model.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({
    Key? key,
    this.pizzaindex,
  }) : super(key: key);

  final int? pizzaindex;

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  late MainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(-100.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(100.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 50.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 600.ms,
          begin: Offset(0.0, -100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'checkboxGroupOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 270.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 270.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 270.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'sliderOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 700.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().update(() {
        FFAppState().AddedtoFavorite = false;
      });
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(60.0, 50.0, 60.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Image.asset(
                        'assets/images/Logo.png',
                        width: 70.0,
                        height: 44.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 400.0,
                      height: 210.0,
                      decoration: BoxDecoration(
                        color: Color(0x00F0F0F2),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (FFAppState().PizzaIndex != 0)
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      HapticFeedback.selectionClick();
                                      // Click Sound
                                      _model.soundPlayer1 ??= AudioPlayer();
                                      if (_model.soundPlayer1!.playing) {
                                        await _model.soundPlayer1!.stop();
                                      }
                                      _model.soundPlayer1!.setVolume(1.0);
                                      _model.soundPlayer1!
                                          .setAsset(
                                              'assets/audios/zapsplat_multimedia_click_001_19367.mp3')
                                          .then((_) =>
                                              _model.soundPlayer1!.play());

                                      if (FFAppState().PizzaIndex > 0) {
                                        // Previous Food Index
                                        FFAppState().update(() {
                                          FFAppState().PizzaIndex =
                                              FFAppState().PizzaIndex + -1;
                                        });
                                        // Hide back to Options
                                        FFAppState().update(() {
                                          FFAppState().Optionsedit = false;
                                        });
                                        // Previous Food

                                        context.pushNamed(
                                          'main',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 400),
                                            ),
                                          },
                                        );
                                      } else {
                                        return;
                                      }
                                    },
                                    child: Image.asset(
                                      'assets/images/ARROWLEFT.png',
                                      width: 50.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation1']!),
                                ),
                              ),
                            if (FFAppState().PizzaIndex < 2)
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      HapticFeedback.selectionClick();
                                      // Click Sound
                                      _model.soundPlayer2 ??= AudioPlayer();
                                      if (_model.soundPlayer2!.playing) {
                                        await _model.soundPlayer2!.stop();
                                      }
                                      _model.soundPlayer2!.setVolume(1.0);
                                      _model.soundPlayer2!
                                          .setAsset(
                                              'assets/audios/zapsplat_multimedia_click_001_19367.mp3')
                                          .then((_) =>
                                              _model.soundPlayer2!.play());

                                      if (FFAppState().PizzaIndex < 2) {
                                        // Set the Next Food Index
                                        FFAppState().update(() {
                                          FFAppState().PizzaIndex =
                                              FFAppState().PizzaIndex + 1;
                                        });
                                        // Hide Options panel
                                        FFAppState().update(() {
                                          FFAppState().Optionsedit = false;
                                        });
                                        // Navigate to Previous Food

                                        context.pushNamed(
                                          'main',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 400),
                                            ),
                                          },
                                        );
                                      } else {
                                        return;
                                      }
                                    },
                                    child: Image.asset(
                                      'assets/images/ARROWRIGHT.png',
                                      width: 50.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation2']!),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                      child: Container(
                        width: 280.0,
                        height: 548.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0x00F0F0F2),
                              Color(0xD5F0F0F2),
                              FlutterFlowTheme.of(context).secondaryBackground
                            ],
                            stops: [0.0, 0.5, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (FFAppState().Optionsedit == false)
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 110.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: SelectionArea(
                                                  child: Text(
                                                'Today\'s Task',
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Bebas Neue',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 32.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              )).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation1']!),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Text(
                                              'トレーニング',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 16.0),
                                          child: FlutterFlowCheckboxGroup(
                                            options: [
                                              '腕立て伏せ　×　100　回',
                                              '腹筋　×　100　回'
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.checkboxGroupValues1 =
                                                    val),
                                            controller: _model
                                                    .checkboxGroupValueController1 ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [],
                                            ),
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor: Colors.white,
                                            checkboxBorderColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            checkboxBorderRadius:
                                                BorderRadius.circular(4.0),
                                            initialized:
                                                _model.checkboxGroupValues1 !=
                                                    null,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            '食事メニュー',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                        FlutterFlowCheckboxGroup(
                                          options: [
                                            '朝食：プロテイン',
                                            '昼食：プロテイン',
                                            '夕食：ささみ'
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.checkboxGroupValues2 =
                                                  val),
                                          controller: _model
                                                  .checkboxGroupValueController2 ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          checkColor: Colors.white,
                                          checkboxBorderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          checkboxBorderRadius:
                                              BorderRadius.circular(4.0),
                                          initialized:
                                              _model.checkboxGroupValues2 !=
                                                  null,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (FFAppState().Optionsedit == true)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 110.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 1.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 3.0),
                                              child: Icon(
                                                FFIcons.kcardano,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 16.0,
                                              ).animateOnPageLoad(animationsMap[
                                                  'iconOnPageLoadAnimation1']!),
                                            ),
                                            SelectionArea(
                                                child: Text(
                                              'Addons',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation2']!),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: 260.0,
                                          height: 120.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00F0F0F2),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FlutterFlowCheckboxGroup(
                                              options: [
                                                'BBQ with Chili',
                                                'Ketchup',
                                                '+HAM'
                                              ],
                                              onChanged: (val) async {
                                                setState(() =>
                                                    _model.addonsValues = val);
                                                HapticFeedback.selectionClick();
                                                _model.soundPlayer3 ??=
                                                    AudioPlayer();
                                                if (_model
                                                    .soundPlayer3!.playing) {
                                                  await _model.soundPlayer3!
                                                      .stop();
                                                }
                                                _model.soundPlayer3!
                                                    .setVolume(1.0);
                                                _model.soundPlayer3!
                                                    .setAsset(
                                                        'assets/audios/zapsplat_multimedia_button_click_002_78079.mp3')
                                                    .then((_) => _model
                                                        .soundPlayer3!
                                                        .play());
                                              },
                                              controller: _model
                                                      .addonsValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                [],
                                              ),
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              checkColor: Colors.white,
                                              checkboxBorderColor:
                                                  Color(0xFF95A1AC),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Bebas Neue',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 12.0,
                                                  ),
                                              itemPadding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      75.0, 1.0, 75.0, 1.0),
                                              checkboxBorderRadius:
                                                  BorderRadius.circular(5.0),
                                              initialized:
                                                  _model.addonsValues != null,
                                            ).animateOnPageLoad(animationsMap[
                                                'checkboxGroupOnPageLoadAnimation']!),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 2.0),
                                            child: Icon(
                                              FFIcons.knotificationcircle,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 14.0,
                                            ).animateOnPageLoad(animationsMap[
                                                'iconOnPageLoadAnimation2']!),
                                          ),
                                          SelectionArea(
                                              child: Text(
                                            'Size of the Pizza:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          )).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation3']!),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              '${valueOrDefault<String>(
                                                formatNumber(
                                                  _model.sizeSilderValue,
                                                  formatType: FormatType.custom,
                                                  format: '#',
                                                  locale: '',
                                                ),
                                                '32',
                                              )}cm',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation4']!),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 200.0,
                                        child: Slider(
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          inactiveColor: Color(0xFFD1D1D1),
                                          min: 20.0,
                                          max: 44.0,
                                          value: _model.sizeSilderValue ??=
                                              32.0,
                                          label:
                                              _model.sizeSilderValue.toString(),
                                          divisions: 2,
                                          onChanged: (newValue) async {
                                            setState(() => _model
                                                .sizeSilderValue = newValue);
                                            HapticFeedback.lightImpact();
                                            _model.soundPlayer4 ??=
                                                AudioPlayer();
                                            if (_model.soundPlayer4!.playing) {
                                              await _model.soundPlayer4!.stop();
                                            }
                                            _model.soundPlayer4!.setVolume(1.0);
                                            _model.soundPlayer4!
                                                .setAsset(
                                                    'assets/audios/zapsplat_multimedia_click_001_19367.mp3')
                                                .then((_) => _model
                                                    .soundPlayer4!
                                                    .play());

                                            if (_model.sizeSilderValue
                                                    .toString() ==
                                                '44') {
                                              if (animationsMap[
                                                      'imageOnActionTriggerAnimation'] !=
                                                  null) {
                                                await animationsMap[
                                                        'imageOnActionTriggerAnimation']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                            } else {
                                              if (animationsMap[
                                                      'imageOnActionTriggerAnimation'] !=
                                                  null) {
                                                await animationsMap[
                                                        'imageOnActionTriggerAnimation']!
                                                    .controller
                                                    .forward(from: 0.0)
                                                    .whenComplete(animationsMap[
                                                            'imageOnActionTriggerAnimation']!
                                                        .controller
                                                        .reverse);
                                              }
                                            }
                                          },
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'sliderOnPageLoadAnimation']!),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                      child: Container(
                        width: 85.0,
                        height: 85.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8.0,
                              color: Color(0x25000000),
                              offset: Offset(0.0, 4.0),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.check,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 33.0,
                          ),
                          onPressed: () async {
                            HapticFeedback.vibrate();
                            // Click Sound
                            _model.soundPlayer5 ??= AudioPlayer();
                            if (_model.soundPlayer5!.playing) {
                              await _model.soundPlayer5!.stop();
                            }
                            _model.soundPlayer5!.setVolume(1.0);
                            _model.soundPlayer5!
                                .setAsset(
                                    'assets/audios/zapsplat_catoon_bite_munch_single_005_56567.mp3')
                                .then((_) => _model.soundPlayer5!.play());

                            // Added to Cart Indicator
                            showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: AddedtocartWidget(),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));

                            // Wait for the Animation
                            await Future.delayed(
                                const Duration(milliseconds: 3900));
                            // Dismiss Indicator
                            Navigator.pop(context);
                            FFAppState().update(() {
                              FFAppState().AddedtoCart = true;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 120.0),
                      child: Container(
                        width: 250.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0x00F0F0F2),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 8.0,
                                      color: Color(0x20000000),
                                      offset: Offset(0.0, 4.0),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 200.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    FFIcons.ksetting4,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    HapticFeedback.selectionClick();
                                    // Click Sound
                                    _model.soundPlayer6 ??= AudioPlayer();
                                    if (_model.soundPlayer6!.playing) {
                                      await _model.soundPlayer6!.stop();
                                    }
                                    _model.soundPlayer6!.setVolume(1.0);
                                    _model.soundPlayer6!
                                        .setAsset(
                                            'assets/audios/ui-click-97915.mp3')
                                        .then(
                                            (_) => _model.soundPlayer6!.play());

                                    if (FFAppState().Optionsedit == false) {
                                      // Show Options
                                      FFAppState().update(() {
                                        FFAppState().Optionsedit = true;
                                      });
                                    } else {
                                      // Hide Options
                                      FFAppState().update(() {
                                        FFAppState().Optionsedit = false;
                                      });
                                    }
                                  },
                                ),
                              ),
                              Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 8.0,
                                      color: Color(0x20000000),
                                      offset: Offset(0.0, 4.0),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 200.0,
                                  borderWidth: 0.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    Icons.calendar_month,
                                    color: FFAppState().AddedtoFavorite == false
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    size: 22.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('schedule');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 245.0,
                        decoration: BoxDecoration(
                          color: Color(0x00F0F0F2),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/1yi0p_L.png',
                                  width: 40.0,
                                  height: 260.0,
                                  fit: BoxFit.cover,
                                ),
                                Image.asset(
                                  'assets/images/MAIN.png',
                                  width: 280.0,
                                  height: 260.0,
                                  fit: BoxFit.cover,
                                ),
                                Image.asset(
                                  'assets/images/r0dvv_R.png',
                                  width: 40.0,
                                  height: 260.0,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 14.0),
                                child: Image.asset(
                                  'assets/images/MicrosoftTeams-image_(1).png',
                                  width: 183.0,
                                  height: 183.0,
                                  fit: BoxFit.cover,
                                )
                                    .animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation3']!)
                                    .animateOnActionTrigger(
                                      animationsMap[
                                          'imageOnActionTriggerAnimation']!,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
