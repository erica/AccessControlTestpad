import Foundation

// These definitions are native to the "Module" module
// and specifically to the File1.swift file

struct MyType {
    let member: String = "Member"
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    internal let internalmember: String = "InternalMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

private struct MyPrivateType {
    let member: String = "Member"
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    internal let internalmember: String = "InternalMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

fileprivate struct MyFilePrivateType {
    let member: String = "Member"
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    internal let internalmember: String = "InternalMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

internal struct MyInternalType {
    let member: String = "Member"
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    internal let internalmember: String = "InternalMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

public struct MyPublicType {
    let member: String = "Member"
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    internal let internalmember: String = "InternalMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

// Testing instantiation within the same file

let typeInstance = MyType()
fileprivate let privateInstance = MyPrivateType() // must be declared fileprivate
fileprivate let filePrivateInstance = MyFilePrivateType() // must be declared fileprivate
let internalInstance = MyInternalType()
let publicInstance = MyPublicType()


// Testing member access within the same file

func testFunction1() {
    let instance = MyType() // okay
    let _ = instance.filemember // okay
    // let _ = instance.privatemember // inaccessible due to 'private' protection level
    let _ = instance.internalmember // okay
    let _ = instance.publicmember // okay

    let instancePrivate = MyPrivateType() // okay
    let _ = instancePrivate.filemember // okay
    let _ = instancePrivate.member // okay
    // let _ = instancePrivate.privatemember // inaccessible due to 'private' protection level
    let _ = instancePrivate.internalmember // okay
    let _ = instancePrivate.publicmember // okay

    let instanceFP = MyFilePrivateType() // okay
    let _ = instanceFP.filemember // okay
    let _ = instanceFP.member // okay
    // let _ = instanceFP.privatemember // inaccessible due to 'private' protection level
    let _ = instanceFP.internalmember // okay
    let _ = instanceFP.publicmember // okay
    
    let instanceInternal = MyInternalType() // okay
    let _ = instanceInternal.filemember // okay
    let _ = instanceInternal.member // okay
    // let _ = instanceInternal.privatemember // inaccessible due to 'private' protection level
    let _ = instanceInternal.internalmember // okay
    let _ = instanceInternal.publicmember // okay

    let instancePublic = MyPublicType() // okay
    let _ = instancePublic.filemember // okay
    let _ = instancePublic.member // okay
    // let _ = instancePublic.privatemember // inaccessible due to 'private' protection level
    let _ = instancePublic.internalmember // okay
    let _ = instancePublic.publicmember // okay

}

// Testing member access within type extensions

extension MyType {
    func f() {
        let _ = member // okay
        let _ = filemember // okay
        // let _ = privatemember // unresolved identifier
        let _ = internalmember // okay
        let _ = publicmember // okay
    }
}


extension MyPrivateType {
    func f() {
        let _ = member // okay
        let _ = filemember // okay
        // let _ = privatemember // unresolved identifier
        let _ = internalmember // okay
        let _ = publicmember // okay
    }
}

extension MyFilePrivateType {
    func f() {
        let _ = member // okay
        let _ = filemember // okay
        // let _ = privatemember // unresolved identifier
        let _ = internalmember // okay
        let _ = publicmember // okay
    }
}

extension MyInternalType {
    func f() {
        let _ = member // okay
        let _ = filemember // okay
        // let _ = privatemember // unresolved identifier
        let _ = internalmember // okay
        let _ = publicmember // okay
    }
}

extension MyPublicType {
    func f() {
        let _ = member // okay
        let _ = filemember // okay
        // let _ = privatemember // unresolved identifier
        let _ = internalmember // okay
        let _ = publicmember // okay
    }
}

