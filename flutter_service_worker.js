'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "45f9088078213a1cef781d69173d2e54",
"version.json": "03fd3c4759fc84c26cc9daba2a4901e4",
"index.html": "5fa5426d07759f3274db5feae1f94d66",
"/": "5fa5426d07759f3274db5feae1f94d66",
"CNAME": "6f25f6d8a2b8a297a96e29d60fef8e0d",
"main.dart.js": "1da911f6000751d6d77f41b16dab7e9c",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "8baa8182e60f9a1a7c1a27d9c4ecce0e",
".git/ORIG_HEAD": "f21a4f6de4c1e55b9f5b78d5029c6626",
".git/config": "27ae585e6e93227c2e53569e4024cf73",
".git/objects/6f/9f097efe7b293281e8c552c119cbfb3d609392": "3eed687ea749ce3ef0986b02fa8afbc1",
".git/objects/9b/d3accc7e6a1485f4b1ddfbeeaae04e67e121d8": "784f8e1966649133f308f05f2d98214f",
".git/objects/58/ca1ec2df1ca06c101d0d3ded7ab82f8b451cca": "ce63f8e7d78aa8d0aea8fc81e7277647",
".git/objects/33/dcc50fe81c50ef78a3c45f48eb6e1bad9162f6": "b34816ecd3ee03a23f3ea6fbbed0b23b",
".git/objects/33/2c02b8794c6a091e5a30a3cdfa39e3809a0dce": "e4b4d70073df1bd201f63c08977e4846",
".git/objects/b5/37d8ff89cff7839944dc0af36689a88e7c6920": "f533cf04bf02efc256e382d4f866c82e",
".git/objects/da/2f89c86dd55b44a52db640e3363448e8a6e949": "cc4ac64c8f86879dc52da1c305712895",
".git/objects/bd/e335afc3629bb18a1d722099067b6f037c54c8": "e1ed2a20af7484ccb4b86f1c420a019b",
".git/objects/d6/efda6b2573376ee50a857b800bd3394a610b54": "c90666eb8688efb7136ce7a6d26a4b54",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ee/0e319c5539dbb17d9167d3b7194b5e1a963b42": "b8904b0dc33f998f23b01fa587059178",
".git/objects/c9/8707ace5c3c781469ccb04f3c19ee15864d1db": "7b7682a5756e7320654370563c47b74a",
".git/objects/fd/2075a3b9b5ffc3ab8651aa6a1b24b16193abcf": "ba2f6cf66f32e22b21a8659570291269",
".git/objects/fd/c4ba1e7dbdcd77685c02ae2ae477bf185ce434": "5854bb66001fd64a0c7131aa07707527",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/c8/08fb85f7e1f0bf2055866aed144791a1409207": "92cdd8b3553e66b1f3185e40eb77684e",
".git/objects/4b/dfb076eb85d849e7f2285016d7722ddf43ce8f": "96834ee21d1d42f9348cae42f446437c",
".git/objects/pack/pack-923cd91dd49c11ed93a03ea67e6b3c0f2661b3ec.idx": "a45ce3c136f587c2cf37f84f376be326",
".git/objects/pack/pack-923cd91dd49c11ed93a03ea67e6b3c0f2661b3ec.pack": "69c1064688e360ea479985a0fdaa002e",
".git/objects/1f/56899c1b3fdf36a1ff0170bec0548722a1ff31": "03e1374f134bf27c73e3452570507eda",
".git/objects/73/c63bcf89a317ff882ba74ecb132b01c374a66f": "6ae390f0843274091d1e2838d9399c51",
".git/objects/73/96fd7d462bf3fff48579c213d09caadbeffca2": "42320e2fce0f6b551415219d352085ba",
".git/objects/80/a1f095895b3228c0362ba2f9d6368f7b2f0552": "6945e0b445b73f293c28de4b1d783832",
".git/objects/80/c51468e0fbab64c51c47fdf13e2fe735c0912e": "2505a505189ad0baf271d2e5c10ee3b3",
".git/objects/1a/4a8ea0023873ea77ef2b5f384eaff20e973316": "6b40e68279188d8a79c716b3ebc754ca",
".git/objects/1a/d7683b343914430a62157ebf451b9b2aa95cac": "94fdc36a022769ae6a8c6c98e87b3452",
".git/objects/7b/2bd4b9915b75b247887eb4d12be9915281deda": "29a2c7c606bc171c464e070f353dc25d",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/21/a53cce777bc422aaad9557cacf8655b599ea79": "ab25aad93b8d03a4dc727683cdd27022",
".git/objects/4d/35726a29725ba8298303e69aedac4dbbaa8e88": "f013ec07bbb80c7ec02bbfc9b6ca2908",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/00/da2b446aa3d0623c5f000aff7a3458470735d3": "fb4035245788a83b7f662a301ef00e6c",
".git/objects/6e/6233070ed3c42b9db5723a3cfa8612b0671743": "600fddaaeed8da4851d0d19cad023e2e",
".git/objects/36/611f62a809e6e2eaea5ad42eba44a0279ff70d": "2d1b4a74575bca3babceffcbf56f8c46",
".git/objects/09/7e9d1be0796b9eb36ae75d534b9a750e92ac47": "099c3d06893877d97982e9a8e4fa406e",
".git/objects/5d/da026f8f8e0b81ab3d40520658ab88870d3a4f": "cfead80c6373dcd1113be8d3e9934b8a",
".git/objects/31/7cb05db2b3d120ece21f8bcce359f3457c1fd2": "4c6ecbd76d6a48f022ac497e51104eb9",
".git/objects/91/9b58c60b938f7b1a8f2ff3113ec5941c60f752": "67e8d0260c418df036d0f4ca4469f99e",
".git/objects/91/4361a60ea706b1c6ee331448f87a5a751cc151": "6ac5f08a64731d231f4fade7fc40da7f",
".git/objects/65/5fcc6de5b20f74039e14de4d695076a7da5204": "31d42d27e50ec70afdb610086c201794",
".git/objects/53/18a6956a86af56edbf5d2c8fdd654bcc943e88": "a686c83ba0910f09872b90fd86a98a8f",
".git/objects/53/3d2508cc1abb665366c7c8368963561d8c24e0": "4592c949830452e9c2bb87f305940304",
".git/objects/08/21d9cb52e748aa415d1350b1bae1307ce0b0b5": "c3d0a82b9d7aa30b551d90ec9fc05628",
".git/objects/52/e7fa8ca337b48d1633c990d54ac0ef0dfa9b4d": "da436148628a0e93997da6c277d6db7b",
".git/objects/55/7161d33ab428f1bd73eb65e1822ea688d941aa": "49ae0e55e33a57df4308c4d5f62ab9f5",
".git/objects/63/25464c9a112d8af08d294edaba6796f91d36fd": "481403f2554febc07ce2f662d81d95cc",
".git/objects/64/d8cb61783f8b966fc83c5bf8e434613ab3fd6f": "d6a0720a5ad926187e914b9e8b371392",
".git/objects/bf/7a072a39535babbfc9485e07427384a9237e4c": "2cf208bfdab8d8ffedbd259e0194f4e6",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/dc/11fdb45a686de35a7f8c24f3ac5f134761b8a9": "761c08dfe3c67fe7f31a98f6e2be3c9c",
".git/objects/a9/b828c0f308eaf07a172cbf2aae823e0f762210": "e2bca853c59dd618ab5ca7e935110286",
".git/objects/d2/8e063295452a87f8290f65f52882fb147c0b34": "5df3250b62453b28900457e9620b8f35",
".git/objects/af/3d0242d233cbefaa6bbda56ef29c6077f8cc9b": "ae3706d3e0fcb104795f011555c00a67",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/6a5236065a6c0fb7193cb2bb2f538b2d7b4788": "4227e5e94459652d40710ef438055fe5",
".git/objects/c4/c779f1496e108725200fd466eed0fcee62ee2e": "734267bffc7aeda46ad947775deec6ea",
".git/objects/ea/526879fb32285a39e30ed05131bf4278ba0f0b": "4fca1da5d0061a30dd287afaa2ad6d50",
".git/objects/e6/f831ce1da2d8f0131e3180803f5f4ae95d5cb2": "8b625146bab0a5a56d4f273833b648f0",
".git/objects/e6/d5d9682684179aac4e60f32c6e4a0dd4a3cf1e": "edfb9fb4d8ae8433499c1c6444c57e44",
".git/objects/f0/9fb1857f4ec7b05e4bec6356c05b4c9aa39bdd": "b972b094d6edc05bea1c9487e1fa06d6",
".git/objects/e7/2d188f61f25591399431f0370318c64eb8d761": "cb0e364ea52e7875a20777248cbeed41",
".git/objects/e0/7ac7b837115a3d31ed52874a73bd277791e6bf": "74ebcb23eb10724ed101c9ff99cfa39f",
".git/objects/79/cdefda595b33002364df4bfc8b5537955aa24e": "4ba494e034aa63a2bb672fd94be013ff",
".git/objects/2d/7186e35b29f29c9a3261a37ce473de0b5b4a23": "6c47b7f4877ccbab39e1f28afe90997b",
".git/objects/83/7eece77e58f68a62a8c7b9d38ad5633e00b716": "e1719539aae7eb95f173f8bc5bf23019",
".git/objects/83/5c4802b5a22b0bc5f0bd6f7a02c1a15cff809b": "cf26ee873bf88b648d7238f2007c5fb9",
".git/objects/1b/b6f94a1b2def47789f4b0bea9d845dd75b90ed": "ca7efff54a163a78257099d08e3ef18e",
".git/objects/48/145e2ef35cee272d085ac69747bbc7678b79da": "6848b625f51d56589a6c63a772186df5",
".git/objects/70/a234a3df0f8c93b4c4742536b997bf04980585": "d95736cd43d2676a49e58b0ee61c1fb9",
".git/objects/70/a3b3cfcb1bbcce1fa85a38a9332b6e6e371706": "43de2665fcf2b07e67725a1224a61a86",
".git/objects/4f/838a8900660a7b27ef80c918903a9833a73def": "6328522d7acaf2a70e4fe3bdd5cca4de",
".git/objects/8d/fa51abcfa04ba41213120e4e243e3896dd4499": "8be4afff1a8ede8deb9e48b1f07e0f63",
".git/objects/8c/c83f38142c1d70f19b47db6026b6978213632f": "f13613475bc6f19903ae296ae6f1b30d",
".git/objects/76/060d305a7328b30309f312be73ff3ebb5f0f26": "c8dbb4ea1af8744b99ecc04345301057",
".git/objects/8b/9afefa6cd990096a726eefc514873685daeb69": "c3657d622ae60d4342c49345d0aaf9a5",
".git/objects/25/01162e4cbdbc116e25acddc9331ee6d0b18ce8": "8c763187026368f5d62558f6ef6d0af7",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "31160b8d9a9a62ca0872dadc7175f00d",
".git/logs/refs/heads/gh-pages": "c172d233536d543ee04f9db5511fff74",
".git/logs/refs/remotes/origin/gh-pages": "71ecda9d299be88e72926ace31fc02a2",
".git/logs/refs/remotes/origin/main": "bca18a0959b16cde0488a483adccf7e2",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/gh-pages": "b767e971b8746325c9e2acb2c60e28b7",
".git/refs/remotes/origin/gh-pages": "b767e971b8746325c9e2acb2c60e28b7",
".git/refs/remotes/origin/main": "40f27661c68ff1058fe595760af9475f",
".git/index": "bdcbf99ad1d8d1ab0724b7ff1dffa9e4",
".git/COMMIT_EDITMSG": "76b0b0b60246f4e8e92a39ef7dbea194",
".git/FETCH_HEAD": "6846cd44c4343655b25da4997342536d",
"assets/AssetManifest.json": "ae70902ba972894d61b8041cfb7e35c7",
"assets/NOTICES": "61e63d69be2c2fc42eb75b073812bd1a",
"assets/FontManifest.json": "f129c5044be744868cca41ba47948780",
"assets/AssetManifest.bin.json": "4cafa189b4d73076d46664c0bdb44977",
"assets/packages/iconsax_plus/fonts/IconsaxPlusBroken.ttf": "71d12baa6ddbb770fb8f6d92021403e4",
"assets/packages/iconsax_plus/fonts/IconsaxPlusLinear.ttf": "08f8e5eef32e66caa70d237eea7e3edb",
"assets/packages/iconsax_plus/fonts/IconsaxPlusBold.ttf": "805a1bab0f9865af92fcec87325e104c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "c56f437f397189af8829649dd51b0eff",
"assets/packages/iconsax_flutter/fonts/FlutterIconsax.ttf": "76bd55cc08e511bb603cc53003b81051",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "6bef334d0910729f6b3ced24c2004884",
"assets/fonts/MaterialIcons-Regular.otf": "99448ed6d2eb4dfada988cbfeb8ab68a",
"assets/assets/fonts/dancing/static/DancingScript-Bold.ttf": "1803686a822e2b10ecd6909227cb8d25",
"assets/assets/fonts/dancing/static/DancingScript-Medium.ttf": "bc2ca7b9fedcc4e467366a29a8637917",
"assets/assets/fonts/dancing/static/DancingScript-Regular.ttf": "4166d03f2359652b8f239e23578b8232",
"assets/assets/fonts/dancing/static/DancingScript-SemiBold.ttf": "3d52bed05c9e88e6b9605ddcf6db06ac",
"assets/assets/fonts/italianno/Italianno-Regular.ttf": "93cb3737a746d5f036fc1285806c785c",
"assets/assets/fonts/italiana/Italiana-Regular.ttf": "74b49c9a4458212601a5f2276d348ed3",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93"};
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
