import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picpay_clone/view/widgets/list_options_widget.dart';
import 'package:picpay_clone/view/widgets/list_tile_widget.dart';
import 'package:picpay_clone/view/widgets/news_list_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF008c4f),
        leading: IconButton(
          icon: const Icon(
            Icons.account_circle,
            size: 50,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Olá,\n' '@palagio',
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                ),
                const Positioned(
                  left: 20,
                  top: 20,
                  child: Text(
                    'Saldo Picpay',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const Positioned(
                  left: 20,
                  top: 40,
                  child: Text(
                    'R\$ 0,00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Positioned(
                  top: 40,
                  left: 95,
                  child: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: MediaQuery.of(context).size.width * 0.6,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF0f6e42),
                      ),
                      fixedSize: MaterialStateProperty.all(
                        const Size(150, 28),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Extrato'),
                  ),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ListOptionsWidget(
                    icon: Icons.pix,
                    title: 'Pix',
                  ),
                  ListOptionsWidget(
                    icon: Icons.qr_code,
                    title: 'QR\n' 'Code',
                  ),
                  ListOptionsWidget(
                    icon: CupertinoIcons.barcode,
                    title: 'Pagar\n' 'boleto',
                  ),
                  ListOptionsWidget(
                    icon: Icons.credit_card,
                    title: 'PicPay\n' 'Card',
                  ),
                  ListOptionsWidget(
                    icon: Icons.people,
                    title: 'Pagar\n' 'pessoas',
                  ),
                  ListOptionsWidget(
                    icon: Icons.smartphone,
                    title: 'Recarga\n' 'de celular',
                  ),
                  ListOptionsWidget(
                    icon: Icons.abc,
                    title: 'Cartão\n' 'transporte',
                  ),
                  ListOptionsWidget(
                    icon: Icons.abc,
                    title: 'Pagar\n' 'locais',
                  ),
                  ListOptionsWidget(
                    icon: Icons.abc,
                    title: 'Cobrar\n' 'pessoas',
                  ),
                  ListOptionsWidget(
                    icon: Icons.abc,
                    title: 'Cripto',
                  ),
                  ListOptionsWidget(
                    icon: Icons.abc,
                    title: 'Open Finance',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_rounded),
                        prefixIconColor: Colors.green,
                        hintText: 'O que você quer encontrar?',
                        filled: true,
                        fillColor: Color(0xFFDCDCDC),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ListTileWidget(
                          label: 'Pagar boleto',
                        ),
                        ListTileWidget(
                          label: 'Cripto',
                        ),
                        ListTileWidget(
                          label: 'Fazer Pix\n' 'parcelado',
                        ),
                        ListTileWidget(
                          label: 'Pagar nas \n' 'maquininhas',
                        ),
                        ListTileWidget(
                          label: 'Recarga de\n' 'Celular',
                        ),
                        ListTileWidget(
                          label: 'Google Play',
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          onTap: () {},
                          leading: const Padding(
                            padding: EdgeInsets.only(
                              top: 8.0,
                              left: 8,
                              bottom: 8,
                            ),
                            child: Icon(Icons.percent_rounded,
                                color: Colors.green),
                          ),
                          title: const Text(
                            'Seleção especial',
                            style: TextStyle(fontSize: 12),
                          ),
                          subtitle: const Text(
                            'Promoções disponíveis',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.green,
                            size: 14,
                          ),
                          minLeadingWidth: 1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const NewsListWidget(),
                  Container(
                    color: const Color(0xFFDCDCDC),
                    width: MediaQuery.of(context).size.width,
                    height: 4,
                  ),
                  const NewsListWidget(),
                  Container(
                    color: const Color(0xFFDCDCDC),
                    width: MediaQuery.of(context).size.width,
                    height: 4,
                  ),
                  const NewsListWidget(),
                  Container(
                    color: const Color(0xFFDCDCDC),
                    width: MediaQuery.of(context).size.width,
                    height: 4,
                  ),
                  const NewsListWidget(),
                  Container(
                    color: const Color(0xFFDCDCDC),
                    width: MediaQuery.of(context).size.width,
                    height: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
