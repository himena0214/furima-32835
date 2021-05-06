FactoryBot.define do
  factory :user do
    nickname             {'タロウ'}
    email                {Faker::Internet.free_email}
    password             {'aaaaaa1'}
    last_name            {'山田'}
    first_name           {'太郎'}
    last_name_kana       {'ヤマダ'}
    first_name_kana      {'タロウ'}
    birthday             {'2003-02-14'}
  end
end
