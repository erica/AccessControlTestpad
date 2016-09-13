//
//  File2.swift
//  Mine
//
//  Created by Erica Sadun on 9/13/16.
//  Copyright © 2016 Erica Sadun. All rights reserved.
//

import Foundation

// Testing type definitions created in the
// File1.swift file of the "Module" module


// Testing instantiation

let xTypeInstance = MyType()
// let xPrivateInstance = MyPrivateType() // Unresolved identifier
// let xFilePrivateInstance = MyFilePrivateType() // Unresolved identifier
let xInternalInstance = MyInternalType()
let xPublicInstance = MyPublicType()


// Testing member access

func testFunction2() {
    let instance = MyType() // okay
    // let _ = instance.filemember // inaccessible due to 'private' protection
    // let _ = instance.privatemember // inaccessible due to 'private' protection level
    let _ = instance.internalmember // okay
    let _ = instance.publicmember // okay
    
//    let instancePrivate = MyPrivateType() // unresolved identifier
//    let _ = instancePrivate.filemember
//    let _ = instancePrivate.member
//    let _ = instancePrivate.privatemember
//    let _ = instancePrivate.internalmember
//    let _ = instancePrivate.publicmember
    
//    let instanceFP = MyFilePrivateType() // unresolved identifier
//    let _ = instanceFP.filemember
//    let _ = instanceFP.member
//    let _ = instanceFP.privatemember
//    let _ = instanceFP.internalmember
//    let _ = instanceFP.publicmember
    
    let instanceInternal = MyInternalType() // okay
    let _ = instanceInternal.member // okay
    // let _ = instanceInternal.filemember // inaccessible due to 'fileprivate' protection
    let _ = instanceInternal.internalmember // okay
    // let _ = instanceInternal.privatemember // inaccessible due to 'private' protection level
    let _ = instanceInternal.publicmember // okay
    
    let instancePublic = MyPublicType() // okay
    // let _ = instancePublic.filemember // inaccessible due to 'fileprivate' protection
    let _ = instancePublic.member // works
    // let _ = instancePublic.privatemember // inaccessible due to 'private' protection level
    let _ = instancePublic.internalmember // okay
    let _ = instancePublic.publicmember // okay
    
}

// Testing member access in type extensions

extension MyType {
    func g() {
        let _ = member // okay
        // let _ = filemember // unresolved identifier
        // let _ = privatemember // unresolved identifier
        let _ = internalmember // okay
        let _ = publicmember // okay
    }
}

//extension MyPrivateType { // undeclared type
//    func g() {
//        let _ = member
//        let _ = filemember
//        let _ = privatemember
//        let _ = internalmember
//        let _ = publicmember
//    }
//}

//extension MyFilePrivateType { // undeclared type
//    func g() {
//        let _ = member
//        let _ = filemember
//        let _ = privatemember
//        let _ = internalmember
//        let _ = publicmember
//    }
//}

extension MyInternalType {
    func g() {
        let _ = member // okay
        // let _ = filemember // unresolved identifier
        // let _ = privatemember // unresolved identifier
        let _ = internalmember // okay
        let _ = publicmember // okay
    }
}

extension MyPublicType {
    func g() {
        let _ = member // okay
        // let _ = filemember // unresolved identifier
        // let _ = privatemember // unresolved identifier
        let _ = internalmember // okay
        let _ = publicmember // okay
    }
}

