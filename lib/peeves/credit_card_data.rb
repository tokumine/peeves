module Peeves
  class CreditCardData
    attr_accessor :card_holder, :card_number, :start_month, :start_year, :expiry_month, :expiry_year, :card_type, :cv2, :issue_number

    def initialize(attrs = {})
      attrs.each do |h,v|
        send("#{h.to_s}=", v)
      end
    end
  end
end
