//
//  File.swift
//  AccessControl
//
//  Created by Erica Sadun on 9/13/16.
//  Copyright © 2016 Erica Sadun. All rights reserved.
//

import Foundation

// These definitions are native to the "Module" module
// and specifically to the Class1.swift file

public class PublicClass {
    public let propertyPublic = "PublicMember"
    public func actionPublic() {}
    open let propertyOpen = "PublicMember"
    open func actionOpen() {}
}

open class OpenClass {
    public let propertyPublic = "PublicMember"
    public func actionPublic() {}
    open let propertyOpen = "PublicMember"
    open func actionOpen() {}
}

class Subclass1: PublicClass {
    override func actionPublic() {}
    override func actionOpen() {}
}
class Subclass2: OpenClass {
    override func actionPublic() {}
    override func actionOpen() {}
}

