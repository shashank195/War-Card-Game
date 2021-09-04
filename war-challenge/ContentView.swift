
//  ContentView.swift
//  war-challenge
//
//  Created by Shashank Kumar on 03/09/21.
//

import SwiftUI

struct ContentView: View {
    // @State is a property state wrapper which can be changed
    @State var playerCard="card5"
    @State var cpuCard="card9"
    @State var playerScore=0
    @State var cpuScore=0
    
    
    
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
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
            }
                Spacer()
                
                Button(action: {
                    //Generate a random number between 2 and 14
                    let playerRand=Int.random(in: 2...14)
                    let cpuRand=Int.random(in: 2...14)
                    
                    if(playerRand>cpuRand){
                        playerScore=playerScore+1
                    }
                    else if (cpuRand>playerRand){
                        cpuScore = cpuScore + 1
                    }
                    else{
                        print("Tie")
                    }
                    
                    //Update the card
                    playerCard="card" + String(playerRand)
                    cpuCard="card" + String(cpuRand)
                    //Update the score
                    //playerScore+=1
                   // cpuScore+=1
                    
                }, label: {
                    Image("dealbutton")
                        .padding(.all)
                })

                
                
                
                Spacer()
            HStack(){
                VStack{
                    Text("PLAYER") .foregroundColor(Color.white).font(.title2)
                    Text(String(playerScore)) .foregroundColor(Color.white).font(.title2)
                    
                }
                .padding(.all)
                VStack{
                    Text("CPU").fontWeight(.regular).foregroundColor(Color.white).font(.title2).lineLimit(0)
                    Text(String(cpuScore)).fontWeight(.medium) .foregroundColor(Color.white).font(.title2)
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

