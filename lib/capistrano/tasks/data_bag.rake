
namespace :data_bag do
  desc 'Create a new databag'
  task :create do
    puts "aa"
    Capistrano::CLI.ui.say "Created a new data bag item at: #{data_bag_item_file}"
  end
end

