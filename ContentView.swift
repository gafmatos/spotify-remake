//
//  ContentView.swift
//  project1
//
//  Created by Gabriel Matos on 26/09/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlaying = false
    @State private var isLiked = false
    var body: some View {
        ZStack(alignment: .top){
            LinearGradient(gradient: Gradient(colors: [
                Color(red: 0.4, green: 0.15, blue: 0.15),
                Color(red: 0.2, green: 0.05, blue: 0.08)
            ]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            
            VStack() {
                HStack{
                    Image(systemName: "chevron.down")
                    
                    Spacer()
                    Text("Liked Songs")
                        .font(Font.caption.bold())

                    Spacer()
                    Image(systemName: "ellipsis")
                }
                .bold(true)
                .padding()
                
                Image(.antonioBrasileiro)
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Querida")
                            .font(.title2)
                            .bold(true)
                        Text("Antonio Carlos Jobim")
                            .font(.subheadline)
                            .fontWeight(Font.Weight.light)
                    }
                    Spacer()
                    
                    Button{
                        withAnimation(.easeInOut(duration: 0.05)){isLiked.toggle()}
                    }label: {
                        Image(systemName: isLiked ? "checkmark.circle.fill" : "plus.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(isLiked ? Color.green: Color.white)
                    }
                    
                    
                }
                .padding(.top, 40)
                .padding(.horizontal)
                
                ZStack{
                    Capsule()
                        .fill(Color.white)
                        .frame(height: 4)
                    Circle()
                        .fill(Color.white)
                        .frame(width: 15, height: 15)
                    
                }
                .padding(.horizontal)
                .padding(.top)
                HStack{
                    Text("00:00")
                        .font(.footnote)
                        .fontWeight(Font.Weight.light)
                    Spacer()
                    Text("03:31")
                        .font(.footnote)
                        .fontWeight(Font.Weight.light)
                }
                .padding(.horizontal)
                
                HStack{
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal)
                    
                    
                    Button{
                        withAnimation(.easeInOut(duration: 0.05)){isPlaying.toggle()}
                        
                    }label: {
                        Image(systemName: isPlaying ? "pause.circle.fill": "play.circle.fill")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .padding(.horizontal)
                    }
                    
                    
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal)
                    Spacer()
                    
                }
                .foregroundStyle(Color.white)
                .padding(.vertical, 10)
                
                
                HStack{
                    Image(systemName: "hifispeaker.2")
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .padding(.horizontal)
                    Image(systemName: "square.stack.3d.up.fill")
                    
                }
                .foregroundStyle(Color.white)
                .padding(.horizontal, 20)
                
                
                
                
                
                
            }
            .foregroundStyle(Color.white)
            
            
        }
        
        
    }
}

#Preview {
    ContentView()
}

