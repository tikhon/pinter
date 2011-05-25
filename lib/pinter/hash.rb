class Hash

  def to_subscription
    Pinter::Subscription.new self
  end

end