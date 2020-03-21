 class GossipsController < ApplicationController

  def new
    @gossip = Gossip.new
  end

  def index
    @gossip = Gossip.all
  end

  def edit
      @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip = Gossip.update(gossip_params)
    redirect_to gossips_path
  end

  def show
    @gossip = Gossip.find(params[:id])
    @comment = Gossip.find(params[:id]).comments
    @newcomment = Gossip.new
  end

  def create
    @gossip = Gossip.create(gossip_params)
    redirect_to gossips_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end

  private

      def gossip_params
          params.require(:gossip).permit(:title, :content, :user_id)
      end
=begin
      def set_gossip
        @gossip = Gossip.find(params[:id])
      end
=end
end
