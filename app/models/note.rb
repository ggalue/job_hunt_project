class Note < ActiveRecord::Base
	belongs_to :job
	belongs_to :user

	STATUS = ["In-Progress", "Sent", "Completed", "Follow-Up", "Send E-mail", "Call Contact", "Urgent", "Other"]
end