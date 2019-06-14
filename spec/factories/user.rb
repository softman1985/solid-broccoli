FactoryBot.define do
	factory :user do
		id {1}
		sequence(:email) { |n| "user#{n}@example.com" }
		password {'123456'}
		password_confirmation {'123456'}
	end
end



