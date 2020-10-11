//
//  ContentView.swift
//  RafaelCard
//
//  Created by Rafael Freitas on 10/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 20) {
                
                Image("rafael")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 3))
                
                VStack {
                    Text("RAFAEL")
                        .foregroundColor(.white)
                        .frame(width: .infinity)
                    
                    Text("FREITAS")
                        .frame(width: .infinity)
                        .foregroundColor(customOrange)
                        .background(Color.white)
                }
                .background(customOrange)
                .font(Font.custom("Roboto-Bold", size: 40))
                
                Text("Desenvolvedor iOS")
                    .font(Font.custom("Roboto-Thin", size: 15))
                
                Divider()
               
                info(for: "rafael@freitas.com", icon: "envelope.fill")
                info(for: "0748151908", icon: "phone.fill")
                
            }
            .padding()
            .foregroundColor(customOrange)
        }
    }
    
    func info(for field: String, icon: String) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 40)
            HStack {
                Image(systemName: icon)
                Text(field)
                    .font(Font.custom("Roboto-Bold", size: 15))
            }
            .foregroundColor(.white)
        }
    }
    
    //MARK: - Constants
    let customOrange = Color(.orange)
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
