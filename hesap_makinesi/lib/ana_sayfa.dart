import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  late double sonuc;
  double toplam = 0;
  String yazi = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF39393B),
      body: Center(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Align(
                      alignment: Alignment
                          .bottomRight, // Yazıyı sağ alt köşeye hizalar
                      child: Text(
                        yazi,
                        style: TextStyle(
                            color: const Color(0xFFE3E3E5),
                            fontSize: yazi.length < 10 ? 70 : 30),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi = "";
                                });
                              },
                              child: const Text(
                                "C",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF49494B),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi = (double.parse(yazi) * -1).toString();
                                });
                              },
                              child: const Text(
                                "±",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF49494B),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "%";
                                });
                              },
                              child: const Text(
                                "%",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF49494B),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "÷";
                                });
                              },
                              child: const Text(
                                "÷",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFED8E27),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "7";
                                });
                              },
                              child: const Text(
                                "7",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "8";
                                });
                              },
                              child: const Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "9";
                                });
                              },
                              child: const Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "x";
                                });
                              },
                              child: const Text(
                                "x",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFED8E27),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "4";
                                });
                              },
                              child: const Text(
                                "4",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "5";
                                });
                              },
                              child: const Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "6";
                                });
                              },
                              child: const Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "-";
                                });
                              },
                              child: const Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFED8E27),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "1";
                                });
                              },
                              child: const Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "2";
                                });
                              },
                              child: const Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "3";
                                });
                              },
                              child: const Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "+";
                                });
                              },
                              child: const Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFED8E27),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += "0";
                                });
                              },
                              child: const Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  yazi += ".";
                                });
                              },
                              child: const Text(
                                ",",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF636365),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (yazi.contains("+")) {
                                  List<String> sayilar = yazi.split("+");
                                  for (int i = 0; i < sayilar.length; i++) {
                                    toplam += double.parse(sayilar[i]);
                                  }
                                  setState(() {
                                    yazi = toplam.toString();
                                    toplam = 0;
                                  });
                                }
                                if (yazi.contains("x")) {
                                  List<String> sayilar = yazi.split("x");
                                  sonuc = double.parse(sayilar[0]) *
                                      double.parse(sayilar[1]);
                                  setState(() {
                                    yazi = sonuc.toString();
                                  });
                                }
                                if (yazi.contains("-")) {
                                  List<String> sayilar = yazi.split("-");
                                  sonuc = double.parse(sayilar[0]) -
                                      double.parse(sayilar[1]);
                                  setState(() {
                                    yazi = sonuc.toString();
                                  });
                                }
                                if (yazi.contains("÷")) {
                                  List<String> sayilar = yazi.split("÷");
                                  sonuc = double.parse(sayilar[0]) /
                                      double.parse(sayilar[1]);
                                  setState(() {
                                    yazi = sonuc.toString();
                                  });
                                }
                                if (yazi.contains("%")) {
                                  List<String> sayilar = yazi.split("%");

                                  sonuc = double.parse(sayilar[0]) %
                                      double.parse(sayilar[1]);
                                  setState(() {
                                    yazi = sonuc.toString();
                                  });
                                }
                              },
                              child: const Text(
                                "=",
                                style: TextStyle(
                                    fontSize: 50, color: Color(0xFFE3E3E5)),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFED8E27),
                                side: const BorderSide(
                                    color: Color(0xFF37373A), width: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
