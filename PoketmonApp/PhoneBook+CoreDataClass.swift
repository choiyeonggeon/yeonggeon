//
//  PhoneBook+CoreDataClass.swift
//  PoketmonApp
//
//  Created by 최영건 on 4/23/25.
//
//

import Foundation
import CoreData

@objc(PhoneBook)
public class PhoneBook: NSManagedObject {
    public static let className = "PhoneBook"
    public enum Key {
        static let name = "name"
        static let phoneNumber = "phoneNumber"
    }
}
