namespace :db do
  desc 'Add description to categories'
  task add_category_descriptions: :environment do
    descriptions = {
      "General" => "Explore a variety of general topics and stay informed on a wide range of subjects.",
        "Technology" => "Stay up-to-date with the latest in technology and innovation from around the world.",
        "Travel" => "Embark on a journey of discovery with travel-related articles, tips, and destination guides.",
        "Food" => "Indulge in a culinary adventure with mouthwatering recipes, foodie tips, and dining experiences.",
        "Fashion" => "Dive into the world of fashion, trends, and style inspirations to express your unique personality."
    }

    Category.where(description: nil).each do |category|
      description = descriptions[category.name]

      category.update!(description: description)
      puts "Backfilled description for category '#{category.name}'"
    end
    
    puts 'Categories desc added succesfully'
  end
end