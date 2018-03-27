class Task < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true
	validates :priority, presence: true
	validates :status, presence: true

	STATUS_LIST = ["Open","Complete"]
	PRIORITY_LIST = ["Low","Medium","High"]


end
