namespace :dev do
  desc "Configuração banco de dados"
  task db_setup: :environment do
    if Rails.env.development?
      puts %x(rails db:drop:_unsafe)
      puts %x(rails db:create)
      puts %x(rails db:migrate)
      puts %x(rails db:seed)
    else 
      puts "ambiente de produção"
    end
  end
end
