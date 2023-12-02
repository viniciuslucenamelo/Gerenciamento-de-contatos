import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'listarclientes_widget.dart' show ListarclientesWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ListarclientesModel extends FlutterFlowModel<ListarclientesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ClientesRecord> simpleSearchResults = [];
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for resultadopesquisa widget.
  ScrollController? resultadopesquisa;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewController = ScrollController();
    resultadopesquisa = ScrollController();
  }

  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
    textFieldFocusNode?.dispose();

    listViewController?.dispose();
    resultadopesquisa?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
