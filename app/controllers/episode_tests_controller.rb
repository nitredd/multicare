class EpisodeTestsController < ApplicationController
  before_action :set_episode

  def create
    @episode.episode_tests.create! params.required(:episode_test).permit([:episode_id, :test_procedure_id, :result])
    redirect_to @episode
  end

  def destroy
    @episode.episode_tests.find(params[:id]).destroy
    redirect_to @episode, :notice => 'Test removed'
  end

  private
    def set_episode
      @episode = Episode.find(params[:episode_id])
    end
end
