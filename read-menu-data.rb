File.open('menu.txt', 'w') do |file|
  puts "Welcome to Restaurant Menu Creator"
  puts "=" * 50
  choice = ''
  while choice != 'no'
    print "Enter item name: "
    item_name = gets.chomp
    print "Enter item price(RM): "
    item_price = gets.chomp

    menu_item = [item_name, item_price].join(',')
    file.write menu_item + "\n"
    puts "Menu item saved succesfully."

    print "Do you want to add another item? (yes/no): "
    choice = gets.chomp
  end
  puts "All menu items are save in menu.txt"
end
