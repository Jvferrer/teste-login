Feature: Autenticação de Usuário

  Scenario: Erro ao não informar username
    Given que estou na página de login
    When faço login com   / SuperSecretPassword!
    Then deve ser exibida a mensagem: "Your username is invalid!"

  Scenario: Erro ao não informar senha
    Given que estou na página de login
    When faço login com tomsmith / Teste@123
    Then deve ser exibida a mensagem: "Your password is invalid!"

  Scenario: Login com sucesso
    Given que estou na página de login
    When faço login com tomsmith / SuperSecretPassword!
    Then devo ser redirecionado para a área autenticada
    And deve ser exibida a mensagem: "You logged into a secure area!"

  Scenario: Erro ao usar usuário ou senha incorretos
    Given que estou na página de login
    When faço login com usuario_invalido / senha_errada
    Then deve ser exibida a mensagem: "Your username is invalid!"

  Scenario: Acesso direto à URL da área autenticada
    When acesso diretamente a URL "/secure"
    Then devo ser redirecionado para a área autenticada
