//
//  ContentView.swift
//  OnDeviceUpp5
//
//  Created by Blerona Shatri Dreshaj on 2023-11-05.
//

import SwiftUI

struct ContentView: View {
    let do_model = DoModel()
    @State var animal_prediction_1 = ""
    @State var animal_prediction_2 = ""
    var body: some View {
        HStack {
            VStack {
                Image("minkatt")
                    .resizable()
                    .frame(width: 150, height: 150)
                Button {
                    animal_prediction_1 = do_model.doImage("minkatt")
                } label: {
                    Text("Predict animal")
                }
                Text(animal_prediction_1)
                    .frame(width: 100)
            }
            VStack {
                Image("elefant")
                    .resizable()
                    .frame(width: 150, height: 150)
                Button {
                    animal_prediction_2 = do_model.doImage("elefant")
                } label: {
                    Text("Predict animal")
                }
                Text(animal_prediction_2)
                    .frame(width: 100)
            }
        }
    }
}

#Preview {
    ContentView()
}
