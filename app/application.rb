class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.strftime("%H:%M")
      resp.write time

      if time <= "11:59"
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end


    resp.finish
  end

end
