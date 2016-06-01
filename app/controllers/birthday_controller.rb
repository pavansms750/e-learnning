class BirthdayController < ApplicationController
  def index
    @Profiles = Profile.all
  end
end
