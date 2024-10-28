// this data should comes from api,
//there is no api for that, so that we are using some model data.
//creating our own.
List<Map<String, dynamic>> placeDetails = [
  {
    "id": 1,
    "createDate": DateTime(2024, 10, 26),
    "name": "Raj River Resort",
    "location": "Cox-Bazar, Chattogram",
    "description":
        "A serene getaway near the longest beach in the world, where you can enjoy breathtaking views of the ocean, relax by the infinity pool, and immerse yourself in nature’s beauty. A serene getaway near the longest beach in the world, where you can enjoy breathtaking views of the ocean, relax by the infinity pool, and immerse yourself in nature’s beauty, beadalikfjuwefujsdfefoif sdafwffeofuoisfoie jdlkfew90ofuawofoif [pdfgk;[op,trg[opkfhp[otrl;tropfg;'trp[fgh;rtp[ghl;ktropfkop]]]]]]",
    "price": "15k",
    "ratings": "4.5",
    "image": "raj_river_resort.jpg",
  },
  {
    "id": 2,
    "createDate": DateTime(2024, 9, 15),
    "name": "Sayeman Beach Resort",
    "location": "Marine Drive, Kolatoli, Cox’s Bazar",
    "description":
        "Located at a scenic beachfront in Cox’s Bazar, this iconic resort offers luxurious accommodations, panoramic sea views, an infinity pool, and premium dining options.",
    "price": "18k",
    "ratings": "4.7",
    "image": "sayeman_beach_resort.jpg",
  },
  {
    "id": 3,
    "createDate": DateTime(2024, 8, 12),
    "name": "Divine Eco Resort",
    "location": "Seaside, Cox’s Bazar",
    "description":
        "An eco-friendly resort that combines traditional Bangladeshi village design with modern comfort, offering direct beach access, unique beachfront villas, and eco-conscious facilities.",
    "price": "12k",
    "ratings": "4.3",
    "image": "divine_eco_resort.jpg",
  },
  {
    "id": 4,
    "createDate": DateTime(2024, 7, 20),
    "name": "Long Beach Hotel",
    "location": "Kolatoli Circle, Cox's Bazar",
    "description":
        "With luxurious suites and a prime location near Kolatoli Beach, this hotel provides a blend of comfort and sophistication, ideal for family vacations and business retreats.",
    "price": "20k",
    "ratings": "4.6",
    "image": "long_beach_hotel.jpg",
  },
  {
    "id": 5,
    "createDate": DateTime(2024, 6, 30),
    "name": "Seagull Hotel",
    "location": "Kolatoli Beach, Cox’s Bazar",
    "description":
        "Popular for its beachfront access and a wide range of amenities, Seagull Hotel is a favorite for tourists seeking a comfortable and memorable stay by the sea.",
    "price": "10k",
    "ratings": "4.2",
    "image": "seagull_hotel.jpg",
  },
  {
    "id": 6,
    "createDate": DateTime(2024, 6, 5),
    "name": "Royal Tulip beach Resort",
    "location": "Inani, Cox's Bazar",
    "description":
        "A luxurious beach resort situated in Inani, offering stunning ocean views, spacious rooms, and an array of activities for families and couples.",
    "price": "25k",
    "ratings": "4.8",
    "image": "royal_tulip_sea_pearl.jpg",
  },
  {
    "id": 7,
    "createDate": DateTime(2024, 5, 10),
    "name": "The Peninsula Chittagong",
    "location": "GEC Circle, Chattogram",
    "description":
        "A premium city hotel located in the heart of Chattogram, perfect for business travelers with top-notch facilities and dining options.",
    "price": "15k",
    "ratings": "4.5",
    "image": "peninsula_chittagong.jpg",
  },
  {
    "id": 8,
    "createDate": DateTime(2024, 4, 18),
    "name": "Hotel Sea Crown",
    "location": "Kolatoli, Cox's Bazar",
    "description":
        "An oceanfront property offering affordable accommodations with direct beach access, ideal for those seeking a relaxing beachside escape.",
    "price": "8k",
    "ratings": "4.0",
    "image": "hotel_sea_crown.jpg",
  },
  {
    "id": 9,
    "createDate": DateTime(2024, 3, 22),
    "name": "Pebble-Stone Sea Resort",
    "location": "Inani Beach, Cox’s Bazar",
    "description":
        "Located at a quieter end of Cox's Bazar, this resort offers a peaceful atmosphere with comfortable accommodations and proximity to Inani’s scenic coastline.",
    "price": "10k",
    "ratings": "4.1",
    "image": "pebble_stone_resort.jpg",
  },
  {
    "id": 10,
    "createDate": DateTime(2024, 2, 12),
    "name": "Ocean Paradise Hotel",
    "location": "Kolatoli Road, Cox's Bazar",
    "description":
        "With modern facilities, a rooftop pool, and various recreational activities, Ocean Paradise Hotel ensures a lavish and enjoyable stay for all guests.",
    "price": "19k",
    "ratings": "4.6",
    "image": "ocean_paradise_hotel.jpg",
  },
];

