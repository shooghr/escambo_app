namespace :utils do
  desc 'Setup Development'
  task setu_dev: :environment do
    puts 'Executando o setup para desenvolvimento...'
    puts "Apagando banco de dados........ #{%x(rake db:drop)}"
    puts "Criando banco de dados......... #{%x(rake db:create)}"
    puts "Migrando banco de dados........ #{%x(rake db:migrate)}"
    puts "Executando db:seed............. #{%x(rake db:seed)}"
    puts "Gerando admins do sistema...... #{%x(rake utils:generate_admins)}"
    puts "Gerando Members do sistema..... #{%x(rake utils:generate_members)}"
    puts "Gerando Ads do sistemas........#{%x(rake utils:generate_ads)}"
    puts 'Setup completando com sucesso!'
  end

  desc 'TODO'
  task generate_admins: :environment do
    puts 'Cadastrando o ADMININSTRADOR Padrão..............'

    10.times do
      Admin.create!(
        email: Faker::Internet.email,
        name: Faker::Name.name,
        password: '123456',
        password_confirmation: '123456',
        role: [0, 1, 1].sample
      )
      print '..'
    end

    puts '..'
    puts 'ADMININSTRADOR cadastrado com sucesso.'
  end

  desc ''
  task generate_members: :environment do
    puts 'Cadastrando MEMBROS'

    150.times do
      Member.create!(
        email: Faker::Internet.email,
        password: '123456',
        password_confirmation: '123456'
      )
      print '..'
    end
  end

  desc 'Criar Anúncios Fake'
  task generate_ads: :environment do
    puts 'Cadastrando ANÚNCIOS...'
    PATH = Rails.root.join('public', 'template', 'images-for-ads')

    100.times do
      Ad.create!(
        title: Faker::Lorem.sentence([2, 3, 4, 5].sample),
        description: LeroleroGenerator.paragraph(Random.rand(3)),
        member: Member.all.sample,
        category: Category.all.sample,
        price: "#{Random.rand(500)},#{Random.rand(99)}",
        picture: File.new(PATH.join("#{Random.rand(15)}.jpg"), 'r')
      )
      print '..'
    end

    puts '..'
    puts 'Anúncios cadastrados com sucesso!'
  end
end
