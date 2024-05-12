//
//  WorkoutListRow.swift
//  WorkoutTracker
//
//  Created by Warren Hansen on 5/12/24.
//

import SwiftUI

struct WorkoutListRow : View {

    let exercise: Exercise
    let exercisee: [String] =  ["figure.cross.training", "figure.strengthtraining.functional", "figure.highintensity.intervaltraining", "figure.mixed.cardio", "figure.strengthtraining.traditional", "figure.step.training", "dumbbell.fill"]
    
    var body: some View {
        HStack {
            Image(systemName: exercisee.randomElement()!)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .colorInvert()
                .cornerRadius(7) // Inner corner radius
                    .padding(5) // Width of the border
                    .background(Color.primary) // Color of the border
                    .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10) {
                Text(exercise.type)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text("\(exercise.sets) sets")
                    .foregroundColor(.secondary)
                    .font(.subheadline)
            }
        }.padding()
    }
}

#Preview {
    WorkoutListRow(exercise: Exercise(group: "C", type: "Hanging Leg Raise ", sets: 3, reps: 8, weight: 0, videoFile: "Videos/workoutC/HangingLegRaise", completed: false))
}
