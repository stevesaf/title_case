require('rspec')
  require('title_case')

  describe('String#title_case') do
    it("capitalizes the first letter of all words in a muliple word title") do
      expect(("the color purple").title_case()).to(eq("The Color Purple"))
    end
  end


    require('capybara/rspec')
      require('./app')
      Capybara.app = Sinatra::Application
      set(:show_exceptions, false)

      describe('the title case path', {:type => :feature}) do
        it('processes the user entry and returns it title cased') do
          visit('/')
          fill_in('title', :with => 'green eggs and ham')
          click_button('Send')
          expect(page).to have_content('Green Eggs And Ham')
        end
      end
