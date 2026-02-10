import 'package:flutter/material.dart';
import 'login.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.grey),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline, color: Colors.grey),
            onPressed: () {},
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(top: 20.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'blibli',
                style: TextStyle(
                  color: Color(0xFF0095DA),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const Text(
                'tiket',
                style: TextStyle(color: Color(0xFF0095DA), fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // PROFILE SECTION
            Container(
              color: Colors.lightBlue[50],
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // AVATAR
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.face, size: 35, color: Colors.white),
                    ),
                    const SizedBox(height: 12),

                    // NAME AND "UBAH" BUTTON
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Earthen Krisdian Setya",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Ubah",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          width: 6,
                          height: 6,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),

                    // PHONE NUMBER
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.link, size: 14, color: Colors.blue),
                        SizedBox(width: 4),
                        Text(
                          "087817227300",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // GRID
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            // LEFT COLUMN (Tier & Poin)
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildStatItem(
                                    "Tier",
                                    Icons.stars,
                                    "Gold",
                                    Colors.grey[700]!,
                                  ),
                                  const SizedBox(height: 16),
                                  _buildStatItem(
                                    "Poin",
                                    Icons.monetization_on,
                                    "1 poin",
                                    Colors.grey[700]!,
                                  ),
                                ],
                              ),
                            ),

                            // VERTICAL DIVIDER
                            const VerticalDivider(
                              color: Colors.grey,
                              thickness: 0.5,
                              width: 20,
                              indent: 4,
                              endIndent: 4,
                            ),

                            // RIGHT COLUMN
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildStatItem(
                                    "BlibliPay",
                                    Icons.account_balance_wallet,
                                    "Rp0",
                                    Colors.grey[700]!,
                                  ),
                                  const SizedBox(height: 16),
                                  _buildStatItem(
                                    "PayLater",
                                    Icons.credit_card,
                                    "Ajukan",
                                    Colors.blue,
                                    isLink: true,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // BANNER SECTION
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(16),
              color: Colors.blue[50],
              child: Row(
                children: [
                  const Icon(Icons.waving_hand, color: Colors.orange),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text("Kenalan, yuk! Isi survei dapat poin."),
                  ),
                ],
              ),
            ),

            // TRANSACTION SECTION
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Transaksi Belanja",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Lihat semua"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      _TransactionIcon(
                        icon: Icons.access_time,
                        label: "Menunggu",
                      ),
                      _TransactionIcon(
                        icon: Icons.inventory_2_outlined,
                        label: "Saat ini",
                      ),
                      _TransactionIcon(
                        icon: Icons.check_circle_outline,
                        label: "Selesai",
                      ),
                      _TransactionIcon(
                        icon: Icons.star_outline,
                        label: "Ulasan",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // MENU LIST SECTION
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  _buildMenuItem("Komisi Affiliate", badge: "Baru"),
                  _buildMenuItem("Voucher", badgeCount: "18"),
                  _buildMenuItem("Wishlist"),
                  _buildMenuItem("Alamat"),
                  _buildMenuItem("Kelola tagihan & isi ulang"),
                  _buildMenuItem("Seller favorit"),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // BOTTOM OPTIONS SECTION
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  _buildMenuItem("Langganan"),
                  _buildMenuItem("Tukar ke saldo"),
                  _buildMenuItem("Retur produk"),
                  _buildMenuItem("Asuransi produk"),
                  _buildMenuItem("Bantuan BlibliCare"),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // SELLER SECTION
            Container(
              color: Colors.white,
              child: _buildMenuItem("Jual di Blibli", icon: Icons.store),
            ),
            const SizedBox(height: 20),

            // LOGOUT BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Text(
                    "Keluar",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // FOOTER
            const Text("Tentang Blibli", style: TextStyle(color: Colors.grey)),
            const Text(
              "All Rights Reserved",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),

      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Bonus',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Bag'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Pesanan'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
    );
  }
}

// HELPER WIDGETS
class _TransactionIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const _TransactionIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.grey[700]),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}

Widget _buildStatItem(
  String label,
  IconData icon,
  String value,
  Color textColor, {
  bool isLink = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      const SizedBox(height: 4),
      Row(
        children: [
          Icon(icon, size: 18, color: Colors.grey),
          const SizedBox(width: 8),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: textColor,
            ),
          ),
        ],
      ),
      if (isLink) ...[],
    ],
  );
}

Widget _buildMenuItem(
  String title, {
  IconData? icon,
  String? badge,
  String? badgeCount,
}) {
  return ListTile(
    leading: icon != null
        ? Icon(icon, color: Colors.grey)
        : const Icon(Icons.article_outlined, color: Colors.grey),
    title: Text(title),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (badge != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              badge,
              style: const TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        if (badgeCount != null)
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Text(
              badgeCount,
              style: const TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        const Icon(Icons.chevron_right, color: Colors.grey),
      ],
    ),
    onTap: () {},
  );
}
