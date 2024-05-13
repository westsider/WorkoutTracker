//
//  WorkoutDetail.swift
//  WorkoutTracker
//
//  Created by Warren Hansen on 5/9/24.
//

import SwiftUI

// on click set completed

struct WorkoutDetail: View {
    
    let height = 200.0
    let factor = 0.5
    @State private var value = 45
    
    init() {
        UIStepper.appearance().setDecrementImage(UIImage(systemName: "arrow.up.circle.fill"), for: .normal)
                
        UIStepper.appearance().setIncrementImage(UIImage(systemName: "arrow.down.circle.fill"), for: .normal)
    }
    
    var body: some View {
        
        
        VStack {
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .padding(5)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Next Workout")
                        .font(.footnote)
                        .bold()
                        .foregroundColor(.white)
                    
                    Text("Sholder Press")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    
                    HStack {
                        Text(" \(value) lbs")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                        Spacer()

                        Stepper("", onIncrement: {
                                            value += 5
                                        }, onDecrement: {
                                            value -= 5
                                        })
                    }
                    
                    
                }
                .padding(20)
            }
            .frame(width: .infinity, height: height)
            
            Text("Sets")
                .font(.headline)
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(5)
            HStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(10)
                        .padding(5)
                    Image(systemName: "1.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: height * factor,
                               height: height * factor)
                        .foregroundColor(.white)
                }
                ZStack {
                    Rectangle()
                        .cornerRadius(10)
                        .padding(5)
                    Image(systemName: "2.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: height * factor,
                               height: height * factor)
                        .foregroundColor(.white)
                }
            }
            .frame(width: .infinity, height: 200.0)
            
            HStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(10)
                        .padding(5)
                    Image(systemName: "3.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: height * factor,
                               height: height * factor)
                        .foregroundColor(.white)
                }
                ZStack {
                    Rectangle()
                        .cornerRadius(10)
                        .padding(5)
                    Image(systemName: "4.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: height * factor,
                               height: height * factor)
                        .foregroundColor(.white)
                }
            }
            .frame(width: .infinity, height: 200.0)
        }
        .navigationTitle("Sets")
    }
}

#Preview {
    WorkoutDetail()
}
