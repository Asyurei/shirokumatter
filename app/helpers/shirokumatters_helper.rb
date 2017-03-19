module ShirokumattersHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'confirm'
            confirm_shirokumatters_path
        elsif action_name == 'edit'
            shirokumatter_path
        end
    end
end
