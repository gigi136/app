import 'package:flutter/material.dart';

class ServiceSelectionScreen extends StatefulWidget {
  @override
  _ServiceSelectionScreenState createState() => _ServiceSelectionScreenState();
}

class _ServiceSelectionScreenState extends State<ServiceSelectionScreen> {
  final List<Service> _selectedServices = [];

  void _toggleServiceSelection(Service service) {
    setState(() {
      if (_selectedServices.contains(service)) {
        _selectedServices.remove(service);
      } else {
        _selectedServices.add(service);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Search for a service...'),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  GestureDetector(
                    onTap: () {
                      _toggleServiceSelection(Service(
                        imagePath: 'images/carpenters.png',
                        title: 'Carpenter',
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/carpenters.png',
                            width: 100,
                            height: 100,
                          ),
                          Text('Carpenter'),
                        ],
                      ),
                    ),
                  ),
                  // Add more GestureDetector widgets for other services
                  GestureDetector(
                    onTap: () {
                      _toggleServiceSelection(Service(
                        imagePath: 'images/car-repairs.png',
                        title: 'Car Repair',
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/car-repairs.png',
                            width: 100,
                            height: 100,
                          ),
                          Text('Car Repair'),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _toggleServiceSelection(Service(
                        imagePath: 'images/electrician.png',
                        title: 'Electrical',
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/electrician.png',
                            width: 100,
                            height: 100,
                          ),
                          Text('Electrical'),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _toggleServiceSelection(Service(
                        imagePath: 'images/hairstyling.png',
                        title: 'HairDresser',
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/hairstyling.png',
                            width: 100,
                            height: 100,
                          ),
                          Text('HairDresser'),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _toggleServiceSelection(Service(
                        imagePath: 'images/plumbing.png',
                        title: 'Plumber',
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/plumbing.png',
                            width: 100,
                            height: 100,
                          ),
                          Text('Plumber'),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _toggleServiceSelection(Service(
                        imagePath: 'images/welders.png',
                        title: 'BlackSmith',
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/welders.png',
                            width: 100,
                            height: 100,
                          ),
                          Text('BlackSmith'),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _toggleServiceSelection(Service(
                        imagePath: 'images/maintenance.png',
                        title: 'Repairman',
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/maintenance.png',
                            width: 100,
                            height: 100,
                          ),
                          Text('Repairman'),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _toggleServiceSelection(Service(
                        imagePath: 'images/painter.png',
                        title: 'Painter',
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/painter.png',
                            width: 100,
                            height: 100,
                          ),
                          Text('Painter'),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _toggleServiceSelection(Service(
                        imagePath: 'images/tailor.png',
                        title: 'Tailor',
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/tailor.png',
                            width: 100,
                            height: 100,
                          ),
                          Text('Tailor'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next screen with selected services
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NextScreen(selectedServices: _selectedServices),
                  ),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}


class Service {
  final String imagePath;
  final String title;

  Service({required this.imagePath, required this.title});
}


class NextScreen extends StatelessWidget {
  final List<Service> selectedServices;

  const NextScreen({required this.selectedServices});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Services'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: selectedServices.length,
              itemBuilder: (context, index) {
                final service = selectedServices[index];
                return Dismissible(
            key: Key(service.title),
            background: Container(
              color: Colors.grey,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.delete), 

            ),
            onDismissed: (direction) {
              // Remove the dismissed service from the selectedServices list
              // ... (implementation to remove service from _selectedServices)
            },
            child: Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: ListTile(
                leading: Image.asset(service.imagePath),
                title: Text(service.title),
              ),
            ),
          );
        },
      ),
      ),
       Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Implement save logic here, e.g., save to database or local storage
                
                print('Save selected services');
              },
              child: Text('Save'),
            ),
          ),
      ],
    
    ),);
  }
}
