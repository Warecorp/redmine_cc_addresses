class CcAddressesController < ApplicationController
  before_action :find_project
  before_action :authorize
  unloadable

  def create
    @cc_address ||= CcAddress.new(addr_params)
    if request.post? && @cc_address.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def destroy
    @cc_address = CcAddress.find(params[:id])
    if request.post? && @issue.cc_addresses.include?(@cc_address)
      @cc_address.destroy
    end
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end
  
private
  def addr_params
    params.require(:new_address).permit(:mail, :issue_id)
  end

  def find_project
    @issue = Issue.find(params[:issue_id])
    @project = @issue.project
  rescue ActiveRecord::RecordNotFound
    render_404
  end

end
