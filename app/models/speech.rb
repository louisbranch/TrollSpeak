class Speech < ActiveRecord::Base

  attr_accessible(:phrase, :lang)

  validates :phrase,  :presence => true,
                      :length => { :maximum => 50 }
  validates :lang, :presence => true

end
