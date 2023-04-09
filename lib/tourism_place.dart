class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;
  String linkurl;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
    required this.linkurl,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Coffe Toffe',
    location: 'Lembang',
    description:
    'Kami adalah perusahaan kopi yang mendedikasikan seluruh gairah, kecintaan, dan antusiasme kami kepada dunia kopi yang menakjubkan. Kami adalah perusahaan lokal dan sebagian besar bahan baku yang kami gunakan adalah lokal. Ya, dan kami mengatakan hal tersebut dengan bangga.',
    openDays: 'Everyday at 08.00 - 02.00',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 25000',
    imageAsset: 'images/farm-house.jpg',
    imageUrls: [
      'https://cdn.bitrix24.id/b14044525/landing/a7a/a7a58c93086b7843116da85f026d7bfc/Aplikasi_2_1x.png',
    ],
    linkurl: 'https://coffeetoffee.co.id'
  ),
  TourismPlace(
    name: 'Kopi Kenangan',
    location: 'Lembang',
    description:
    'Kopi Kenangan is one of the fastest growing grab-and-go coffee chain in Indonesia. The idea of Kopi Kenangan started because the founders have the mission to spread their passion for Indonesian coffee as a local brand from Indonesia to the rest of the world.',
    openDays: 'Everyday at 10.00 - 21.00',
    openTime: '09:00 - 14:30',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/bosscha.jpg',
    imageUrls: [
      'https://images.squarespace-cdn.com/content/v1/5fa1095912d2fc6dfc63ac9c/dd9b911d-7295-43fc-9452-17a585607187/logo.png?format=1500w',
    ],
    linkurl: 'https://kopikenangan.com/'
  ),
  TourismPlace(
    name: 'Fore',
    location: 'Kota Bandung',
    description:
    'Didirikan pada 2018. Fore Coffee merupakan sebuah startup kopi retail yang ingin menyajikan high quality Coffee untuk para pelanggannya. Nama Fore yang diambil dari kata forest yang merupakan harapan kami untuk tumbuh dengan cepat, kuat, tinggi & menghidupi semua yang ada di sekitar kami.',
    openDays: 'Everyday at 07.00 - 22.00',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'images/jalan-asia-afrika.jpg',
    imageUrls: [
      'https://fore.coffee/wp-content/uploads/2021/03/Logo_fore_2020_color_landscape.jpg',
    ],
    linkurl: 'https://fore.coffee/id/home-indo/'
  ),
  TourismPlace(
    name: 'Tanemara Coffe',
    location: 'Padalarang',
    description:
    'Perjalanan Tanamera Coffee dimulai dengan satu mimpi: menjadikan Indonesia terkenal dengan kopi yang spesial. Misi kami selalu memberikan yang terbaik yang ditawarkan Indonesia. Seperti tanah vulkanik merah dari mana kami mendapatkan nama kami, nusantara memiliki tanah yang subur dan subur, sempurna untuk menanam kopi spesial.',
    openDays: 'Everyday at 08.00 - 22.00',
    openTime: '06:00 - 17:00',
    ticketPrice: 'Rp 3000',
    imageAsset: 'images/stone-garden.jpg',
    imageUrls: [
      'https://tanameracoffee.com/wp-content/uploads/2020/11/logo.png',
    ],
    linkurl: 'https://tanameracoffee.com/id/'
  ),
  TourismPlace(
    name: 'Nakoa',
    location: 'Kota Bandung',
    description:
    'Tempat nongkrong nyaman dan ramah di kantong',
    openDays: 'Everyday at 08.00 - 22.00',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'images/taman-film.jpg',
    imageUrls: [
      'https://nakoa.id/themes/laratify-octobercms-octaskin/assets/img/logo.png',
    ],
    linkurl: 'https://nakoa.id/'
  ),
  TourismPlace(
    name: 'Kafe Betawi',
    location: 'Kota Bandung',
    description:
    'Telah berdiri sejak tahun 1992, dalam perjalanan kami, kami terus berupaya menyajikan dan melayani para pelanggan kami dengan integritas. Hingga saat ini kami memiliki 3 brand restoran lainnya yaitu Kafe Betawi First, Kafe Betawi Xpress, dan Betawi Corner.',
    openDays: 'Everyday at 10.00 - 22.00',
    openTime: '09:00 - 15:30',
    ticketPrice: 'Rp 3000',
    imageAsset: 'images/museum-geologi.jpg',
    imageUrls: [
      'https://www.kafebetawi.com/img/logo-kafe-betawi.png',
    ],
    linkurl: 'https://www.kafebetawi.com/'
  ),
  TourismPlace(
    name: 'Starbucks',
    location: 'Lembang',
    description:
    'Since 1971, it always has been and will always be about quality. We’re passionate about ethically sourcing only the finest Arabica coffee beans and roasting them with great care. Our passion for coffee is rivaled only by our love of sharing it.',
    openDays: 'Everyday at 07.30 - 23.30',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/floating-market.png',
    imageUrls: [
      'https://www.starbucks.co.id/image/logo.png',
    ],
    linkurl: 'https://www.starbucks.co.id/'
  ),
  TourismPlace(
    name: 'Give',
    location: 'Ciwidey',
    description:
    'SINCE OPENING IN AUGUST 2018, WITH YOUR HELP WE HAVE BEEN ABLE TO RAISE OVER 51,000AUD FOR PEOPLE, ANIMALS & PLACES IN NEED. WE VALUE YOUR SUPPORT IN HELPING US TAKE THIS NUMBER HIGHER EACH AND EVERY DAY. ',
    openDays: 'Everyday at 08.00 - 21.00',
    openTime: '07:00 - 17:00',
    ticketPrice: 'Rp 15000',
    imageAsset: 'images/kawah-putih.jpg',
    imageUrls: [
      'https://images.squarespace-cdn.com/content/v1/5b4ee0bc70e8023dc0eafbcc/a8915058-2712-43cd-a6dc-3625c1f2d7ff/GIVE_LOGO_BLACK-01.png?format=1500w',
    ],
    linkurl: 'https://www.givecafe.org/'
  ),
  TourismPlace(
    name: 'Cafe Pendawa',
    location: 'Ciwidey',
    description:
    'Cafe Pendawa adalah sebuah toko yang berlokasi di Philadelphia, Amerika Serikat yang berdiri dari sejak 2004, yang menyediakan berbagai barang dari Indonesia. Pendawa Cafe juga menawarkan penjualan secara online, sehingga pelanggan dapat dengan mudah membeli produk-produk Indonesia dari website kami cafependawa.com',
    openDays: 'Everyday at 07.00 - 22.00 ',
    openTime: '24 hours',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/ranca-upas.jpg',
    imageUrls: [
      'https://cafependawa.com/wp-content/uploads/2019/12/cafependawalogo.png',
    ],
    linkurl: 'https://cafependawa.com/'
  ),
];