import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '/data/presentation_data.dart';
import '/pages/presentation/components/barra_progresiva.dart';
import '/routers/routes.dart';
import '/themes/colors.dart';
import '/themes/my_text_theme.dart';
import '/widgets/my_button.dart';

class Presentation extends StatefulWidget {
  const Presentation({super.key});

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  int selectPage = 0;
  PageController pageController = PageController();
  final _data = PresentationData.presentationData();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        selectPage = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        //alignment: Alignment.center,
        children: [
          // Pagina de las imagen, titulos subtitulo y colores de la presentacion
          PageView.builder(
            controller: pageController,
            itemCount: _data.length,
            itemBuilder: (context, index) {
              final title = _data[index].title;
              final subTitle = _data[index].subtitle;
              final image = _data[index].image;
              List<Color>? gradientColor = _data[index].gradientColor;
              return Container(
                padding: const EdgeInsets.all(24),
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: gradientColor!,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Imagen de la presentacion
                    Container(
                      width: size.width * 0.8,
                      height: size.width * 0.8,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('$image'),
                        ),
                      ),
                    ),

                    // Titulo y subtitulos
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      width: size.width,
                      child: Column(
                        children: [
                          Gap(size.height * 0.03),
                          // Titulo
                          Text(
                            '$title',
                            textAlign: TextAlign.center,
                            style: MyTextTheme
                                .defaultTheme.textTheme.headlineMedium!
                                .copyWith(
                              color: TColors.blackHigh,
                            ),
                          ),

                          Gap(size.height * 0.03),

                          // SubTitulo
                          Text(
                            '$subTitle',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: TColors.blackLow,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),

                          Gap(size.height * 0.03),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),

          // Botones de navegacion
          Container(
            padding: const EdgeInsets.all(24),
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Barra progresiva al momento de presinoar next
                BarraProgresiva(data: _data, selectPage: selectPage),

                Gap(size.height * 0.03),

                // Botones de siguiente
                _buildButton(selectPage, size.width),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(int currentPage, double width, {double? height = 52}) {
    if (currentPage == _data.length - 1) {
      return MyButton(
        width: width,
        height: height,
        text: 'Next',
        onTap: () => Navigator.pushReplacementNamed(context, AppRoutes.home),
      );
    } else {
      return _buildButtonNext();
    }
  }

  Row _buildButtonNext() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () =>
              Navigator.pushReplacementNamed(context, AppRoutes.home),
          child: Text(
            'Skip',
            style: MyTextTheme.defaultTheme.textTheme.bodyMedium!.copyWith(
              color: TColors.blackLow,
            ),
          ),
        ),
        MyButton(
          text: 'Next',
          onTap: () {
            if (selectPage >= _data.length - 1) {
            } else {
              setState(() {
                selectPage++;
                pageController.animateToPage(
                  selectPage,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              });
            }
          },
        ),
      ],
    );
  }
}
