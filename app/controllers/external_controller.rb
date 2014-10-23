class ExternalController < ApplicationController
  def music
	  @site = 'https://zic.enanor.fr'
	  render 'shared/_external'
  end

  def mail
		@site = 'https://mail.enanor.fr'
	  render 'shared/_external'
  end

  def torrent
	  @site = 'https://torrent.enanor.fr'
	  render 'shared/_external'
  end

  def rss
	  @site = 'https://rss.enanor.fr'
	  render 'shared/_external'
  end

  def map
	  @site = 'https://dynmap.enanor.fr'
	  render 'shared/_external'
  end
end
