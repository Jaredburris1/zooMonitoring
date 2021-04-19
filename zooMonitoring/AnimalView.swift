//
//  AnimalView.swift
//  zooMonitoring
//
//  Created by Jared burris on 3/28/21.
//

import SwiftUI

struct AnimalView: View {
    //Animal variables to toggle showing the alert
    @State private var lionDetails = false
    @State private var tigerDetails = false
    @State private var bearDetails = false
    @State private var giraffeDetails = false
    @State private var chinchillaDetails = false
        
    var body: some View {
        
        ZStack {
            
            //Background from Asset Library
            Image("AnimalBackground")
                .resizable()
                .ignoresSafeArea()
                
            //VStack holding all of information and buttons together
            VStack {
                
                //First text with a couple of modifiers
                Text("Which animal would you like information on?")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .background(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            
                //Spacer to space out text and buttons
                Spacer()
                
                //Button to bring up Lion information
                Button(
                    action: {
                        //Setting variable as true to show lion details
                        lionDetails = true
                    },
                    label: {
                        Text("Lion")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .frame(width: 300, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .foregroundColor(.white)
                            .padding()
                            .border(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 30)
                            .cornerRadius(40)
                            .alert(isPresented: $lionDetails) {
                                        Alert(title: Text("Lion Details"),
                                              message: Text("Name: Manny, Age: 14, Health: Great, Feed: Mondays, Mood: Hyper"),
                                              dismissButton: .default(Text("Okay!")))
                                    }
                })
                
                //Button to bring up Tiger information
                Button(
                    action: {
                        //Setting variable as true to show tiger details
                        tigerDetails = true
                    },
                    label: {
                        Text("Tiger")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .frame(width: 300, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .foregroundColor(.white)
                            .padding()
                            .border(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 30)
                            .cornerRadius(40)
                            .alert(isPresented: $tigerDetails) {
                                        Alert(title: Text("Tiger Details"),
                                              message: Text("Name: Stripe, Age: 7, Health: Good, Feed: Fridays, Mood: Happy"),
                                              dismissButton: .default(Text("Okay!")))
                                    }
                })
                
                //Button to bring up Bear information
                Button(
                    action: {
                        //Setting variable as true to show bear details
                        bearDetails = true
                    },
                    label: {
                        Text("Bear")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .frame(width: 300, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .foregroundColor(.white)
                            .padding()
                            .border(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 30)
                            .cornerRadius(40)
                            .alert(isPresented: $bearDetails) {
                                        Alert(title: Text("Bear Details"),
                                              message: Text("Name: Yogi, Age: 4, Health: New, Feed: Tuesdays, Mood: Touchy"),
                                              dismissButton: .default(Text("Okay!")))
                                    }
                })
                
                //Button to bring up Giraffe information
                Button(
                    action: {
                        //Setting variable as true to show giraffe details
                        giraffeDetails = true
                    },
                    label: {
                        Text("Giraffe")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .frame(width: 300, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .foregroundColor(.white)
                            .padding()
                            .border(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 30)
                            .cornerRadius(40)
                            .alert(isPresented: $giraffeDetails) {
                                        Alert(title: Text("Giraffe Details"),
                                              message: Text("Name: Ham, Age: 9, Health: Great, Feed: Tuesdays, Mood: Sad"),
                                              dismissButton: .default(Text("Okay!")))
                                    }
                })
                
                //Button to bring up Chinchilla information
                Button(
                    action: {
                        //setting variable as true to show chinchilla details
                        chinchillaDetails = true
                    },
                    label: {
                        Text("Chinchilla")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .frame(width: 300, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .foregroundColor(.white)
                            .padding()
                            .border(LinearGradient(gradient: Gradient(colors: [.orange, .secondary, .orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), width: 30)
                            .cornerRadius(40)
                            .alert(isPresented: $chinchillaDetails) {
                                        Alert(title: Text("Chinchilla Details"),
                                              message: Text("Name: Chilly, Age: 2, Health: Young, Feed: Fridays, Mood: Hyper"),
                                              dismissButton: .default(Text("Okay!")))
                                    }
                })
                //Spacers to space buttons to middle
                Spacer()
            }
        }
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView()
    }
}
