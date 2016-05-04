class ScholarsController < ApplicationController
	before_action :authenticate_scholar!
end
