class EmailsController < ApplicationController
  before_action :authenticate_user!
  def index
    @emails = Email.all
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

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to email_path(params[:id])}
      format.js {}
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end

  private

  def email_params
    params.permit(:id, :body, :object)
  end


end
