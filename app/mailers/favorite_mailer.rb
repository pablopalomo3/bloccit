class FavoriteMailer < ApplicationMailer
  default from: "pablopalomo3@gmail.com"
  
  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@app96659358@heroku.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@app96659358@heroku.com>"
    headers["References"] = "<post/#{post.id}@app96659358@heroku.com>"
    
    @user = user
    @post = post
    @comment = comment
    
    mail(to: user.email, subject: "New comment on #{post.title}")
  end
  
  def new_post(post)
    headers["Message-ID"] = "<post/#{post.id}@app96659358@heroku.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@app96659358@heroku.com>"
    headers["References"] = "<post/#{post.id}@app96659358@heroku.com>"
    
    @post = post
    
    mail(to: post.user.email, subject: "You're following, #{post.title}")
  end
  
end
