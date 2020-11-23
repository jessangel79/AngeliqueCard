//
//  ContentView.swift
//  AngeliqueCard
//
//  Created by Angelique Babin on 20/11/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Card Color")
//            Color(UIColor(red: 0.38, green: 0.64, blue: 0.74, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("angelique")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
                Text("Angélique Babin")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+33 6 67 41 28 62‬", imageName: "phone.fill")
                InfoView(text: "babin.angelique@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11")
    }
}


