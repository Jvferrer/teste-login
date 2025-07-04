import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';
import Login from '../../pages/login/credenciais';

Given('que estou na página de login', () => {
  Login.visitarPagina();
});

When('faço login com {string} / {string}', (usuario, senha) => {
  Login.preencherCampoUsername(usuario);
  Login.preencherCampoPassword(senha);
  Login.clicarBotaoLogin();
});

When('acesso diretamente a URL {string}', (url) => {
  Login.acessarUrlDiretamente(url);
});

Then('deve ser exibida a mensagem: {string}', (mensagem) => {
  Login.verificarMensagem(mensagem);
});

Then('devo ser redirecionado para a área autenticada', () => {
  Login.verificarUrlSegura();
});
