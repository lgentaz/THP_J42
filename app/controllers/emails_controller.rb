class EmailsController < ApplicationController
  def index
  end

  def create
    @email = Email.new(object: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4))
    if @email.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js {}
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js {}
      end
    end
  end



end
