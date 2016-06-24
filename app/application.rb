class Application
  def call(time)
    resp = Rack::Response.new
    time = Time.now
    resp.write time.hour < 12 ? 'Good Morning!':'Good Afternoon!'
    resp.finish
  end
end
