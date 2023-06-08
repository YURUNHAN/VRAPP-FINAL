import 'package:flutter/material.dart';

class Location {
  const Location({required this.name});

  final String name;
}

typedef ListCallback = Function(Location location, bool chosen);

class LocationItem extends StatelessWidget {
  LocationItem({
    required this.location,
    required this.chosen,
    required this.ListSelectionChanged,
  }) : super(key: ObjectKey(location));

  final Location location;
  final bool chosen;
  final ListCallback ListSelectionChanged;

  Color _getColor(BuildContext context) {
    // The theme depends on the BuildContext because different
    // parts of the tree can have different themes.
    // The BuildContext indicates where the build is
    // taking place and therefore which theme to use.

    return chosen //
        ? Colors.black54
        : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context) {
    if (!chosen) return null;

    return const TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        ListSelectionChanged(location, chosen);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(location.name[0]),
      ),
      title: Text(
        location.name,
        style: _getTextStyle(context),
      ),
    );
  }
}

class LocationSpot extends StatefulWidget {
  const LocationSpot({required this.locations, super.key});

  final List<Location> locations;

  // The framework calls createState the first time
  // a widget appears at a given location in the tree.
  // If the parent rebuilds and uses the same type of
  // widget (with the same key), the framework re-uses
  // the State object instead of creating a new State object.

  @override
  State<LocationSpot> createState() => _LocationSpotState();
}

class _LocationSpotState extends State<LocationSpot> {
  final _Spot = <Location>{};

  void _handleSelectionChanged(Location location, bool chosen) {
    setState(() {
      // When a user changes what's in the cart, you need
      // to change _shoppingCart inside a setState call to
      // trigger a rebuild.
      // The framework then calls build, below,
      // which updates the visual appearance of the app.

      if (!chosen) {
        _Spot.add(location);
      } else {
        _Spot.remove(location);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COUGDIRECT: LOCATIONS'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        children: widget.locations.map((location) {
          return LocationItem(
            location: location,
            chosen: _Spot.contains(location),
            ListSelectionChanged: _handleSelectionChanged,
          );
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'CougDirect: Location List',
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: LocationSpot(
      locations: [
        Location(name: 'CLEVELAND HALL'),
        Location(name: 'CUB'),
        Location(name: 'CUE'),
        Location(name: 'SPARK'),
        Location(name: 'CHINOOK APARTMENTS'),
        Location(name: 'MCEACHERN HALL'),
        Location(name: 'SOUTHSIDE DINING HALL'),
        Location(name: 'STUDENT REC CENTER'),
        Location(name: 'CHINOOK'),
      ],
    ),
  ));
}
