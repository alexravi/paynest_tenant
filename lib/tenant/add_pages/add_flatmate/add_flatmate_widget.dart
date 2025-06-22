import '/components/add_flatmate_c_widget.dart';
import '/components/confirm_flatmate_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_flatmate_model.dart';
export 'add_flatmate_model.dart';

/// 🧾 Page Basics
/// Property	Value
/// Page Name	AddFlatmatePage
/// Background Color	#F4F5F7 (light subtle gray)
/// Page Padding	EdgeInsets.all(20)
///
/// 🧭 AppBar (Optional, for consistency)
/// Property	Value
/// Title	Add Flatmate
/// Title Font Size	22
/// Font Weight	Bold
/// Text Color	#1A1A1A
/// Background Color	Transparent
/// Elevation	0
/// Leading Icon	Icons.arrow_back_ios_new
/// Icon Color	#5A35F0
/// Action	Navigate Back
///
/// 📦 Main Container (Form Card)
/// Property	Value
/// Color	#FFFFFF
/// Border Radius	20
/// Padding	20
/// Shadow	Blur: 16, Offset: Y: 4, Color: #0000000F
///
/// 🧾 Form Fields (Inside a Column)
/// Each field is composed of:
///
/// 🧩 Label Text
/// Font Size: 15
///
/// Font Weight: 600
///
/// Color: #2F2F2F
///
/// Padding: Bottom 6
///
/// 📥 TextField
/// Property	Value
/// Border Radius	12
/// Fill Color	#F9FAFB
/// Border Color	#E0E0E0
/// Hint Text	e.g., "Enter Flatmate Name"
/// Content Padding	EdgeInsets.symmetric(horizontal: 16, vertical: 14)
///
/// Fields:
///
/// Flatmate Name
///
/// Flatmate Phone Number
///
/// Flatmate Monthly Rent
///
/// Add SizedBox(height: 16) between each field.
///
/// 📇 Contact Book Icon (Optional Enhancement)
/// For the Phone Number field, wrap it in a Row:
///
/// text
/// Copy
/// Edit
/// Row:
///   - Expanded: TextField
///   - IconButton:
///       - Icon: Icons.contact_page
///       - Color: #5A35F0
///       - Tooltip: "Pick from contacts"
///       - OnTap: Fetch from contact list (custom code)
/// 🔘 Add Button
/// Property	Value
/// Text	"Add Flatmate"
/// Color	#5A35F0
/// Text Color	#FFFFFF
/// Font Weight	Bold
/// Font Size	15
/// Border Radius	12
/// Height	48
/// Shadow	Blur 10, Color #5A35F055
/// Width	Full Width or Min 200px
/// OnTap	Save Flatmate to Firestore / Backend
///
/// ✨ Optional Enhancements
/// Use SingleChildScrollView for scrollability
///
/// Add entrance animation to the card (slide/fade)
///
/// Use form validation for:
///
/// Phone Number format
///
/// Rent field numeric only
///
/// ✅ Summary
/// This design:
///
/// Uses elegant card styling
///
/// Matches modern mobile design standards
///
/// Includes optional contact picker icon
///
/// Is fully responsive and clean
class AddFlatmateWidget extends StatefulWidget {
  const AddFlatmateWidget({super.key});

  static String routeName = 'add_flatmate';
  static String routePath = '/addFlatmate';

  @override
  State<AddFlatmateWidget> createState() => _AddFlatmateWidgetState();
}

class _AddFlatmateWidgetState extends State<AddFlatmateWidget> {
  late AddFlatmateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddFlatmateModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF4F5F7),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 30.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF5A35F0),
              size: 20.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'Add Flatmate',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  color: Color(0xFF1A1A1A),
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          wrapWithModel(
                            model: _model.addFlatmateCModel,
                            updateCallback: () => safeSetState(() {}),
                            child: AddFlatmateCWidget(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: ConfirmFlatmateWidget(),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  text: 'Add Flatmate',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
                    padding: EdgeInsets.all(8.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF5A35F0),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
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
