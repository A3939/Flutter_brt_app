import 'package:searchfield/searchfield.dart';

List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "NRG", 'name': "Naroda Gam"},
    'to': {'code': "ICR", 'name': "Iskcon Cross Road"},
    // 'flying_time': '22 Min',
    // 'date': "1 MAY",
    // 'departure_time': "08:00 AM",
    "number": "8D",
    "route": [
      "Naroda",
      "Naroda S.T",
      "Saijpur Towers",
      "Municipal North Zone Oce",
      "Memco Cross Road",
      "Naroda Fruit Market",
      "Ashok Mill",
      "Jeening Press",
      "Arvind Mill",
      "G.C.S. Hospital",
      "Kalupur Ghee Bazar",
      "Kalupur",
      "Sarangpur Darwaja",
      "Karnamukteshwar Mahadev",
      "Raipur Darwaja",
      "Astodiya Darwaja",
      "Astodiya Chakala",
      "Municipal Corporation Oce",
      "Raikhad Char Rasta",
      "Lokamanya Tilak Bag",
      "M J Library",
      "8D bus time schedule & line",
      "Vasundhara Society",
      "LD Engg. College",
      "Gulbai Tekra Approach",
      "Panjrapole Char Rasta",
      "L Colony",
      "Nehrunagar",
      "Jhansi Ki Rani",
      "Shivranjani",
      "Jodhpur Char Rasta",
      "Star Bazaar",
      "ISRO BRTS",
      "Ramdevnagar",
      "Iskcon Cross Road",
    ],
  },
];
var station_List = [
  "RTO Circle",
  "Ranip",
  "Bhavsar Hostel",
  "Akhabar Nagar",
  "Pragati Nagar",
  "Shastri Nagar",
  "Jay Mangal",
  "Sola Cross Road",
  "Valinath Chawk",
  "Memnagar",
  "University",
  "IIM",
  "Himmatlal Park",
  "Shivranjani",
  "Jhansi Ki Rani",
  "Nehru Nagar",
  "Manek Baug",
  "Khodiyar Nagar",
  "Dharnidhar",
  "Anjali Cross Road",
  "Chandra Nagar",
  "Dani Limda Cross Road",
  "Vaikunth Dham Mandir",
  "Swaminarayan College",
  "Kankaria Telephone Exchange",
  "Kankaria Lake",
  "Rambaug",
  "Meninagar Cross Road",
  "Swaminarayan Mandir",
  "Jawahar Chowk",
  "Bhairavnath",
  "Meera Cinema Char Rasta",
  "Dani Limda Road",
  "Chippa Society",
  "Chandola Lake",
  "BRTS Workshop",
  "Kashiram Textiles",
  "Narol",
  "Mukesh Industries",
  "Isanpur",
  "Ghodasar",
  "Jasoda Nagar Char Rasta",
  "Vadodara Expressway Junction",
  "CTM Junction",
  "Purvadeep Society",
  "Jogeshwari",
  "Rabari Colony",
  "Rameshwar Park",
  "Soni Ni Chali",
  "Virat Nagar",
  "Bapunagar Approach",
  "Thakkarbapa Nagar",
  "Lila Nagar",
  "Hirawadi",
  "Vijay Park",
  "Krishna Nagar",
  "Dhanushdhari Mandir",
  "Naroda Patiya",
  "Ramapir Tekra",
  "NR Patel Park",
  "Juna Wadaj",
  "Hanumanpura",
  "Gurudwara",
  "Sarkari Litho Press",
  "Ghuma Gam",
  "Anuradha Society",
  "Bopal Gam",
  "Sterling City",
  "Sarkari Tubewell",
  "Aabad Nagar",
  "Bopal Approch",
  "Ambali Gam",
  "Swagat Bunglows",
  "Jayatilal Park",
  "Ashok Vatika",
  "Antariksh Colony",
  "ISKCON Mandir",
  "ISKCON Cross Road",
  "Ramdev Nagar",
  "Bhavnirjar",
  "Star Bazaar",
  "Jodhpur Char Rasta",
  "Sola Bridge",
  "Satadhar Char Rasta",
  "Bhuyangdev",
  "Parshwanath Jain Mandir",
  "Parasnagar",
  "L Colony",
  "Panjarapol",
  "Gulbhai Tekra Approach",
  "Law College",
  "Townhall",
  "Commerce Six Road",
  "LD Engineering College",
  "Maninagar Railway Station",
  "Bethak",
  "Naroda Gam",
  "Vasna",
  "Ajit Mill",
  "Ram Rajya Nagar",
  "Odhav",
  "Grid Station",
  "Odhav Fire Station",
  "Vallabhnagar",
  "Chhotalal ni Chali",
  "Morlidhar Society",
  "Odhav Talav",
  "SP Ring Road, Odhav",
  "Science City Approach",
  "Zundal Circle",
  "Sarthi Bunglows",
  "Chandkheda Gam",
  "Shiv Shakti Nagar",
  "Janta Nagar",
  "Avani Bhavan",
  "Visat Junction",
  "Motera Cross Road",
  "Sabarmati Police Station",
  "Municipal Snanagar",
  "Rathi Apartment",
  "Sabarmati Powerhouse",
  "Kalupur Railway Station",
  "Sarangpur Darwaja",
  "Karnamukteshwar Mahadev",
  "Raipur Darwaja",
  "Astodia Darwaja",
  "Astodia Chakla",
  "AMC Corporation ",
  "Raikhad Char Rasta",
  "Lokmanya Tilak Baug",
  "GCS Hospital",
  "Arvind Mill",
  "Jeening Press",
  "Ashok Mill",
  "Naroda Fruit Market",
  "Memco Cross Road",
  "Corporation North Zone Office",
  "GD High School",
  "Saijpur Towers",
  "Mangal Park",
  "Bhulbhai Park",
  "Geeta Mandir ST Stand",
];
