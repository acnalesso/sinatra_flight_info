module Helpers
  def customer_is_on(path)
    visit( path == :home_page ? "/" : path )
  end
  alias :are_on :customer_is_on

  def should_see_a(*args)
    attributes = args.first
    tag = attributes.delete(attributes.first[0])
    page.should have_css(tag, attributes)
  end

  def user_types_in(element, text)
    fill_in element, with: text
  end

  def subscribe_to_chat_with(nickname)
    within("#chat_subscribe") do
     user_types_in("Enter your nickname to subscribe:", nickname) 
    end
    click_button("Subscribe")
  end

  def users_subscribed(amount)
    page.should have_content("Users Subscribed")
    page.should have_content("(#{amount.to_i}) Users")
  end

end

World(Helpers)
