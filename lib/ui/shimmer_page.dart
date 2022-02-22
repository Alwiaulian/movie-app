// import 'package:doraemon_app/ui/theme/theme.dart';
// import 'package:content_placeholder/content_placeholder.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_placeholder_textlines/placeholder_lines.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class ShimmerPage extends StatefulWidget {
//   final String header;
//   final String content;

//   ShimmerPage({
//     required this.header,
//     required this.content,
//   });

//   @override
//   _ShimmerPageState createState() => _ShimmerPageState();
// }

// class _ShimmerPageState extends State<ShimmerPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (widget.header == "1")
//               Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xffF2F5F7),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         blurRadius: 15.0,
//                         offset: Offset(0.0, 0.75)),
//                   ],
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 18),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Container(
//                       width: double.infinity,
//                       child: Text(
//                         " ",
//                         style:
//                             AppTextStyle.boldTextStyle.copyWith(fontSize: 18),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 13,
//                     ),
//                     // Container(
//                     //   child: Row(
//                     //     children: [
//                     //       Expanded(
//                     //         child: TextFormField(
//                     //           decoration: InputDecoration(
//                     //             hintText: 'Cari Nama',
//                     //             filled: true,
//                     //             fillColor: AppColors.inputFillColor,
//                     //             hintStyle: AppTextStyle.regularTextStyle
//                     //                 .copyWith(
//                     //                     color: AppColors.grayColor,
//                     //                     fontSize: 14),
//                     //             prefixIcon: Icon(Icons.search),
//                     //             contentPadding: EdgeInsets.symmetric(
//                     //                 horizontal: 10, vertical: 15),
//                     //             focusedBorder: OutlineInputBorder(
//                     //               borderSide: BorderSide(
//                     //                   color: AppColors.mainColor, width: 1),
//                     //             ),
//                     //             enabledBorder: OutlineInputBorder(
//                     //               borderSide: BorderSide(
//                     //                   color: AppColors.inputBorderColor,
//                     //                   width: 1),
//                     //             ),
//                     //           ),
//                     //           controller: _searchQuery,
//                     //           validator: (String value) {
//                     //             if (value == null || value.isEmpty) {
//                     //               return 'Please enter some text';
//                     //             }
//                     //             return null;
//                     //           },
//                     //         ),
//                     //       ),
//                     //       Container(
//                     //         padding: EdgeInsets.only(left: 14),
//                     //         child: Icon(
//                     //           Icons.grid_view,
//                     //           color: AppColors.grayColor,
//                     //         ),
//                     //       ),
//                     //     ],
//                     //   ),
//                     // ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                   ],
//                 ),
//               )
//             else if (widget.header == "2")
//               Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xffF2F5F7),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         blurRadius: 15.0,
//                         offset: Offset(0.0, 0.75)),
//                   ],
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Container(
//                       width: double.infinity,
//                       child: Text(
//                         "",
//                         style:
//                             AppTextStyle.boldTextStyle.copyWith(fontSize: 18),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       child: Text(
//                         "",
//                         style: AppTextStyle.regularTextStyle
//                             .copyWith(fontSize: 20),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 18,
//                     ),
//                   ],
//                 ),
//               ),
//             if (widget.content == "1")
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(13, 13, 13, 0),
//                   child: StaggeredGridView.countBuilder(
//                     crossAxisCount: 3,
//                     itemCount: 3,
//                     itemBuilder: (context, i) => Container(
//                       padding:
//                           EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//                       child: SectionHolder(
//                         label: '',
//                         placeholder: ContentPlaceholder(
//                           height: 203,
//                           width: MediaQuery.of(context).size.width * 0.3,
//                         ),
//                       ),
//                     ),
//                     staggeredTileBuilder: (i) => StaggeredTile.fit(1),
//                   ),
//                 ),
//               )
//             else if (widget.content == "2")
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
//                   child: Column(children: [
//                     SizedBox(height: 20),
//                     SectionHolder(
//                       label: '',
//                       placeholder: ContentPlaceholder(
//                         height: 18,
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                     ),
//                     SectionHolder(
//                       label: '',
//                       placeholder: PlaceholderLines(
//                         height: 100,
//                         width: MediaQuery.of(context).size.width,
//                       ),
//                     ),
//                   ]),
//                 ),
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SectionHolder extends StatelessWidget {
//   final String label;
//   final PlaceholderLines placeholder;

//   SectionHolder({
//     required this.placeholder,
//     required this.label,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         // ignore: deprecated_member_use
//         // Text(this.label, style: Theme.of(context).textTheme.headline1),
//         this.placeholder,
//       ],
//     );
//   }
// }
