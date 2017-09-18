namespace :crowdfounder do
  desc "does stuff"
  task fix_stuff: :environment do
    puts "number of pledges#{Pledge.count}"
  end
end
