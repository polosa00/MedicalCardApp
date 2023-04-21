//
//  Patien.swift
//  MedicalCardApp
//
//  Created by Александр Полочанин on 21.04.23.
//


struct Patient {
    let name: String
    let fatherName: String
    let surname: String
    var fullName: String {
        "\(name) \(fatherName) \(surname)"
    }
    
    let visitorHistory: VisitorHistory
    let diagnosis: [Diagnos]
    let recipes: [Recipes]
    let analysis: [Analysis]
    let allergy: [Allergy]
}

struct VisitorHistory {
    let nameHospital: String
    let dateVisit: String
    let doctor: Doctor
    
}


struct Doctor {
    let nameOfDoctor: String
    let doctorPosition: DoctorPosition
    
    enum DoctorPosition {
        case therapist
        case dеntist
        case neurologist
        case surgeon
        case traumatologist
        case ophthalmologist
    }
}

struct Diagnos {
    let diagnos: String
    let doctor: Doctor
    let nameOfDoctor: Doctor
}


enum Diagnoses: String {
    case j35 = "G35 - Рассеянный склероз"
    case s06 = "S06 - Внутричерепная травма"
    case j03 = "J03 - Острый тонзилит"
}

struct Recipes {
    let nameOfMedication: String
    let medicationRegimen: String
    
}

struct Analysis {
    
    let blood: String
}

struct Allergy {
    let nameOafAllergy: String
}

