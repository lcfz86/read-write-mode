File.open('profile.txt', 'r') do |file|
  profile_arr = file.readlines
  profile_arr = profile_arr.map { |data| data.strip }
  puts "=" * 30
  profile_arr.each do |profile|
    data = profile.split(',')
    puts "Name: #{data[0]}"
    puts "Age: #{data[1]}"
    puts "Origin: #{data[2]}"
    puts "Gender: #{data[3]}"
    puts "=" * 30
  end
end
