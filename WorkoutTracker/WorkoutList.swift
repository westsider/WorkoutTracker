//
//  WorkoutList.swift
//  WorkoutTracker
//
//  Created by Warren Hansen on 5/9/24.
//

import SwiftUI

struct WorkoutList: View {

    let workout: WorkOut

    var body: some View {
        List {
            ForEach(workout.exercises) { exercise in
                WorkoutListRow(exercise: exercise)
            }
        }.navigationTitle(workout.name)
    }
}

#Preview {
    WorkoutList(workout: WorkOut(name: "Trident",
                                 description: "Only Easy Day Was Yesterday", image: Image("behind"), progress: 0.8, exercises: Data.groupA()))
}

