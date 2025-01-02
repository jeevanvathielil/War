//
//  ContentView.swift
//  War Card Game
//
//  Created by Jeevan Vathielil on 7/6/23.
//

import SwiftUI

struct ContentView: View {
   
   @State var playerCard = "card7"
   @State var cpuCard = "card13"
   
   @State var playerScore = 0
   @State var cpuScore = 0
   
   var body: some View {
      
      ZStack{
         Image("background-plain")
            .resizable()
            .resizable()
            .ignoresSafeArea()
         
         VStack{
            Spacer()
            Image("finallogo")
            
            Spacer()
            
            HStack{
               Spacer()
               Image(playerCard)
               Spacer()
               Image(cpuCard)
               Spacer()
            }
            
            Spacer()
            
            
            Button {
               deal()
            }  label: {
               Image("button")
            }
            
            Spacer()
            
            HStack{
               Spacer()
               
               VStack{
                  Text("Player")
                     .font(.headline)
                     .padding(.bottom, 10.0)
                  Text(String(playerScore))
                     .font(.largeTitle)
               }
               
               Spacer()
               
               VStack{
                  Text("CPU")
                     .font(.headline)
                     .padding(.bottom, 10.0)
                  Text(String(cpuScore))
                     .font(.largeTitle)
               }
               
               Spacer()
            }
            .foregroundColor(.white)
            Spacer()
         }
      }
   }
   
   func deal(){
      //Randomize the players cards
      var playerCardValue = Int.random(in: 2...14)
      playerCard = "card" + String(playerCardValue)
      
      //Randomiza cpu score
      var cpuCardValue = Int.random(in: 2...14)
      cpuCard = "card" + String(cpuCardValue)
      
      //Update score
      if playerCardValue > cpuCardValue {
         //add 1 player value
         playerScore += 1
      }
      else if cpuCardValue > playerCardValue{
         //add 1 to cpu
         cpuScore += 1
      }
      
   }
   
   }

   
      struct ContentView_Previews: PreviewProvider {
         static var previews: some View {
            ContentView()
         }
      }
   

