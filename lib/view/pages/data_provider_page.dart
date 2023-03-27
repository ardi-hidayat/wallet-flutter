import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/view/widgets/buttons.dart';
import 'package:bank_sha/view/widgets/data_provider_item.dart';
import 'package:flutter/material.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beli Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'From Wallet',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Balance: ${formatCurrency(180000000)}',
                    style: greyTextStyle.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Provider',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          const DataProviderItem(
            imageUrl: 'assets/img_provider_telkomsel.png',
            name: 'Telkomsel',
            isSelected: true,
          ),
          const DataProviderItem(
              imageUrl: 'assets/img_provider_indosat.png', name: 'Indosat'),
          const DataProviderItem(
              imageUrl: 'assets/img_provider_singtel.png', name: 'Singtel'),
          const SizedBox(
            height: 135,
          ),
          CustomeFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/data-package');
            },
          ),
          const SizedBox(
            height: 57,
          ),
        ],
      ),
    );
  }
}