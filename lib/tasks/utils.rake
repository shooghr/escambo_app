namespace :utils do
  desc 'TODO'
  task generate_admins: :environment do
    puts 'Cadastrando o ADMININSTRADOR Padrão..............'

    10.times do
      Admin.create!(email: Faker::Internet.email,
                    name: Faker::Name.name,
                    password: '123456',
                    password_confirmation: '123456',
                    role: [0,1,1].sample)
      print '..'
    end
    
    puts '..'
    puts 'ADMININSTRADOR cadastrado com sucesso.'
  end
end
