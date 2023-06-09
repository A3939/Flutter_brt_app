import 'package:searchfield/searchfield.dart';

List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "NRG", 'name': "Naroda Gam"},
    'to': {'code': "ICR", 'name': "Iskcon Cross Road"},
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
      "ISRO ",
      "Ramdevnagar",
      "Iskcon Cross Road",
    ],
  },
  {
    'from': {'code': "MNG", 'name': "Maninagar"},
    'to': {'code': "GHG", 'name': "Ghuma Gam"},
    "number": "1D",
    "route": [
      "Maninagar ",
      "Maninagar Char Rasta ",
      "Rambaug ",
      "Kankariya Lake ",
      "Kankariya Telephone Exchange ",
      "Swaminarayan College ",
      "Danilimda Char Rasta ",
      "Khodiyarnagar ",
      "Chandranagar ",
      "Anjali",
      "Dharnidhar Derasar ",
      "Manekbaug ",
      "Nehrunagar ",
      "Jhansi Ki Rani ",
      "Shivranjani ",
      "Jodhpur Char Rasta ",
      "Star Bazaar ",
      "ISRO ",
      "Ramdevnagar ",
      "Iskcon Cross Road ",
      "Iskcon Mandir ",
      "Antariksh Colony ",
      "Ashok Vatika ",
      "Jayantilal Park ",
      "Swagat Bungalow ",
      "Ambli Gam ",
      "Bopal Approach ",
      "Samarpan Bungalows ",
      "Bhavya Park ",
      "Sterling City ",
      "Bopal Gam ",
      "Little Wings ",
      "Ghuma Gam ",
    ],
  },
  {
    'from': {'code': "MNG", 'name': "Ghuma Gam"},
    'to': {'code': "JMG", 'name': "Jaimangal"},
    "number": "1E",
    "route": [
      "Ghuma Gam ",
      "Little Wings ",
      "Bopal Gam ",
      "Sterling City ",
      "Bhavya Park ",
      "Samarpan Bungalows ",
      "Bopal Approach ",
      "Ambli Gam ",
      "Swagat Bungalow ",
      "Jayantilal Park ",
      "Ashok Vatika ",
      "Antariksh Colony ",
      "Jeutaram No Kuvo / ISRO Colony",
      "Iskcon Mandir ",
      "Big Bazar",
      "Iskcon Cross Road ",
      "Ramdevnagar ",
      "Ramdev Nagar",
      "ISRO ",
      "Star Bazaar ",
      "Jodhpur Char Rasta ",
      "Himmatlal Park ",
      "Andhjan Mandal ",
      "University ",
      "Memnagar ",
      "Shree Valinath Chowk ",
      "Sola Cross Road ",
      "Jaimangal ",
    ],
  },
  {
    'from': {'code': "MNG", 'name': "Maninagar"},
    'to': {'code': "KRT", 'name': "Kashiram Textiles"},
    "number": "1E",
    "route": [
      "Maninagar ",
      "Maninagar Char Rasta ",
      "Rambaug ",
      "Kankariya Lake ",
      "Kankariya Telephone Exchange ",
      "Swaminarayan College ",
      "Danilimda Road ",
      "Chhipa Society ",
      "Chandola Lake ",
      "Workshop ",
      "Kashiram Textiles ",
    ],
  },
  {
    'from': {'code': "CPS", 'name': "Chhipa Society"},
    'to': {'code': "GHG", 'name': "Ghuma Gam"},
    "number": "1S",
    "route": [
      "Chhipa Society ",
      "Danilimda Road ",
      "Danilimda Char Rasta ",
      "Khodiyarnagar ",
      "Chandranagar ",
      "Anjali ",
      "Dharnidhar Derasar ",
      "Manekbaug ",
      "Nehrunagar ",
      "Jhansi Ki Rani ",
      "Shivranjani ",
      "Jodhpur Char Rasta ",
      "Star Bazaar ",
      "ISRO ",
      "Ramdevnagar ",
      "Iskcon Cross Road ",
      "Iskcon Mandir ",
      "Antariksh Colony ",
      "Ashok Vatika ",
      "Jayantilal Park ",
      "Swagat Bungalow ",
      "Ambli Gam ",
      "Bopal Approach ",
      "Samarpan Bungalows ",
      "Bhavya Park ",
      "Sterling City ",
      "Bopal Gam ",
      "Little Wings ",
      "Ghuma Gam ",
    ],
  },
  {
    'from': {'code': "CPS", 'name': "Chhipa Society"},
    'to': {'code': "MNG", 'name': "Maninagar"},
    "number": "1S",
    "route": [
      "Chhipa Society ",
      "Danilimda Road ",
      "Vaikunth Dham Mandir ",
      "Swaminarayan College ",
      "Kankariya Telephone Exchange ",
      "Kankariya Lake ",
      "Rambaug ",
      "Maninagar Char Rasta ",
      "Maninagar ",
    ],
  },
  {
    'from': {'code': "JMG", 'name': "Jaimangal"},
    'to': {'code': "GMG", 'name': "Ghuma Gam"},
    "number": "1S",
    "route": [
      "Jaimangal ",
      "Sola Cross Road ",
      "Shree Valinath Chowk ",
      "Memnagar ",
      "University ",
      "Andhjan Mandal ",
      "Himmatlal Park ",
      "Jodhpur Char Rasta ",
      "Star Bazaar ",
      "ISRO ",
      "Ramdevnagar ",
      "Iskcon Cross Road ",
      "Iskcon Mandir ",
      "Antariksh Colony ",
      "Ashok Vatika ",
      "Jayantilal Park ",
      "Swagat Bungalow ",
      "Ambli Gam ",
      "Bopal Approach ",
      "Samarpan Bungalows ",
      "Bhavya Park ",
      "Sterling City ",
      "Bopal Gam ",
      "Little Wings ",
      "Ghuma Gam ",
    ],
  },
  {
    'from': {'code': "GMG", 'name': "Ghuma Gam"},
    'to': {'code': "MNG", 'name': "Maninagar"},
    "number": "1U",
    "route": [
      "Ghuma Gam ",
      "Little Wings ",
      "Bopal Gam ",
      "Sterling City ",
      "Bhavya Park ",
      "Samarpan Bungalows ",
      "Bopal Approach ",
      "Ambli Gam ",
      "Swagat Bungalow ",
      "Jayantilal Park ",
      "Ashok Vatika ",
      "Antariksh Colony ",
      "Iskcon Mandir ",
      "Iskcon Cross Road ",
      "Ramdevnagar ",
      "ISRO ",
      "Star Bazaar ",
      "Jodhpur Char Rasta ",
      "Shivranjani ",
      "Jhansi Ki Rani ",
      "Nehrunagar ",
      "Manekbaug ",
      "Dharnidhar Derasar ",
      "Anjali ",
      "Chandranagar ",
      "Khodiyarnagar ",
      "Danilimda Char Rasta ",
      "Swaminarayan College ",
      "Kankariya Telephone Exchange ",
      "Kankariya Lake ",
      "Rambaug ",
      "Maninagar Char Rasta ",
      "Maninagar ",
    ],
  },
  {
    'from': {'code': "RRA", 'name': "S.P.Ring Road Approach"},
    'to': {'code': "BDC", 'name': "Bhadaj Circle"},
    "number": "2D",
    "route": [
      "S.P.Ring Road Approach ",
      "Odhav Talav ",
      "Morlidhar Society ",
      "Chhotalal Ni Chali ",
      "Vallabh Nagar ",
      "Odhav Fire Station ",
      "Grid Station ",
      "Soni Ni Chali ",
      "Ajit Mill Char Rasta ",
      "Soma Textiles ",
      "Narayana Hospital ",
      "Rakhiyal Char Rasta ",
      "Patel Mills ",
      "Kalupur ",
      "Prem Darwaja ",
      "Delhi Darwaja ",
      "Sarkari Litho Press Cabin",
      "Sarkari Litho Press ",
      "Hanumanpura ",
      "Gurudwara ",
      "Juna Vadaj ",
      "Ramapir No Tekaro ",
      "N R Patel Park ",
      "Bhavsar Hostel ",
      "Akhbarnagar ",
      "Pragatinagar ",
      "Shastrinagar ",
      "Jaimangal ",
      "Parasnagar ",
      "Parshwanath Jain Mandir ",
      "Bhuyangdev ",
      "Sattadhar Char Rasta ",
      "Sola Bridge ",
      "Science City Approach ",
      "Shukan Mall",
      "Hetarth Party Plot",
      "Science City",
      "Bhadaj Circle",
    ],
  },
  {
    'from': {'code': "BDC", 'name': "Bhadaj Circle"},
    'to': {'code': "JMG", 'name': "Jaimangal"},
    "number": "2E",
    "route": [
      "Bhadaj Circle",
      "Science City",
      "Hetarth Party Plot",
      "Shukan Mall",
      "Science City Approach ",
      "Sola Bridge ",
      "Sattadhar Char Rasta ",
      "Bhuyangdev ",
      "Parshwanath Jain Mandir ",
      "Parasnagar ",
      "Jaimangal ",
    ],
  },
  {
    'from': {'code': "JMG", 'name': "Jaimangal "},
    'to': {'code': "BDC", 'name': "Bhadaj Circle"},
    "number": "2S",
    "route": [
      "Jaimangal ",
      "Parasnagar ",
      "Parshwanath Jain Mandir ",
      "Bhuyangdev ",
      "Sattadhar Char Rasta ",
      "Sola Bridge ",
      "Science City Approach ",
      "Hetarth Party Plot",
      "Science City",
      "Bhadaj Circle",
    ],
  },
  {
    'from': {'code': "BDC", 'name': "Bhadaj Circle"},
    'to': {'code': "RRA", 'name': "S.P.Ring Road Approach"},
    "number": "2U",
    "route": [
      "Bhadaj Circle",
      "Science City",
      "Hetarth Party Plot",
      "Shukan Mall",
      "Science City Approach ",
      "Sola Bridge ",
      "Sattadhar Char Rasta ",
      "Bhuyangdev ",
      "Parshwanath Jain Mandir ",
      "Parasnagar ",
      "Jaimangal ",
      "Shastrinagar ",
      "Pragatinagar ",
      "Akhbarnagar ",
      "Bhavsar Hostel ",
      "N R Patel Park ",
      "Ramapir No Tekaro ",
      "Juna Vadaj ",
      "Gurudwara ",
      "Hanumanpura ",
      "Sarkari Litho Press ",
      "Sarkari Litho Press Cabin",
      "Delhi Darwaja ",
      "Prem Darwaja ",
      "Kalupur Ghee Bazar ",
      "Kalupur ",
      "Patel Mills ",
      "Rakhiyal Char Rasta ",
      "Narayana Hospital ",
      "Soma Textiles ",
      "Ajit Mill Char Rasta ",
      "Soni Ni Chali ",
      "Grid Station ",
      "Odhav Fire Station ",
      "Vallabh Nagar ",
      "Chhotalal Ni Chali ",
      "Morlidhar Society ",
      "Odhav Talav ",
      "S.P.Ring Road Approach ",
    ],
  },
  {
    'from': {'code': "MNG", 'name': "Maninagar "},
    'to': {'code': "CKG", 'name': "Chandkheda Gam"},
    "number": "3D",
    "route": [
      "Maninagar ",
      "Swaminarayan Mandir ",
      "Jawahar Chowk ",
      "Bhairavnath Road ",
      "Mira Cinema Char Rasta ",
      "Kankariya Telephone Exchange ",
      "Swaminarayan College ",
      "Danilimda Char Rasta ",
      "Khodiyarnagar ",
      "Chandranagar ",
      "Anjali ",
      "Dharnidhar Derasar ",
      "Manekbaug ",
      "Nehrunagar ",
      "Jhansi Ki Rani ",
      "Shivranjani ",
      "Himmatlal Park ",
      "Andhjan Mandal ",
      "University ",
      "Memnagar ",
      "Shree Valinath Chowk ",
      "Sola Cross Road ",
      "Jaimangal ",
      "Shastrinagar ",
      "Pragatinagar ",
      "Akhbarnagar ",
      "Bhavsar Hostel ",
      "Ranip Cross Road ",
      "R.T.O.Circle ",
      "Sabarmati Power House ",
      "Rathi Apartment ",
      "Sabarmati Municipal Swimming Pool ",
      "Sabarmati Police Station ",
      "Motera Cross Road ",
      "Visat Gandhinagar Junction ",
      "Ongc Avani Bhavan ",
      "Jantanagar ",
      "Shiv Shaktinagar ",
      "Chandkheda Gam ",
    ],
  },
  {
    'from': {'code': "MNG", 'name': "Maninagar "},
    'to': {'code': "RTO", 'name': "R.T.O.Circle "},
    "number": "3D",
    "route": [
      "Maninagar ",
      "Swaminarayan Mandir ",
      "Jawahar Chowk ",
      "Bhairavnath Road ",
      "Mira Cinema Char Rasta ",
      "Kankariya Telephone Exchange ",
      "Swaminarayan College ",
      "Danilimda Char Rasta ",
      "Khodiyarnagar ",
      "Chandranagar ",
      "Anjali ",
      "Dharnidhar Derasar ",
      "Manekbaug ",
      "Nehrunagar ",
      "Jhansi Ki Rani ",
      "Shivranjani ",
      "Himmatlal Park ",
      "Andhjan Mandal ",
      "University ",
      "Memnagar ",
      "Shree Valinath Chowk ",
      "Sola Cross Road ",
      "Jaimangal ",
      "Shastrinagar ",
      "Pragatinagar ",
      "Akhbarnagar ",
      "Bhavsar Hostel ",
      "Ranip Cross Road ",
      "R.T.O.Circle ",
    ],
  },
  {
    'from': {'code': "MNG", 'name': "Maninagar "},
    'to': {'code': "KRT", 'name': "Kashiram Textiles"},
    "number": "3E",
    "route": [
      "Maninagar ",
      "Swaminarayan Mandir ",
      "Jawahar Chowk ",
      "Bhairavnath Road ",
      "Mira Cinema Char Rasta ",
      "Kankariya Telephone Exchange ",
      "Swaminarayan College ",
      "Danilimda Road ",
      "Chhipa Society ",
      "Chandola Lake ",
      "Workshop ",
      "Kashiram Textiles ",
    ],
  },
  {
    'from': {'code': "CPS", 'name': "Chhipa Society "},
    'to': {'code': "MNG", 'name': "Maninagar "},
    "number": "3S",
    "route": [
      "Chhipa Society ",
      "Danilimda Road ",
      "Vaikunth Dham Mandir ",
      "Swaminarayan College ",
      "Kankariya Telephone Exchange ",
      "Kankariya Lake ",
      "Rambaug ",
      "Maninagar Char Rasta ",
      "Maninagar ",
    ],
  },
  {
    'from': {'code': "CKG", 'name': "Chandkheda Gam "},
    'to': {'code': "MNG", 'name': "Maninagar "},
    "number": "3U",
    "route": [
      "Chandkheda Gam ",
      "Shiv Shaktinagar ",
      "Jantanagar ",
      "Ongc Avani Bhavan ",
      "Visat Gandhinagar Junction ",
      "Motera Cross Road ",
      "Sabarmati Police Station ",
      "Sabarmati Municipal Swimming Pool ",
      "Rathi Apartment ",
      "Sabarmati Power House ",
      "R.T.O.Circle ",
      "Ranip Cross Road ",
      "Bhavsar Hostel ",
      "Akhbarnagar ",
      "Pragatinagar ",
      "Shastrinagar ",
      "Jaimangal ",
      "Sola Cross Road ",
      "Shree Valinath Chowk ",
      "Memnagar ",
      "University ",
      "Andhjan Mandal ",
      "Himmatlal Park ",
      "Shivranjani ",
      "Jhansi Ki Rani ",
      "Nehrunagar ",
      "Manekbaug ",
      "Dharnidhar Derasar ",
      "Anjali ",
      "Chandranagar ",
      "Khodiyarnagar ",
      "Danilimda Char Rasta ",
      "Swaminarayan College ",
      "Kankariya Telephone Exchange ",
      "Kankariya Lake ",
      "Rambaug ",
      "Maninagar Char Rasta ",
      "Maninagar ",
    ],
  },
  {
    'from': {'code': "RTO", 'name': "R.T.O.Circle "},
    'to': {'code': "MNG", 'name': "Maninagar "},
    "number": "3U",
    "route": [
      "R.T.O.Circle ",
      "Ranip Cross Road ",
      "Bhavsar Hostel ",
      "Akhbarnagar ",
      "Pragatinagar ",
      "Shastrinagar ",
      "Jaimangal ",
      "Sola Cross Road ",
      "Shree Valinath Chowk ",
      "Memnagar ",
      "University ",
      "Andhjan Mandal ",
      "Himmatlal Park ",
      "Shivranjani ",
      "Jhansi Ki Rani ",
      "Nehrunagar ",
      "Manekbaug ",
      "Dharnidhar Derasar ",
      "Anjali ",
      "Chandranagar ",
      "Khodiyarnagar ",
      "Danilimda Char Rasta ",
      "Swaminarayan College ",
      "Kankariya Telephone Exchange ",
      "Kankariya Lake ",
      "Rambaug ",
      "Maninagar Char Rasta ",
      "Maninagar ",
    ],
  },
  {
    'from': {'code': "LDE", 'name': "L.D.Engineering College "},
    'to': {'code': "DC", 'name': "DCIS Circle"},
    "number": "4D",
    "route": [
      "LD Engg. College ",
      "Gulbai Tekra Approach ",
      "Panjrapole Char Rasta ",
      "L Colony ",
      "Nehrunagar ",
      "Jhansi Ki Rani ",
      "Shivranjani ",
      "Himmatlal Park ",
      "Andhjan Mandal ",
      "University ",
      "Memnagar ",
      "Shree Valinath Chowk ",
      "Sola Cross Road ",
      "Jaimangal ",
      "Shastrinagar ",
      "Pragatinagar ",
      "Akhbarnagar ",
      "Bhavsar Hostel ",
      "Ranip Cross Road ",
      "R.T.O.Circle ",
      "Sabarmati Power House ",
      "Rathi Apartment ",
      "Sabarmati Municipal Swimming Pool ",
      "Sabarmati Police Station ",
      "Motera Cross Road ",
      "Visat Gandhinagar Junction ",
      "Ongc Avani Bhavan ",
      "Jantanagar ",
      "Shiv Shaktinagar ",
      "Chandkheda Gam ",
      "Sarthi Bungalows ",
      "DCIS Circle (Zundal Circle) ",
    ],
  },
  {
    'from': {'code': "LDE", 'name': "L.D.Engineering College "},
    'to': {'code': "TMD", 'name': "Trimandir "},
    "number": "4D",
    "route": [
      "LD Engg. College ",
      "Gulbai Tekra Approach ",
      "Panjrapole Char Rasta ",
      "L Colony ",
      "Nehrunagar ",
      "Jhansi Ki Rani ",
      "Shivranjani ",
      "Himmatlal Park ",
      "Andhjan Mandal ",
      "University ",
      "Memnagar ",
      "Shree Valinath Chowk ",
      "Sola Cross Road ",
      "Jaimangal ",
      "Shastrinagar ",
      "Pragatinagar ",
      "Akhbarnagar ",
      "Bhavsar Hostel ",
      "Ranip Cross Road ",
      "R.T.O.Circle ",
      "Sabarmati Power House ",
      "Rathi Apartment ",
      "Sabarmati Municipal Swimming Pool ",
      "Sabarmati Police Station ",
      "Motera Cross Road ",
      "Visat Gandhinagar Junction ",
      "Ongc Avani Bhavan ",
      "Jantanagar ",
      "Shiv Shaktinagar ",
      "Chandkheda Gam ",
      "Sarthi Bungalows ",
      "DCIS Circle (Zundal Circle) ",
      "Kalpataru Park",
      "Adalaj Circle",
      "Adalaj S.T.Stand",
      "Trimandir",
    ],
  },
  {
    'from': {'code': "DC", 'name': "DCIS Circle "},
    'to': {'code': "SSN", 'name': "Shastrinagar "},
    "number": "4E",
    "route": [
      "DCIS Circle (Zundal Circle) ",
      "Sarthi Bungalows ",
      "Chandkheda Gam ",
      "Shiv Shaktinagar ",
      "Jantanagar ",
      "Ongc Avani Bhavan ",
      "Visat Gandhinagar Junction ",
      "Motera Cross Road ",
      "Sabarmati Police Station ",
      "Sabarmati Municipal Swimming Pool ",
      "Rathi Apartment ",
      "Sabarmati Power House ",
      "R.T.O.Circle ",
      "Ranip Cross Road ",
      "Bhavsar Hostel ",
      "Akhbarnagar ",
      "Pragatinagar ",
      "Shastrinagar ",
    ],
  },
  {
    'from': {'code': "LDE", 'name': "L.D.Engineering College "},
    'to': {'code': "JMG", 'name': "Jaimangal "},
    "number": "4E",
    "route": [
      "LD Engg. College ",
      "Gulbai Tekra Approach ",
      "Panjrapole Char Rasta ",
      "L Colony ",
      "Nehrunagar ",
      "Jhansi Ki Rani ",
      "Shivranjani ",
      "Himmatlal Park ",
      "Andhjan Mandal ",
      "University ",
      "Memnagar ",
      "Shree Valinath Chowk ",
      "Sola Cross Road ",
      "Jaimangal ",
    ],
  },
  {
    'from': {'code': "TMD", 'name': "Trimandir  "},
    'to': {'code': "STB", 'name': "Sarthi Bungalows "},
    "number": "4E",
    "route": [
      "Trimandir",
      "Adalaj S.T.Stand",
      "Adalaj Circle",
      "Kalpataru Park",
      "DCIS Circle (Zundal Circle) ",
      "Sarthi Bungalows ",
    ],
  },
  {
    'from': {'code': "JMG", 'name': "Jaimangal "},
    'to': {'code': "LDE", 'name': "L.D.Engineering College "},
    "number": "4S",
    "route": [
      "Jaimangal ",
      "Sola Cross Road ",
      "Shree Valinath Chowk ",
      "Memnagar ",
      "University ",
      "Andhjan Mandal ",
      "Himmatlal Park ",
      "Shivranjani ",
      "Jhansi Ki Rani ",
      "Nehrunagar ",
      "L Colony ",
      "Panjrapole Char Rasta ",
      "Gulbai Tekra Approach ",
      "LD Engg. College ",
    ],
  },
  {
    'from': {'code': "PGN", 'name': "Pragatinagar "},
    'to': {'code': "DC", 'name': "DCIS Circle "},
    "number": "4S",
    "route": [
      "Pragatinagar ",
      "Akhbarnagar ",
      "Bhavsar Hostel ",
      "Ranip Cross Road ",
      "R.T.O.Circle ",
      "Sabarmati Power House ",
      "Rathi Apartment ",
      "Sabarmati Municipal Swimming Pool ",
      "Sabarmati Police Station ",
      "Motera Cross Road ",
      "Visat Gandhinagar Junction ",
      "Ongc Avani Bhavan ",
      "Jantanagar ",
      "Shiv Shaktinagar ",
      "Chandkheda Gam ",
      "Sarthi Bungalows ",
      "DCIS Circle (Zundal Circle) ",
    ],
  },
  {
    'from': {'code': "STB", 'name': "Sarthi Bungalows "},
    'to': {'code': "TMD", 'name': "Trimandir "},
    "number": "4S",
    "route": [
      "Sarthi Bungalows ",
      "Ring Road Circle",
      "Kalpataru Park",
      "Adalaj Circle",
      "Adalaj S.T.Stand",
      "Trimandir",
    ],
  },
  {
    'from': {'code': "DC", 'name': "DCIS Circle "},
    'to': {'code': "LDE", 'name': "L.D.Engineering College "},
    "number": "4U",
    "route": [
      "DCIS Circle (Zundal Circle) ",
      "Sarthi Bungalows ",
      "Chandkheda Gam ",
      "Shiv Shaktinagar ",
      "Jantanagar ",
      "Ongc Avani Bhavan ",
      "Visat Gandhinagar Junction ",
      "Motera Cross Road ",
      "Sabarmati Police Station ",
      "Sabarmati Municipal Swimming Pool ",
      "Rathi Apartment ",
      "Sabarmati Power House ",
      "R.T.O.Circle ",
      "Ranip Cross Road ",
      "Bhavsar Hostel ",
      "Akhbarnagar ",
      "Pragatinagar ",
      "Shastrinagar ",
      "Jaimangal ",
      "Sola Cross Road ",
      "Shree Valinath Chowk ",
      "Memnagar ",
      "University ",
      "Andhjan Mandal ",
      "Himmatlal Park ",
      "Shivranjani ",
      "Jhansi Ki Rani ",
      "Nehrunagar ",
      "L Colony ",
      "Panjrapole Char Rasta ",
      "Gulbai Tekra Approach ",
      "LD Engg. College ",
    ],
  },
  {
    'from': {'code': "TMD", 'name': "Trimandir "},
    'to': {'code': "LDE", 'name': "L.D.Engineering College "},
    "number": "4U",
    "route": [
      "Trimandir",
      "Adalaj S.T.Stand",
      "Adalaj Circle",
      "Kalpataru Park",
      "DCIS Circle (Zundal Circle) ",
      "Sarthi Bungalows ",
      "Chandkheda Gam ",
      "Shiv Shaktinagar ",
      "Jantanagar ",
      "Ongc Avani Bhavan ",
      "Visat Gandhinagar Junction ",
      "Motera Cross Road ",
      "Sabarmati Police Station ",
      "Sabarmati Municipal Swimming Pool ",
      "Rathi Apartment ",
      "Sabarmati Power House ",
      "R.T.O.Circle ",
      "Ranip Cross Road ",
      "Bhavsar Hostel ",
      "Akhbarnagar ",
      "Pragatinagar ",
      "Shastrinagar ",
      "Jaimangal ",
      "Sola Cross Road ",
      "Shree Valinath Chowk ",
      "Memnagar ",
      "University ",
      "Andhjan Mandal ",
      "Himmatlal Park ",
      "Shivranjani ",
      "Jhansi Ki Rani ",
      "Nehrunagar ",
      "L Colony ",
      "Panjrapole Char Rasta ",
      "Gulbai Tekra Approach ",
      "LD Engg. College ",
    ],
  },
];

