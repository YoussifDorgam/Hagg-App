import 'dart:collection';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hajjguide/Screens/googlemap_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class GMap extends StatefulWidget {
  GMap({Key? key}) : super(key: key);

  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  Set<Marker> _markers = HashSet<Marker>();
  Set<Polygon> _polygons = HashSet<Polygon>();
  Set<Polyline> _polylines = HashSet<Polyline>();
  Set<Circle> _circles = HashSet<Circle>();
  bool _showMapStyle = false;

  GoogleMapController? _mapController;
  BitmapDescriptor? _markerIcon;

  @override
  void initState() {
    super.initState();
    _setMarkerIcon();
    _setCircles();
  }

  void _setMarkerIcon() async {
    _markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/noodle_icon.png');
  }

  void toggleMapStyle() async {
    String style = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');

    if (_showMapStyle) {
      _mapController!.setMapStyle(style);
    } else {
      _mapController!.setMapStyle(null);
    }
  }

  void _setCircles() {
    _circles.add(
      const Circle(
          circleId: CircleId("0"),
          center: LatLng(37.76493, -122.42432),
          radius: 1000,
          strokeWidth: 2,
          fillColor: Color.fromRGBO(102, 51, 153, .5)),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;

    setState(() {
      _markers.add(
        Marker(
            markerId: const MarkerId("0"),
            position: const LatLng(37.77483, -122.41942),
            infoWindow: const InfoWindow(
              title: "San Francsico",
              snippet: "An Interesting city",
            ),
            icon: _markerIcon!),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffE9EFC9),
        title: const Text('الخرائط',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: const CameraPosition(
              target: LatLng(21.422503, 39.8262461),
              zoom: 15,
            ),
           // mapType: MapType.satellite,
            markers: _markers,
            polygons: _polygons,
            polylines: _polylines,
            circles: _circles,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: ()
              {
                MapUtils.OpenMap(21.422503, 39.8262461);
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffE9EFC9),
                    child: Icon(Icons.share,size: 30,color: Colors.black)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MapUtils{
  MapUtils._();

  static Future<void> OpenMap(
      double lat ,
      double lang ,
      )async{
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$lat,$lang' ;

    if(await launch(googleUrl))
      {
        await launch(googleUrl);
      }else{
      throw 'Coudint catuch the map' ;
    }
   }
}