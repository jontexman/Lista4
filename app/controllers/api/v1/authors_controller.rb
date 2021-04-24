
module Api
  module V1
    class AuthorsController < ApplicationController
      def show # metodo para mostrar um autor existente, basta digitar seu id na url
        if Author.exists?(params[:id])
          author = Author.find(params[:id])
          render json: author, status: :ok
        else
          render json: {status: 'ERROR' , message:"erro ao mostrar o diretor, id nao existente"}, status: :unprocessable_entity
        end
      end

      def create
        author = Author.new(author_params)
        if author.save
          render json: author, status: :created
        else
          render json: {status: "Error", message: "Erro ao criar o diretor"}, status: :unprocessable_entity
        end

      end

      def my_movies
        if Author.exists?(params[:id])
          author = Author.find(params[:id])

          movies = author.movies #referencia na model
          render json: {author.name => movies}, status: :ok
        else
          render json: {status: 'ERROR', message: 'nao foi possivel localizar filmes deste autor'}, status: :bad_request
        end
      end

      private
      def author_params
        params.require(:author).permit(:name, :age)
      end
    end

  end
end
