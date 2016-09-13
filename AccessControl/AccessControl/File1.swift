import Foundation

// These definitions are native to the "Module" module
// and specifically to the File1.swift file

struct MyType {
    let member: String = "Member"
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

private struct MyPrivateType {
    let member: String = "Member"
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

fileprivate struct MyFilePrivateType {
    let member: String = "Member"
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

public struct MyPublicType {
    let member: String = "Member"
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

// Testing instantiation within the same file

let typeInstance = MyType()
fileprivate let privateInstance = MyPrivateType() // must be declared fileprivate
fileprivate let filePrivateInstance = MyFilePrivateType() // must be declared fileprivate
let publicInstance = MyPublicType()


// Testing member access within the same file

func testFunction1() {
    let instance = MyType() // okay
    let _ = instance.filemember // okay
    // let _ = instance.privatemember // inaccessible due to 'private' protection level
    let _ = instance.publicmember // okay

    let instancePrivate = MyPrivateType() // okay
    let _ = instancePrivate.filemember // okay
    let _ = instancePrivate.member // okay
    // let _ = instancePrivate.privatemember // inaccessible due to 'private' protection level
    let _ = instancePrivate.publicmember // okay

    let instanceFP = MyFilePrivateType() // okay
    let _ = instanceFP.filemember // okay
    let _ = instanceFP.member // okay
    // let _ = instanceFP.privatemember // inaccessible due to 'private' protection level
    let _ = instanceFP.publicmember // okay

    let instancePublic = MyPublicType() // okay
    let _ = instancePublic.filemember // okay
    let _ = instancePublic.member // okay
    // let _ = instancePublic.privatemember // inaccessible due to 'private' protection level
    let _ = instancePublic.publicmember // okay

}

// Testing member access within type extensions

extension MyType {
    func f() {
        let _ = member // okay
        let _ = filemember // okay
        // let _ = privatemember // unresolved identifier
        let _ = publicmember // okay
    }
}


extension MyPrivateType {
    func f() {
        let _ = member // okay
        let _ = filemember // okay
        // let _ = privatemember // unresolved identifier
        let _ = publicmember // okay
    }
}

extension MyFilePrivateType {
    func f() {
        let _ = member // okay
        let _ = filemember // okay
        // let _ = privatemember // unresolved identifier
        let _ = publicmember // okay
    }
}

extension MyPublicType {
    func f() {
        let _ = member // okay
        let _ = filemember // okay
        // let _ = privatemember // unresolved identifier
        let _ = publicmember // okay
    }
}

