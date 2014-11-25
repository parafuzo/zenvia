module Zenvia
  class SmsStatus < EnumerateIt::Base
    associate_values(
      :queued                 => 100,
      :sent_to_operator       => 110,
      :reception_unavailable  => 101,
      :received_by_mobile     => 120,
      :number_not_covered     => 140,
      :number_inactive        => 145,
      :expired_in_operator    => 150,
      :operator_network_error => 160,
      :rejected_by_operator   => 161,
      :cancelled_by_operator  => 162,
      :bad_message            => 170,
      :bad_number             => 171,
      :blocked                => 130,
      :predictive_cleansing   => 131,
      :international_sending  => 141,
      :unknown_error          => 999
    )
  end
end
