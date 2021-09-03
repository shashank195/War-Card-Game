//
//  ContentView.swift
//  war-challenge
//
//  Created by Shashank Kumar on 03/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
            Image("logo")
                .padding(.all)
                Spacer()
            HStack(){
                Spacer()
                Image("card3")
                Spacer()
                Image("card4")
                Spacer()
            }
                Spacer()
            Image("dealbutton")
                .padding(.all)
                Spacer()
            HStack(){
                VStack{
                    Text("PLAYER") .foregroundColor(Color.white).font(.title2)
                    Text("0") .foregroundColor(Color.white).font(.title2)
                    
                }
                .padding(.all)
                VStack{
                    Text("CPU").fontWeight(.regular).foregroundColor(Color.white).font(.title2).lineLimit(0)
                    Text("0").fontWeight(.medium) .foregroundColor(Color.white).font(.title2)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                Spacer()
              }
            }
         }
      }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
