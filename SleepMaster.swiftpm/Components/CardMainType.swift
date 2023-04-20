//
//  CardMainType.swift
//  SleepMaster
//
//  Created by acrn on 18/04/23.
//
import SwiftUI


struct CardMainType: View {

    enum CardType {
        case cycle, clock, brain, night, day, bedroom
    }

    let cardType: CardType

    var body: some View {

        ZStack {

                switch cardType {

                case.cycle:
                    Image("cardMain")
                    VStack {
                        Text ("Your secret solution will be the famous")
                            .fontWeight(.medium)
                        +
                        Text("Circadian Cycle!")
                            .fontWeight(.bold)
                        Text ("The major biological process that regulates physiological and behavioral activities over a period of approximately 24 hours.")
                            .fontWeight(.medium)
                            .padding(.top, 20)


                    } .offset(x: -40)


                case.clock:
                    Image("cardMain")
                    Text ("The Circadian Cycle is controlled by the internal 'biological clock', which is influenced by light and other environmental cues.")
                        .fontWeight(.medium)
                        .padding()


                case.brain:
                    Image("cardMain")
                    Text ("When exposed to environmental stimuli such as light, the SCN prompts the rest of the body to adjust its functions according to the time of day.")
                        .fontWeight(.medium)
                        .padding()

                case.night:
                    Image("cardMain")
                    Text ("During the night, when natural light (the Sun) decreases, the circadian cycle is responsible for preparing the body for rest and restful sleep. The main change is in the production of a hormone: ")
                        .fontWeight(.medium) +
                    Text("melatonin!")
                        .fontWeight(.bold)

                case.day:
                    Image("cardGame")
                    Text ("With the arrival of the day, the circadian cycle is responsible for preparing the body for activity. Exposure to sunlight is one of the main external influences, and as soon as light hits the eyes, the message is transmitted to the SQN, which stops the production of melatonin and increases cortisol, the hormone responsible for increasing energy.")
                        .fontWeight(.medium)

                case.bedroom:
                    Image("cardGame")
                    Text ("Now that you've remembered the interference of external factors (natural and artificial) in the circadian cycle, let's change some things in Artur's room, so that he has better sleep quality.")
                        .fontWeight(.medium)


                default: fatalError("Unexpected card type: \(cardType)")
                }

            }

            .font(.system(size: 20, design: .monospaced))
            .foregroundColor(.white)
            .multilineTextAlignment(.leading)
            .padding(.leading, 17)
            .padding(.trailing, 17)
            .padding(.bottom, 30)
            .padding(.top, 24)
            .frame(width: 874, height: 80)
        }
    }



struct CardMainType_Previews: PreviewProvider {
    static var previews: some View {
        CardMainType(cardType: .day)
    }
}
