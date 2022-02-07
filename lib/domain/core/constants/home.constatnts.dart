import 'package:flutter/material.dart';
import 'package:nozom_pda/domain/core/data/tab.model.dart';

abstract class HomeConstants {
  static final  List<TabModel> tabs = [
    TabModel(
      icon: Icons.add_shopping_cart,
      text: "مشتريات",
      transSerial: 19,
      link: "buy",
      accountType: 2,
      type: 2,
    ),

    TabModel(
      icon: Icons.production_quantity_limits,
      text: 'مرتجع مشتريات',
      transSerial: 26,
      link: 'buy-return',
      accountType: 2,
      type: 2,
    ),
    TabModel(
      icon: Icons.credit_score,
      text: 'مبيعات',
      transSerial: 30,
      link: 'sell',
      accountType: 1,
      type: 1,
    ),
    TabModel(
      icon: Icons.credit_card,
      text: ' مرتجع مبيعات',
      transSerial: 20,
      link: 'sell-return',
      accountType: 1,
      type: 1,
    ),
    TabModel(
      icon: Icons.cloud_upload_outlined,
      text: ' صرف تحويلات ',
      transSerial: 27,
      link: 'transaction',
      accountType: -1,
      type: 3,
    ),
    TabModel(
      icon: Icons.account_balance_wallet_outlined,
      text: ' رصيد اول مدة',
      transSerial: 24,
      link: 'first',
      accountType: -1,
      type: -1,
    ),
    TabModel(
      icon: Icons.check_circle_outline,
      text: 'مراجعة اسعار',
      transSerial: -1,
      link: 'trolley-check',
      accountType: -1,
      type: -1,
    ),
    TabModel(
      icon: Icons.inventory_2_outlined,
      text: 'ادوات الجرد',
      transSerial: 31,
      link: 'inventory',
      accountType: -1,
      type: -1,
    ),
    
    TabModel(
      icon: Icons.inventory_2_outlined,
      text: 'مستندات تحضير',
      transSerial: 101,
      link: 'notPrepared',
      accountType: -1,
      type: -1,
    ),
    TabModel(
      icon: Icons.inventory_2_outlined,
      text: 'توزيع',
      transSerial: 102,
      link: 'distribution',
      accountType: 0,
      type: -1,
    ),
   
    TabModel(
      icon: Icons.settings_outlined,
      text: "الاعدادات",
      transSerial: 0,
      link: 'settings',
      accountType: -1,
      type: -1,
    )
  ];
}