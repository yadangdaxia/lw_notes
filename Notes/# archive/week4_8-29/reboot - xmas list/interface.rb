# TODO: you can build your christmas list program here!
# Pseudo-code:
# 1. Welcome
# 2. Display menu (list / add / delete / mark )
# 3. Get user action
# 4. Perform the right action
require_relative 'scraper'

list = []
running = true
puts "Welcome to your Christmas gift list!"


while running
  puts "Choose an action: [ list | add | delete | mark | idea | quit ]"
  user_action = gets.chomp

  case user_action

  when "list"
    if list.empty?
      puts "Your Christmas list is empty."
    else
      list.each_with_index do |item, index|
        if item[:status]    # This is a boolean value, doesn't need ==
          marker = "🚀"
        else
          marker = "😨"
        end
        p "[#{marker}] Item #{index + 1}:  #{item[:name]}"
      end
    end


  when "add"
    p "Add your item."
    user_item = gets.chomp
    p "#{user_item} has been added to your list."

    item_hash = { name: user_item, status: false }
    list << item_hash

    # p item_hash
    # p "Add another, or write 'quit' to exit."


  when "delete"
    p "Which item would you like to delete? Write the number."
    delete_item = gets.chomp
    list.delete_at(delete_item.to_i - 1)
    p "#{user_item} has been removed"

  when "mark"
    p "Which # item would you like to mark as bought?"
    bought_item = gets.chomp.to_i - 1
    # p list[bought_item][:status]
    list[bought_item][:status] = true

    # list[bought_item] == true
    # bought_item.select do |item|
    #   item[:status] = true
    # end
  when "idea"
    p "What's your gift idea?"
    user_idea = gets.chomp
    p "Here are some ideas!"
    items = scraper(user_idea)
    items.each_with_index do |item, index|
      puts "#{index + 1}: #{item}"
    end
    puts "Which one do you want to add? Input an index or type 'esc' to go to main menu."
    user_idea_add = gets.chomp
    if user_idea_add =! "esc"
      # user_idea_add = gets.chomp.to_i - 1
      user_idea_add.to_i - 1
      user_item = items[user_idea_add]
      list << { name: user_item, status: false}
    end

  when "quit"
    running = false
  else
    puts "invalid choice"
  end
end


#array of hashes
# gift_list = [
#   {gift: "shotgun", status: "bought", price:245},
#   {gift: "switch", status: "unbought", price:350}
# ]


# # TODO: list items
# > Which action [list|add|delete|quit]?
# > add
# > TODO: ask user an item and add it to gift list
# > Which action [list|add|delete|quit]?
# > delete
# > TODO: ask user the index of item to delete and delete it
# > Which action [list|add|delete|quit]?
# > quit
# > Goodbye
