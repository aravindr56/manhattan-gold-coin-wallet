import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../utils/address_generator.dart';
import '../utils/clipboard_helper.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  String _address = '';
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _generateAddress();
  }

  void _generateAddress() async {
    final address = await AddressGenerator.generateAddress('your_seed_here');
    setState(() {
      _address = address;
    });
  }

  void _playTransactionSound() async {
    await _audioPlayer.play(AssetSource('assets/sounds/coin_sound.mp3'));
  }

  void _makeTransaction() {
    // Your transaction logic here
    _playTransactionSound();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Wallet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your Address:',
              style: TextStyle(fontSize: 20),
            ),
            SelectableText(
              _address,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                ClipboardHelper.copyToClipboard(_address);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Address copied to clipboard!')),
                );
              },
              child: Text('Copy to Clipboard'),
            ),
            ElevatedButton(
              onPressed: _makeTransaction,
              child: Text('Make Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
