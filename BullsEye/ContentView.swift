//
//  ContentView.swift
//  BullsEye
//
//  Created by Alexander Perse on 12/4/19.
//  Copyright © 2019 Alexander Perse. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
//    @State var whosThereIsVisible = false
    @State var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                // Target row
                HStack {
                    Text("Put the bullseye as close as you can to:")
                    Text("100")
                }
                Spacer()
                // Slider row
                HStack {
                    Text("1")
                    Slider(value: self.$sliderValue, in: 1...100)
                    Text("100")
                }
                Spacer()
                // Button Row
                
                Button(action: {
                    print("Button pressed.")
                    self.alertIsVisible = true
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $alertIsVisible) { () -> Alert in
                    var roundedValue: Int = Int(self.sliderValue.rounded())
                        return Alert(title: Text("Hello there!"),
                          message: Text("The slider's value is \(roundedValue)"),
                          dismissButton: .default(Text("Awesome")))
                }
                
                //Score row
                Spacer()
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Start over")
                    }
                    Spacer()
                    Text("Score:")
                    Text("999999")
                    Spacer()
                    Text("Round:")
                    Text("999")
                    Spacer()
                    Button(action: {}) {
                        Text("Info")
                    }
                }
                .padding(.bottom, 20)
            }
            /*
            Button(action: {
                print("knock knock button pressed")
                self.whosThereIsVisible = true
            }) {
                Text("Knock-knock!")
            }
            .alert(isPresented: $whosThereIsVisible) { () ->
             Alert in
                return Alert(title: Text("Who's there?"),
                             message: Text("Little old lady"),
                             dismissButton: .default(Text("Little old lady, who?")))
            }
            */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
