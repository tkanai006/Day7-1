module WhispersHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
            confirm_whispers_path
        elsif action_name == 'edit'
            whisper_path 
        end
    end
end
