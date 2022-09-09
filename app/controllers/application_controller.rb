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

#delete requests
delete '/donors/:id' do
  # find the donor using the ID
  donor = Donor.find(params[:id])
  # delete the donor
  donor.destroy
  # send a response with the deleted donor as JSON
  donor.to_json
end

delete '/campaigns/:id' do
  # find the campaign using the ID
  campaign = Campaign.find(params[:id])
  # delete the campaign
  campaign.destroy
  # send a response with the deleted campaignas JSON
  campaign.to_json
end

delete '/donations/:id' do
  # find the donation using the ID
  donation = Donation.find(params[:id])
  # delete the donation
  review.destroy
  # send a response with the deleted donation as JSON
  donation.to_json
end

#these are patch requests

patch '/donors/:id' do
  donor = Donor.find(params[:id])
  donor.update(
    name: params[:name],
    email: params[:email],
   description: params[:phone],
    address: params[:address],
    country: params[:country]
  )
  donor.to_json
end


patch '/donations/:id' do
  donation = Donation.find(params[:id])
  donation.update(
    name: params[:name],
   date: params[:date],
  description: params[:description],
   donor_id: params[:donor_id],
  )
  donation.to_json
end


patch '/campaigns/:id' do
  campaign = Campaign.find(params[:id])
  campaign.update(
    name: params[:name],
   location: params[:location],
   description: params[:description],
   amount: params[:amount],
   duration: params[:duration],
   donation_id: params[:donation_id]
  )
  campaign.to_json
end

end
