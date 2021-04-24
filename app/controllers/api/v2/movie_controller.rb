module Api
  module V2
    class MovieController < ApplicationController
      def show
        if Movie.exists?(params[:id])
          movie = Movie.find(params[:id])
          render json: movie, status: :ok
        else
          render json: {status: 'ERROR' , message:"erro ao mostrar o filme, id nao existente"}, status: :unprocessable_entity
        end
      end

      def create
        movie = movie.new(movie_params)
        if movie.save
          render json: movie, status: :created
        else
          render json: {status: "Error", message: "Erro ao criar o filme"}, status: :unprocessable_entity
        end

      end

      def index
        movies = Movie.all
        render json: movies

      end

      def destroy
        if Movie.exists?(params[:id])
          movie = Movie.find(params[:id])
          if movie.destroy!
            render json: {status: 'Success', message: ' filme deletado'}, status: :ok
          else
            render json: {status: 'ERROR', message: 'falha ao deletar o filme'}, status: :bad_request
          end
        else
          render json: {status: 'ERROR' , message: 'falha ao encontrar o filme'}, status: :unprocessable_entity

        end
      end

      def update
        if Movie.exists?(params[:id])
          movie = Movie.find(params[:id])
          if movie.update(movie_params)
            render json: { name: movie.name, description: movie.description, censor: movie.censor, movie_type: movie.movie_type}, status: :ok
          else
            render json: {status: 'ERROR', message: 'erro ao atualizar informações do filme'}, status: :unprocessable_entity

          end
          render json: {status:'ERROR', message:'filme não encontrado'}, status: :unprocessable_entity

        end
      end

      private
      def movie_params
        params.require(:movie).permit(:name, :description, :censor, :movie_type, :author_id)
      end
    end
  end
end
