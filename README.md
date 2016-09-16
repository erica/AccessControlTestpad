![](pix/squeakyscaled.png)

# Access Control Examples
####Examples from "Swift 2 to 3" by Erica Sadun<br>*Available from [iTunes](https://itunes.apple.com/us/book/swift-from-two-to-three/id1154616188?ls=1&mt=11) and [LeanPub](https://leanpub.com/swift23)*

### Basic Control Keywords

```swift
// Default is internal
struct MyType {
    let member: String = "Member" // default is internal
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    internal let internalmember: String = "InternalMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

private struct MyPrivateType {
    let member: String = "Member" // default is internal
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    internal let internalmember: String = "InternalMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

fileprivate struct MyFilePrivateType {
    let member: String = "Member" // default is internal
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    internal let internalmember: String = "InternalMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

internal struct MyInternalType {
    let member: String = "Member" // default is internal
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    internal let internalmember: String = "InternalMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}

public struct MyPublicType {
    let member: String = "Member" // default is internal
    fileprivate let filemember: String = "FileMember"
    private let privatemember: String = "PrivateMember"
    internal let internalmember: String = "InternalMember"
    public let publicmember: String = "PublicMember"
    public init() {}
}
```
<table>
<tr><td><b>Type</b></td><td><b>Scope</b></td><td><b>Visibility</b></td><td><b>Outside of Type</b></td><td><b>In Type Extension</b></td></tr>
<tr><td>All five types</td><td>Same file</td><td>Can create instances</td><td>`privatemember`: inaccessible due to 'private' protection level</td><td>`privatemember` is unresolved identifier</td></tr>
<tr><td>MyType, MyInternalType, and MyPublicType</td><td>Same module, different file</td><td>Can create instances</td><td>`privatemember` and `filemember`: inaccessible due to 'private' protection level</td><td>`privatemember` and `privatemember` are unresolved identifiers</td></tr>
<tr><td>MyFilePrivateType and MyFilePrivateType</td><td>Same module, different file</td><td>Undeclared types</td><td>N/A</td><td>N/A</td></tr>
<tr><td>MyPublicType</td><td>External to module</td><td>Can create instances</td><td>Can access `publicmember` but no other members</td><td>`publicmember` is visible</td></tr>
<tr><td>MyFilePrivateType, MyPrivateType, MyType, MyInternalType</td><td>External to module</td><td>Undeclared types</td><td>N/A</td><td>N/A</td></tr>
</table>

### Open vs Public Classes and Members

```
public class PublicClass {    public let propertyPublic = "PublicMember"    public func actionPublic() {}    open let propertyOpen = "PublicMember"    open func actionOpen() {}}open class OpenClass {    public let propertyPublic = "PublicMember"    public func actionPublic() {}    open let propertyOpen = "PublicMember"    open func actionOpen() {}}
```
<table>
<tr><td><b>Type</b></td><td><b>Scope</b></td><td><b>Actions</b></td></tr>
<tr><td>OpenClass and Public Class</td><td>Same Module, Any File</td><td>Can subclass and override methods</td></tr>
<tr><td>OpenClass</td><td>External to Module</td><td>Can subclass and override open methods.<br />Cannot override non-open methods outside defining module</td></tr>
<tr><td>Public Class</td><td>External to Module</td><td>Cannot subclass or override from non-open class outside defining module</td></tr>
</table>