import 'package:yuyin/ttsHelper.dart';
import 'package:flutter/material.dart';

class VoiceSetPage extends StatefulWidget {
  VoiceSetPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _VoiceSetPageState createState() => _VoiceSetPageState();
}

class _VoiceSetPageState extends State<VoiceSetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        title: Text('绍兴景区导游词'),
        elevation: 5.0, // shadow the bottom of AppBar
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                '绍兴龙华寺导游词',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
              ),
              onTap: () {
                TtsHelper.instance.setLanguageAndSpeak("龙华寺初建于南朝宋元嘉二十四年(447年)，是当时的吏部尚书江夷建造。夷父江彪，东晋永和中任会稽内史，龙华寺之地原为其宅居。夷六世孙江揔，为南朝陈尚书令，曾于梁太清(547——549)末，避难于会稽龙华寺内。", "zh");
              },
            ),
            ListTile(
              title: Text(
                '绍兴东湖导游词',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
              ),
              onTap: () {
                TtsHelper.instance.setLanguageAndSpeak("绍兴东湖在绍兴古城东约六公里处，以崖壁、岩洞、石桥、湖面巧妙结合，成为著名园林，是浙江省的三大名湖之一。东湖虽小，但因它的奇石、奇洞所构成的奇景使东湖成为旅游业界人士公认的罕见的\"湖中之奇\"。日本旅游机构交通公社，曾在同时游历过杭州西湖与绍兴东湖的日本游客中作过问卷调查，对东湖的印象超过西湖，可见对东湖的赞誉并非绍兴人的自我感觉。", "zh");
              },
            ),
             ListTile(
              title: Text(
                '绍兴大禹陵导游词',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
              ),
              onTap: () {
                TtsHelper.instance.setLanguageAndSpeak("大禹陵位于绍兴东南的会稽山脚下，会稽山风景区内。相传八年治水、三过家门而不入的大禹就葬在这里。虽然目前景区新开辟了百鸟苑景点，一旁还有香火甚旺的香炉峰，但会稽山景区的精华依然是以大禹为主题的古迹——禹陵、禹祠和禹庙。", "zh");
              },
            ),
            Divider(
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}

