class SpeechesController < ApplicationController

respond_to :html, :xml, :json

  def new
    @speech = Speech.new
  end
  
  def create
    require 'cgi'
  
    @speech = Speech.new(params[:speech])
    escape_phrase = CGI.escape(@speech.phrase)
    url = "http://translate.google.com/translate_tts?tl=#{@speech.lang}&q=#{escape_phrase}"
    @speech.url = BITLY_CLIENT.shorten(url)
    #@speech.url = url
    if @speech.save
      flash[:message] = @speech.url.short_url
      respond_with(@speech, :location => root_path)
    else
      flash[:error] = "An error occurred! Did you fill all fields?"
      redirect_to root_path
    end
  end
end
