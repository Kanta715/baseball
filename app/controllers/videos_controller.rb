class VideosController < ApplicationController
    
    def index
        @videos = Video.all
    end    
    
    def new
       @video = Video.new 
    end
    
    def create
       @video = Video.new(video_params)
       @video.save
       redirect_to videos_path
    end
    
    private
    
    def video_params
        params.require(:video).permit(:title, :introduction, :video)
    end
end
