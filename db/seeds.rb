10.times do |blog|
  Blog.create!(
    title: "Programmer #{blog}",
    body: "Lorem Ipsum is simply dummy text of
    the printing and typesetting industry.
    Lorem Ipsum has been the industry's standard
    dummy text ever since the 1500s, when an
    unknown printer took a galley of type and
    scrambled it to make a type specimen book.
    It has survived not only five centuries,
    but also the leap into electronic typesetting,
    remaining essentially unchanged. It was popularised
    in the 1960s with the release of Letraset sheets
    containing Lorem Ipsum passages, and more recently
     with desktop publishing software like Aldus
     PageMaker including versions of Lorem Ipsum."
  )
end
puts "10 Blog Post creted"

5.times do |skill|
  Skill.create!(
    title: "#{skill} Html",
    percent_utilized: 10
  )
end

puts "5 Post creted"


9.times do |portfolio|
  Portfolio.create!(
    title: "Project #{portfolio}",
    subtitle: "my great service",
    body: "#{portfolio}Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    main_image:"https://place-hold.it/600x400" ,
    thumb_image:"https://place-hold.it/300x250"

  )
end

puts "9 portfolios created"

