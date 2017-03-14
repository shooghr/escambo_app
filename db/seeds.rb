puts 'Cadastrando categorias padrão.................'

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
  print '..'
end

puts '..'
puts 'Categorias cadastrada com sucesso.'

#################################################################
puts 'Cadatrando o adminstrador padrão............'

Admin.create!(email: 'admin@admin.com',
              name: 'Adminstrador Geral',
              password: '123456',
              password_confirmation: '123456',
              role: 0)
puts '..'

puts 'ADMINISTRADOR Cadastrado com sucesso.'
