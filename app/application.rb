class Application

  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, greeting]
  end

  def greeting
    (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
  end
end
