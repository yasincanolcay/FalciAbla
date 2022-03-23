import 'package:flutter/material.dart';
import 'dart:math';
class TextPage extends StatefulWidget {

  bool ask;
  bool para;
  bool tavsiye;
  TextPage(this.ask,this.para,this.tavsiye);
  @override
  _TextPageState createState() => _TextPageState(ask,para,tavsiye);
}

class _TextPageState extends State<TextPage> {
  List<String> askFali = [
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'AŞK: Kız valla bak, kara kaşlı, bıyıklı, taş fırın erkeği baş vermiş senin yüreğinden. Vallahi bak Burak Özçivit’in az bakımsız hali gibi bir kısmet bekliyor seni demedi deme!',
    'AŞK: Fala inanma falsız da kalma. Kendine dikkat et bak sende göz var, dur dur hem de iki tane.',
    'AŞK: Bak şurda bir yol var yolun başında hazır bir at duruyor, yükünü tutmuş yolculuğa çıkacak gibi ama bir kuş geliyor gagasında bir mektup var, sonra at huysuzlanıyor kaçıyor kuş attan ürküp uçup gidiyor, yolda çalışma varmış yol kapanıyor. Sana bir şey kalmadı.',
    'AŞK: Sevdiğiniz kişi ile aranız açılacaktır, ancak onu yeniden kazanın, birileri sizi kandırmaya çalışıyor, son derece dikkatli olun , bu günlerde bazı karışık işlere gireceksiniz, dikkatli olun.'
  ];
  List<String> paraFali = [
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'PARA: Hiç beklemediğiniz bir paraya kısa sürede kavuşacaksınız, Uzun vadeli ve mutlu bir yaşam sizi bekliyor bu günlerde yaptığınız iş neticesinde size mutluluk getirecek, Sevindirici, pozitif haberler alacaksınız.',
    'PARA: Beklediğiniz maddi imkanlar nihayet önünüze açılıyor, hayırlı bir olay yada verimli bir iş sizi bekliyor, yeni dostluk başlangıcı, uzun süredir göremediğiniz bir dosttan haber alacaksınız.'
  ];
  List<String> tavsiyeVer = [
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et',
    'TAVSİYE: "Üzülme" der Mevlana.."İstediğin bir şey olmuyorsa ya daha iyisi olacağı için, Ya da gerçekten de olmaması gerektiği için olmuyordur."'
  ];
  bool ask;
  bool para;
  bool tavsiye;
  int listeNo = 0;
  _TextPageState(this.ask,this.para,this.tavsiye);
  String sonucText = "";
  String icon = "";
  //yazılacak sonucu belirler
  void sonuc(){
    sonucText = "";
    if(ask == true)[
      listeNo = Random().nextInt(9),
      sonucText=askFali[listeNo],
      icon = "assets/images/love.png"
    ];
    if(para == true)[
      listeNo = Random().nextInt(7),
      sonucText=paraFali[listeNo],
      icon = "assets/images/salary.png"
    ];
    if(tavsiye == true)[
      listeNo = Random().nextInt(6),
      sonucText=tavsiyeVer[listeNo],
      icon = "assets/images/advice.png"
    ];
  }
  @override
  Widget build(BuildContext context) {
    sonuc();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'FALCI ABLANIZ',
            style: TextStyle(
              fontFamily: 'PlayBall',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
          titleSpacing: 2.0,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                        icon,
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: (){
                  setState(() {
                    sonuc();
                  });
                },
                child: Icon(Icons.repeat,color: Colors.purple[300],),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  color: Colors.purple[500],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      sonucText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Courgette',
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100.0,0,100.0,5.0),
                child: Card(
                  color: Colors.purple[500],
                  child: ListTile(
                    onTap: (){Navigator.pop(context);sonucText="";},
                    title: Text(
                      'GERİ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: 'Karma',
                      ),
                    ),
                    leading: Icon(Icons.arrow_back_ios,color: Colors.white70),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
