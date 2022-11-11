# frozen_string_literal: true

module Api
  module V1
    class ArticlesController < ApplicationController # rubocop:disable Style/Documentation
      before_action :set_article, only: %i[show update destroy add_favorite remove_favorite]

      after_action :verify_authorized

      def create
        authorize Article

        article = Article.new(article_params)
        article.user = current_user

        if article.save
          render json: article
        else
          render json: { errors: article.errors.full_messages }
        end
      end

      def add_favorite
        authorize @article

        FavoriteAticle.find_or_create_by!(user: current_user, article: @article)

        render json: { message: "Article ##{article.id} added to favorite" }
      end

      def remove_favorite
        authorize @article

        FavoriteAticle.find_by(user: current_user, article: @article)&.destroy

        render json: { message: "Article ##{article.id} removed from favorite" }
      end

      def show
        authorize @article

        render json: @article
      end

      def updated
        authorize @article

        if @article.update(article_params)
          render json: @article
        else
          render json: { errors: @article.errors.full_messages }
        end
      end

      def destroy
        authorize @article

        @article.destroy

        render json: @article
      end

      private

      def set_article
        @article = Article.find(params[:id])
      end

      def article_params
        params.require(:article).permit(:title, :anounce, :body, :published)
      end
    end
  end
end