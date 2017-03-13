namespace :utils do
  desc 'TODO'
  task generate_admins: :environment do
    puts 'Cadastrando o ADMININSTRADOR Padrão'

    10.times do
      Admin.create!(email: Faker::Internet.email,
                    password: '123456',
                    password_confirmation: '123456')
    end

    puts 'ADMININSTRADOR cadastrado com sucesso!'
  end
end
