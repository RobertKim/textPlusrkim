class ShowCall < ActiveRecord::Base
  validates :uuid, presence: true
  # validates :direction, presence: true
	attr_accessible :uuid, 
                  :direction, 
                  :created, 
                  :created_epoch, 
                  :name, 
                  :state,
                  :cid_name,
                  :cid_num,
                  :ip_addr,
                  :dest,
                  :presence_id,
                  :presence_data,
                  :callstate,
                  :callee_name,
                  :callee_num,
                  :callee_direction,
                  :call_uuid,
                  :hostname,
                  :sent_callee_name,
                  :sent_callee_num,
                  :b_uuid,
                  :b_direction,
                  :b_created,
                  :b_created_epoch,
                  :b_name,
                  :b_state,
                  :b_cid_name,
                  :b_cid_num,
                  :b_ip_addr,
                  :b_dest,
                  :b_presence_id,
                  :b_presence_data,
                  :b_callstate,
                  :b_callee_name,
                  :b_callee_num,
                  :b_callee_direction,
                  :b_sent_callee_name,
                  :b_sent_callee_num,
                  :call_created_epoch

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
     csv << column_names
     all.each do |show_call|
      csv << show_call.attributes.values_at(*column_names)
    end
  end
end

def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
   ShowCall.create! row.to_hash
 end
end

end
