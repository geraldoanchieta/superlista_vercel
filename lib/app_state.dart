import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cateList = prefs
              .getStringList('ff_cateList')
              ?.map((x) {
                try {
                  return CategformodelStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cateList;
    });
    _safeInit(() {
      _isIntro = prefs.getBool('ff_isIntro') ?? _isIntro;
    });
    _safeInit(() {
      _islogin = prefs.getBool('ff_islogin') ?? _islogin;
    });
    _safeInit(() {
      _firstName = prefs.getString('ff_firstName') ?? _firstName;
    });
    _safeInit(() {
      _lastName = prefs.getString('ff_lastName') ?? _lastName;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _bottomIndex = prefs.getInt('ff_bottomIndex') ?? _bottomIndex;
    });
    _safeInit(() {
      _address = prefs.getString('ff_address') ?? _address;
    });
    _safeInit(() {
      _homeIndex = prefs.getInt('ff_homeIndex') ?? _homeIndex;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userModel')) {
        try {
          final serializedData = prefs.getString('ff_userModel') ?? '{}';
          _userModel =
              LoginModelStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_vendedroe')) {
        try {
          final serializedData = prefs.getString('ff_vendedroe') ?? '{}';
          _vendedroe =
              VendedorStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_profile')) {
        try {
          final serializedData = prefs.getString('ff_profile') ?? '{}';
          _profile =
              ProfileStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_restaurante')) {
        try {
          final serializedData = prefs.getString('ff_restaurante') ?? '{}';
          _restaurante =
              RestauranteStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _isRestaurante = prefs.getBool('ff_isRestaurante') ?? _isRestaurante;
    });
    _safeInit(() {
      _categorias = prefs
              .getStringList('ff_categorias')
              ?.map((x) {
                try {
                  return CategoriasStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _categorias;
    });
    _safeInit(() {
      _listaemanalise = prefs.getInt('ff_listaemanalise') ?? _listaemanalise;
    });
    _safeInit(() {
      _checkListaid = prefs.getInt('ff_checkListaid') ?? _checkListaid;
    });
    _safeInit(() {
      _unidades = prefs
              .getStringList('ff_unidades')
              ?.map((x) {
                try {
                  return UnidadesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _unidades;
    });
    _safeInit(() {
      _vendedores = prefs
              .getStringList('ff_vendedores')
              ?.map((x) {
                try {
                  return VendedorStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _vendedores;
    });
    _safeInit(() {
      _tiposDeEMbalagem =
          prefs.getStringList('ff_tiposDeEMbalagem') ?? _tiposDeEMbalagem;
    });
    _safeInit(() {
      _produtocotado = prefs
              .getStringList('ff_produtocotado')
              ?.map((x) {
                try {
                  return ProdutoCotadoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _produtocotado;
    });
    _safeInit(() {
      _dataAtual = prefs.containsKey('ff_dataAtual')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_dataAtual')!)
          : _dataAtual;
    });
    _safeInit(() {
      _fotos = prefs
              .getStringList('ff_fotos')
              ?.map((x) {
                try {
                  return FotoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _fotos;
    });
    _safeInit(() {
      _esconderfornecedor =
          prefs.getBool('ff_esconderfornecedor') ?? _esconderfornecedor;
    });
    _safeInit(() {
      _tutoriais = prefs
              .getStringList('ff_tutoriais')
              ?.map((x) {
                try {
                  return TutorialStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _tutoriais;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  ItemCheckListStruct _itemCheckList = ItemCheckListStruct();
  ItemCheckListStruct get itemCheckList => _itemCheckList;
  set itemCheckList(ItemCheckListStruct value) {
    _itemCheckList = value;
  }

  void updateItemCheckListStruct(Function(ItemCheckListStruct) updateFn) {
    updateFn(_itemCheckList);
  }

  List<NotificationStruct> _notification = [
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"It is a long established fact that reader.\",\"time\":\"Just now\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Distracted by the readable content.\",\"time\":\"1 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"The point of using Lorem Ipsum is that.\",\"time\":\"2 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Making it look like readable jacks sport\",\"time\":\"4 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Many desktop  publishing package web.\",\"time\":\"10 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Publishing packages and web editors.\",\"time\":\"20 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Various versions have evolved over\",\"time\":\"30 Min \"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Sometimes on purpose injecte humour. \",\"time\":\"40 Min\"}')),
    NotificationStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Versions have evolved over the years.\",\"time\":\"50 Min\"}'))
  ];
  List<NotificationStruct> get notification => _notification;
  set notification(List<NotificationStruct> value) {
    _notification = value;
  }

  void addToNotification(NotificationStruct value) {
    notification.add(value);
  }

  void removeFromNotification(NotificationStruct value) {
    notification.remove(value);
  }

  void removeAtIndexFromNotification(int index) {
    notification.removeAt(index);
  }

  void updateNotificationAtIndex(
    int index,
    NotificationStruct Function(NotificationStruct) updateFn,
  ) {
    notification[index] = updateFn(_notification[index]);
  }

  void insertAtIndexInNotification(int index, NotificationStruct value) {
    notification.insert(index, value);
  }

  List<CategoriesStruct> _categories = [
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/kygcadfwjxin/cate1.png\",\"title\":\"Fruits\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/q3gzmgil4wom/cat2.png\",\"title\":\"Vegetable\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/6ilrdwnwnw83/cate3.png\",\"title\":\"Icecream\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/5joglu9qp5cg/cate4.png\",\"title\":\"Groomer\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/qsjem7mm0afo/cate5.png\",\"title\":\"Electronics\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/6v13c4n459mu/cate6.png\",\"title\":\"Beauty\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/jwy23wkdg74i/cate7.png\",\"title\":\"Cleaning\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ywascuhhn2m6/cate8.png\",\"title\":\"Kitchen\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/tv9xa283gf8m/cate9.png\",\"title\":\"Toys\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/3eusv60230k6/cate10.png\",\"title\":\"Hygiene\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/907wogkdfp0b/cate11.png\",\"title\":\"Snacks\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/z0bbncb54bgq/cate12.png\",\"title\":\"Beverages\"}'))
  ];
  List<CategoriesStruct> get categories => _categories;
  set categories(List<CategoriesStruct> value) {
    _categories = value;
  }

  void addToCategories(CategoriesStruct value) {
    categories.add(value);
  }

  void removeFromCategories(CategoriesStruct value) {
    categories.remove(value);
  }

  void removeAtIndexFromCategories(int index) {
    categories.removeAt(index);
  }

  void updateCategoriesAtIndex(
    int index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    categories[index] = updateFn(_categories[index]);
  }

  void insertAtIndexInCategories(int index, CategoriesStruct value) {
    categories.insert(index, value);
  }

  List<CategformodelStruct> _cateList = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/0vr560adumq0/fruit1.png\",\"name\":\"Banana\",\"price\":\"\$10.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/j6ozi4unx73y/fruit2.png\",\"name\":\"Apple\",\"price\":\"\$16.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/yzkxi1rpdu6b/fruit3.png\",\"name\":\"Pineapple mung \",\"price\":\"\$20.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/aspxwdtwwsuv/fruit4.png\",\"name\":\"Guava\",\"price\":\"\$24.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/a2wrux2g67jh/fruit5.png\",\"name\":\"Grape\",\"price\":\"\$22.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/v2hk2da6qoji/fruit6.png\",\"name\":\"Blueberry\",\"price\":\"\$16.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ak8ek9a68lzl/fruit7.png\",\"name\":\"Peach\",\"price\":\"\$10.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/xkx8vkb613gq/fruit8.png\",\"name\":\"Kiwi\",\"price\":\"\$16.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"8\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ivul4oa04uk2/veg1.png\",\"name\":\"Cabage\",\"price\":\"\$10.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"9\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/uhv6mfkgyljl/veg2.png\",\"name\":\"Kukumber\",\"price\":\"\$16.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"10\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/wvkwtv2edxx7/veg3.png\",\"name\":\"Tommato\",\"price\":\"\$20.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"11\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/gdi3gc5lkm5n/veg4.png\",\"name\":\"Spinch\",\"price\":\"\$24.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"12\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/eahdwm0gx4xe/veg5.png\",\"name\":\"Martha\",\"price\":\"\$22.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"13\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/sqpjoupr4jm6/veg6.png\",\"name\":\"White radish\",\"price\":\"\$16.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"14\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/vz9kc0ls8ke4/veg7.png\",\"name\":\"Wangoo\",\"price\":\"\$10.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"15\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/i3o7v2udyhd2/veg8.png\",\"name\":\"Broccoli\",\"price\":\"\$16.00\",\"catetype\":\"Vegetable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"16\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/tnu7fis5pew9/deo1.png\",\"name\":\"Sanex tube\",\"price\":\"\$16.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"17\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/57nltsuiisn5/deo2.png\",\"name\":\"Organic decorate\",\"price\":\"\$17.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"18\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/rnwtsmtdpo63/deo3.png\",\"name\":\"Dove shampoo\",\"price\":\"\$10.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"19\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/dsb96yw1p9jb/deo4.png\",\"name\":\"Organic Stick\",\"price\":\"\$16.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"20\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/dpp944gmlgf3/deo5.png\",\"name\":\"Salt stone\",\"price\":\"\$20.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"21\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/e6k7piftu0a3/deo6.png\",\"name\":\"Honest dedorant\",\"price\":\"\$26.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"22\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ye47g5nlnomb/deo7.png\",\"name\":\"Lambda control\",\"price\":\"\$54.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"23\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/0s8vrzyd6ysx/deo8.png\",\"name\":\"Necessaire\",\"price\":\"\$26.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"24\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/hyyykf52n26b/masala1.png\",\"name\":\"Garam masala\",\"price\":\"\$16.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"25\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/5ruvyvsqy2hu/masala2.png\",\"name\":\"Signature masala\",\"price\":\"\$17.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"26\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/j03fu5ziu01z/masala3.png\",\"name\":\"Marshalls crek\",\"price\":\"\$10.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"27\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/0itg5apukz6a/masala4.png\",\"name\":\"Rishi masala\",\"price\":\"\$16.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"28\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/fsrz5wezyyo7/masla5.png\",\"name\":\"Rumi masala\",\"price\":\"\$20.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"29\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/vd4r96cmkw92/masala6.png\",\"name\":\"Beef masala\",\"price\":\"\$26.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"30\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/zlcowkla3bu1/masala7.png\",\"name\":\"Biryani masala\",\"price\":\"\$54.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"31\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/c6of4cc2clfh/masala8.png\",\"name\":\"Spicewalla\",\"price\":\"\$26.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"32\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/u5pfq8ssqszs/groom1.png\",\"name\":\"Hair Comb\",\"price\":\"\$10.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"33\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/e164tcb0ewy9/groom2.png\",\"name\":\"Face Oil\",\"price\":\"\$16.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"34\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/vn046ek9vzmr/groom3.png\",\"name\":\"Dog gloves\",\"price\":\"\$20.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"35\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/eq6znhdgf0zk/groom4.png\",\"name\":\"Silicon dog\",\"price\":\"\$16.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"36\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/xepnyvjowc43/groom5.png\",\"name\":\"Durable Cat\",\"price\":\"\$20.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"37\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/t4ci5xcdkx32/groom6.png\",\"name\":\"Bath Brush Fine\",\"price\":\"\$20.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"38\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/7q453dowj6hk/groom7.png\",\"name\":\"Double Comb\",\"price\":\"\$20.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"39\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/deudt8rxo2t5/groom8.png\",\"name\":\"Peine para\",\"price\":\"\$20.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get cateList => _cateList;
  set cateList(List<CategformodelStruct> value) {
    _cateList = value;
    prefs.setStringList(
        'ff_cateList', value.map((x) => x.serialize()).toList());
  }

  void addToCateList(CategformodelStruct value) {
    cateList.add(value);
    prefs.setStringList(
        'ff_cateList', _cateList.map((x) => x.serialize()).toList());
  }

  void removeFromCateList(CategformodelStruct value) {
    cateList.remove(value);
    prefs.setStringList(
        'ff_cateList', _cateList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCateList(int index) {
    cateList.removeAt(index);
    prefs.setStringList(
        'ff_cateList', _cateList.map((x) => x.serialize()).toList());
  }

  void updateCateListAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    cateList[index] = updateFn(_cateList[index]);
    prefs.setStringList(
        'ff_cateList', _cateList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCateList(int index, CategformodelStruct value) {
    cateList.insert(index, value);
    prefs.setStringList(
        'ff_cateList', _cateList.map((x) => x.serialize()).toList());
  }

  List<CategformodelStruct> _fruit = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ko9sjt0c75a2/home_fruit.png\",\"name\":\"Apricot Kernel\",\"price\":\"\$20.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/92otl80cnmc6/home_fruit2.png\",\"name\":\"Orange\",\"price\":\"\$16.00\",\"catetype\":\"Fruits\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get fruit => _fruit;
  set fruit(List<CategformodelStruct> value) {
    _fruit = value;
  }

  void addToFruit(CategformodelStruct value) {
    fruit.add(value);
  }

  void removeFromFruit(CategformodelStruct value) {
    fruit.remove(value);
  }

  void removeAtIndexFromFruit(int index) {
    fruit.removeAt(index);
  }

  void updateFruitAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    fruit[index] = updateFn(_fruit[index]);
  }

  void insertAtIndexInFruit(int index, CategformodelStruct value) {
    fruit.insert(index, value);
  }

  List<CategformodelStruct> _veg = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ks7zhm9yxpzj/home_veg.png\",\"name\":\"Green Apples \",\"price\":\"\$30.00\",\"catetype\":\"Vegatable\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/uhv6mfkgyljl/veg2.png\",\"name\":\"Cucumber\",\"price\":\"\$16.00\",\"catetype\":\"Vegatable\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get veg => _veg;
  set veg(List<CategformodelStruct> value) {
    _veg = value;
  }

  void addToVeg(CategformodelStruct value) {
    veg.add(value);
  }

  void removeFromVeg(CategformodelStruct value) {
    veg.remove(value);
  }

  void removeAtIndexFromVeg(int index) {
    veg.removeAt(index);
  }

  void updateVegAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    veg[index] = updateFn(_veg[index]);
  }

  void insertAtIndexInVeg(int index, CategformodelStruct value) {
    veg.insert(index, value);
  }

  List<CategformodelStruct> _groom = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/u5pfq8ssqszs/groom1.png\",\"name\":\"Hair Comb\",\"price\":\"\$10.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/e164tcb0ewy9/groom2.png\",\"name\":\"Face Oil\",\"price\":\"\$16.00\",\"catetype\":\"Grooming\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get groom => _groom;
  set groom(List<CategformodelStruct> value) {
    _groom = value;
  }

  void addToGroom(CategformodelStruct value) {
    groom.add(value);
  }

  void removeFromGroom(CategformodelStruct value) {
    groom.remove(value);
  }

  void removeAtIndexFromGroom(int index) {
    groom.removeAt(index);
  }

  void updateGroomAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    groom[index] = updateFn(_groom[index]);
  }

  void insertAtIndexInGroom(int index, CategformodelStruct value) {
    groom.insert(index, value);
  }

  List<CategformodelStruct> _deo = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/tnu7fis5pew9/deo1.png\",\"name\":\"Sanex tube\",\"price\":\"\$16.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/57nltsuiisn5/deo2.png\",\"name\":\"Organic decorate\",\"price\":\"\$17.00\",\"catetype\":\"Deodorants\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get deo => _deo;
  set deo(List<CategformodelStruct> value) {
    _deo = value;
  }

  void addToDeo(CategformodelStruct value) {
    deo.add(value);
  }

  void removeFromDeo(CategformodelStruct value) {
    deo.remove(value);
  }

  void removeAtIndexFromDeo(int index) {
    deo.removeAt(index);
  }

  void updateDeoAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    deo[index] = updateFn(_deo[index]);
  }

  void insertAtIndexInDeo(int index, CategformodelStruct value) {
    deo.insert(index, value);
  }

  List<CategformodelStruct> _masala = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/hyyykf52n26b/masala1.png\",\"name\":\"Anamalai Mace\",\"price\":\"\$41.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}')),
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/5ruvyvsqy2hu/masala2.png\",\"name\":\"Signature Masala \",\"price\":\"\$17.00\",\"catetype\":\"Masalas\",\"isfav\":\"false\"}'))
  ];
  List<CategformodelStruct> get masala => _masala;
  set masala(List<CategformodelStruct> value) {
    _masala = value;
  }

  void addToMasala(CategformodelStruct value) {
    masala.add(value);
  }

  void removeFromMasala(CategformodelStruct value) {
    masala.remove(value);
  }

  void removeAtIndexFromMasala(int index) {
    masala.removeAt(index);
  }

  void updateMasalaAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    masala[index] = updateFn(_masala[index]);
  }

  void insertAtIndexInMasala(int index, CategformodelStruct value) {
    masala.insert(index, value);
  }

  List<SwipmodelStruct> _swiplist = [
    SwipmodelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/hyyykf52n26b/masala1.png\",\"name\":\"Garam masala\",\"price\":\"\$16.00\"}')),
    SwipmodelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/gdi3gc5lkm5n/veg4.png\",\"name\":\"Spinch\",\"price\":\"\$24.00\"}')),
    SwipmodelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/dsb96yw1p9jb/deo4.png\",\"name\":\"Organic Stick\",\"price\":\"\$16.00\"}'))
  ];
  List<SwipmodelStruct> get swiplist => _swiplist;
  set swiplist(List<SwipmodelStruct> value) {
    _swiplist = value;
  }

  void addToSwiplist(SwipmodelStruct value) {
    swiplist.add(value);
  }

  void removeFromSwiplist(SwipmodelStruct value) {
    swiplist.remove(value);
  }

  void removeAtIndexFromSwiplist(int index) {
    swiplist.removeAt(index);
  }

  void updateSwiplistAtIndex(
    int index,
    SwipmodelStruct Function(SwipmodelStruct) updateFn,
  ) {
    swiplist[index] = updateFn(_swiplist[index]);
  }

  void insertAtIndexInSwiplist(int index, SwipmodelStruct value) {
    swiplist.insert(index, value);
  }

  List<SearchmodelStruct> _searchList = [
    SearchmodelStruct.fromSerializableMap(jsonDecode('{\"name\":\"Fruits \"}')),
    SearchmodelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Vegetable\"}')),
    SearchmodelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Ice cream\"}')),
    SearchmodelStruct.fromSerializableMap(jsonDecode('{\"name\":\"Groomer\"}')),
    SearchmodelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Face oil\"}')),
    SearchmodelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Hello World\"}'))
  ];
  List<SearchmodelStruct> get searchList => _searchList;
  set searchList(List<SearchmodelStruct> value) {
    _searchList = value;
  }

  void addToSearchList(SearchmodelStruct value) {
    searchList.add(value);
  }

  void removeFromSearchList(SearchmodelStruct value) {
    searchList.remove(value);
  }

  void removeAtIndexFromSearchList(int index) {
    searchList.removeAt(index);
  }

  void updateSearchListAtIndex(
    int index,
    SearchmodelStruct Function(SearchmodelStruct) updateFn,
  ) {
    searchList[index] = updateFn(_searchList[index]);
  }

  void insertAtIndexInSearchList(int index, SearchmodelStruct value) {
    searchList.insert(index, value);
  }

  bool _isIntro = false;
  bool get isIntro => _isIntro;
  set isIntro(bool value) {
    _isIntro = value;
    prefs.setBool('ff_isIntro', value);
  }

  bool _islogin = false;
  bool get islogin => _islogin;
  set islogin(bool value) {
    _islogin = value;
    prefs.setBool('ff_islogin', value);
  }

  int _introIndex = 0;
  int get introIndex => _introIndex;
  set introIndex(int value) {
    _introIndex = value;
  }

  List<CategoriesStruct> _profilecateg = [
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/cy50r6tx18ui/profile1.png\",\"title\":\"My profile\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/p7z65cbetl9w/profile2.png\",\"title\":\"Security\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/18brr2rr7gzn/profile3.png\",\"title\":\"Settings\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/yyzh8oyy8j79/profile4.png\",\"title\":\"My favorite\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/adt4e4tntf6r/profile5.png\",\"title\":\"Privacy policy\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/vefx6evlyffv/security2.png\",\"title\":\"Notification\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/iv9m80msnxhe/profile6.png\",\"title\":\"Logout\"}'))
  ];
  List<CategoriesStruct> get profilecateg => _profilecateg;
  set profilecateg(List<CategoriesStruct> value) {
    _profilecateg = value;
  }

  void addToProfilecateg(CategoriesStruct value) {
    profilecateg.add(value);
  }

  void removeFromProfilecateg(CategoriesStruct value) {
    profilecateg.remove(value);
  }

  void removeAtIndexFromProfilecateg(int index) {
    profilecateg.removeAt(index);
  }

  void updateProfilecategAtIndex(
    int index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    profilecateg[index] = updateFn(_profilecateg[index]);
  }

  void insertAtIndexInProfilecateg(int index, CategoriesStruct value) {
    profilecateg.insert(index, value);
  }

  List<CategoriesStruct> _setting = [
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/he3ofgv7jyuo/setting1.png\",\"title\":\"Sobe Nós\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/etv40ab78bl9/setting2.png\",\"title\":\"Ajuda\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/m1duljp65v60/setting3.png\",\"title\":\"Feedback\"}'))
  ];
  List<CategoriesStruct> get setting => _setting;
  set setting(List<CategoriesStruct> value) {
    _setting = value;
  }

  void addToSetting(CategoriesStruct value) {
    setting.add(value);
  }

  void removeFromSetting(CategoriesStruct value) {
    setting.remove(value);
  }

  void removeAtIndexFromSetting(int index) {
    setting.removeAt(index);
  }

  void updateSettingAtIndex(
    int index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    setting[index] = updateFn(_setting[index]);
  }

  void insertAtIndexInSetting(int index, CategoriesStruct value) {
    setting.insert(index, value);
  }

  List<String> _searchList1 = [];
  List<String> get searchList1 => _searchList1;
  set searchList1(List<String> value) {
    _searchList1 = value;
  }

  void addToSearchList1(String value) {
    searchList1.add(value);
  }

  void removeFromSearchList1(String value) {
    searchList1.remove(value);
  }

  void removeAtIndexFromSearchList1(int index) {
    searchList1.removeAt(index);
  }

  void updateSearchList1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    searchList1[index] = updateFn(_searchList1[index]);
  }

  void insertAtIndexInSearchList1(int index, String value) {
    searchList1.insert(index, value);
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String value) {
    _firstName = value;
    prefs.setString('ff_firstName', value);
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String value) {
    _lastName = value;
    prefs.setString('ff_lastName', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  int _addedaddress = 0;
  int get addedaddress => _addedaddress;
  set addedaddress(int value) {
    _addedaddress = value;
  }

  int _bottomIndex = 0;
  int get bottomIndex => _bottomIndex;
  set bottomIndex(int value) {
    _bottomIndex = value;
    prefs.setInt('ff_bottomIndex', value);
  }

  String _address = '4517 washington ave. manchester, kentucky 39495';
  String get address => _address;
  set address(String value) {
    _address = value;
    prefs.setString('ff_address', value);
  }

  List<CheckoutStruct> _checkoutList = [
    CheckoutStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/0umr74kco94a/gpay.png\",\"name\":\"Google pay\",\"number\":\"XXXX XXXX 125\",\"isselected\":\"0\"}')),
    CheckoutStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/7ie1q5i49fzv/papal.png\",\"name\":\"Paypal\",\"number\":\"XXXX XXXX 369\",\"isselected\":\"1\"}')),
    CheckoutStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bigbasket-app-dhruvika-ycmzrr/assets/ymfyearrfngv/Group_1171275531.png\",\"name\":\"Visa\",\"number\":\"XXXX XXXX 158\",\"isselected\":\"2\"}'))
  ];
  List<CheckoutStruct> get checkoutList => _checkoutList;
  set checkoutList(List<CheckoutStruct> value) {
    _checkoutList = value;
  }

  void addToCheckoutList(CheckoutStruct value) {
    checkoutList.add(value);
  }

  void removeFromCheckoutList(CheckoutStruct value) {
    checkoutList.remove(value);
  }

  void removeAtIndexFromCheckoutList(int index) {
    checkoutList.removeAt(index);
  }

  void updateCheckoutListAtIndex(
    int index,
    CheckoutStruct Function(CheckoutStruct) updateFn,
  ) {
    checkoutList[index] = updateFn(_checkoutList[index]);
  }

  void insertAtIndexInCheckoutList(int index, CheckoutStruct value) {
    checkoutList.insert(index, value);
  }

  int _payment = 0;
  int get payment => _payment;
  set payment(int value) {
    _payment = value;
  }

  int _select = 0;
  int get select => _select;
  set select(int value) {
    _select = value;
  }

  String _type = 'Office';
  String get type => _type;
  set type(String value) {
    _type = value;
  }

  List<CategformodelStruct> _basketList = [
    CategformodelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://picsum.photos/seed/335/600\",\"name\":\"Hello World\",\"price\":\"Hello World\",\"description\":\"Hello World\",\"catetype\":\"Hello World\",\"isfav\":\"false\",\"iscart\":\"false\",\"size\":\"Hello World\",\"subtotal\":\"Hello World\",\"is_fruit\":\"false\"}'))
  ];
  List<CategformodelStruct> get basketList => _basketList;
  set basketList(List<CategformodelStruct> value) {
    _basketList = value;
  }

  void addToBasketList(CategformodelStruct value) {
    basketList.add(value);
  }

  void removeFromBasketList(CategformodelStruct value) {
    basketList.remove(value);
  }

  void removeAtIndexFromBasketList(int index) {
    basketList.removeAt(index);
  }

  void updateBasketListAtIndex(
    int index,
    CategformodelStruct Function(CategformodelStruct) updateFn,
  ) {
    basketList[index] = updateFn(_basketList[index]);
  }

  void insertAtIndexInBasketList(int index, CategformodelStruct value) {
    basketList.insert(index, value);
  }

  int _homeIndex = 0;
  int get homeIndex => _homeIndex;
  set homeIndex(int value) {
    _homeIndex = value;
    prefs.setInt('ff_homeIndex', value);
  }

  LoginModelStruct _userModel = LoginModelStruct();
  LoginModelStruct get userModel => _userModel;
  set userModel(LoginModelStruct value) {
    _userModel = value;
    prefs.setString('ff_userModel', value.serialize());
  }

  void updateUserModelStruct(Function(LoginModelStruct) updateFn) {
    updateFn(_userModel);
    prefs.setString('ff_userModel', _userModel.serialize());
  }

  VendedorStruct _vendedroe = VendedorStruct();
  VendedorStruct get vendedroe => _vendedroe;
  set vendedroe(VendedorStruct value) {
    _vendedroe = value;
    prefs.setString('ff_vendedroe', value.serialize());
  }

  void updateVendedroeStruct(Function(VendedorStruct) updateFn) {
    updateFn(_vendedroe);
    prefs.setString('ff_vendedroe', _vendedroe.serialize());
  }

  ProfileStruct _profile = ProfileStruct();
  ProfileStruct get profile => _profile;
  set profile(ProfileStruct value) {
    _profile = value;
    prefs.setString('ff_profile', value.serialize());
  }

  void updateProfileStruct(Function(ProfileStruct) updateFn) {
    updateFn(_profile);
    prefs.setString('ff_profile', _profile.serialize());
  }

  RestauranteStruct _restaurante = RestauranteStruct();
  RestauranteStruct get restaurante => _restaurante;
  set restaurante(RestauranteStruct value) {
    _restaurante = value;
    prefs.setString('ff_restaurante', value.serialize());
  }

  void updateRestauranteStruct(Function(RestauranteStruct) updateFn) {
    updateFn(_restaurante);
    prefs.setString('ff_restaurante', _restaurante.serialize());
  }

  bool _isRestaurante = false;
  bool get isRestaurante => _isRestaurante;
  set isRestaurante(bool value) {
    _isRestaurante = value;
    prefs.setBool('ff_isRestaurante', value);
  }

  List<CategoriasStruct> _categorias = [];
  List<CategoriasStruct> get categorias => _categorias;
  set categorias(List<CategoriasStruct> value) {
    _categorias = value;
    prefs.setStringList(
        'ff_categorias', value.map((x) => x.serialize()).toList());
  }

  void addToCategorias(CategoriasStruct value) {
    categorias.add(value);
    prefs.setStringList(
        'ff_categorias', _categorias.map((x) => x.serialize()).toList());
  }

  void removeFromCategorias(CategoriasStruct value) {
    categorias.remove(value);
    prefs.setStringList(
        'ff_categorias', _categorias.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCategorias(int index) {
    categorias.removeAt(index);
    prefs.setStringList(
        'ff_categorias', _categorias.map((x) => x.serialize()).toList());
  }

  void updateCategoriasAtIndex(
    int index,
    CategoriasStruct Function(CategoriasStruct) updateFn,
  ) {
    categorias[index] = updateFn(_categorias[index]);
    prefs.setStringList(
        'ff_categorias', _categorias.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCategorias(int index, CategoriasStruct value) {
    categorias.insert(index, value);
    prefs.setStringList(
        'ff_categorias', _categorias.map((x) => x.serialize()).toList());
  }

  int _looCount = 0;
  int get looCount => _looCount;
  set looCount(int value) {
    _looCount = value;
  }

  int _listaemanalise = 0;
  int get listaemanalise => _listaemanalise;
  set listaemanalise(int value) {
    _listaemanalise = value;
    prefs.setInt('ff_listaemanalise', value);
  }

  int _checkListaid = 0;
  int get checkListaid => _checkListaid;
  set checkListaid(int value) {
    _checkListaid = value;
    prefs.setInt('ff_checkListaid', value);
  }

  List<int> _checklistParaCotacao = [];
  List<int> get checklistParaCotacao => _checklistParaCotacao;
  set checklistParaCotacao(List<int> value) {
    _checklistParaCotacao = value;
  }

  void addToChecklistParaCotacao(int value) {
    checklistParaCotacao.add(value);
  }

  void removeFromChecklistParaCotacao(int value) {
    checklistParaCotacao.remove(value);
  }

  void removeAtIndexFromChecklistParaCotacao(int index) {
    checklistParaCotacao.removeAt(index);
  }

  void updateChecklistParaCotacaoAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    checklistParaCotacao[index] = updateFn(_checklistParaCotacao[index]);
  }

  void insertAtIndexInChecklistParaCotacao(int index, int value) {
    checklistParaCotacao.insert(index, value);
  }

  int _solicitacaoid = 0;
  int get solicitacaoid => _solicitacaoid;
  set solicitacaoid(int value) {
    _solicitacaoid = value;
  }

  List<UnidadesStruct> _unidades = [
    UnidadesStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"nome\":\"Quilograma\",\"simbolo\":\"kg\",\"tipo_medida\":\"massa\",\"fator_para_base_si\":\"1.0\"}')),
    UnidadesStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"nome\":\"Grama\",\"simbolo\":\"g\",\"tipo_medida\":\"massa\",\"fator_para_base_si\":\"0.001\"}')),
    UnidadesStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"nome\":\"Miligrama\",\"simbolo\":\"mg\",\"tipo_medida\":\"massa\",\"fator_para_base_si\":\"0.000001\"}')),
    UnidadesStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"nome\":\"Tonelada\",\"simbolo\":\"Ton\",\"tipo_medida\":\"massa\",\"fator_para_base_si\":\"1000.0\"}')),
    UnidadesStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"nome\":\"Litro\",\"simbolo\":\"L\",\"tipo_medida\":\"volume\",\"fator_para_base_si\":\"1.0\"}')),
    UnidadesStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"nome\":\"Mililitro\",\"simbolo\":\"ml\",\"tipo_medida\":\"volume\",\"fator_para_base_si\":\"0.001\"}')),
    UnidadesStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"nome\":\"Metro\",\"simbolo\":\"m\",\"tipo_medida\":\"comprimento\",\"fator_para_base_si\":\"1.0\"}')),
    UnidadesStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"8\",\"nome\":\"Centímetro\",\"simbolo\":\"cm\",\"tipo_medida\":\"comprimento\",\"fator_para_base_si\":\"0.01\"}')),
    UnidadesStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"9\",\"nome\":\"Unidade\",\"simbolo\":\"un\",\"tipo_medida\":\"contagem\",\"fator_para_base_si\":\"1.0\"}'))
  ];
  List<UnidadesStruct> get unidades => _unidades;
  set unidades(List<UnidadesStruct> value) {
    _unidades = value;
    prefs.setStringList(
        'ff_unidades', value.map((x) => x.serialize()).toList());
  }

  void addToUnidades(UnidadesStruct value) {
    unidades.add(value);
    prefs.setStringList(
        'ff_unidades', _unidades.map((x) => x.serialize()).toList());
  }

  void removeFromUnidades(UnidadesStruct value) {
    unidades.remove(value);
    prefs.setStringList(
        'ff_unidades', _unidades.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromUnidades(int index) {
    unidades.removeAt(index);
    prefs.setStringList(
        'ff_unidades', _unidades.map((x) => x.serialize()).toList());
  }

  void updateUnidadesAtIndex(
    int index,
    UnidadesStruct Function(UnidadesStruct) updateFn,
  ) {
    unidades[index] = updateFn(_unidades[index]);
    prefs.setStringList(
        'ff_unidades', _unidades.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInUnidades(int index, UnidadesStruct value) {
    unidades.insert(index, value);
    prefs.setStringList(
        'ff_unidades', _unidades.map((x) => x.serialize()).toList());
  }

  List<VendedorStruct> _vendedores = [];
  List<VendedorStruct> get vendedores => _vendedores;
  set vendedores(List<VendedorStruct> value) {
    _vendedores = value;
    prefs.setStringList(
        'ff_vendedores', value.map((x) => x.serialize()).toList());
  }

  void addToVendedores(VendedorStruct value) {
    vendedores.add(value);
    prefs.setStringList(
        'ff_vendedores', _vendedores.map((x) => x.serialize()).toList());
  }

  void removeFromVendedores(VendedorStruct value) {
    vendedores.remove(value);
    prefs.setStringList(
        'ff_vendedores', _vendedores.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromVendedores(int index) {
    vendedores.removeAt(index);
    prefs.setStringList(
        'ff_vendedores', _vendedores.map((x) => x.serialize()).toList());
  }

  void updateVendedoresAtIndex(
    int index,
    VendedorStruct Function(VendedorStruct) updateFn,
  ) {
    vendedores[index] = updateFn(_vendedores[index]);
    prefs.setStringList(
        'ff_vendedores', _vendedores.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInVendedores(int index, VendedorStruct value) {
    vendedores.insert(index, value);
    prefs.setStringList(
        'ff_vendedores', _vendedores.map((x) => x.serialize()).toList());
  }

  List<String> _tiposDeEMbalagem = [
    'Lata',
    'Pacote',
    'Saco',
    'Pote',
    'Galão',
    'Balde',
    'Garrafa',
    'Frasco',
    'Bisnaga',
    'Hello World',
    'Peça',
    'Rolo',
    'Bombona',
    'Bag',
    'Bnadeija',
    'Sachê',
    'Vidro',
    'Saquinho',
    'Caixinha',
    'Caixa'
  ];
  List<String> get tiposDeEMbalagem => _tiposDeEMbalagem;
  set tiposDeEMbalagem(List<String> value) {
    _tiposDeEMbalagem = value;
    prefs.setStringList('ff_tiposDeEMbalagem', value);
  }

  void addToTiposDeEMbalagem(String value) {
    tiposDeEMbalagem.add(value);
    prefs.setStringList('ff_tiposDeEMbalagem', _tiposDeEMbalagem);
  }

  void removeFromTiposDeEMbalagem(String value) {
    tiposDeEMbalagem.remove(value);
    prefs.setStringList('ff_tiposDeEMbalagem', _tiposDeEMbalagem);
  }

  void removeAtIndexFromTiposDeEMbalagem(int index) {
    tiposDeEMbalagem.removeAt(index);
    prefs.setStringList('ff_tiposDeEMbalagem', _tiposDeEMbalagem);
  }

  void updateTiposDeEMbalagemAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    tiposDeEMbalagem[index] = updateFn(_tiposDeEMbalagem[index]);
    prefs.setStringList('ff_tiposDeEMbalagem', _tiposDeEMbalagem);
  }

  void insertAtIndexInTiposDeEMbalagem(int index, String value) {
    tiposDeEMbalagem.insert(index, value);
    prefs.setStringList('ff_tiposDeEMbalagem', _tiposDeEMbalagem);
  }

  List<ProdutoCotadoStruct> _produtocotado = [];
  List<ProdutoCotadoStruct> get produtocotado => _produtocotado;
  set produtocotado(List<ProdutoCotadoStruct> value) {
    _produtocotado = value;
    prefs.setStringList(
        'ff_produtocotado', value.map((x) => x.serialize()).toList());
  }

  void addToProdutocotado(ProdutoCotadoStruct value) {
    produtocotado.add(value);
    prefs.setStringList(
        'ff_produtocotado', _produtocotado.map((x) => x.serialize()).toList());
  }

  void removeFromProdutocotado(ProdutoCotadoStruct value) {
    produtocotado.remove(value);
    prefs.setStringList(
        'ff_produtocotado', _produtocotado.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProdutocotado(int index) {
    produtocotado.removeAt(index);
    prefs.setStringList(
        'ff_produtocotado', _produtocotado.map((x) => x.serialize()).toList());
  }

  void updateProdutocotadoAtIndex(
    int index,
    ProdutoCotadoStruct Function(ProdutoCotadoStruct) updateFn,
  ) {
    produtocotado[index] = updateFn(_produtocotado[index]);
    prefs.setStringList(
        'ff_produtocotado', _produtocotado.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProdutocotado(int index, ProdutoCotadoStruct value) {
    produtocotado.insert(index, value);
    prefs.setStringList(
        'ff_produtocotado', _produtocotado.map((x) => x.serialize()).toList());
  }

  CotacaoStruct _cotacao = CotacaoStruct();
  CotacaoStruct get cotacao => _cotacao;
  set cotacao(CotacaoStruct value) {
    _cotacao = value;
  }

  void updateCotacaoStruct(Function(CotacaoStruct) updateFn) {
    updateFn(_cotacao);
  }

  bool _atualisacriacao = false;
  bool get atualisacriacao => _atualisacriacao;
  set atualisacriacao(bool value) {
    _atualisacriacao = value;
  }

  DateTime? _dataAtual;
  DateTime? get dataAtual => _dataAtual;
  set dataAtual(DateTime? value) {
    _dataAtual = value;
    value != null
        ? prefs.setInt('ff_dataAtual', value.millisecondsSinceEpoch)
        : prefs.remove('ff_dataAtual');
  }

  /// utilisado para marcar pedidos que o cliente resolveu deletar usado somente
  /// na paginna cotacao lista para o comprador
  List<int> _pedidosDeletados = [];
  List<int> get pedidosDeletados => _pedidosDeletados;
  set pedidosDeletados(List<int> value) {
    _pedidosDeletados = value;
  }

  void addToPedidosDeletados(int value) {
    pedidosDeletados.add(value);
  }

  void removeFromPedidosDeletados(int value) {
    pedidosDeletados.remove(value);
  }

  void removeAtIndexFromPedidosDeletados(int index) {
    pedidosDeletados.removeAt(index);
  }

  void updatePedidosDeletadosAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    pedidosDeletados[index] = updateFn(_pedidosDeletados[index]);
  }

  void insertAtIndexInPedidosDeletados(int index, int value) {
    pedidosDeletados.insert(index, value);
  }

  List<int> _pedidosfeitos = [];
  List<int> get pedidosfeitos => _pedidosfeitos;
  set pedidosfeitos(List<int> value) {
    _pedidosfeitos = value;
  }

  void addToPedidosfeitos(int value) {
    pedidosfeitos.add(value);
  }

  void removeFromPedidosfeitos(int value) {
    pedidosfeitos.remove(value);
  }

  void removeAtIndexFromPedidosfeitos(int index) {
    pedidosfeitos.removeAt(index);
  }

  void updatePedidosfeitosAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    pedidosfeitos[index] = updateFn(_pedidosfeitos[index]);
  }

  void insertAtIndexInPedidosfeitos(int index, int value) {
    pedidosfeitos.insert(index, value);
  }

  List<FotoStruct> _fotos = [
    FotoStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"92\",\"foto\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/varanda/DESKTOP_KV_Reserva_Valdir_DIGITAL_f88864a4f7.jpeg\"}')),
    FotoStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"295\",\"foto\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/varanda/img_pg6eQHF8vNJMeqWd.jpg\"}')),
    FotoStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"82\",\"foto\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/varanda/Soya%20portfolio.webp\"}')),
    FotoStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"552\",\"foto\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/varanda/Hellmanns-cria-selo-para-evidenciar-o-sabor-irresistivel-da-verdadeira-maionese-2.jpg\"}'))
  ];
  List<FotoStruct> get fotos => _fotos;
  set fotos(List<FotoStruct> value) {
    _fotos = value;
    prefs.setStringList('ff_fotos', value.map((x) => x.serialize()).toList());
  }

  void addToFotos(FotoStruct value) {
    fotos.add(value);
    prefs.setStringList('ff_fotos', _fotos.map((x) => x.serialize()).toList());
  }

  void removeFromFotos(FotoStruct value) {
    fotos.remove(value);
    prefs.setStringList('ff_fotos', _fotos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFotos(int index) {
    fotos.removeAt(index);
    prefs.setStringList('ff_fotos', _fotos.map((x) => x.serialize()).toList());
  }

  void updateFotosAtIndex(
    int index,
    FotoStruct Function(FotoStruct) updateFn,
  ) {
    fotos[index] = updateFn(_fotos[index]);
    prefs.setStringList('ff_fotos', _fotos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFotos(int index, FotoStruct value) {
    fotos.insert(index, value);
    prefs.setStringList('ff_fotos', _fotos.map((x) => x.serialize()).toList());
  }

  /// serve para identificar se a lista foi criada recente e ainda nao tem nenum
  /// item na sua base
  bool _listaNova = false;
  bool get listaNova => _listaNova;
  set listaNova(bool value) {
    _listaNova = value;
  }

  bool _esconderfornecedor = false;
  bool get esconderfornecedor => _esconderfornecedor;
  set esconderfornecedor(bool value) {
    _esconderfornecedor = value;
    prefs.setBool('ff_esconderfornecedor', value);
  }

  /// usado  na funcao sbmetero oferta para definer se estamos falando de preco
  /// de embalagem oiu unu=idade base
  String _tipoDePreco = '';
  String get tipoDePreco => _tipoDePreco;
  set tipoDePreco(String value) {
    _tipoDePreco = value;
  }

  /// usado para definir o valor de uma nova cortacao na funcao submeter oferta
  double _valorCotacao = 0.0;
  double get valorCotacao => _valorCotacao;
  set valorCotacao(double value) {
    _valorCotacao = value;
  }

  List<TutorialStruct> _tutoriais = [
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Como Criar Uma lista para Check List\",\"ordem\":\"1\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/CheckLista_1_criar_Lista.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_lwi6tqlwi6tqlwi6.png\",\"publico\":\"Check List\",\"descricao\":\"Neste tutorial você vai aprender como criar uma lista e adcionar produtos nela.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Adcionar itens em uma lista\",\"ordem\":\"2\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/CheckLista_2_cadastrarItens.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_lwi6tqlwi6tqlwi6.png\",\"publico\":\"Check List\",\"descricao\":\"Nesse video você vai aprender a cadastrar itens personalisando marcas embalagens e detalhes de preferências de produtos.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Criar itens personalisados\",\"ordem\":\"3\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/CheckLista_3_procurta_produtos.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_lwi6tqlwi6tqlwi6.png\",\"publico\":\"Check List\",\"descricao\":\"Neste video você vai aprender a buscar items  na  lista e criar itens personalisados exclusivos.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"De super poderes a sua lista\",\"ordem\":\"4\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/CheckLista_4_itens%20_personalisados.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_lwi6tqlwi6tqlwi6.png\",\"publico\":\"Check List\",\"descricao\":\"Este video explica a importancia de cadastrar os itens de forma correta.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Editando itens da lista\",\"ordem\":\"5\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/CheckLista_5_edita_produtos_llista.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_lwi6tqlwi6tqlwi6.png\",\"publico\":\"Check List\",\"descricao\":\"Neste video vamos te ensinar como ajustar as informações de cada item para que qualquer colaborados possa rodar o check list pra você tornando essa tarefa muito simples.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Ajuste Fino\",\"ordem\":\"6\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/CheckLista_6_edicao_ajusdte_fino.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_lwi6tqlwi6tqlwi6.png\",\"publico\":\"Check List\",\"descricao\":\"Neste video vamos dar algumas dicas para que você sinalise para os vendedores suas preferências para que você possa receber as melhores cotações evitando receber cotações desnecessárias. \"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Cadastrando um vendedor\",\"ordem\":\"1\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/CheckLista_7_cria_vendedor.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_2opn9i2opn9i2opn.png\",\"publico\":\"Cotações\",\"descricao\":\"Neste video você vai aprender a cadastrar um vendedor\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Enviar a lista para Cotação\",\"ordem\":\"2\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Cotacoes_1_verificaVendedores.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_2opn9i2opn9i2opn.png\",\"publico\":\"Cotações\",\"descricao\":\"Neste video você vai aprender como enviar um cotação completa e parcial para os vendedores.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Verificar se as cotações chegaram\",\"ordem\":\"3\",\"video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_2opn9i2opn9i2opn.png\",\"publico\":\"Cotações\",\"descricao\":\"Neste video você vai aprender a checar se todos os vendedores responderam a cotação e enviar alerta para os pendentes.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Fazer os pedidos\",\"ordem\":\"1\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Cotacoes_2_comparr%20itens.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_9mmloh9mmloh9mml.png\",\"publico\":\"Pedidos\",\"descricao\":\"Neste video você vai aprender como fazer os pedidos escolher os melhores preços e montar a lista de pedidos para cada vendedor.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Enviar pedido para o vendedor\",\"ordem\":\"2\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Pedidos_1_enviar.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_9mmloh9mmloh9mml.png\",\"publico\":\"Pedidos\",\"descricao\":\"Neste video vamos envinar a enviar o pedido para cada vendedor.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Fazendo um adendo ao pedido\",\"ordem\":\"3\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Pedidos_2_adendo.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_9mmloh9mmloh9mml.png\",\"publico\":\"Pedidos\",\"descricao\":\"Neste vídeo você vai aprender cmo adicionar um novo item a um pedido já enviado para o vendedor\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Minha primeira cotação\",\"ordem\":\"1\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Vendas_COnecendo_o_app.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_l4s1lcl4s1lcl4s1.png\",\"publico\":\"Vendas\",\"descricao\":\"Neste video você vai aprender a acessar as cotações a partir do link do whatsapp e conecer a parte inicial do app\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Pagamentos, entregas e validades\",\"ordem\":\"2\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Vendas_definindo_entrega-e-validade.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_l4s1lcl4s1lcl4s1.png\",\"publico\":\"Vendas\",\"descricao\":\"Neste video vamos demonstrar como deixar pré definidos dados de entrega e pagamentos e definir a validade das ofertas informadas.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Ajustando a lista ao meu Perfil\",\"ordem\":\"3\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Vendas_ajustando_a_lista.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_l4s1lcl4s1lcl4s1.png\",\"publico\":\"Vendas\",\"descricao\":\"Nesse video vamos ensinar como personalisar cada lista de compras removendo itens desnecessários, mantendo apenas os que estão na pauta de trabalho\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Cadastro Detalhado\",\"ordem\":\"4\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Vendas_cadastroDetalhadop.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_l4s1lcl4s1lcl4s1.png\",\"publico\":\"Vendas\",\"descricao\":\"Este talvez seja o video mais importante, aqui vamos ensinar como cadastrar corretamente os itens para não perder nenhuma venda.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Cadastro focado em embalagens\",\"ordem\":\"5\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Vendas_cadastro_foco_embalagem.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_l4s1lcl4s1lcl4s1.png\",\"publico\":\"Vendas\",\"descricao\":\"Neste video vamos enfatizar o cadastro de produtos focando em produtos com embalagens fixas, vamos abordar edicção de produtos e atualizações também.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Cadastro focado em produtos com unidade variável\",\"ordem\":\"6\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Vendas-cadastro-foco-und-base.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_l4s1lcl4s1lcl4s1.png\",\"publico\":\"Vendas\",\"descricao\":\"Aqui vamos abordar o cadastro de produtos com medidas variáveis, que não possuiem medidas fixas.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Reutilizando cadastros\",\"ordem\":\"7\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Vendas-reutilisando-cadastros.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_l4s1lcl4s1lcl4s1.png\",\"publico\":\"Vendas\",\"descricao\":\"Aqui demonstraremos como reutilizar o mesmo cadastros para diferentes clientes alterando apenas os valores.\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Enviar um pedido\",\"ordem\":\"8\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Vendas-envia-pedido-avisa-corte.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_l4s1lcl4s1lcl4s1.png\",\"publico\":\"Vendas\",\"descricao\":\"Neste video vamos mostar como enviar um pedido a um cliente e avisá-lo em casos de costes de itens de uma lista\"}')),
    TutorialStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Atualizar Itens\",\"ordem\":\"9\",\"video\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Vendas_atualisarItens.mp4\",\"capa\":\"https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/assets/Gemini_Generated_Image_l4s1lcl4s1lcl4s1.png\",\"publico\":\"Vendas\",\"descricao\":\"Neste vídeo vamos te ensinar como atualisar os preços das cotações de maneira correta sem erros.\"}'))
  ];
  List<TutorialStruct> get tutoriais => _tutoriais;
  set tutoriais(List<TutorialStruct> value) {
    _tutoriais = value;
    prefs.setStringList(
        'ff_tutoriais', value.map((x) => x.serialize()).toList());
  }

  void addToTutoriais(TutorialStruct value) {
    tutoriais.add(value);
    prefs.setStringList(
        'ff_tutoriais', _tutoriais.map((x) => x.serialize()).toList());
  }

  void removeFromTutoriais(TutorialStruct value) {
    tutoriais.remove(value);
    prefs.setStringList(
        'ff_tutoriais', _tutoriais.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTutoriais(int index) {
    tutoriais.removeAt(index);
    prefs.setStringList(
        'ff_tutoriais', _tutoriais.map((x) => x.serialize()).toList());
  }

  void updateTutoriaisAtIndex(
    int index,
    TutorialStruct Function(TutorialStruct) updateFn,
  ) {
    tutoriais[index] = updateFn(_tutoriais[index]);
    prefs.setStringList(
        'ff_tutoriais', _tutoriais.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTutoriais(int index, TutorialStruct value) {
    tutoriais.insert(index, value);
    prefs.setStringList(
        'ff_tutoriais', _tutoriais.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
