class ReviewMailer < ApplicationMailer
  def ask(review)
    @review = review
    mail(from: @review.article_revision.submission.person.email, to: @review.person.email, subject: 'Prośba o recenzję')
  end
end