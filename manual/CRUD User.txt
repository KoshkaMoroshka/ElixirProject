User commands:

Create:
ElixirProject.Accounts.Commands.CreateUser.process(%{email: "Padla@mail.ru", login: "BomBom", password: "LolKek23"})

Update:
ElixirProject.Accounts.Commands.UpdateUser.process(%ElixirProject.Accounts.Entities.User{id: 1}, %{email: "Padla@mail.ru", login: "BomBom", password: "LolKek123"})

Delete:
ElixirProject.Accounts.Commands.DeleteUser.process(%ElixirProject.Accounts.Entities.User{id: 1})
