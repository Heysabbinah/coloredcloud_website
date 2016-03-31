class LeadsController < ApplicationController
def create
	#capture the informations from the params save it to the lead
	@lead = Lead.new lead_params
	#make sur to save it 
	respond_to do |format|
		
	if @lead.save
		cookies[:saved_lead] = true
	#so it redirect to root_path
	    format.html { redirect_to root_path }
	    format.js
	#ici quand message missing template eror
    else
    	format.htlm { redirect_to root_path, alert: "failed to save" }
    end

end
end

private

  def lead_params
	params.require(:lead).permit(:email, :statut) #strong parameters
  end
end
end