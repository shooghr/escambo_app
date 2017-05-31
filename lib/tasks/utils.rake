namespace :utils do
  desc 'TODO'
  task generate_admins: :environment do
    puts 'Cadastrando o ADMININSTRADOR Padrão..............'

    10.times do
      Admin.create!(email: Faker::Internet.email,
                    name: Faker::Name.name,
                    password: '123456',
                    password_confirmation: '123456',
                    role: [0, 1, 1].sample)
      print '..'
    end

    puts '..'
    puts 'ADMININSTRADOR cadastrado com sucesso.'
  end

  desc 'Criar Anúncios Fake'
  task generate_ads: :environment do
    puts 'Cadastrando ANÚNCIOS...'

    100.times do
      Ad.create!(
        title: Faker::Lorem.sentence([2, 3, 4, 5].sample),
        description: LeroleroGenerator.paragraph(Randon.rand(3)),
        member: Member.all.sample,
        category: Category.all.sample
      )
      print '..'
    end

    puts '..'
    puts 'Anúncios cadastrados com sucesso!'
  end
end
