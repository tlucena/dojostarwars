Dado(/^que eu esteja no site do star wars$/) do
  visit 'https://docs.google.com/forms/d/1tNSQzS6tAjh0PJtnewgKW8ddznAoGpX-2D-P7x0BXyY/viewform?edit_requested=true&fbzx=-250752610720501120'
  @formwars = Formwars.new
  end

Quando(/^eu preencher todos os campos do formulario$/) do
  @formwars.botao_prox.click
  @formwars.campo_nome.set Faker::Name.name
  	sleep 1
  @formwars.campo_email.set Faker::Internet.email
  	sleep 1
  @formwars.gosta_star.click
  	sleep 1
  @formwars.filme_epis1.click
  	sleep 1
  @formwars.filme_epis2.click
  	sleep 1
  @formwars.filme_epis3.click
  	sleep 1
  @formwars.filme_epis4.click
  	sleep 1
  @formwars.filme_epis5.click
  	sleep 1
  @formwars.filme_epis6.click
  	sleep 1
  @formwars.filme_epis7.click
  	sleep 1
  @formwars.outro_click.click
  	sleep 1
  @formwars.outro_descr.set 'Rogue One'
  	sleep 1
  @formwars.personagem.set Faker::StarWars.character
  	sleep 1
  @formwars.novo_filme.click
  	sleep 1
  @formwars.escolha_sim.click
  	sleep 3
  @formwars.enviar.click
  	sleep 3
end

Então(/^as informações serão enviadas com sucesso$/) do
  assert_text('Obrigado por responder as perguntas! =)')

  sleep 3
end