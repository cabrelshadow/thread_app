//
//  ProfileThreadFilter.swift
//  thread_clone
//
//  Created by KarmL on 15/12/2024.
//
import Foundation

enum ProfileThreadFilter:Int ,CaseIterable,Identifiable{
    case threads
    case replies
  
    var title:String{
        switch self {
        case .threads: return "Threads"
        case .replies:return "Replies"
      
            
        }
    }
    var id:Int{ return self.rawValue}
}
