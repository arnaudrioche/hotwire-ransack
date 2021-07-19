class PagesController < ApplicationController
  def home
    query = params[:query]
    @users = User.ransack(name_cont: query, favorite_color_cont: query, m: 'or').result
    @products = Product.ransack(name_cont: query, color_cont: query, m: 'or').result
    @results = @users + @products
  end
end
