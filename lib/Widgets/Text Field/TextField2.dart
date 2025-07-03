import 'package:flutter/material.dart';

class Textfield2 extends StatefulWidget {
  const Textfield2({super.key});

  @override
  State<Textfield2> createState() => _Textfield2State();
}

class _Textfield2State extends State<Textfield2> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _rollNumberController = TextEditingController();
  final TextEditingController _departmentController = TextEditingController();
  final TextEditingController _sectionController = TextEditingController();

  bool _isBuffering = false;
  String? _message;

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      String section = _sectionController.text.trim().toUpperCase();

      if (section == 'C') {
        setState(() {
          _isBuffering = true;
        });

        // Simulate buffering with a delay
        await Future.delayed(const Duration(seconds: 2));

        setState(() {
          _isBuffering = false;
          _message = 'Sorry, you can\'t go to the Annual Dinner. Due to Your Section';
        });
      } else if (section == 'A' || section == 'B' || section == 'D') {
        setState(() {
          _message = 'Congratulations! You can go to the Annual Dinner.';
        });
      } else {
        setState(() {
          _message = 'Invalid Section. Please enter A, B, C, or D.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Annual Dinner Form',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _rollNumberController,
                decoration: const InputDecoration(
                  labelText: 'Roll Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your roll number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _departmentController,
                decoration: const InputDecoration(
                  labelText: 'Department',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your department';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _sectionController,
                decoration: const InputDecoration(
                  labelText: 'Section',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your section';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit'),
              ),
              const SizedBox(height: 16),
              if (_isBuffering)
                const Center(
                  child: CircularProgressIndicator(),
                )
              else if (_message != null)
                Text(
                  _message!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
