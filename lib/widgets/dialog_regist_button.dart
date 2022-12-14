import 'package:app/importer.dart';
import 'package:app/main.dart';
import 'package:app/models/return.dart';

class DialogRegistButton extends StatelessWidget {
  final List<Map<String, String>> eatfood;
  const DialogRegistButton({Key? key, required this.eatfood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = SizeConfig();
    size.init(context);
    return SizedBox(
        width: size.deviceWidth * 0.2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () async {
              await Eat.insertEat(eatfood);
              Calorie().totalcal();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomeScreen(title: "RAGOUT")),
                  (_) => false);
            },
            child: Image.asset('assets/dialog_regist.png'),
          ),
        ));
  }
}
