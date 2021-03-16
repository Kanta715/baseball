class VideosController < ApplicationController
    
    def index
        @video = Video.all
    end    
    
    def new
       @video = Video.new 
    end
    
    def create
       @video = Video.new(video_params)
       @video.save
       redirect_to @video
    end
    
    private
    
    def video_params
        params.require(:video).permit(:title, :introduction, :video)
    end
end
