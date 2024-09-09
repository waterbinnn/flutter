import 'package:flutter/material.dart';
import 'package:webtoon/widgets/button.dart';
import 'package:webtoon/widgets/currenct_card.dart';

void main() {
  runApp(const StatelessApp());
}

//StatelessWidget : 데이터의 변화가 없는 UI 뿐일 때
class StatelessApp extends StatelessWidget {
  const StatelessApp({super.key});

  @override
  Widget build(BuildContext context) {
    int cardOrder = 0;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Subin',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(
                        (0.8),
                      )),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('\$5 194 182',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF2B33A),
                        textColor: Colors.black),
                    Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white)
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 18, color: Colors.white.withOpacity(0.8)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CurrencyCard(
                      name: 'Euro',
                      amount: '6 493',
                      code: 'EUR',
                      icon: Icons.euro_symbol_rounded,
                      order: cardOrder++,
                    ),
                    CurrencyCard(
                      name: 'Bitcoin',
                      amount: '55 493',
                      code: 'BTC',
                      icon: Icons.currency_bitcoin_rounded,
                      order: cardOrder++,
                    ),
                    CurrencyCard(
                      name: 'Dollar',
                      amount: '493',
                      code: 'USD',
                      icon: Icons.attach_money_outlined,
                      order: cardOrder++,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
