class LeadsController < ApplicationController
def create
	#capture the informations from the params save it to the lead
	@lead = Lead.new lead_params
	#make sur to save it 
		
	if @lead.save
		
	#so it redirect to root_path
	    redirect_to root_path, notice: "Vous êtes maintenant inscrit à la newsletter !" 
	    
	#ici quand message missing template eror
    else
    	redirect_to root_path, alert: "Erreur...recommencez !" 
    end

end

private

  def lead_params
	params.require(:lead).permit(:email, :statut) #strong parameters
  end
end