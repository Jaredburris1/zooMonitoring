//
//  HabitatView.swift
//  zooMonitoring
//
//  Created by Jared burris on 3/28/21.
//

import SwiftUI

struct HabitatView: View {
    //Habitat variables to toggle showing the alert
    @State private var penguinDetails = false
    @State private var birdDetails = false
    @State private var sharkDetails = false
    @State private var fishDetails = false
    @State private var dolphinDetails = false
    
    var body: some View {
            
        ZStack {
            
            //Background from Asset Library
            Image("SharkBackground")
                .resizable()
                .ignoresSafeArea()
            
            //VStack holding all of information and buttons together
            VStack {
                
                //First text with a couple of modifiers
                Text("Which Habitat would you like to info on?")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .background(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            
                //Spacer to space out text and buttons
                Spacer()
                
                //Buttons to bring Penguin information
                Button(
                    action: {
                        //Setting variable as true to show Penguin details
                        penguinDetails = true
                    },
                    label: {
                    Text("Penguin")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .frame(width: 300, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .foregroundColor(.white)
                        .padding()
                        .border(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 30)
                        .cornerRadius(40)
                        .alert(isPresented: $penguinDetails) {
                                    Alert(title: Text("Penguin Details"),
                                          message: Text("Name: Snow, Age: 6, Health: Great, Feed: Thursdays, Mood: Excited"),
                                          dismissButton: .default(Text("Okay!")))
                                }
                })
                
                //Button to bring up Bird information
                Button(
                    action: {
                        //Setting variable as true to show Bird details
                        birdDetails = true
                    },
                    label: {
                    Text("Bird")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .frame(width: 300, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .foregroundColor(.white)
                        .padding()
                        .border(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 30)
                        .cornerRadius(40)
                        .alert(isPresented: $birdDetails) {
                                    Alert(title: Text("Bird Details"),
                                          message: Text("Name: Whitey, Age: 5, Health: Great, Feed: Thursdays, Mood: Lonely"),
                                          dismissButton: .default(Text("Okay!")))
                                }
                })
                
                //Button to bring up Shark information
                Button(
                    action: {
                        //Setting variable as true to show Shark details
                        sharkDetails = true
                    },
                    label: {
                    Text("Shark")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .frame(width: 300, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .foregroundColor(.white)
                        .padding()
                        .border(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 30)
                        .cornerRadius(40)
                        .alert(isPresented: $sharkDetails) {
                                    Alert(title: Text("Shark Details"),
                                          message: Text("Name: Tooth, Age: 12, Health: Okay, Feed: Fridays, Mood: Hyper"),
                                          dismissButton: .default(Text("Okay!")))
                                }
                })
                
                //Button to bring up Fish information
                Button(
                    action: {
                        //Setting variable as true to show Fish details
                        fishDetails = true
                    },
                    label: {
                    Text("Fish")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .frame(width: 300, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .foregroundColor(.white)
                        .padding()
                        .border(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 30)
                        .cornerRadius(40)
                        .alert(isPresented: $fishDetails) {
                                    Alert(title: Text("Fish Details"),
                                          message: Text("Name: Swimmy, Age: 4, Health: Good, Feed: Tuesdays, Mood: Happy"),
                                          dismissButton: .default(Text("Okay!")))
                                }
                })
                
                //Button to bring up Dolphin information
                Button(
                    action: {
                        //Setting variable as true to show Dolphin details
                        dolphinDetails = true
                    },
                    label: {
                    Text("Dolphins")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .frame(width: 300, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .foregroundColor(.white)
                        .padding()
                        .border(LinearGradient(gradient: Gradient(colors: [.blue, .secondary, .blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 30)
                        .cornerRadius(40)
                        .alert(isPresented: $dolphinDetails) {
                                    Alert(title: Text("Dolphin Details"),
                                          message: Text("Name: Dopey, Age: 4, Health: Great, Feed: Fridays, Mood: Excited"),
                                          dismissButton: .default(Text("Okay!")))
                                }
                })
                //Spacers to space buttons to middle
                Spacer()
            }
        }
    }
}

struct HabitatView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView()
    }
}

        
