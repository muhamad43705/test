class Task < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true

	STATUS_LIST = ["Open","Complete"]
	PRIORITY_LIST = ["Low","Medium","High"]


end
