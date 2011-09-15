class SpeechesController < ApplicationController

respond_to :html, :xml, :json

  def index
    @speech = Speech.new
  end
  
  def create
    
    @speech = Speech.new(params[:speech])
    escape_phrase = CGI.escape(@speech.phrase)
    url = "http://translate.google.com/translate_tts?tl=#{@speech.lang}&q=#{escape_phrase}"
    shorten_url = BITLY_CLIENT.shorten(url)
    @speech.url = shorten_url.short_url
    if @speech.save
      #flash[:message] = @speech.url
      redirect_to speeches_url
    else
      flash[:error] = "An error occurred! Did you fill all fields?"
      redirect_to speeches_url
    end
  end
end
