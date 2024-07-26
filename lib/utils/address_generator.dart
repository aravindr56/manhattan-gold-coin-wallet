import 'dart:typed_data';
import 'package:base58check/base58.dart';
import 'package:blockchain_utils/crypto/crypto/scrypt/scrypt.dart';
import 'package:hex/hex.dart'; // Ensure the correct package is used for HEX encoding
import 'package:base58check/base58check.dart';
// Import the correct package for Scrypt


class AddressGenerator {
  static const String prefix = 'M';

  static Future<String> generateAddress(String seed) async {
    final scryptParams = ScryptParameters(
        N: 16384, // CPU/memory cost parameter
        r: 8,     // Block size parameter
        p: 1,     // Parallelization parameter
        dkLen: 32 // Key length
    );

    // Initialize Scrypt with parameters
    final scrypt = Scrypt.fromParams(scryptParams);
    final scryptKey = await scrypt.process(Uint8List.fromList(seed.codeUnits));

    // Encode to Base58 and ensure it starts with 'M'
    String address = '';
    final base58Codec = Base58Codec();

    // Create a copy of the scryptKey to avoid mutating the original key
    Uint8List tempKey = Uint8List.fromList(scryptKey);

    // Keep trying until we get an address starting with the desired prefix
    while (!address.startsWith(prefix)) {
      address = base58Codec.encode(tempKey);
      // Increment the first byte to attempt generating a different address
      for (int i = 0; i < tempKey.length; i++) {
        if (tempKey[i] < 255) {
          tempKey[i]++;
          break;
        } else {
          tempKey[i] = 0;
        }
      }
    }

    return address;
  }
}


