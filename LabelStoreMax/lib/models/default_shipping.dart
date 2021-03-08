//  Label StoreMAX
//
//  Created by Anthony Gordon.
//  2021, WooSignal Ltd. All rights reserved.
//

//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

import 'package:flutter/cupertino.dart';

class DefaultShipping {
  String code;
  String country;
  List<DefaultShippingState> states;
  DefaultShipping(
      {@required this.code, @required this.country, @required this.states});
}

class DefaultShippingState {
  String code;
  String name;

  DefaultShippingState({@required this.code, @required this.name});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = code;
    data['name'] = name;
    return data;
  }

  DefaultShippingState.fromJson(Map<String, dynamic> json) {
    this.code = json['code'];
    this.name = json['name'];
  }
}
