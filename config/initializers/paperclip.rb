Paperclip::Attachment.default_options[:storage] = :google_drive
Paperclip::Attachment.default_options[:google_drive_client_secret_path] = "#{Rails.root}/config/client_secret.json"
Paperclip::Attachment.default_options[:google_drive_options] = {:application_name => 'popasnacks', :public_folder_id => ENV['GDRIVE_PUBLIC_FOLDER_ID']}