List<String> assetImage = [
  "assets/images/image1.jpeg",
  "assets/images/image2.jpeg",
  "assets/images/image3.jpeg",
  "assets/images/image4.jpeg",
  "assets/images/image5.jpeg",
  "assets/images/image6.jpeg",
  "assets/images/image7.jpeg",
  "assets/images/image8.jpeg",
  "assets/images/image5.jpeg",
  "assets/images/image3.jpeg",
];

final List<Map<String, dynamic>> chatData = [
  {
    "id": "1",
    "senderId": "user1",
    "senderName": "Alice",
    "content":
        "Hey Bob, did you get a chance to check out the new dark mode feature?",
    "type": "text",
    "timestamp": DateTime.now().subtract(const Duration(minutes: 5)),
    "isRead": true,
  },
  {
    "id": "2",
    "senderId": "user2",
    "senderName": "Bob",
    "content":
        "Yes, Alice! It works great, but the text color doesn’t always update right away.",
    "type": "text",
    "timestamp": DateTime.now().subtract(const Duration(minutes: 4)),
    "isRead": true,
  },
  {
    "id": "3",
    "senderId": "user1",
    "senderName": "Alice",
    "content":
        "Oh, I think I know what the issue is. Let me check the GetX state management for it!",
    "type": "text",
    "timestamp": DateTime.now().subtract(const Duration(minutes: 3)),
    "isRead": true,
  },
  {
    "id": "4",
    "senderId": "user1",
    "senderName": "Alice",
    "content":
        "https://i.pinimg.com/564x/0d/d3/46/0dd346312187c5568b3491ec5a051241.jpg",
    "type": "image",
    "timestamp": DateTime.now().subtract(const Duration(minutes: 2)),
    "isRead": true,
  },
  {
    "id": "5",
    "senderId": "user2",
    "senderName": "Bob",
    "content":
        "Thanks for the help! By the way, any idea on adding REST API support?",
    "type": "text",
    "timestamp": DateTime.now().subtract(const Duration(minutes: 1)),
    "isRead": false,
  },
];

List<Map<String, dynamic>> userList = [
  {
    "id": 1,
    "userName": "Nazmul Hasan",
    "activeStatus": true,
    "isRead":true,
    "messagePreview":"last massage is"
  },
  {
    "id": 2,
    "userName": "Jhon",
    "activeStatus": false,
    "isRead":true,
    "messagePreview":"last massage is"
  },
  {
    "id": 3,
    "userName": "Albert",
    "activeStatus": true,
    "isRead":true,
    "messagePreview":"last massage is"
  },
  {
    "id": 4,
    "userName": "Perody",
    "activeStatus": false,
    "isRead":true,
    "messagePreview":"last massage is"
  },
  {
    "id": 5,
    "userName": "Sabitur Rahman",
    "activeStatus": true,
    "isRead":true,
    "messagePreview":"last massage is"
  },
];
