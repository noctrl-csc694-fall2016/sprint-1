  #----------------------------------#
  # HyperSurf Controller
  # original written by: Jason K, Oct 17 2016
  # major contributions by:
  #
  #----------------------------------#

class HyperSurfController < ApplicationController
    def Donors
        render 'donors'
    end
    def All
        render 'all'
    end
end
