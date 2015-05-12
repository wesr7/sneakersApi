module Api
    module V1
    class SneakersController < ApplicationController
        protect_from_forgery with: :null_session

        def index
            sneakers = Sneaker.all
            render json: sneakers except: [:created_at, :updated_at, :brand, :cost, :color]
        end

        def show
            sneaker = Sneaker.find(params[:id])
            render json: sneaker except: [:created_at, :updated_at]
        end

        def search
            sneaker = Sneaker.where(name: params[:s])
            render :json sneaker
        end

        end
    end
end
