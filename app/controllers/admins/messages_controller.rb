class Admins::MessagesController < AdminController
  expose(:messages){ Message.order("id DESC").scoped{} }
  expose(:message)

  after_filter :send_text, :only => [:create]

  def create
    message.admin_id = current_admin.id
    if message.save
      flash[:notice] = t(:message_was_successfully_created)
      redirect_to(admins_messages_path)
    else
      render :new
    end
  end

  def update
    if message.save
      flash[:notice] = t(:message_was_successfully_updated)
      redirect_to(admins_dashboard_path)
    else
      render :edit
    end
  end

  private
  def send_text
    if params[:message][:to_girl] == 1
      girls = Girl.where(:active => true)
      girls.each do |g|
        sms = Sms.new
        sms.send('9545922500', g.full_name + '(' + g.id.to_s  + ')' )
        #sms.send(g.phone, message.message )
      end
    end
    if params[:message][:to_addmin] == 1
      admins = Admin.where(:active => true)
      admins.each do |a|
        sms = Sms.new
        sms.send(a.phone, message.message )
      end
    end
  end
end

