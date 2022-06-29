import 'package:flutter/material.dart';
import 'package:gam3ity/features/on_boarding/domain/entities/on_board_model.dart';
import 'package:gam3ity/features/on_boarding/presentation/widgets/language_button.dart';
import 'package:gam3ity/features/on_boarding/presentation/widgets/on_boarding_navigation_button.dart';
import 'package:gam3ity/features/on_boarding/presentation/widgets/top_half_widget.dart';
import 'package:gam3ity/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late final PageController _pageController;
  late int index;
  late bool isLast;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    index = 0;
    isLast = false;
  }

  @override
  Widget build(BuildContext context) {
    final List<OnBoard> boardingList = onBoardingList(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: const [
                    LanguageButton(),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: boardingList.length,
                  onPageChanged: (int newIndex) {
                    index = newIndex;
                    if (index == boardingList.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TopHalfWidget(
                      model: boardingList[index],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SmoothPageIndicator(
                controller: _pageController,
                count: boardingList.length,
                effect: ExpandingDotsEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  activeDotColor: Theme.of(context).primaryColor,
                  expansionFactor: 2,
                ),
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  width: isLast ? MediaQuery.of(context).size.width * 0.8 : MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OnBoardingNavigationButton(
                        text: isLast ? S.of(context).login : S.of(context).back,
                        backgroundColor: const Color(0xffF4F4F4),
                        textColor: const Color(0xff7C7C7C),
                        isLast: isLast,
                        onPressed: () {
                          if(!isLast) {
                            if (index != 0) {
                              index--;
                              _pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            }
                          } else {
                            GoRouter.of(context).pushNamed('login');
                          }
                        },
                      ),
                      OnBoardingNavigationButton(
                        text: isLast ? S.of(context).register : S.of(context).next,
                        backgroundColor: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        start: false,
                        isLast: isLast,
                        onPressed: () {
                          if (!isLast) {
                            index++;
                            _pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            context.pushNamed('register');
                          }
                        },
                      ),
                    ],
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
