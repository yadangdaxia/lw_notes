class PostsView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  def display_all(posts)
    puts "----------"
    posts.each do |p|
      puts "#{p.id} | #{p.title} | #{p.url} | Votes: #{p.votes}"
    end
  end

  def ask_user_for(string)
    puts "Input the #{string}."
    print "> "
    return gets.chomp
  end

end
