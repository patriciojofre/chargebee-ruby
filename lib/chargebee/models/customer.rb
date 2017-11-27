module ChargeBee
  class Customer < Model

    class BillingAddress < Model
      attr_accessor :first_name, :last_name, :email, :company, :phone, :line1, :line2, :line3, :city, :state_code, :state, :country, :zip, :validation_status
    end

    class ReferralUrl < Model
      attr_accessor :external_customer_id, :referral_sharing_url, :created_at, :updated_at, :referral_campaign_id, :referral_account_id, :referral_external_campaign_id, :referral_system
    end

    class Contact < Model
      attr_accessor :id, :first_name, :last_name, :email, :phone, :label, :enabled, :send_account_email, :send_billing_email
    end

    class PaymentMethod < Model
      attr_accessor :type, :gateway, :gateway_account_id, :status, :reference_id
    end

    class Balance < Model
      attr_accessor :promotional_credits, :excess_payments, :refundable_credits, :unbilled_charges, :balance_currency_code
    end

  attr_accessor :id, :first_name, :last_name, :email, :phone, :company, :vat_number, :auto_collection,
  :net_term_days, :allow_direct_debit, :created_at, :created_from_ip, :taxability, :entity_code,
  :exempt_number, :resource_version, :updated_at, :locale, :consolidated_invoicing, :billing_date,
  :billing_date_mode, :billing_day_of_week, :billing_day_of_week_mode, :card_status, :fraud_flag,
  :primary_payment_source_id, :backup_payment_source_id, :billing_address, :referral_urls, :contacts,
  :payment_method, :invoice_notes, :preferred_currency_code, :promotional_credits, :unbilled_charges,
  :refundable_credits, :excess_payments, :balances, :meta_data, :deleted, :registered_for_gst

  # OPERATIONS
  #-----------

  def self.create(params={}, env=nil, headers={})
    Request.send('post', uri_path("customers"), params, env, headers)
  end

  def self.list(params={}, env=nil, headers={})
    Request.send_list_request('get', uri_path("customers"), params, env, headers)
  end

  def self.retrieve(id, env=nil, headers={})
    Request.send('get', uri_path("customers",id.to_s), {}, env, headers)
  end

  def self.update(id, params={}, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s), params, env, headers)
  end

  def self.update_payment_method(id, params, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"update_payment_method"), params, env, headers)
  end

  def self.update_billing_info(id, params={}, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"update_billing_info"), params, env, headers)
  end

  def self.assign_payment_role(id, params, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"assign_payment_role"), params, env, headers)
  end

  def self.add_contact(id, params, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"add_contact"), params, env, headers)
  end

  def self.update_contact(id, params, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"update_contact"), params, env, headers)
  end

  def self.delete_contact(id, params, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"delete_contact"), params, env, headers)
  end

  def self.add_promotional_credits(id, params, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"add_promotional_credits"), params, env, headers)
  end

  def self.deduct_promotional_credits(id, params, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"deduct_promotional_credits"), params, env, headers)
  end

  def self.set_promotional_credits(id, params, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"set_promotional_credits"), params, env, headers)
  end

  def self.record_excess_payment(id, params, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"record_excess_payment"), params, env, headers)
  end

  def self.collect_payment(id, params={}, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"collect_payment"), params, env, headers)
  end

  def self.delete(id, params={}, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"delete"), params, env, headers)
  end

  def self.move(params, env=nil, headers={})
    Request.send('post', uri_path("customers","move"), params, env, headers)
  end

  def self.change_billing_date(id, params={}, env=nil, headers={})
    Request.send('post', uri_path("customers",id.to_s,"change_billing_date"), params, env, headers)
  end

  end # ~Customer
end # ~ChargeBee