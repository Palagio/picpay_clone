import 'package:flutter/material.dart';
import 'package:picpay_clone/list_options_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: const Color(0xFF008c4f),
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
                left: MediaQuery.of(context).size.width * 0.65,
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: const Color(0xFF008c4f),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ListOptionsWidget(
                  icon: Icons.abc,
                  title: 'Pix',
                ),
                ListOptionsWidget(
                  icon: Icons.abc,
                  title: 'QR\n' 'Code',
                ),
                ListOptionsWidget(
                  icon: Icons.ac_unit,
                  title: 'Pagar\n' 'boleto',
                ),
                ListOptionsWidget(
                  icon: Icons.abc,
                  title: 'PicPay\n' 'Card',
                ),
                ListOptionsWidget(
                  icon: Icons.abc,
                  title: 'Pagar\n' 'pessoas',
                ),
                ListOptionsWidget(
                  icon: Icons.abc,
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
        ],
      ),
    );
  }
}
