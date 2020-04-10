 









import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meta/meta.dart';


import 'package:widget_with_codeview/widget_with_codeview.dart';
 

class BodyWidget extends StatelessWidget {
	Widget build(BuildContext context) {
		return new SizedBox.expand(
			child:  Scaffold(
          appBar: AppBar( 
            actions: <Widget>[
           IconButton(icon: Icon( Icons.code,color: Colors.black,size: 35,)
           
           , onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>Codeview()));

           })
         ],
             leading: IconButton(icon:  Icon( Icons.arrow_back, color: Colors.black,
          size: 30,
          ), onPressed:(){
            Navigator.of(context).pop();
          }),
           centerTitle: true,
           backgroundColor: Colors.white,
           title: Text(" customsinglechildlayout",style: TextStyle(color: Colors.black),),
         ),
              body: new Column(
			  	mainAxisSize: MainAxisSize.max,
			  	mainAxisAlignment: MainAxisAlignment.center,
			  	crossAxisAlignment: CrossAxisAlignment.center,
			  	children: <Widget>[
			  		new Container(
			  			color: Colors.white,
			  			child: new RotatedWidget(
			  				width: 100.0,
			  				height: 50.0,
			  				degrees: 20.0,
			  				child: new Container(
			  					color: Colors.orange[200],
			  				),
			  			),
			  		),
			  		new Container(
			  			width: 300.0,
			  			height: 4.0,
			  			color: Colors.black,
			  		),
			  		new Container(
			  			color: Colors.white,
			  			child: new FreeRotatedBox(
			  				degrees: 20.0,
			  				child: new Container(
			  					width: 100.0,
			  					height: 50.0,
			  					color: Colors.blue[100],
			  				),
			  			),
			  		),
			  	],
			  ),
			),
		);
	}
}

class RotatedWidget extends StatelessWidget {
	final double width;
	final double height;
	final double degrees;
	final Widget child;

	RotatedWidget({
		@required this.width,
		@required this.height,
		@required this.degrees,
		@required this.child,
	});

	@override
	Widget build(BuildContext context) {
		final rads = _degreesToRadians(this.degrees);
		final layoutWidth = math.sin(rads) * height + math.cos(rads) * width;
		final layoutHeight = math.sin(rads) * width + math.cos(rads) * height;
		return new CustomSingleChildLayout(
			delegate: new RotatedWidgetLayoutDelegate(layoutWidth, layoutHeight),
			child: new Transform(
				origin: new Offset(this.width / 2, this.height / 2),
				transform: new Matrix4.identity()
					..rotateZ(rads),
				child: new ConstrainedBox(
					constraints: new BoxConstraints.tightFor(width: width, height: height),
					child: child,
				),
			),
		);
	}

	static _degreesToRadians(double degrees) {
		return (degrees * (math.pi / 180));
	}
}

class RotatedWidgetLayoutDelegate extends SingleChildLayoutDelegate {
	final double width, height;

	const RotatedWidgetLayoutDelegate(this.width, this.height);

	@override
	Size getSize(BoxConstraints constraints) => new Size(width, height);

	@override
	BoxConstraints getConstraintsForChild(BoxConstraints constraints) => constraints;

	@override
	Offset getPositionForChild(Size size, Size childSize) {
		return new Offset((width - childSize.width) / 2, (height - childSize.height) / 2);
	}

	@override
	bool shouldRelayout(SingleChildLayoutDelegate oldDelegate) => false;
}


class FreeRotatedBox extends SingleChildRenderObjectWidget {
	final double degrees;

	const FreeRotatedBox({
		Key key,
		@required this.degrees,
		Widget child,
	}) : assert(degrees != null), super(key: key, child: child);

	@override
	RenderFreeRotatedBox createRenderObject(BuildContext context) =>
		new RenderFreeRotatedBox(degrees: degrees);

	@override
	void updateRenderObject(BuildContext context, RenderFreeRotatedBox renderObject) {
		renderObject.degrees = degrees;
	}
}

class RenderFreeRotatedBox extends RenderBox with RenderObjectWithChildMixin<RenderBox> {
	RenderFreeRotatedBox({
		@required double degrees,
		RenderBox child
	}) : assert(degrees != null), _degrees = degrees {
		this.child = child;
	}

	double get degrees => _degrees;
	double _degrees;

	set degrees(double value) {
		assert(value != null);
		if (_degrees == value)
			return;
		_degrees = value;
		markNeedsLayout();
	}

	Matrix4 _paintTransform;

	@override
	void performLayout() {
		_paintTransform = null;
		if (child != null) {
			child.layout(constraints, parentUsesSize: true);
			final rads = _degreesToRadians(this.degrees);
			final layoutWidth = math.sin(rads) * child.size.height + math.cos(rads) * child.size.width;
			final layoutHeight = math.sin(rads) * child.size.width + math.cos(rads) * child.size.height;
			size = new Size(layoutWidth, layoutHeight);
			_paintTransform = new Matrix4.identity()
				..translate(size.width / 2.0, size.height / 2.0)
				..rotateZ(rads)
				..translate(-child.size.width / 2.0, -child.size.height / 2.0);
		}
		else {
			performResize();
		}
	}

	@override
	bool hitTestChildren(HitTestResult result, { Offset position }) {
		assert(_paintTransform != null || debugNeedsLayout || child == null);
		if (child == null || _paintTransform == null)
			return false;
		final Matrix4 inverse = new Matrix4.inverted(_paintTransform);
		return child.hitTest(result, position: MatrixUtils.transformPoint(inverse, position));
	}

	void _paintChild(PaintingContext context, Offset offset) {
		context.paintChild(child, offset);
	}

	@override
	void paint(PaintingContext context, Offset offset) {
		if (child != null)
			context.pushTransform(needsCompositing, offset, _paintTransform, _paintChild);
	}

	@override
	void applyPaintTransform(RenderBox child, Matrix4 transform) {
		if (_paintTransform != null)
			transform.multiply(_paintTransform);
		super.applyPaintTransform(child, transform);
	}

	static _degreesToRadians(double degrees) {
		return (degrees * (math.pi / 180));
	}
}





class Codeview extends StatefulWidget {
  @override
  _CodeviewState createState() => _CodeviewState();
}

class _CodeviewState extends State<Codeview> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: WidgetWithCodeView(
  child: MyAwesomeWidget(),
  sourceFilePath: 'lib/singlelayout/customsinglechildlayout.dart',
  codeLinkPrefix: 'https://github.com/yashvenrakumar/flutter_widgets/blob/master/lib/singlelayout/customsinglechildlayout.dart',
      ),
      
    );
  }
}

  class MyAwesomeWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
        child: BodyWidget());
    }
  }
 
 