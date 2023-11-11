namespace :db do
    desc "Add description to categories"
    task add_descriptions: :environment do
        category_desc = "description"

        category_ids = Category.pluck(:id)

        category_ids.each do |category|
            Category.find_or_create_by(description: desc)
            puts "Description '#{name}' added."
        end

        puts "Categories desc added succesfully"
    end
end