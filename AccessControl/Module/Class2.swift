//
//  Class2.swift
//  AccessControl
//
//  Created by Erica Sadun on 9/13/16.
//  Copyright © 2016 Erica Sadun. All rights reserved.
//

import Foundation

// Accessing classes defined in the Class1.swift file
// of the "Module" module

class IntSubclass1: OpenClass {}
class IntSubclass2: OpenClass {
    override func actionPublic() {}
    override func actionOpen() {}
}

class IntSubclass3: PublicClass {}
class IntSubclass4: PublicClass {
    override func actionPublic() {}
    override func actionOpen() {}
}
