import 'package:bmi_calculator/functionality/calculator_brain.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bottom_button.dart';
import '../components/constants.dart';
import '../components/icon_content.dart';


enum Gender {male, female}


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  int height=180;
  int weight=60;
  int age=19;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xFF090C20),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
           Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(colour: (selectedGender == Gender.male) ? activeCardColor: inactiveCardColor,
                        cardChild: const IconContent(icon: FontAwesomeIcons.mars, label: "MALE",),
                        onPress: (){
                        setState(() {
                          selectedGender =
                          selectedGender == Gender.male ? null : Gender.male;
                        });
                        },
                      ),
                    ),
                   Expanded(
                      child: ReusableCard(colour: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                        cardChild: const IconContent(icon: FontAwesomeIcons.venus, label: "FEMALE",),
                        onPress: (){
                        setState(() {
                          selectedGender =
                          selectedGender == Gender.female ? null : Gender.female;
                        });
                        },),
                        ),
                ],
              ),
          ),
               Expanded(
              child: ReusableCard(
                colour: inactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('HEIGHT', style: labelTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                          Text(
                            height.toString(),
                            style: numberTextStyle,
                          ),
                        const Text(
                          'cm',
                          style: labelTextStyle,
                          ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0,),
                        overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                        onChanged: (double newValue){
                           setState(() {
                             height= newValue.round();
                           });
                        },
                      ),
                    ),
                  ],
                ),
              ),
          ),
            Expanded(
                child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: inactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // weight
                          const Text(
                            'WEIGHT',
                            style: labelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: numberTextStyle,
                          ),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    weight --;
                                  });
                                }
                              ),
                              const SizedBox(width: 10.0,),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      weight ++;
                                    });
                                  }
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ),
                  Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: ReusableCard(colour: inactiveCardColor,
                                cardChild: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text(
                                      'Age',
                                      style: labelTextStyle,
                                    ),
                                    Text(
                                      age.toString(),
                                      style: numberTextStyle,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        RoundIconButton(
                                            icon: FontAwesomeIcons.minus,
                                            onPressed: (){
                                              setState(() {
                                                age--;
                                              });
                                            }
                                        ),
                                        const SizedBox(width: 10.0),
                                        RoundIconButton(
                                            icon: FontAwesomeIcons.plus,
                                            onPressed: (){
                                              setState(() {
                                                age++;
                                              });
                                            }
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                          )
                        ],
                      )
                  )
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: (){
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ResultsPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ))
              );
            },
          ),
        ],
      ),
    );
  }
}





