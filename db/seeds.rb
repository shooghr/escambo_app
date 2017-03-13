puts 'Cadastrando categorias padrão'

categories = [
  'Para a sua casa',
  'Esportes',
  'Eletrônicos e celulares',
  'Música e hobbies',
  'Bebês e crianças',
  'Moda e beleza',
  'Veículos e barcos',
  'Imóveis',
  'Empregos e negócios'
]

categories.each do |categoria|
  Category.find_or_create_by(description: categoria)
  puts '..'
end

puts 'Categorias cadastrada com sucesso.'

#################################################################
puts 'Cadatrando o adminstrador padrão'

Admin.create!(email: 'admin@admin.com',
              password: '123456',
              password_confirmation: '123456')

puts 'ADMINISTRADOR Cadastrado com sucesso.'
