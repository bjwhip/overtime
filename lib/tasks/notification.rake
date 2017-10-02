namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    puts "im in a rake task"

    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end

    # number: "5555555555"
    # number: "555-555-5555"
    # No spaces or dashes
    # Exactly 10 charactors
    # all characters have to be anumber
  end

end
