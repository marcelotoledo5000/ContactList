def select_page
  page_list = %w[Home Blog News About Contact]
  page_list[rand(page_list.length)]
end

70.times do
  Track.create([{
    guid: SecureRandom.uuid,
    visited_page: select_page,
    visited_datetime: Faker::Time.between_dates(
      from: 2.days.ago, to: Time.zone.today, period: :all
    )
  }])
end

70.times do
  Contact.create(
    [
      {
        email: Faker::Internet.unique.email,
        name: Faker::Books::Dune.character,
        guid: SecureRandom.uuid
      }
    ]
  )
end
