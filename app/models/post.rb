class Post < ActiveRecord::Base

	# attr_accessible :nombre -> not available for Rails version 4+
	# attr_accessible :photo, :titulo


	FOTOS = File.join Rails.root, 'public', 'photo_store'
	#FOTOS = File.join(Rails.root, 'public', 'photo_store')
	after_save :guardar_foto


	def photo=(file_data)
		unless file_data.blank?
			@file_data = file_data
			self.extension = file_data.original_filename.split('.').last.downcase
			puts self.extension
		end
	end

	def photo_path
		"/photo_store/#{id}.#{extension}"
	end


	#/gag/public/photo_store/23.png
	#todos los metodos en ruby retornan algo

	def has_photo
		puts photo_filename
		File.exists? photo_filename
	end


	private

	def photo_filename
		File.join FOTOS, "#{id}.#{extension}"
	end

	private

	def guardar_foto
		if @file_data
			FileUtils.mkdir_p FOTOS	
			File.open(photo_filename, 'wb') do |f|
				f.write(@file_data.read)
			end
			@file_data = nil
		end
	end
end