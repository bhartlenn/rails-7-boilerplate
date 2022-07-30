module ApplicationHelper

    def render_turbo_stream_flash_messages
        turbo_stream.prepend "flashes", partial: "layouts/flash"
    end

    def controller_and_action_string
        controller_name + "_" + action_name
    end

end
