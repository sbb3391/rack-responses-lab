require 'pry'

class Application

  attr_accessor :time

  def call(env)
    resp = Rack::Response.new

    def time
      @time = Time.now
      @time
    end

    if time.hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end
end