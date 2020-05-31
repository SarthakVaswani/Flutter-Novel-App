'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "7cd939ce70f009b1b607b3c67a416b08",
"assets/assets/fonts/Exo2-VariableFont_wght.ttf": "afd53ab0d9cb6142bfb815b8c9226401",
"assets/assets/images/sv.jpg": "981207b23efd6590564c9bffb1bf1f2a",
"assets/FontManifest.json": "8eb532a5b4bc8fe1743405cf619ae5b4",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "3556d4a4b5b9109f04be535912520c0c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "f58d687988a6a9dd2361e48470d7b643",
"/": "f58d687988a6a9dd2361e48470d7b643",
"main.dart.js": "7f3987633030a9e2652ae0ffcc514862",
"manifest.json": "ab9127c4fc0c98e79f76c01d1deceb09"
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
