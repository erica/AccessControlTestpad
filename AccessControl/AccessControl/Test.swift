/*

 Erica Sadun, ericasadun.com
 
 TESTING ACCESS CONTROL
 
 */


import Foundation
import Module

/*
 // MODULE DECLARATION:

 public struct MyPublicType {
    
    public let publicmember: String
    
    public init()
}

open class OpenClass {
    public let propertyPublic: String
    public func actionPublic()
    open let propertyOpen: String
    open func actionOpen()
}

public class PublicClass {
    public let propertyPublic: String
    public func actionPublic()
    open let propertyOpen: String
    open func actionOpen()
}
*/

// Testing type definitions created in the
// File1.swift file of the "Module" module

func test() {
    let anInstance = MyPublicType()
    let _ = anInstance.publicmember
}
extension MyPublicType {
    func test() {
        let _ = publicmember
    }
}

// Accessing type definitions created in the
// Class1.swift file of the "Module" module

class ExtSubclass1: OpenClass {} // okay
class ExtSubclass2: OpenClass {
    // override func actionPublic() {} // overriding non-open instance method outside its defining module
    override func actionOpen() {}
}

// class ExtSubclass3: PublicClass {} // Cannot inherit from non-open class outside its defining module
