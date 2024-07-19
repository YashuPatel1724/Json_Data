class UserModal {
  late int id;
  late String name, username, email, phone, website;
  late Address address;
  late Company company;

  UserModal({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.address,
    required this.company,
  });

  factory UserModal.fromjson(Map m1) {
    return UserModal(
        id: m1['id'],
        name: m1['name'],
        username: m1['username'],
        email: m1['email'],
        phone: m1['email'],
        website: m1['website'],
        address: Address.fromjson(m1['address']),
        company: Company.fromjson(m1['company']));
  }
}

class Address {
  late String street, suite, city, zipcode;
  late Geo geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  factory Address.fromjson(Map m1) {
    return Address(
        street: m1['street'],
        suite: m1['street'],
        city: m1['city'],
        zipcode: m1['zipcode'],
        geo: Geo.fromjson(m1['geo']));
  }
}

class Geo {
  late String lat, lng;

  Geo({required this.lat, required this.lng});

  factory Geo.fromjson(Map m1) {
    return Geo(lat: m1['lat'], lng: m1['lng']);
  }
}

class Company {
  late String name, catchPhrase, bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.fromjson(Map m1) {
    return Company(
        name: m1['name'], catchPhrase: m1['catchPhrase'], bs: m1['bs']);
  }
}
