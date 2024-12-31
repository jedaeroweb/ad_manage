class SmsMessage < ActiveRecord::Base
  def self.next_message_to_send
    SmsMessage.first(:conditions => ["msg_rslttime IS NULL AND msg_sendtime <= ?", Time.now.utc], :order => "id DESC")
  end

  def send

  end
end
