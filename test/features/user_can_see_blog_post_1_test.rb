require './test/test_helper'

class BlogTest < CapybaraTestCase

  def test_user_can_access_blog_1
    visit '/blog_1'

    assert_equal 200, page.status_code
    assert_equal '/blog_1', current_path
    assert page.has_content?("The Littlest Meebs")
  end

end
