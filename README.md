# Access Control Examples
####Examples from "Swift 2 to 3" by Erica Sadun<br>*Coming soon to iTunes and LeanPub*

### Basic Control Keywords

```swift
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
```
<table>
<tr><td><b>Type</b></td><td><b>Scope</b></td><td><b>Visibility</b></td><td><b>Outside of Type</b></td><td><b>In Type Extension</b></td></tr>
<tr><td>All four types</td><td>Same file</td><td>Can create instances</td><td>`privatemember`: inaccessible due to 'private' protection level</td><td>`privatemember` is unresolved identifier</td></tr>
<tr><td>MyType and MyPublicType</td><td>Same module, different file</td><td>Can create instances</td><td>`privatemember` and `filemember`: inaccessible due to 'private' protection level</td><td>`privatemember` and `privatemember` are unresolved identifiers</td></tr>
<tr><td>MyFilePrivateType and MyFilePrivateType</td><td>Same module, different file</td><td>Undeclared types</td><td>N/A</td><td>N/A</td></tr>
<tr><td>MyPublicType</td><td>External to module</td><td>Can create instances</td><td>Can access `publicmember` but no other members</td><td>`publicmember` is visible</td></tr>
<tr><td>MyFilePrivateType, MyPrivateType, MyType</td><td>External to module</td><td>Undeclared types</td><td>N/A</td><td>N/A</td></tr>
</table>

### Open vs Public Classes and Members

```
public class PublicClass {
```
<table>
<tr><td><b>Type</b></td><td><b>Scope</b></td><td><b>Actions</b></td></tr>
<tr><td>OpenClass and Public Class</td><td>Same Module, Any File</td><td>Can subclass and override methods</td></tr>
<tr><td>OpenClass</td><td>External to Module</td><td>Can subclass and override open methods.<br />
<tr><td>Public Class</td><td>External to Module</td><td>Cannot subclass or override from non-open class outside defining module</td></tr>
</table>