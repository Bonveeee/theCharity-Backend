class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  require 'pry'
  
  # Add your routes here
  get "/" do
    { message: "Ruby Here we Go!" }.to_json
  end

# These are get requests
  get "/donors" do
    donors= Donor.all
    donors.to_json
   end

   get "/campaigns" do
    campaigns= Campaign.all
    campaigns.to_json
   end

   get "/donations" do
    donations= Donation.all
    donations.to_json
   end

#these are post requests
post "/donors" do
  donors = Donor.create(
   name: params[:name],
   email: params[:email],
  description: params[:phone],
   address: params[:address],
   country: params[:country]
 )
 donors.to_json
end

post "/campaigns" do
  campaigns = Campaign.create(
   name: params[:name],
   location: params[:location],
   description: params[:description],
   amount: params[:amount],
   duration: params[:duration],
   donation_id: params[:donation_id]
 )
 campaigns.to_json
end

post "/donations" do
  donations = Donation.create(
   name: params[:name],
   date: params[:date],
  description: params[:description],
   donor_id: params[:donor_id],
   )
 donations.to_json
 end


end
