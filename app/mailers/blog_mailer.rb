class BlogMailer < ApplicationMailer
  default from: "blog@admin.com"
  def blog_mail(blog)
    @blog = blog
    mail to: @blog.user.email, subject: "投稿完了のお知らせ"
  end
end
