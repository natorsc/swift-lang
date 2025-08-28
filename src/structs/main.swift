struct Contact {
    let name: String
    let phone: String
    let email: String
}

let newContact = Contact(
    name: "Renato", phone: "(00) 0000-0000", email: "example@email.com"
)
// Exibe: Renato
print(newContact.name)
