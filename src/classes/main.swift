class Contact: CustomStringConvertible {
    // Propriedades.
    var name: String
    var phone: String
    var email: String

    // Construtor
    init(name: String, phone: String, email: String) {
        guard !name.isEmpty, !phone.isEmpty, !email.isEmpty else {
            fatalError("Todos os campos devem ser preenchidos.")
        }
        self.name = name
        self.phone = phone
        self.email = email
    }

    // Método.
    func sayHello() {
        // Não é necessário utilizar o self para acessar as propriedades..
        // A menos que exista um conflito de nomes.
        print("Hello \(name).")
        print("Hello \(self.name).")
    }

    // Propriedade para descrição textual.
    var description: String {
        return "Contact(name: \(name), phone: \(phone), email: \(email))"
    }
}

// Criando um novo objeto.
let newContact = Contact(
    name: "Renato", phone: "(00) 0000-0000", email: "example@email.com"
)
print(newContact)

// Acessando as propriedades
print("Telefone: \(newContact.phone)")

// Chamando os métodos
newContact.sayHello()
