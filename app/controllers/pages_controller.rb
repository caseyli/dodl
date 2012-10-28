class PagesController < ApplicationController
  def home
    @settings = Setting.all
    
    @settings.each do |setting|
      case setting.property
      when "HighlightColor"
        @highlight_clr = setting
      when "DtColor1"
        @dt_ring_clr = setting
      when "DtColor2"
        @dt_ring_clr_2 = setting
      when "SectorColor1"
        @sector_clr = setting
      when "SectorColor2"
        @sector_clr_2 = setting
      end
    end
  end
end
