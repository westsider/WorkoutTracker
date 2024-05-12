//
//  Data.swift
//  WorkoutTracker
//
//  Created by Warren Hansen on 5/9/24.
//

import SwiftUI

struct WorkOut: Identifiable {
    
    let id = UUID()
    let name: String
    let description: String
    let image: Image
    let progress: CGFloat
    let exercises: [Exercise]
}

class WorkoutData {
    
    let first = WorkOut(name: "Falcon",
                        description: "Don't Get Snatched", image: Image("squat"), progress: 0.25, exercises: Data.groupA())
    let second = WorkOut(name: "Deep Horizon",
                         description: "We Take You To Crush Depth", image: Image("behind"), progress: 0.3, exercises: Data.groupB())
    let third = WorkOut(name: "Challenger",
                        description: "Failure Is Not An Option", image: Image("grip"), progress: 0.8, exercises: Data.groupC())
    let forth = WorkOut(name: "Trident",
                        description: "Only Easy Day Was Yesterday", image: Image("press"), progress: 0.5, exercises: Data.groupD())
    
    func load() -> [WorkOut] {
        var allWorkouts: [WorkOut] = []
        allWorkouts.append(first)
        allWorkouts.append(second)
        allWorkouts.append(third)
        allWorkouts.append(forth)
        return allWorkouts
    }
}

struct Exercise: Identifiable {
    let id = UUID()
    let group:String
    let type:String
    let sets: Int
    let reps:Int
    let weight:Int
    let videoFile:String
    let completed:Bool
}

class Data {
    
    static func groupA() -> [Exercise]  {
        var group:[Exercise] = []
        group.append(Exercise(group: "A", type: "BB Squat", sets: 4, reps: 8, weight: 135, videoFile: "Videos/workoutA/BarbellBackSquat", completed: false))
        group.append(Exercise(group: "A", type: "Incline DB Press", sets: 4, reps: 8, weight: 45, videoFile: "Videos/workoutA/DumbbellInclineBenchPress", completed: false))
        group.append(Exercise(group: "A", type: "DB Seal Row", sets: 4, reps: 8, weight: 40, videoFile: "Videos/workoutA/DumbbellSealRow", completed: false))
        group.append(Exercise(group: "A", type: "One Arm Delta Flys", sets: 3, reps: 8, weight: 20, videoFile: "Videos/workoutA/1_ArmDeltFly", completed: false))
        group.append(Exercise(group: "A", type: "BB Curls", sets: 3, reps: 12, weight: 55, videoFile: "Videos/workoutA/BarbellBicepCurl", completed: false))
        group.append(Exercise(group: "C", type: "Hanging Leg Raise ", sets: 3, reps: 8, weight: 0, videoFile: "Videos/workoutC/HangingLegRaise", completed: false))
        group.append(Exercise(group: "A", type: "Jake G", sets: 3, reps: 12, weight: 10, videoFile: "Videos/workoutA/BarbellBicepCurl", completed: false))
        return group
    }
    static func groupB() -> [Exercise]  {
        var group:[Exercise] = []
        group.append(Exercise(group: "B", type: "Bulgarian Split Squat", sets: 4, reps: 8, weight: 20, videoFile: "Videos/workoutB/BulgarianSplitSquat", completed: false))
        group.append(Exercise(group: "B", type: "Military Press", sets: 4, reps: 8, weight: 80, videoFile: "Videos/workoutB/BarbellMilitaryPress", completed: false))
        group.append(Exercise(group: "B", type: "Lat Pulldown", sets: 4, reps: 8, weight: 80, videoFile: "Videos/workoutB/LatPulldown", completed: false))
        group.append(Exercise(group: "B", type: "Rear Delt Fly", sets: 3, reps: 12, weight: 30, videoFile: "Videos/workoutB/DumbbellRearDeltFly", completed: false))
        group.append(Exercise(group: "B", type: "Decline Sit-Up", sets: 3, reps: 12, weight: 205, videoFile: "Videos/workoutB/DeclineSitUp", completed: false))
        group.append(Exercise(group: "B", type: "Hanging Leg Raise ", sets: 3, reps: 8, weight: 0, videoFile: "Videos/workoutC/HangingLegRaise", completed: false))
        return group
    }
    static func groupC() -> [Exercise]  {
        var group:[Exercise] = []
        group.append(Exercise(group: "C", type: "Leg Press ", sets: 4, reps: 8, weight: 180, videoFile: "Videos/workoutC/LegPress", completed: false))
        group.append(Exercise(group: "C", type: "Incline Chest Machine", sets: 4, reps: 8, weight: 135, videoFile: "Videos/workoutC/InclineChestPressMachine", completed: false))
        group.append(Exercise(group: "C", type: "Back Row Machine", sets: 4, reps: 8, weight: 140, videoFile: "Videos/workoutC/BackRowMachine", completed: false))
        group.append(Exercise(group: "C", type: "Shoulder Press Machine", sets: 4, reps: 12, weight: 110, videoFile: "Videos/workoutC/ShoulderPressMachine", completed: false))
        group.append(Exercise(group: "C", type: "Decline Sit-Up", sets: 3, reps: 12, weight: 205, videoFile: "Videos/workoutB/DeclineSitUp", completed: false))
        group.append(Exercise(group: "C", type: "Hanging Leg Raise ", sets: 3, reps: 8, weight: 0, videoFile: "Videos/workoutC/HangingLegRaise", completed: false))
        return group
    }
    static func groupD() -> [Exercise]  {
        var group:[Exercise] = []
        group.append(Exercise(group: "D", type: "Bench Press ", sets: 4, reps: 8, weight: 165, videoFile: "Videos/workoutC/LegPress", completed: false))
        group.append(Exercise(group: "D", type: "Dumbell Flys", sets: 4, reps: 8, weight: 40, videoFile: "Videos/workoutC/InclineChestPressMachine", completed: false))
        group.append(Exercise(group: "D", type: "Dumbell Preee", sets: 4, reps: 8, weight: 40, videoFile: "Videos/workoutC/BackRowMachine", completed: false))
        group.append(Exercise(group: "D", type: "Reverse Curls", sets: 4, reps: 12, weight: 50, videoFile: "Videos/workoutC/ShoulderPressMachine", completed: false))
        group.append(Exercise(group: "D", type: "Barbell Pull Up", sets: 3, reps: 12, weight: 50, videoFile: "Videos/workoutB/DeclineSitUp", completed: false))
        group.append(Exercise(group: "D", type: "Hanging Leg Raise ", sets: 3, reps: 8, weight: 0, videoFile: "Videos/workoutC/HangingLegRaise", completed: false))
        return group
    }
    
}

/*
 Warm ups
 Band Pull aparts * 20
 Glute Bridges * 20
 Hip Flexor Stretch * 3 each side
 Yoga Push Up * 10
 Fire Hydrant 10 each side
 
 https://vimeo.com/237828102/854ab8806d
 */
