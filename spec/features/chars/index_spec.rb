require 'rails_helper'

describe 'Search' do
  describe 'As a user when I visit the index page' do
    describe 'As a user when I visit the index page' do
      describe 'I can search for members' do
        describe 'happy path' do
          it 'I see a list with details for the first 25 members' do
            visit root_path

            find('#nation', text: 'Fire Nation').click
            click_button('Search For Members')

            expect(current_path).to eq(search_path)
            expect(page).to have_content('100')
            expect(page).to have_content('Details for the first 25 members')
            expect(page).to have_content(member.name)
            expect(page).to have_content(member.alias)
            expect(page).to have_content(member.enemies)
            expect(page).to have_content(member.affiliations)
          end
        end
      end
    end
  end
end
