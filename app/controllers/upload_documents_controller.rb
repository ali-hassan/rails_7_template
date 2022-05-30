class UploadDocumentsController < ApplicationController
  before_action :find_user

  def new
  end

  def create
    @user.update permit_params
  end

  def remove_third_bank_statement
    @user.third_bank_statement.purge
  end

  def remove_second_bank_statement
    @user.second_bank_statement.purge
  end

  def remove_first_bank_statement
    @user.first_bank_statement.purge
  end

  def remove_processing_statement
    @user.processing_statement.purge
  end

  private
  def permit_params
    params.require(:user).permit(:first_bank_statement, :second_bank_statement, :third_bank_statement, :processing_statement, :step)
  end

  def find_user
    @user = current_user
  end
end
