//
//  HomeView.swift
//  WorkoutTracker
//
//  Created by Warren Hansen on 5/9/24.
//
// make workout detai view
// segueway to detail view

// workout list, show completed
// persist last workout
//

import SwiftUI

struct HomeView: View {
    
    let workoutData = WorkoutData().load()
    
    var body: some View {
  
        NavigationView {
            List {
                ForEach(workoutData) { workout in
                    NavigationLink(destination: WorkoutList(workout: workout)) {
                        MainListRow(workout: workout)
                    }
                }
            }.navigationTitle("Training Plan")
        }
    }
}

#Preview {
    HomeView()
}



