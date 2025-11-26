'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "5fdcdd5d8469da29bc48f4d4c526c8f9",
"version.json": "633ffdc21c2c066e2dc5cd60b2e9dfb8",
"index.html": "f36a68094c46a605b3219bf2deae25ce",
"/": "f36a68094c46a605b3219bf2deae25ce",
"Design_sem_nome_(3).png": "bcd558cc434b271a8d22c0cc7b69e6ca",
"main.dart.js": "797783f3fcadc2961cb4896ce3558e01",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"superlistacom_logo.png": "940ad80a8849a981fe2fd02b015b72bd",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/app_launcher_icon.png": "bcd558cc434b271a8d22c0cc7b69e6ca",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/error_image.png": "3966de194d2480a8fbf2e70b8528e2d5",
"manifest.json": "d28e0387cfd172d2289af76aa58cac14",
"assets/NOTICES": "cda64da6b1fdbbc114c71e3a7e527487",
"assets/FontManifest.json": "2bd44793f210afca9690de81f50b7fcf",
"assets/AssetManifest.bin.json": "74fba363df08a3cb04252f3fb7e75150",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "d7d83bd9ee909f8a9b348f56ca7b68c6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "ec9ce31a4f3aa6d18220bed6de197eda",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "76df498fa98305d58957e3b10092808f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/easy_stepper/assets/loading_black.json": "d412b17ec906f03090996d68abab4eca",
"assets/packages/easy_stepper/assets/loading_white.json": "92623d18291ed579cf8bfe3f5fc74213",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/AssetManifest.bin": "086536ad74fafa2b099a2ecd859386a3",
"assets/fonts/MaterialIcons-Regular.otf": "321e339df4ec0991b1568a99bc9488ef",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/jsons/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/order_fill.png": "b2b53185bb84004da8c216d5ee7a4b9f",
"assets/assets/images/correct.png": "a108a07473df6c7e0452ff3f0382372a",
"assets/assets/images/unidade_basses_template.png": "dea3fac9f9db8295b6a42f10fec47750",
"assets/assets/images/favourite_empty.png": "c200fa9af7844ca98ffd0c4a04c0b4b1",
"assets/assets/images/setting_profile.png": "1fe9c145208872d575b91facd264752d",
"assets/assets/images/privacypolicy.png": "963a603b4a93edc04924e83e6e201302",
"assets/assets/images/fill_switch.png": "bbd7f44162e66a9354c8119e58ed28f9",
"assets/assets/images/Vector.svg": "43abc1032bd631a65419b9dae09fa75e",
"assets/assets/images/Design_sem_nome_(3).png": "bcd558cc434b271a8d22c0cc7b69e6ca",
"assets/assets/images/order.png": "c35e8fcbb4c8859fe484ecd7334e0167",
"assets/assets/images/search1.png": "8d3623c256aba6af4fa4e17f1a8ac580",
"assets/assets/images/superlista.png": "2b96807aa4d045492beffcfe48a40e22",
"assets/assets/images/address.png": "9812b9d0531ab8f95362ec165ec60e49",
"assets/assets/images/adaptive_foreground_icon.png": "bcd558cc434b271a8d22c0cc7b69e6ca",
"assets/assets/images/profile-fill.svg": "ab73292261fd52e325a87992d597aaca",
"assets/assets/images/logout.png": "8c44e380995e670c6f588945453ef17b",
"assets/assets/images/favourite.png": "49a85ac750afa6ed925b0acea4736312",
"assets/assets/images/Group_1171275525.png": "5de26a4be04ffb262e4decdf64814a31",
"assets/assets/images/Group_1171275531.png": "a5219ad500bf8198dfe06f5ec3e0a140",
"assets/assets/images/deo4.png": "ac819c1cd2f8e9c3d2e7360e652306e4",
"assets/assets/images/fav_fill.svg": "b63e583f51f863c1f03aae3d52ab335f",
"assets/assets/images/home.png": "0ad5255e204ae61c0cbca2e14abb6028",
"assets/assets/images/security1.png": "2660cd2d3c41d0d2dfaaf87924c9858a",
"assets/assets/images/call2.png": "01ae15042c3b222f89bd0ab9e0ca7635",
"assets/assets/images/fav_ic.svg": "e2b258663bd2775e6d7e39e9a72a9c82",
"assets/assets/images/Radio_button.png": "23b1d2d896b7f064eb1343d67bb31ce7",
"assets/assets/images/profile-pen.svg": "08162755c963c1230802f51a02277e91",
"assets/assets/images/Onboarding_1.png": "937741a194b0583cfd1c7d1291b0d406",
"assets/assets/images/Category.svg": "e1bd69a2674e7b7855df573d24f7f421",
"assets/assets/images/security2.png": "8f29329870a69711c05da4c8d9b0fdb0",
"assets/assets/images/Onboarding_3.png": "045550f242020cd73f8dc19e471d607d",
"assets/assets/images/app_launcher_icon.png": "bcd558cc434b271a8d22c0cc7b69e6ca",
"assets/assets/images/payment.png": "270571a0e8700db1a22da86690a605db",
"assets/assets/images/call1.png": "4478db5067b916d15871f2f4ad0283a2",
"assets/assets/images/Onboarding_2.png": "34276f7e7ba8b7edcaf06e18bffb9c88",
"assets/assets/images/security3.png": "3a9234eb6091ee3ef920876ea23d6801",
"assets/assets/images/search.png": "8a0f490101c4fa327f7dbe9f59a7ba5b",
"assets/assets/images/veg4.png": "f4eb7f3f748ac6fe671b69f1eb39c776",
"assets/assets/images/masala1.png": "a447093567efff506ab8294286ab5741",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/confirm.png": "f941e76e8302a12f19f7b185779e7be9",
"assets/assets/images/superlistacom_logo.png": "940ad80a8849a981fe2fd02b015b72bd",
"assets/assets/images/Ellipse_246.png": "85467e974390bc17edeeebd6a8768d36",
"assets/assets/images/profile_person.png": "3adc73b55e1ba432d1b04ba44ad0d84c",
"assets/assets/images/Switch.png": "d88bdf3697cd2ced17e3597d0df0e271",
"assets/assets/images/profile-border.svg": "7f57872ac5a9344f4ab6c30d0bcbc184",
"assets/assets/images/Radio_button2.svg": "c868b3257520830dd398d6cda5c890ac",
"assets/assets/images/Gemini_Generated_Image_kqj33gkqj33gkqj3.png": "0df00cf11cbada9f842f03c05993bb76",
"assets/assets/images/Gemini_Generated_Image_64i5u064i5u064i5-removebg-preview.png": "ff7e3cedcd9ca1e2a2ac237906086b34",
"assets/assets/images/back_icon.png": "d9a8269155ae8c9fbc1f34a8d7795e85",
"assets/assets/images/embalagens_template.png": "4c5ee8ba15c85fb05a7cc52aeb4b7d45",
"assets/assets/images/detail.png": "a869bb713aea28a8a22dd420fb303f52",
"assets/assets/images/Radio_button_(3).png": "c3e260f44eeef0c6e4485a8c6fe42a52",
"assets/assets/images/star.png": "a8ce017b16cb43100b12f35e9f0cb776",
"assets/assets/images/home_fill.png": "63bd0dc377eff5be6c5cef38ebc153cd",
"assets/assets/images/security.png": "abfe028d10ef7fca97e0360eee6b9ee9",
"assets/assets/images/camera.png": "69453bc9fe24fa4305cb734772eab987",
"assets/assets/images/feedback.png": "5cf7133efd52a604d18e2edbb61e3023",
"assets/assets/images/notification.png": "0f3dfbee29a30f7789f1a6efb0ab873d",
"assets/assets/images/category_fill.svg": "27cd32ab74ee43d1e8fae418832bed44",
"assets/assets/images/correct(3)_1.png": "5917e4178921f68fb39ca4248edd2f23",
"assets/assets/images/error_image.png": "3966de194d2480a8fbf2e70b8528e2d5",
"assets/assets/images/profile_page.png": "b7b8cfda5b1a453c4735bfd2422f740b",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/Satoshi-Bold.otf": "4a6fdcfc68ad464e8a9811e4edcacf00",
"assets/assets/fonts/Basket.ttf": "2fc4edd82b671c67e9a0cd562033757d",
"assets/assets/fonts/ComicNeue-Italic.ttf": "ec498ffe2bd19148ec9fa79ea11096a9",
"assets/assets/fonts/ComicNeue-BoldItalic.ttf": "04180d697f5946ba399d8b3932f1e90e",
"assets/assets/fonts/Satoshi-Regular.otf": "177a4dda04b52dedbd966942e932c5dc",
"assets/assets/fonts/Bangers.ttf": "36cfbe58588c147ce392e4802c9f7dbf",
"assets/assets/fonts/ComicNeue-Regular.ttf": "26d37a6883b56cb83fd73b8bc16de513",
"assets/assets/fonts/ComicNeue-Bold.ttf": "73c1f26e056a7a57ab05a7c03e9d1e02",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/ComicNeue-LightItalic.ttf": "a0df554d88b448f723ecaced50635e87",
"assets/assets/fonts/Order.ttf": "2eb6d17e0ca75e1eaf81ec47436a830d",
"assets/assets/fonts/Satoshi-Medium.otf": "378def5c1f4df7eb6554a88608893391",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
