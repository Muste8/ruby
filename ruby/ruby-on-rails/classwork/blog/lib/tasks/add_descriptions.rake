namespace :db do
    desc "Add description to categories"
    task add_description: :environment do
        category_names = ["General Desc", "Technology Desc", "Travel Desc", "Food Desc", "Fasion Desc"]

        category_names.each do |name|
            Category.find_or_create_by(description: name)
            puts "Description '#{name}' added."
        end

        puts "Categories desc added succesfully"
    end
end