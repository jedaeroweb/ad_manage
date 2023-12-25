class SmsMessage < ActiveRecord::Base
  attr_accessible :msg_callback, :msg_charset, :msg_lasttime, :msg_phone, :msg_priority, :msg_rsltcode, :msg_rslttime, :msg_sendtime, :msg_status, :msg_text

  def self.next_message_to_send
    SmsMessage.first(:conditions => ["msg_rslttime IS NULL AND msg_sendtime <= ?", Time.now.utc], :order => "id DESC")
  end

  def send

  end
end
