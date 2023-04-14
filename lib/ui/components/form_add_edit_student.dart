import 'package:flutter/material.dart';
import 'package:sekolahku/data/model/student.dart';

class FormAddEditStudent extends StatefulWidget {
  final Student? student;
  const FormAddEditStudent({super.key, required this.student});

  @override
  State<FormAddEditStudent> createState() => FormAddEditStudentState();
}

class FormAddEditStudentState extends State<FormAddEditStudent> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  String? _gender = 'Pria', _degree;
  bool _reading = false, _writing = false, _drawing = false, _isAdd = true;
  List degrees = ['SD', 'SMP', 'SMA', 'SMK', 'S1'];

  @override
  @override
  void initState() {
    super.initState();
    Student? student = widget.student;
    if (student != null) {
      _isAdd = false;
      _firstNameController.text = student.firstName;
      _lastNameController.text = student.lastName;
      _phoneNumberController.text = student.phoneNumber;
      _addressController.text = student.address;
      _gender = student.gender;
      _degree = student.degree;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _isAdd ? const Text('Buat Siswa') : const Text('Edit Siswa'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.save),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _firstNameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nama Depan',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        controller: _lastNameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nama Belakang',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _phoneNumberController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'No. Hp',
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Jenis Kelamin',
                  style: TextStyle(color: Colors.blue),
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Pria',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                    ),
                    const Text('Pria'),
                    Radio(
                      value: 'Wanita',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value;
                        });
                      },
                    ),
                    const Text('Wanita'),
                  ],
                ),
                DropdownButton(
                    isExpanded: true,
                    hint: const Text('Pilih Jenjang'),
                    value: _degree,
                    items: degrees
                        .map((value) => DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _degree = value.toString();
                      });
                    }),
                const SizedBox(height: 16),
                const Text(
                  'Hobi',
                  style: TextStyle(color: Colors.blue),
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  title: const Text('Membaca'),
                  leading: Checkbox(
                    value: _reading,
                    onChanged: (value) {
                      setState(() {
                        _reading = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  title: const Text('Menulis'),
                  leading: Checkbox(
                    value: _writing,
                    onChanged: (value) {
                      setState(() {
                        _writing = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  title: const Text('Menggambar'),
                  leading: Checkbox(
                    value: _drawing,
                    onChanged: (value) {
                      setState(() {
                        _drawing = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  maxLines: 3,
                  controller: _addressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Alamat',
                    alignLabelWithHint: true,
                  ),
                ),
              ],
            )));
  }
}
