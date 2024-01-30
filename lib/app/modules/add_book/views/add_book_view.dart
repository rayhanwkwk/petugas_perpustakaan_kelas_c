import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Buku'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.judulController,
                decoration: InputDecoration(hintText: "Judul buku"),
                validator: (value) {
                  if (value!.length < 2) {
                    return "data tidak boleh kosong";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.penulisController,
                decoration: InputDecoration(hintText: "Penulis buku"),
                validator: (value) {
                  if (value!.length < 2) {
                    return "data tidak boleh kosong";
                  }
                  return null;
                },
              ),TextFormField(
                controller: controller.penerbitController,
                decoration: InputDecoration(hintText: "Penerbit buku"),
                validator: (value) {
                  if (value!.length < 2) {
                    return "data tidak boleh kosong";
                  }
                  return null;
                },
              ),TextFormField(
                controller: controller.tahunterbitController,
                decoration: InputDecoration(hintText: "Tahun terbit"),
                validator: (value) {
                  if (value!.length < 2) {
                    return "data tidak boleh kosong";
                  }
                  return null;
                },
              ),
              Obx(() => controller.loading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                  onPressed: () {
                    controller.addBuku();
                  },
                  child: Icon(Icons.add_box)
              ))
            ],
          ),
        ),
      ),
    );
  }

}
