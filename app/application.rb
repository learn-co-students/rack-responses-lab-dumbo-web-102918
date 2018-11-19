# require 'time'
class Application

def call(env)
  resp = Rack::Response.new
current_time = Time.now.strftime('%H:%M')
good_morning = "Good Morning!"
good_afternoon = "Good Afternoon!"
compare_with = '12:00'
if current_time < compare_with
  resp.write good_morning
else
  resp.write good_afternoon
end
resp.finish
end
end
