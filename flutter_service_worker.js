'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "eee041786f6b5639d9c64aa327371659",
"assets/assets/images/alchemist.jpg": "56cb45956563a0603bd93d5461f8d893",
"assets/assets/images/fault.jpg": "45f531f5c31ec7ebbf5be378ee7394be",
"assets/assets/images/finding_alaska.jpg": "37fa80871696e79a2fbc88c01cdb2bd0",
"assets/assets/images/goosebumps.jpg": "ce2de5bb1c6b693128c8fba594a9f23a",
"assets/assets/images/hp1.jpg": "88c8fe011aa2683f66e43efe9922dafc",
"assets/assets/images/hp2.jpg": "b640b94346460773df2e0ac907b3c17b",
"assets/assets/images/hp3.jpg": "d9f065e0e254ddfbdcff2227b2cb0171",
"assets/assets/images/hp4.jpg": "104fe7b788eb1b3be3bace3415bc53cb",
"assets/assets/images/hp5.jpg": "2f2aa6d570ca57e9ee152b618816e467",
"assets/assets/images/hp6.jpg": "956c8302b0e02a3c3ebbdf142bf95fae",
"assets/assets/images/hp7.jpg": "89fb2b0921d3b3d03c17bd8bfe358fa2",
"assets/assets/images/Sherlock_Holmes.jpg": "32f4edd5ecac7a0aa1baac6c171f725a",
"assets/assets/images/subtle.jpg": "e834367f301f540cac4c6f3afa05dc8d",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "0563dbe252ce7093be72c5712b1daddc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "da5d5ff889d0b6d84938cc2fa670f188",
"/": "da5d5ff889d0b6d84938cc2fa670f188",
"main.dart.js": "d1d902aef4126ea0c3157863d5dc08c6",
"manifest.json": "3d67a32fb571f21c0f0f444ded8650e6"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
