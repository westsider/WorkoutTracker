//
//  MainListRow.swift
//  WorkoutTracker
//
//  Created by Warren Hansen on 5/9/24.
//

import SwiftUI

struct MainListRow : View {

    let workout: WorkOut
    
    var body: some View {
        HStack {
            workout.image
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .cornerRadius(7) // Inner corner radius
                    .padding(5) // Width of the border
                    .background(Color.primary) // Color of the border
                    .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10) {
                Text(workout.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text(workout.description)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                ProgressView(value: workout.progress)
            }
        }.padding()
    }
}

#Preview {
    MainListRow(workout: WorkOut(name: "Trident",
                                 description: "Only Easy Day Was Yesterday", image: Image("behind"), progress: 0.8, exercises: Data.groupA()))
}

