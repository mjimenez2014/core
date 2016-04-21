class Api::V1::NotificationController < Api::V1::ApiController

  def send_notif
    puts "======== ENVIO EMAIL =========="
    NotificationMailer.notification_email("jimenezmaury@gmail.com").deliver
    NotificationMailer.notification_email("osvaldo.omiranda@gmail.com").deliver
    render "/api/v1/iat/ping" 
  end

end
