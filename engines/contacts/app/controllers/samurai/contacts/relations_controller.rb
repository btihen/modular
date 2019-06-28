require_dependency "samurai/contacts/application_controller"

module Samurai::Contacts
  class RelationsController < ApplicationController
    # before_action :set_relation, only: [:show, :edit, :update, :destroy]

    # GET /relations
    def index
      render :index, locals: {relations: Relation.all}
    end

    # GET /relations/1
    def show
      render :show, locals: {relation: get_relation}
    end

    # GET /relations/new
    def new
      render :new, locals: {relation: Relation.new}
    end

    # GET /relations/1/edit
    def edit
    end

    # POST /relations
    def create
      relation = Relation.new(relation_params)

      if relation.save
        redirect_to relation_path(relation), notice: 'Relation was successfully created.'
      else
        render :new, locals: {relation: relation}
      end
    end

    # PATCH/PUT /relations/1
    def update
      if relation= get_relation.update(relation_params)
        redirect_to relation, notice: 'Relation was successfully updated.'
      else
        render :edit, locals: {relation: relation}
      end
    end

    # DELETE /relations/1
    def destroy
      get_relation.destroy
      redirect_to relations_url, notice: 'Relation was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def get_relation
        Relation.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def relation_params
        # params.fetch(:relation, {})
        params.require(:contact)
              .permit(:first_name, :last_name, :email, :phone, :user_id)
      end
  end
end
