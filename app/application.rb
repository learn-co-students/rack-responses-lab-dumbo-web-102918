class Application
  def call(env)
    resp = Rack::Response.new
    greeting1 = "Good Morning!"
    greeting2 = "Good Afternoon!"

    current_time = Time.now.utc

    # if current_time <= 12:00:00 && current_time >= 4:00:00
    #   resp.write greeting1
    # else
    #   resp.write greeting2
    # end

    time_now = Time.now.strftime('%H:%M')

    time_compare_with = '12:00'
  if time_now < time_compare_with
    resp.write greeting1
  else
    resp.write greeting2
  end

    resp.finish
  end

end
