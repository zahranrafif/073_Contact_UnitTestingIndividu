class Contact {
  String name;
  String contact;
  Contact({required this.name, required this.contact});

  void delete() {
    // Assuming you want to reset the properties to null.
    name = '';
    contact = '';
  }
}
