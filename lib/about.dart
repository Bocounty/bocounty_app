import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri nativeUri = Uri.parse("instagram://user?username=bocounty._");
    return Scaffold(
        backgroundColor: const Color(0xffF5EFE4),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('關 於 我 們',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
          backgroundColor: const Color(0xffF5EFE4),
          elevation: 0,
          // leading: IconButton(
          //   icon: Image.asset(
          //     'assets/images/back.png',
          //     // width: 20,
          //     // height: 20,
          //   ),
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
        ),
        body: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/slidelogo.png'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '我們是BOCOUNTY ，一個來自東華大學的\n校園互助APP設計團隊。',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '在學生時代我們需要的幫助不外乎就是商品\n買賣，搭車服務等等，東華大學也有這樣概\n念的臉書社團存在。不過在我們團隊使用了\n該社團一段時間後，發現了一些問題。',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '為了有更好的服務體驗，我們設計出一個讓\n東華大學學生能夠互助的APP，以委託表單\n解決價格不公開問題，以學號信箱認證使用\n者身份，互助平台通知讓其他社團訊息不會\n蓋掉需求通知。',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '我們也將元宇宙的概念帶入BOCOUNTY的概\n念帶入BOCOUNTY中，期盼使用者在互助的\n過程中，除了滿足需求外，也可以享受社群\n所帶來的樂趣!',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '我們希望能打造一個更適合學生使用，專屬\n東華大學的互助平台!',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '若有問題歡迎聯繫我們的專頁!',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                _launchExternalApp(nativeUri);
              },
              child: const Text(
                '我們的Instagram',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  height: 1.5,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffe87d42),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom + 30,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(width: 2, color: Colors.black),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xffe87d42)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const SizedBox(
                    width: 75,
                    height: 25,
                    child: Center(
                      child: Text(
                        '關閉',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Future<void> _launchExternalApp(Uri url) async {
    Uri toLaunch = Uri.parse('https://www.instagram.com/bocounty._/');
    // if (!await launchUrl(
    //   url,
    //   mode: LaunchMode.externalApplication,
    // )) {
    //   throw Exception('Could not launch $url');
    // }
    try {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      await launchUrl(
        toLaunch,
        mode: LaunchMode.externalApplication,
      );
    }
  }
}
