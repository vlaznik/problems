beatles = [
  {
    name: nil,
    nickname: "The Smart One"
  },
  {
    name: nil,
    nickname: "The Funny One"
  },
  {
    name: nil,
    nickname: "The Cute One"
    },
  {
    name: nil,
    nickname: "The Quiet One"
  }
]
p beatles.length
i = 0
while i < beatles.length
  # Your code here!
  case beatles[i][:nickname]
  when "The Smart One"
  beatles[i][:name] = "John"
  when "The Funny One"
  beatles[i][:name] = "Ringo"
  when "The Cute One"
  beatles[i][:name] = "Paul"
  when "The Quiet One"
  beatles[i][:name] = "George"
  end
i += 1
end

a = 0
while a < beatles.length
  puts "Hi, I'm #{beatles[a][:name]}.  I'm #{beatles[a][:nickname]}!"
  a += 1
end