// var station_List = [
//   "RTO Circle",
//   "Ranip",
//   "Bhavsar Hostel",
//   "Akhabar Nagar",
//   "Pragati Nagar",
//   "Shastri Nagar",
//   "Jay Mangal",
//   "Sola Cross Road",
//   "Valinath Chawk",
//   "Memnagar",
//   "University",
//   "IIM",
//   "Himmatlal Park",
//   "Shivranjani",
//   "Jhansi Ki Rani",
//   "Nehru Nagar",
//   "Manek Baug",
//   "Khodiyar Nagar",
//   "Dharnidhar",
//   "Anjali Cross Road",
//   "Chandra Nagar",
//   "Dani Limda Cross Road",
//   "Vaikunth Dham Mandir",
//   "Swaminarayan College",
//   "Kankaria Telephone Exchange",
//   "Kankaria Lake",
//   "Rambaug",
//   "Meninagar Cross Road",
//   "Swaminarayan Mandir",
//   "Jawahar Chowk",
//   "Bhairavnath",
//   "Meera Cinema Char Rasta",
//   "Dani Limda Road",
//   "Chippa Society",
//   "Chandola Lake",
//   " Workshop",
//   "Kashiram Textiles",
//   "Narol",
//   "Mukesh Industries",
//   "Isanpur",
//   "Ghodasar",
//   "Jasoda Nagar Char Rasta",
//   "Vadodara Expressway Junction",
//   "CTM Junction",
//   "Purvadeep Society",
//   "Jogeshwari",
//   "Rabari Colony",
//   "Rameshwar Park",
//   "Soni Ni Chali",
//   "Virat Nagar",
//   "Bapunagar Approach",
//   "Thakkarbapa Nagar",
//   "Lila Nagar",
//   "Hirawadi",
//   "Vijay Park",
//   "Krishna Nagar",
//   "Dhanushdhari Mandir",
//   "Naroda Patiya",
//   "Ramapir Tekra",
//   "NR Patel Park",
//   "Juna Wadaj",
//   "Hanumanpura",
//   "Gurudwara",
//   "Sarkari Litho Press",
//   "Ghuma Gam",
//   "Anuradha Society",
//   "Bopal Gam",
//   "Sterling City",
//   "Sarkari Tubewell",
//   "Aabad Nagar",
//   "Bopal Approch",
//   "Ambali Gam",
//   "Swagat Bunglows",
//   "Jayatilal Park",
//   "Ashok Vatika",
//   "Antariksh Colony",
//   "ISKCON Mandir",
//   "ISKCON Cross Road",
//   "Ramdev Nagar",
//   "Bhavnirjar",
//   "Star Bazaar",
//   "Jodhpur Char Rasta",
//   "Sola Bridge",
//   "Satadhar Char Rasta",
//   "Bhuyangdev",
//   "Parshwanath Jain Mandir",
//   "Parasnagar",
//   "L Colony",
//   "Panjarapol",
//   "Gulbhai Tekra Approach",
//   "Law College",
//   "Townhall",
//   "Commerce Six Road",
//   "LD Engineering College",
//   "Maninagar Railway Station",
//   "Bethak",
//   "Naroda Gam",
//   "Vasna",
//   "Ajit Mill",
//   "Ram Rajya Nagar",
//   "Odhav",
//   "Grid Station",
//   "Odhav Fire Station",
//   "Vallabhnagar",
//   "Chhotalal ni Chali",
//   "Morlidhar Society",
//   "Odhav Talav",
//   "SP Ring Road, Odhav",
//   "Science City Approach",
//   "Zundal Circle",
//   "Sarthi Bunglows",
//   "Chandkheda Gam",
//   "Shiv Shakti Nagar",
//   "Janta Nagar",
//   "Avani Bhavan",
//   "Visat Junction",
//   "Motera Cross Road",
//   "Sabarmati Police Station",
//   "Municipal Snanagar",
//   "Rathi Apartment",
//   "Sabarmati Powerhouse",
//   "Kalupur Railway Station",
//   "Sarangpur Darwaja",
//   "Karnamukteshwar Mahadev",
//   "Raipur Darwaja",
//   "Astodia Darwaja",
//   "Astodia Chakla",
//   "AMC Corporation ",
//   "Raikhad Char Rasta",
//   "Lokmanya Tilak Baug",
//   "GCS Hospital",
//   "Arvind Mill",
//   "Jeening Press",
//   "Ashok Mill",
//   "Naroda Fruit Market",
//   "Memco Cross Road",
//   "Corporation North Zone Office",
//   "GD High School",
//   "Saijpur Towers",
//   "Mangal Park",
//   "Bhulbhai Park",
//   "Geeta Mandir ST Stand",
// ];

var station_List = [
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
  "ISRO ",
  "Ramdevnagar",
  "Iskcon Cross Road",
];
