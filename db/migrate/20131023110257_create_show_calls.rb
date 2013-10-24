class CreateShowCalls < ActiveRecord::Migration
  def change
    create_table :show_calls do |t|
    	t.string :uuid
    	t.text :direction
    	t.datetime :created
    	t.integer :created_epoch
    	t.string :name
    	t.string :state
    	t.string :cid_name
    	t.string :cid_num
    	t.string :ip_addr
    	t.string :dest
    	t.string :presence_id
    	t.string :presence_data
    	t.text :callstate
    	t.text :callee_name
    	t.string :callee_num
    	t.text :callee_direction
    	t.string :call_uuid
    	t.string :hostname
    	t.text :sent_callee_name
    	t.string :sent_callee_num
    	t.string :b_uuid
    	t.text :b_direction
    	t.datetime :b_created
    	t.integer :b_created_epoch
    	t.string :b_name
    	t.string :b_state
    	t.string :b_cid_name
    	t.string :b_cid_num
    	t.string :b_ip_addr
    	t.string :b_dest
    	t.string :b_presence_id
    	t.string :b_presence_data
    	t.text :b_callstate
    	t.text :b_callee_name
    	t.string :b_callee_num
    	t.text :b_callee_direction
    	t.string :b_sent_callee_name
    	t.string :b_sent_callee_num
    	t.integer :call_created_epoch

      t.timestamps
    end
  end
end
