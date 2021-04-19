//
//  ContentView.swift
//  zooMonitoring
//
//  Created by Jared burris on 3/24/21.

import SwiftUI

struct ContentView: View {
    
    //Variables to change views
    @State var showAnimalView = false
    @State var showHabitatView = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                //Background for the home screen from Asset Library
                Image("HomeBackground")
                    .resizable()
                    .ignoresSafeArea()
                
                //VStack holding all of information and buttons together
                VStack {
                    //First text with a couple of modifiers
                    Text("Welcome to Zoo Monitor")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 75)
                        .background(LinearGradient(gradient: Gradient(colors: [.black, .secondary, .black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        
                    //Spacer to space out both texts
                    Spacer()
                    
                    //Second text with a couple of modifiers
                    Text("Please choose which you would like information on")
                        .foregroundColor(Color.white)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 75)
                        .background(LinearGradient(gradient: Gradient(colors: [.black, .secondary, .black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    
                    //Spacing out the top information from the buttons
                    Spacer()
                    Spacer()
                    
                    //HStack holding VStacks for each button and text above it
                    HStack {
                        
                        VStack {
                            //Text above animals button (could use better colors)
                            Text("Animals")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .background(LinearGradient(gradient: Gradient(colors: [.black, .secondary, .black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                                
                            //Button to move to Animal view
                            Button(
                                action: {
                                DispatchQueue.main.asyncAfter(deadline: .now()) {
                                    self.showAnimalView = true
                                        }
                                },
                                label: {
                                Image("animalLogo")
                                    .padding(.all)
                                })
                            
                            //Destination link to the Animal View
                            NavigationLink(destination: AnimalView(), isActive: $showAnimalView) {
                                EmptyView()
                                }
                            }
                        
                        VStack {
                            //Text above habitats button (could use better colors)
                            Text("Habitats")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .background(LinearGradient(gradient: Gradient(colors: [.black, .secondary, .black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            
                            //Button to move to Habitat view
                            Button(
                                action: {
                                DispatchQueue.main.asyncAfter(deadline: .now()) {
                                    self.showHabitatView = true
                                        }
                                },
                                label: {
                                Image("habitatLogo")
                                    .padding(.all)
                                })
                            
                            //Destination link to the Habitat View
                            NavigationLink(destination: HabitatView(), isActive: $showHabitatView) {
                                EmptyView()
                                }
                            }
                    }
                    //Last spacer to keep it even
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
